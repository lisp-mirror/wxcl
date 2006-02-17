#include "wrapper.h"
#include "wx/tooltip.h"
#include "wx/dynlib.h"
#include "wx/fs_zip.h"

/* quantize is not supported on wxGTK 2.4.0 */
#if !defined(__WXGTK__) || (wxVERSION_NUMBER > 2400)
#  include "wx/quantize.h"
#endif
/*-----------------------------------------------------------------------------
    The global idle timer
-----------------------------------------------------------------------------*/

wxIdleTimer* idleTimer = NULL;

void initIdleTimer()
{
  idleTimer = new wxIdleTimer();
}

void doneIdleTimer()
{
  if (idleTimer) {
    idleTimer->Stop();
    delete idleTimer;
    idleTimer = NULL;
  }
}

/*-----------------------------------------------------------------------------
    The main application
-----------------------------------------------------------------------------*/

wxClosure* initClosure = NULL;
int APPTerminating = 0;

IMPLEMENT_APP_NO_MAIN(ELJApp);

bool ELJApp::OnInit (void)
{
  wxInitAllImageHandlers();
  initIdleTimer();
  if (initClosure) {
    delete initClosure; /* special: init is only called once with a NULL event */
    initClosure=NULL;
  }
  return true;
}

int ELJApp::OnExit( void )
{
  doneIdleTimer();
  return wxApp::OnExit();
}

void ELJApp::InitZipFileSystem()
{
        static int InitZIPFileSystem_done = 0;

        if (!InitZIPFileSystem_done)
        {
                InitZIPFileSystem_done = 1;
                wxFileSystem::AddHandler(new wxZipFSHandler());
        }
}

void ELJApp::InitImageHandlers()
{
        static int InitImageHandlers_done = 0;

        if (!InitImageHandlers_done)
        {
                InitImageHandlers_done = 1;
                wxInitAllImageHandlers();
        }
}


/* "getCallback" is a hack to retrieve the callback object for a certain event
   see also "wxEvtHandler_FindClosure"
*/
static wxCallback** getCallback = NULL;

void ELJApp::HandleEvent(wxEvent& _evt)
{
  wxCallback* callback = (wxCallback*)(_evt.m_callbackUserData);
  if (getCallback) {
    *getCallback = callback;    /* retrieve the callback */
  }
  else if (callback) {
    callback->Invoke( &_evt );  /* normal: invoke the callback function */
  }
}

/*-----------------------------------------------------------------------------
    Closures
-----------------------------------------------------------------------------*/
wxClosure::wxClosure( ClosureFun fun, unsigned int wxcl_id)
{
  m_refcount = 0;
  m_fun  = fun;
  m_wxcl_id = wxcl_id;
}

wxClosure::~wxClosure()
{
  /* call for the last time with a NULL event. Give opportunity to clean up resources */
  if (m_fun) { m_fun(NULL,m_wxcl_id); }
}

void wxClosure::IncRef()
{
  m_refcount++;
}

void wxClosure::DecRef()
{
  m_refcount--;
  if (m_refcount <= 0) {
    delete this;
  }
}

void wxClosure::Invoke( wxEvent* event )
{
  if (event && m_fun) { m_fun(event,m_wxcl_id); }
};

/*-----------------------------------------------------------------------------
    callback: a reference counting wrapper for a closure
-----------------------------------------------------------------------------*/
wxCallback::wxCallback( wxClosure* closure )
{
  m_closure = closure;
  m_closure->IncRef();
}

wxCallback::~wxCallback()
{
  m_closure->DecRef();
}

void wxCallback::Invoke( wxEvent* event )
{
  m_closure->Invoke(event);
}

wxClosure* wxCallback::GetClosure()
{
  return m_closure;
}

/*-----------------------------------------------------------------------------
    wrapper for objectRefData
-----------------------------------------------------------------------------*/
wxcClosureRefData::wxcClosureRefData( wxClosure* closure )
{
  m_closure = closure;
}

wxcClosureRefData::~wxcClosureRefData()
{
/* printf("delete wxc-ClosureRefData\n");  */
  if (m_closure) { delete m_closure; m_closure = NULL; }
}

wxClosure* wxcClosureRefData::GetClosure()
{
  return m_closure;
}

/*-----------------------------------------------------------------------------
    C interface to event handling and closures.
-----------------------------------------------------------------------------*/
extern "C"
{
/* event handling */
EWXWEXPORT(void, wxEvtHandler_Connect)(void* _obj, int first, int last, int type, wxClosure* closure)
{
  wxCallback* callback = new wxCallback(closure);
  ((wxEvtHandler*)_obj)->Connect(first, last, type, (wxObjectEventFunction)&ELJApp::HandleEvent, callback);
}

EWXWEXPORT(wxClosure*, wxEvtHandler_GetClosure)(wxEvtHandler* evtHandler, int id, int type)
{
  wxCommandEvent  event(type,id);     //We can use any kind of event here
  wxCallback*     callback = NULL;
  bool            found    = false;

  //set the global variable 'getCallback' so HandleEvent
  //knows we just want to know the closure. Unfortunately, this
  //seems the cleanest way to retrieve the callback in wxWindows.
  getCallback = &callback;
  found = evtHandler->SearchDynamicEventTable( event );
  getCallback = NULL;

  if (found && callback)
    return callback->GetClosure();
  else
    return NULL;
}

/* closures */
EWXWEXPORT(wxClosure*, wxClosure_Create)(ClosureFun fun, unsigned int wxcl_id)
{
  return new wxClosure(fun,wxcl_id);
}

/* client data */
EWXWEXPORT(void*, wxEvtHandler_GetClientClosure)(void* _obj)
{
  return (void*)((wxEvtHandler*)_obj)->GetClientObject();
}

EWXWEXPORT(void, wxEvtHandler_SetClientClosure)( void* _obj, wxClosure* closure )
{
  ((wxEvtHandler*)_obj)->SetClientObject(closure);
}

EWXWEXPORT(wxClosure*, wxObject_GetClientClosure)(wxObject* _obj)
{
  wxcClosureRefData* refData = (wxcClosureRefData*)_obj->GetRefData();
  if (refData)
    return refData->GetClosure();
  else
    return NULL;
}

EWXWEXPORT(void, wxObject_SetClientClosure)( wxObject* _obj, wxClosure* closure )
{
  wxcClosureRefData* refData;
  /* wxASSERT(_obj->GetRefData() == NULL); */
  _obj->UnRef();
  wxASSERT(_obj->GetRefData() == NULL);
  refData = new wxcClosureRefData( closure );
  _obj->SetRefData( refData );    //set new data -- ref count must be 1 as setRefData doesn't increase it.  
}

/*-----------------------------------------------------------------------------
    C interface to the idle timer
-----------------------------------------------------------------------------*/
EWXWEXPORT(int, ELJApp_GetIdleInterval)()
{
  if (!idleTimer) return 0;

  if (idleTimer->IsRunning())
    return idleTimer->GetInterval();
  else
    return 0;
}

EWXWEXPORT(void, ELJApp_SetIdleInterval)( int interval )
{
  if (idleTimer) {
    if (idleTimer->IsRunning()) {
      idleTimer->Stop();
    }
    if (interval >= 5) {
      idleTimer->Start( interval, false );
    }
  }
}

/*-----------------------------------------------------------------------------
    C interface to the application.
-----------------------------------------------------------------------------*/
//int OnExit();
//virtual void OnFatalException();
EWXWEXPORT(int, ELJApp_MainLoop)()
{
        return wxGetApp().MainLoop();
}

EWXWEXPORT(int, ELJApp_Initialized)()
{
        return (int)wxGetApp().Initialized();
}

EWXWEXPORT(int, ELJApp_Pending)()
{
        return (int)wxGetApp().Pending();
}

EWXWEXPORT(void, ELJApp_Dispatch)()
{
        wxGetApp().Dispatch();
}

EWXWEXPORT(wxString*, ELJApp_GetAppName)()
{
   return new wxString( wxGetApp().GetAppName());
}

EWXWEXPORT(void, ELJApp_SetAppName)(char* name)
{
        wxGetApp().SetAppName(name);
}

EWXWEXPORT(wxString*, ELJApp_GetClassName)()
{
   return new wxString(wxGetApp().GetClassName());
}

EWXWEXPORT(void, ELJApp_SetClassName)(char* name)
{
        wxGetApp().SetClassName(name);
}

EWXWEXPORT(wxString*, ELJApp_GetVendorName)()
{
   return new wxString(wxGetApp().GetVendorName());
}

EWXWEXPORT(void, ELJApp_SetVendorName)(char* name)
{
        wxGetApp().SetVendorName(name);
}

EWXWEXPORT(void*, ELJApp_GetTopWindow)()
{
        return wxGetApp().GetTopWindow();
}

EWXWEXPORT(void, ELJApp_SetExitOnFrameDelete)(int flag)
{
        wxGetApp().SetExitOnFrameDelete(flag != 0);
}

EWXWEXPORT(int, ELJApp_GetExitOnFrameDelete)()
{
        return (int)wxGetApp().GetExitOnFrameDelete();
}

EWXWEXPORT(void*, ELJApp_CreateLogTarget)()
{
        return wxGetApp().CreateLogTarget();
}

/*
EWXWEXPORT(int, ELJApp_GetWantDebugOutput)()
{
        return (int)wxGetApp().GetWantDebugOutput();
}
*/

EWXWEXPORT(void, ELJApp_SetUseBestVisual)( int flag )
{
        wxGetApp().SetUseBestVisual( flag != 0 );
}

EWXWEXPORT(int, ELJApp_GetUseBestVisual)()
{
        return (int)wxGetApp().GetUseBestVisual();
}

EWXWEXPORT(void, ELJApp_SetPrintMode)(int mode)
{
        wxGetApp().SetPrintMode(mode);
}

EWXWEXPORT(void, ELJApp_ExitMainLoop) ()
{
        wxGetApp ().ExitMainLoop();
}

EWXWEXPORT(void, ELJApp_SetTopWindow) (void* _wnd)
{
        wxGetApp ().SetTopWindow ((wxWindow*)_wnd);
}
/*
EWXWEXPORT(int, ELJApp_SendIdleEvents)()
{
        return (int)wxGetApp().SendIdleEvents();
}

EWXWEXPORT(int, ELJApp_SendIdleEventsToWindow)(void* win)
{
        return (int)wxGetApp().SendIdleEvents((wxWindow*) win);
}
*/
EWXWEXPORT(void, ELJApp_EnableTooltips)(int _enable)
{
        wxToolTip::Enable (_enable != 0);
}

EWXWEXPORT(void, ELJApp_SetTooltipDelay)(int _ms)
{
        wxToolTip::SetDelay (_ms);
}

EWXWEXPORT(void, ELJApp_InitAllImageHandlers)()
{
        wxInitAllImageHandlers();
}

EWXWEXPORT(void, ELJApp_DisplaySize)(void* w, void* h)
{
        wxDisplaySize((int*)w, (int*)h);
}

EWXWEXPORT(void, ELJApp_EnableTopLevelWindows)(int _enb)
{
        wxEnableTopLevelWindows(_enb != 0);
}

EWXWEXPORT(void, ELJApp_Exit)()
{
        wxExit();
}

EWXWEXPORT(void, ELJApp_MousePosition)(void* x, void* y)
{
        wxGetMousePosition((int*)x, (int*)y);
}

EWXWEXPORT(void*, ELJApp_FindWindowByLabel)(void* _lbl, void* _prt)
{
        return (void*)wxFindWindowByLabel((char*)_lbl, (wxWindow*)_prt);
}

EWXWEXPORT(void*, ELJApp_FindWindowByName)(void* _lbl, void* _prt)
{
        return (void*)wxFindWindowByName((char*)_lbl, (wxWindow*)_prt);
}

EWXWEXPORT(void*, ELJApp_FindWindowById)(int _id, void* _prt)
{
        return (void*)wxWindow::FindWindowById((long)_id, (wxWindow*)_prt);
}


EWXWEXPORT(void*, ELJApp_GetApp)()
{
        return (void*)wxTheApp;
}

EWXWEXPORT(wxString*, ELJApp_GetUserId)()
{
   return new wxString(wxGetUserId());
}

EWXWEXPORT(wxString*, ELJApp_GetUserName)()
{
   return new wxString(wxGetUserName());
}

EWXWEXPORT(wxString*, ELJApp_GetUserHome)(char* _usr)
{
   return new wxString(wxGetUserHome((const char*)_usr));
}

EWXWEXPORT(int, ELJApp_ExecuteProcess)(char* _cmd, int _snc, void* _prc)
{
        return (int)wxExecute((const char*)_cmd, _snc != 0, (wxProcess*)_prc);
}

EWXWEXPORT(int, ELJApp_Yield)()
{
        return (int)wxYield();
}

EWXWEXPORT(int, ELJApp_SafeYield)(void* _win)
{
  return (int)wxSafeYield((wxWindow*)_win);
}

EWXWEXPORT(int, ELJApp_GetOsVersion)(void* _maj, void* _min)
{
  return wxGetOsVersion((int*)_maj, (int*)_min);
}

EWXWEXPORT(wxString*, ELJApp_GetOsDescription)()
{
   return new wxString(wxGetOsDescription());
}

EWXWEXPORT(void, ELJApp_Sleep)(int _scs)
{
        wxSleep(_scs);
}

EWXWEXPORT(void, ELJApp_USleep)(int _mscs)
{
        wxUsleep(_mscs);
}

EWXWEXPORT(int,ELJApp_IsTerminating)()
{
        return APPTerminating;
}

EWXWEXPORT(int, QuantizePalette)(void* src, void* dest, void* pPalette, int desiredNoColours, void* eightBitData, int flags)
{
#if defined(__WXGTK__) && (wxVERSION_NUMBER <= 2400)
    return 0;
#else
        return (int)wxQuantize::Quantize(*((wxImage*)src), *((wxImage*)dest), (wxPalette**)pPalette, desiredNoColours, (unsigned char**)eightBitData, flags);
#endif
}

EWXWEXPORT(int, Quantize)(void* src, void* dest, int desiredNoColours, void* eightBitData, int flags)
{
#if defined(__WXGTK__) && (wxVERSION_NUMBER <= 2400)
    return 0;
#else
        return (int)wxQuantize::Quantize(*((wxImage*)src), *((wxImage*)dest), desiredNoColours, (unsigned char**)eightBitData, flags);
#endif
}


EWXWEXPORT(void*, wxEvtHandler_Create)()
{
        return (void*) new wxEvtHandler();
}

EWXWEXPORT(void, wxEvtHandler_Delete)(void* _obj)
{
        delete (wxEvtHandler*)_obj;
}


EWXWEXPORT(int, wxEvtHandler_Disconnect)(void* _obj, int first, int last, int type, int data)
{
        return (int)((wxEvtHandler*)_obj)->Disconnect(first, last, type, (wxObjectEventFunction)&ELJApp::HandleEvent, (wxObject*) data);
}

EWXWEXPORT(void*, wxEvtHandler_GetNextHandler)(void* _obj)
{
        return (void*)((wxEvtHandler*)_obj)->GetNextHandler();
}

EWXWEXPORT(void*, wxEvtHandler_GetPreviousHandler)(void* _obj)
{
        return (void*)((wxEvtHandler*)_obj)->GetPreviousHandler();
}

EWXWEXPORT(void, wxEvtHandler_SetNextHandler)(void* _obj, void* handler)
{
        ((wxEvtHandler*)_obj)->SetNextHandler((wxEvtHandler*)handler);
}

EWXWEXPORT(void, wxEvtHandler_SetPreviousHandler)(void* _obj, void* handler)
{
        ((wxEvtHandler*)_obj)->SetPreviousHandler((wxEvtHandler*)handler);
}

EWXWEXPORT(void, wxEvtHandler_SetEvtHandlerEnabled)(void* _obj, int enabled)
{
        ((wxEvtHandler*)_obj)->SetEvtHandlerEnabled(enabled != 0);
}

EWXWEXPORT(int, wxEvtHandler_GetEvtHandlerEnabled)(void* _obj)
{
        return (int)((wxEvtHandler*)_obj)->GetEvtHandlerEnabled();
}

EWXWEXPORT(int, wxEvtHandler_ProcessEvent)(void* _obj, void* event)
{
        return (int)((wxEvtHandler*)_obj)->ProcessEvent(*((wxEvent*)event));
}

EWXWEXPORT(void, wxEvtHandler_AddPendingEvent)(void* _obj, void* event)
{
        ((wxEvtHandler*)_obj)->AddPendingEvent(*((wxEvent*)event));
}

EWXWEXPORT(void, wxEvtHandler_ProcessPendingEvents)(void* _obj)
{
        ((wxEvtHandler*)_obj)->ProcessPendingEvents();
}

EWXWEXPORT(void*, Null_AcceleratorTable)()
{
        return (void*)&wxNullAcceleratorTable;
}

EWXWEXPORT(void*, Null_Bitmap)()
{
        return (void*)&wxNullBitmap;
}

EWXWEXPORT(void*, Null_Icon)()
{
        return (void*)&wxNullIcon;
}

EWXWEXPORT(void*, Null_Cursor)()
{
        return (void*)&wxNullCursor;
}

EWXWEXPORT(void*, Null_Pen)()
{
        return (void*)&wxNullPen;
}

EWXWEXPORT(void*, Null_Palette)()
{
        return (void*)&wxNullPalette;
}

EWXWEXPORT(void*, Null_Font)()
{
        return (void*)&wxNullFont;
}
/*
EWXWEXPORT(int, wxDllLoader_LoadLibrary)(void* _name, void* _success)
{
        bool success;

        wxDllType result = wxDllLoader::LoadLibrary ((const char*)_name, &success);

        if (success)
                *((int*)_success) = 1;
        else
                *((int*)_success) = 0;

        return (int) result;
}

EWXWEXPORT(void, wxDllLoader_UnloadLibrary)(int _handle)
{
        wxDllLoader::UnloadLibrary ((wxDllType)_handle);
}

EWXWEXPORT(void*, wxDllLoader_GetSymbol)(int _handle, void* _name)
{
        return wxDllLoader::GetSymbol ((wxDllType)_handle, (const char*)_name);
}
*/
EWXWEXPORT(void, wxCFree) (void* _ptr)
{
        free (_ptr);
}

EWXWEXPORT(void*, wxClassInfo_CreateClassByName) (void* _inf)
{
        wxClassInfo* inf = wxClassInfo::FindClass ((char*)_inf);
        if (inf)
                return inf->CreateObject();
        return NULL;
}

EWXWEXPORT(wxString*, wxClassInfo_GetClassName) (wxClassInfo* _obj)
{
  return new wxString(_obj->GetClassName());
}

EWXWEXPORT(int, wxClassInfo_IsKindOf) (wxClassInfo* _obj, wxClassInfo* inf)
{
  return (int)_obj->IsKindOf(inf);
}

EWXWEXPORT(int,wxEvent_NewEventType)()
{
        return (int)wxNewEventType();
}

/*-----------------------------------------------------------------------------
  String
-----------------------------------------------------------------------------*/
EWXWEXPORT(wxString*, wxString_Create)( char* buffer )
{
  return new wxString(buffer);
}

EWXWEXPORT(wxString*, wxString_CreateLen)( char* buffer, int len )
{
  return new wxString(buffer,len);
}

EWXWEXPORT(void,wxString_Delete)( wxString* s )
{
  delete s;
}

EWXWEXPORT(int,wxString_GetString)( wxString* s, char* buffer )
{
  if (buffer) memcpy (buffer, s->c_str(), s->Length());
  return s->Length();
}  

EWXWEXPORT(int,wxString_GetLength)(wxString* s)
{
  return s->Length();
}  
EWXWEXPORT(const char *,wxStringc_str)(wxString* s)
{
  return s->c_str();
}  


}



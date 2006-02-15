#include "ewxw_def.h"
#include "wx/wx.h"
#include "wx/print.h"
#include "wx/printdlg.h"

/*-----------------------------------------------------------------------------
  new event types
-----------------------------------------------------------------------------*/
BEGIN_DECLARE_EVENT_TYPES()
    DECLARE_LOCAL_EVENT_TYPE(wxEVT_PRINT_BEGIN, 2000)
    DECLARE_LOCAL_EVENT_TYPE(wxEVT_PRINT_END, 2001 )
    DECLARE_LOCAL_EVENT_TYPE(wxEVT_PRINT_BEGIN_DOC, 1002 )
    DECLARE_LOCAL_EVENT_TYPE(wxEVT_PRINT_END_DOC, 1003 )
    DECLARE_LOCAL_EVENT_TYPE(wxEVT_PRINT_PREPARE, 1004 )
    DECLARE_LOCAL_EVENT_TYPE(wxEVT_PRINT_PAGE, 1005 )
END_DECLARE_EVENT_TYPES()


DEFINE_LOCAL_EVENT_TYPE( wxEVT_PRINT_BEGIN )
DEFINE_LOCAL_EVENT_TYPE( wxEVT_PRINT_END )
DEFINE_LOCAL_EVENT_TYPE( wxEVT_PRINT_BEGIN_DOC )
DEFINE_LOCAL_EVENT_TYPE( wxEVT_PRINT_END_DOC )
DEFINE_LOCAL_EVENT_TYPE( wxEVT_PRINT_PREPARE )
DEFINE_LOCAL_EVENT_TYPE( wxEVT_PRINT_PAGE )

/*-----------------------------------------------------------------------------
  Printout and events
-----------------------------------------------------------------------------*/

class wxcPrintout : public wxPrintout
{
private:
  DECLARE_DYNAMIC_CLASS(wxcPrintout)

protected:
  int   m_startPage;
  int   m_endPage;
  int   m_fromPage;
  int   m_toPage;
  wxEvtHandler* m_evtHandler;

public:
  wxcPrintout() : wxPrintout() {};
  wxcPrintout( const wxString& title );
  ~wxcPrintout();

  void SetPageLimits( int startPage, int endPage, int fromPage, int toPage );   
  wxEvtHandler* GetEvtHandler();

  /* virtual members */
  void GetPageInfo( int* startPage, int* endPage, int* fromPage, int* toPage );
  bool OnBeginDocument( int startPage, int endPage );
  void OnEndDocument();
  void OnBeginPrinting();
  void OnEndPrinting();
  void OnPreparePrinting();
  bool OnPrintPage( int page );
  bool HasPage( int page );
};

IMPLEMENT_DYNAMIC_CLASS(wxcPrintout, wxPrintout)


class wxcPrintEvent : public wxEvent
{
private:
    DECLARE_DYNAMIC_CLASS(wxcPrintEvent)
private:
    wxcPrintout* m_printOut;
    int         m_page;
    int         m_lastPage;
    bool        m_continue;

public:
    wxcPrintEvent() : wxEvent() {};
    wxcPrintEvent( const wxcPrintEvent& printEvent ); // copy constructor
    wxcPrintEvent( wxEventType evtType, int id, wxcPrintout* printOut, int page, int lastPage );
    wxEvent* Clone() const          { return new wxcPrintEvent(*this); }

    wxcPrintout* GetPrintout();
    int         GetPage();
    int         GetEndPage();
    bool        GetContinue();
    void        SetContinue( bool cont );
    void        SetPageLimits( int startPage, int endPage, int fromPage, int toPage );   
};

IMPLEMENT_DYNAMIC_CLASS(wxcPrintEvent, wxEvent)


/*-----------------------------------------------------------------------------
  Print events
-----------------------------------------------------------------------------*/
wxcPrintEvent::wxcPrintEvent( wxEventType evtType, int id, wxcPrintout* printOut, int page, int lastPage )
: wxEvent( id, evtType )
{
  m_printOut = printOut;
  m_page     = page;
  m_lastPage = lastPage;
  m_continue = true;
}

wxcPrintEvent::wxcPrintEvent( const wxcPrintEvent& printEvent ) : wxEvent( printEvent )
{
  m_printOut = printEvent.m_printOut;
  m_page     = printEvent.m_page;
  m_lastPage = printEvent.m_lastPage;
  m_continue = printEvent.m_continue;
}

wxcPrintout* wxcPrintEvent::GetPrintout()
{
  return m_printOut;
}

int wxcPrintEvent::GetPage()
{
  return m_page;
}

int wxcPrintEvent::GetEndPage()
{
  return m_lastPage;
}

bool wxcPrintEvent::GetContinue()
{
  return m_continue;
}

void wxcPrintEvent::SetContinue( bool cont )
{
  m_continue = cont;
}

void wxcPrintEvent::SetPageLimits( int startPage, int endPage, int fromPage, int toPage )
{
  if (m_printOut) {
    m_printOut->SetPageLimits( startPage, endPage, fromPage, toPage );
  }
}


/*-----------------------------------------------------------------------------
  Printout 
-----------------------------------------------------------------------------*/
wxcPrintout::wxcPrintout( const wxString& title ) : wxPrintout( title )
{
  m_startPage = 1;
  m_endPage   = 32000;
  m_fromPage  = 1;
  m_toPage    = 1;
  m_evtHandler = new wxEvtHandler();
}

wxcPrintout::~wxcPrintout()
{
  if (m_evtHandler) delete m_evtHandler;
}

wxEvtHandler* wxcPrintout::GetEvtHandler()
{
  return m_evtHandler;
}

void wxcPrintout::SetPageLimits( int startPage, int endPage, int fromPage, int toPage )
{
  m_startPage = startPage;
  m_endPage   = endPage;
  m_fromPage  = fromPage;
  m_toPage    = toPage;  
}

void wxcPrintout::GetPageInfo( int* startPage, int* endPage, int* fromPage, int* toPage )
{
  if (startPage) *startPage = m_startPage;
  if (endPage)   *endPage   = m_endPage;
  if (fromPage)  *fromPage  = m_fromPage;
  if (toPage)    *toPage    = m_toPage;
}

bool wxcPrintout::OnBeginDocument( int startPage, int endPage )
{
  bool cont = wxPrintout::OnBeginDocument( startPage, endPage );
  if (cont) {
    wxcPrintEvent printEvent( wxEVT_PRINT_BEGIN_DOC, 0, this, startPage, endPage );
    m_evtHandler->ProcessEvent( printEvent );
    cont = printEvent.GetContinue();
  }
  return cont;
}

void wxcPrintout::OnEndDocument()
{
  wxcPrintEvent printEvent( wxEVT_PRINT_END_DOC, 0, this, 0, 0 );
  m_evtHandler->ProcessEvent(printEvent);
  wxPrintout::OnEndDocument();
}

void wxcPrintout::OnBeginPrinting()
{
  wxcPrintEvent printEvent( wxEVT_PRINT_BEGIN, 0, this, 0, 0 );
  wxPrintout::OnBeginPrinting();
  m_evtHandler->ProcessEvent(printEvent);
}

void wxcPrintout::OnEndPrinting()
{
  wxcPrintEvent printEvent( wxEVT_PRINT_END, 0, this, 0, 0 );
  m_evtHandler->ProcessEvent(printEvent);
  wxPrintout::OnEndPrinting();
}

void wxcPrintout::OnPreparePrinting()
{
  wxcPrintEvent printEvent( wxEVT_PRINT_PREPARE, 0, this, 0, 0 );
  wxPrintout::OnPreparePrinting(); 
  m_evtHandler->ProcessEvent(printEvent);  
}

bool wxcPrintout::OnPrintPage( int page )
{
  wxcPrintEvent printEvent( wxEVT_PRINT_PAGE, 0, this, page, page );
  m_evtHandler->ProcessEvent(printEvent);
  return printEvent.GetContinue();  
}

bool wxcPrintout::HasPage( int page )
{
  return (page >= m_fromPage && page <= m_toPage);
}

/* SKS - commented the code which follows because this header file was not being compiled
   earlier, and hence the code was also not being compiled. But now it is. */
/*-----------------------------------------------------------------------------
  Printout events
-----------------------------------------------------------------------------*/
/* int expEVT_PRINT_BEGIN(); */
/* int expEVT_PRINT_BEGIN_DOC(); */
/* int expEVT_PRINT_END(); */
/* int expEVT_PRINT_END_DOC(); */
/* int expEVT_PRINT_PREPARE(); */
/* int expEVT_PRINT_PAGE(); */

/* /*----------------------------------------------------------------------------- */
/*   Printout  */
/* -----------------------------------------------------------------------------*/ */
/* TClass(wxDC) wxPrintout_GetDC( TSelf(wxPrintout) _obj ); */
/* void       wxPrintout_GetPPIPrinter( TSelf(wxPrintout) _obj, TPointOutVoid(_x,_y) ); */
/* void       wxPrintout_GetPPIScreen( TSelf(wxPrintout) _obj, TPointOutVoid(_x,_y) ); */
/* void       wxPrintout_GetPageSizeMM( TSelf(wxPrintout) _obj, TSizeOutVoid(_w,_h) ); */
/* void       wxPrintout_GetPageSizePixels( TSelf(wxPrintout) _obj, TSizeOutVoid(_w,_h) ); */
/* TStringLen wxPrintout_GetTitle( TSelf(wxPrintout) _obj, TStringOutVoid _buf ); */
/* TBool      wxPrintout_IsPreview( TSelf(wxPrintout) _obj ); */
/* void       wxPrintout_SetDC( TSelf(wxPrintout) _obj, TClass(wxDC) dc ); */
/* void       wxPrintout_SetIsPreview( TSelf(wxPrintout) _obj, TBoolInt p ); */
/* void       wxPrintout_SetPPIPrinter( TSelf(wxPrintout) _obj, TPoint(x,y) ); */
/* void       wxPrintout_SetPPIScreen( TSelf(wxPrintout) _obj, TPoint(x,y) ); */
/* void       wxPrintout_SetPageSizeMM( TSelf(wxPrintout) _obj, TSize(w,h) ); */
/* void       wxPrintout_SetPageSizePixels( TSelf(wxPrintout) _obj, TSize(w,h) ); */



/* /*----------------------------------------------------------------------------- */
/*   WXCPrintout  */
/* -----------------------------------------------------------------------------*/ */
/* TClassDefExtend( wxcPrintout, wxPrintout ); */
/* TClassDefExtend( wxcPrintEvent, wxEvent ); */
/* TClassDefExtend( wxcPrintoutHandler, wxEvtHandler ); */
  
/* TClass(wxcPrintout) wxcPrintout_Create( TClass(wxString) title ); */
/* void wxcPrintout_Delete( TSelf(wxcPrintout) self ); */
/* void wxcPrintout_SetPageLimits( TSelf(wxcPrintout) self, int startPage, int endPage, int fromPage, int toPage ); */
/* /** Usage: @wxcPrintoutGetEvtHandler self@. Do not delete the associated event handler! */ */
/* TClass(wxcPrintoutHandler) wxcPrintout_GetEvtHandler( TSelf(wxcPrintout) self ); */

/* /** Usage: @wxcPrintEventGetPrintout self@. Do not delete the associated printout! */ */
/* TClass(wxcPrintout) wxcPrintEvent_GetPrintout( TSelf(wxcPrintEvent) self ); */
/* int   wxcPrintEvent_GetPage( TSelf(wxcPrintEvent) self ); */
/* int   wxcPrintEvent_GetEndPage( TSelf(wxcPrintEvent) self ); */
/* TBool wxcPrintEvent_GetContinue( TSelf(wxcPrintEvent) self ); */
/* void  wxcPrintEvent_SetContinue( TSelf(wxcPrintEvent) self, TBool cont ); */
/* void  wxcPrintEvent_SetPageLimits( TSelf(wxcPrintEvent) self, int startPage, int endPage, int fromPage, int toPage ); */



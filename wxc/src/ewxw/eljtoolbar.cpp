#include "wrapper.h"

extern "C"
{

EWXWEXPORT(void*, wxToolBar_Create) (void* _prt, int _id, int _lft, int _top, int _wdt, int _hgt, int _stl)
{
	return (void*) new wxToolBar ((wxWindow*)_prt, _id, wxPoint(_lft, _top), wxSize(_wdt, _hgt), _stl);
}

EWXWEXPORT(void, wxToolBar_Delete) (void* _obj)
{
	delete (wxToolBar*)_obj;
}

EWXWEXPORT(int, wxToolBar_AddControl) (void* _obj, void* ctrl)
{
	return (int)((wxToolBar*)_obj)->AddControl ((wxControl*)ctrl);
}

EWXWEXPORT(void, wxToolBar_AddSeparator) (void* _obj)
{
	((wxToolBar*)_obj)->AddSeparator ();
}

EWXWEXPORT(void, wxToolBar_AddTool) (void* _obj, int id, void* bmp, char* shelp, char* lhelp)
{
	((wxToolBar*)_obj)->AddTool (id, *(wxBitmap*)bmp, shelp, lhelp);
}

EWXWEXPORT(void, wxToolBar_AddToolEx) (void* _obj, int id, void* bmp1, void* bmp2, int tgl, int x, int y,
                                       void* dat, char* shelp, char* lhelp)
{
	((wxToolBar*)_obj)->AddTool (id, *(wxBitmap*)bmp1, *(wxBitmap*)bmp2, tgl != 0, x, y, (wxObject*)dat, shelp, lhelp);
}

EWXWEXPORT(int, wxToolBar_DeleteTool) (void* _obj, int id)
{
	return (int)((wxToolBar*)_obj)->DeleteTool (id);
}

EWXWEXPORT(int, wxToolBar_DeleteToolByPos) (void* _obj, int pos)
{
	return (int)((wxToolBar*)_obj)->DeleteToolByPos (pos);
}

EWXWEXPORT(void, wxToolBar_EnableTool) (void* _obj, int id, int enb)
{
	((wxToolBar*)_obj)->EnableTool (id, enb != 0);
}

EWXWEXPORT(void, wxToolBar_GetToolSize) (void* _obj, void* x, void* y)
{
	*((int*)x) = ((wxToolBar*)_obj)->GetToolSize().x;
	*((int*)y) = ((wxToolBar*)_obj)->GetToolSize().y;
}

EWXWEXPORT(void, wxToolBar_GetToolBitmapSize) (void* _obj, void* x, void* y)
{
	*((int*)x) = ((wxToolBar*)_obj)->GetToolBitmapSize().x;
	*((int*)y) = ((wxToolBar*)_obj)->GetToolBitmapSize().y;
}

EWXWEXPORT(void, wxToolBar_GetMargins) (void* _obj, void* x, void* y)
{
	*((int*)x) = ((wxToolBar*)_obj)->GetMargins().x;
	*((int*)y) = ((wxToolBar*)_obj)->GetMargins().y;
}

EWXWEXPORT(void*, wxToolBar_GetToolClientData) (void* _obj, int id)
{
	return (void*)((wxToolBar*)_obj)->GetToolClientData (id);
}

EWXWEXPORT(int, wxToolBar_GetToolEnabled) (void* _obj, int id)
{
	return (int)((wxToolBar*)_obj)->GetToolEnabled (id);
}

EWXWEXPORT(wxString*, wxToolBar_GetToolLongHelp) (wxToolBar* _obj, int id)
{
   return new wxString(_obj->GetToolLongHelp (id));
}

EWXWEXPORT(int, wxToolBar_GetToolPacking) (void* _obj)
{
	return ((wxToolBar*)_obj)->GetToolPacking ();
}

EWXWEXPORT(wxString *, wxToolBar_GetToolShortHelp) (wxToolBar* _obj, int id)
{
   return new wxString(_obj->GetToolShortHelp (id));
}

EWXWEXPORT(int, wxToolBar_GetToolState) (void* _obj, int id)
{
	return (int)((wxToolBar*)_obj)->GetToolState (id);
}

EWXWEXPORT(void, wxToolBar_InsertControl) (void* _obj, int pos, void* ctrl)
{
	((wxToolBar*)_obj)->InsertControl ((size_t)pos, (wxControl*) ctrl);
}

EWXWEXPORT(void, wxToolBar_InsertSeparator) (void* _obj, int pos)
{
	((wxToolBar*)_obj)->InsertSeparator ((size_t)pos);
}

EWXWEXPORT(void, wxToolBar_InsertTool) (wxToolBar* _obj, int pos, int id, void* bmp1, void* bmp2, int tgl,
                                        void* dat, char* shelp, char* lhelp)
{
	_obj->InsertTool(pos, id, *(wxBitmap*)bmp1, *(wxBitmap*)bmp2, tgl != 0, (wxObject*)dat, shelp, lhelp);
}

EWXWEXPORT(int, wxToolBar_Realize) (void* _obj)
{
	return (int)((wxToolBar*)_obj)->Realize ();
}

EWXWEXPORT(void, wxToolBar_RemoveTool) (void* _obj, int id)
{
	((wxToolBar*)_obj)->RemoveTool (id);
}

EWXWEXPORT(void, wxToolBar_SetMargins) (void* _obj, int x, int y)
{
#ifdef __WIN32__
	((wxToolBar*)_obj)->SetMargins(wxSize(x, y));
#else
	((wxToolBar*)_obj)->SetMargins(x, y);
#endif
}

EWXWEXPORT(void, wxToolBar_SetToolBitmapSize) (void* _obj, int x, int y)
{
	((wxToolBar*)_obj)->SetToolBitmapSize (wxSize(x, y));
}

EWXWEXPORT(void, wxToolBar_SetToolClientData) (void* _obj, int id, void* dat)
{
	((wxToolBar*)_obj)->SetToolClientData (id, (wxObject*)dat);
}

EWXWEXPORT(void, wxToolBar_SetToolLongHelp) (void* _obj, int id, char* str)
{
	((wxToolBar*)_obj)->SetToolLongHelp (id, str);
}

EWXWEXPORT(void, wxToolBar_SetToolPacking) (void* _obj, int val)
{
	((wxToolBar*)_obj)->SetToolPacking (val);
}

EWXWEXPORT(void, wxToolBar_SetToolShortHelp) (void* _obj, int id, char* str)
{
	((wxToolBar*)_obj)->SetToolShortHelp (id, str);
}

EWXWEXPORT(void, wxToolBar_SetToolSeparation) (void* _obj, int val)
{
	((wxToolBar*)_obj)->SetToolSeparation (val);
}

EWXWEXPORT(void, wxToolBar_ToggleTool) (void* _obj, int id, int val)
{
	((wxToolBar*)_obj)->ToggleTool (id, val != 0);
}

EWXWEXPORT(void,wxToolBar_AddTool2)( wxToolBar* _obj, int toolId, char* label, wxBitmap* bmp, wxBitmap* bmpDisabled, int itemKind, char* shortHelp, char* longHelp )
{
  _obj->AddTool(toolId,label,*bmp,*bmpDisabled,(wxItemKind)itemKind,shortHelp,longHelp,NULL);
}

}

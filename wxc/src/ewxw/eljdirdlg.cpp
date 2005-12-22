#include "wrapper.h"


extern "C"
{

EWXWEXPORT(void*, wxDirDialog_Create) (void* _prt, void* _msg, void* _dir, int _lft, int _top, int _stl)
{
	return (void*) new wxDirDialog ((wxWindow*)_prt, (char*)_msg, (char*) _dir, _stl, wxPoint(_lft, _top));
}

EWXWEXPORT(void, wxDirDialog_SetMessage)(void* _obj, void* msg)
{
	((wxDirDialog*)_obj)->SetMessage((char*)msg);
}
	
EWXWEXPORT(void, wxDirDialog_SetPath)(void* _obj, void* pth)
{
	((wxDirDialog*)_obj)->SetPath((char*) pth);
}
	
EWXWEXPORT(void, wxDirDialog_SetStyle)(void* _obj, int style)
{
	((wxDirDialog*)_obj)->SetStyle((long)style);
}
	
EWXWEXPORT(wxString *, wxDirDialog_GetMessage)(wxDirDialog* _obj)
{
   return new wxString(_obj->GetMessage());
}
	
EWXWEXPORT(wxString*, wxDirDialog_GetPath)(wxDirDialog* _obj)
{
  return new wxString(_obj->GetPath());
}
	
EWXWEXPORT(int, wxDirDialog_GetStyle)(void* _obj)
{
	return (int)((wxDirDialog*)_obj)->GetStyle();
}
	
}

#include "wrapper.h"

extern "C"
{

EWXWEXPORT(void*, wxStatusBar_Create) (void* _prt, int _id, int _stl)
{
  return (void*) new wxStatusBar ((wxWindow*)_prt, _id, _stl);
}

EWXWEXPORT(void, wxStatusBar_SetFieldsCount)(void* _obj, int number, int* widths)
{
	((wxStatusBar*)_obj)->SetFieldsCount(number, widths);
}
	
EWXWEXPORT(int, wxStatusBar_GetFieldsCount)(void* _obj)
{
	return ((wxStatusBar*)_obj)->GetFieldsCount();
}
	
EWXWEXPORT(void, wxStatusBar_SetStatusText)(void* _obj, void* text, int number)
{
	((wxStatusBar*)_obj)->SetStatusText((char*)text, number);
}
	
EWXWEXPORT(wxString *, wxStatusBar_GetStatusText)(wxStatusBar* _obj, int number)
{
  return new wxString(_obj->GetStatusText(number));
}
	
EWXWEXPORT(void, wxStatusBar_SetStatusWidths)(void* _obj, int n, int* widths)
{
	((wxStatusBar*)_obj)->SetStatusWidths(n, widths);
}

/*	
EWXWEXPORT(int, wxStatusBar_GetFieldRect)(void* _obj, int i, wxRect& rect)
{
	return (int)((wxStatusBar*)_obj)->GetFieldRect(int i, wxRect& rect);
}
*/
	
EWXWEXPORT(void, wxStatusBar_SetMinHeight)(void* _obj, int height)
{
	((wxStatusBar*)_obj)->SetMinHeight(height);
}
	
EWXWEXPORT(int, wxStatusBar_GetBorderX)(void* _obj)
{
	return ((wxStatusBar*)_obj)->GetBorderX();
}
	
EWXWEXPORT(int, wxStatusBar_GetBorderY)(void* _obj)
{
	return ((wxStatusBar*)_obj)->GetBorderY();
}
	
}

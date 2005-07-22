#include "wrapper.h"

extern "C"
{

EWXWEXPORT(void*, wxStatusBar_Create) (void* _prt, int _id, int _lft, int _top, int _wdt, int _hgt, int _stl)
{
#if wxVERSION_NUMBER >= 2400
	return (void*) new wxStatusBar ((wxWindow*)_prt, _id, _stl);
#else
	return (void*) new wxStatusBar ((wxWindow*)_prt, _id, wxPoint(_lft, _top), wxSize(_wdt, _hgt), _stl);
#endif
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
	
EWXWEXPORT(int, wxStatusBar_GetStatusText)(void* _obj, int number, void* _buf)
{
	wxString result = ((wxStatusBar*)_obj)->GetStatusText(number);
	if (_buf) memcpy (_buf, result.c_str(), result.Length());
	return result.Length();
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

#include "wrapper.h"

extern "C"
{

EWXWEXPORT(void*, wxCalendarDateAttr_Create)(void* _ctxt, void* _cbck, void* _cbrd, void* _fnt, int _brd)
{
	return (void*) new wxCalendarDateAttr(*((wxColour*)_ctxt), *((wxColour*)_cbck), *((wxColour*)_cbrd), *((wxFont*)_fnt), (wxCalendarDateBorder)_brd);
}

EWXWEXPORT(void*, wxCalendarDateAttr_CreateDefault)()
{
	return (void*) new wxCalendarDateAttr();
}

EWXWEXPORT(void, wxCalendarDateAttr_Delete)(void* _obj)
{
	delete (wxCalendarDateAttr*)_obj;
}

EWXWEXPORT(void, wxCalendarDateAttr_SetTextColour)(void* _obj, void* col)
{
	((wxCalendarDateAttr*)_obj)->SetTextColour(*((wxColour*)col));
}
	
EWXWEXPORT(void, wxCalendarDateAttr_SetBackgroundColour)(void* _obj, void* col)
{
	((wxCalendarDateAttr*)_obj)->SetBackgroundColour(*((wxColour*)col));
}
	
EWXWEXPORT(void, wxCalendarDateAttr_SetBorderColour)(void* _obj, void* col)
{
	((wxCalendarDateAttr*)_obj)->SetBorderColour(*((wxColour*)col));
}
	
EWXWEXPORT(void, wxCalendarDateAttr_SetFont)(void* _obj, void* font)
{
	((wxCalendarDateAttr*)_obj)->SetFont(*((wxFont*)font));
}
	
EWXWEXPORT(void, wxCalendarDateAttr_SetBorder)(void* _obj, int border)
{
	((wxCalendarDateAttr*)_obj)->SetBorder((wxCalendarDateBorder)border);
}
	
EWXWEXPORT(void, wxCalendarDateAttr_SetHoliday)(void* _obj, int holiday)
{
	((wxCalendarDateAttr*)_obj)->SetHoliday(holiday != 0);
}
	
EWXWEXPORT(int, wxCalendarDateAttr_HasTextColour)(void* _obj)
{
	return (int)((wxCalendarDateAttr*)_obj)->HasTextColour();
}
	
EWXWEXPORT(int, wxCalendarDateAttr_HasBackgroundColour)(void* _obj)
{
	return (int)((wxCalendarDateAttr*)_obj)->HasBackgroundColour();
}
	
EWXWEXPORT(int, wxCalendarDateAttr_HasBorderColour)(void* _obj)
{
	return (int)((wxCalendarDateAttr*)_obj)->HasBorderColour();
}
	
EWXWEXPORT(int, wxCalendarDateAttr_HasFont)(void* _obj)
{
	return (int)((wxCalendarDateAttr*)_obj)->HasFont();
}
	
EWXWEXPORT(int, wxCalendarDateAttr_HasBorder)(void* _obj)
{
	return (int)((wxCalendarDateAttr*)_obj)->HasBorder();
}
	
EWXWEXPORT(int, wxCalendarDateAttr_IsHoliday)(void* _obj)
{
	return (int)((wxCalendarDateAttr*)_obj)->IsHoliday();
}
	
EWXWEXPORT(wxColour*, wxCalendarDateAttr_GetTextColour)(void* _obj)
{
   wxColour* _ref = new wxColour(((wxCalendarDateAttr*)_obj)->GetTextColour());
   return _ref;
}
	
EWXWEXPORT(wxColour*, wxCalendarDateAttr_GetBackgroundColour)(void* _obj)
{
   wxColour* _ref = new wxColour(((wxCalendarDateAttr*)_obj)->GetBackgroundColour());
   return _ref;
}
	
EWXWEXPORT(wxColour*, wxCalendarDateAttr_GetBorderColour)(void* _obj)
{
   wxColour* _ref = new wxColour(((wxCalendarDateAttr*)_obj)->GetBorderColour());
   return _ref;
}
	
EWXWEXPORT(wxFont*, wxCalendarDateAttr_GetFont)(void* _obj)
{
   wxFont* _ref = new wxFont(((wxCalendarDateAttr*)_obj)->GetFont());
   return _ref;
}
	
EWXWEXPORT(int, wxCalendarDateAttr_GetBorder)(void* _obj)
{
	return (int)((wxCalendarDateAttr*)_obj)->GetBorder();
}

}
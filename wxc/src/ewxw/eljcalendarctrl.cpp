#include "wrapper.h"

extern "C"
{

EWXWEXPORT(void*, wxCalendarCtrl_Create) (void* _prt, int _id, void* _dat, int _lft, int _top, int _wdt, int _hgt, int _stl)
{
	return (void*) new wxCalendarCtrl ((wxWindow*)_prt, _id, *((wxDateTime*)_dat), wxPoint(_lft, _top), wxSize(_wdt, _hgt), _stl);
}

EWXWEXPORT(void, wxCalendarCtrl_SetDate)(void* _obj, void* date)
{
	((wxCalendarCtrl*)_obj)->SetDate(*((wxDateTime*)date));
}
	
EWXWEXPORT(void, wxCalendarCtrl_GetDate)(void* _obj, void* date)
{
	*((wxDateTime*)date) = ((wxCalendarCtrl*)_obj)->GetDate();
}
	
EWXWEXPORT(void, wxCalendarCtrl_EnableYearChange)(void* _obj, int enable)
{
	((wxCalendarCtrl*)_obj)->EnableYearChange(enable != 0);
}
	
EWXWEXPORT(void, wxCalendarCtrl_EnableMonthChange)(void* _obj, int enable)
{
	((wxCalendarCtrl*)_obj)->EnableMonthChange(enable != 0);
}
	
EWXWEXPORT(void, wxCalendarCtrl_EnableHolidayDisplay)(void* _obj, int display)
{
	((wxCalendarCtrl*)_obj)->EnableHolidayDisplay(display != 0);
}
	
EWXWEXPORT(void, wxCalendarCtrl_SetHeaderColours)(void* _obj, void* colFg, void* colBg)
{
	((wxCalendarCtrl*)_obj)->SetHeaderColours(*((wxColour*)colFg), *((wxColour*)colBg));
}
	
EWXWEXPORT(wxColour*, wxCalendarCtrl_GetHeaderColourFg)(void* _obj)
{
   wxColour* colour = new wxColour(((wxCalendarCtrl*)_obj)->GetHeaderColourFg());
   return colour;
}
	
EWXWEXPORT(wxColour*, wxCalendarCtrl_GetHeaderColourBg)(void* _obj)
{
   wxColour* colour = new wxColour(((wxCalendarCtrl*)_obj)->GetHeaderColourBg());
   return colour;
}
	
EWXWEXPORT(void, wxCalendarCtrl_SetHighlightColours)(void* _obj, void* colFg, void* colBg)
{
	((wxCalendarCtrl*)_obj)->SetHighlightColours(*((wxColour*)colFg), *((wxColour*)colBg));
}
	
EWXWEXPORT(wxColour*, wxCalendarCtrl_GetHighlightColourFg)(void* _obj)
{
   wxColour* colour = new wxColour(((wxCalendarCtrl*)_obj)->GetHighlightColourFg());
   return colour;
}
	
EWXWEXPORT(wxColour*, wxCalendarCtrl_GetHighlightColourBg)(void* _obj)
{
   wxColour* colour = new wxColour(((wxCalendarCtrl*)_obj)->GetHighlightColourBg());
   return colour;
}
	
EWXWEXPORT(void, wxCalendarCtrl_SetHolidayColours)(void* _obj, void* colFg, void* colBg)
{
	((wxCalendarCtrl*)_obj)->SetHolidayColours(*((wxColour*)colFg), *((wxColour*)colBg));
}
	
EWXWEXPORT(wxColour*, wxCalendarCtrl_GetHolidayColourFg)(void* _obj)
{
   wxColour* colour = new wxColour(((wxCalendarCtrl*)_obj)->GetHolidayColourFg());
   return colour;
}
	
EWXWEXPORT(wxColour*, wxCalendarCtrl_GetHolidayColourBg)(void* _obj)
{
   wxColour* colour = new wxColour(((wxCalendarCtrl*)_obj)->GetHolidayColourBg());
   return colour;
}
	
EWXWEXPORT(wxCalendarDateAttr*, wxCalendarCtrl_GetAttr)(void* _obj, int day)
{
	return ((wxCalendarCtrl*)_obj)->GetAttr((size_t)day);
}
	
EWXWEXPORT(void, wxCalendarCtrl_SetAttr)(void* _obj, int day, wxCalendarDateAttr* attr)
{
	((wxCalendarCtrl*)_obj)->SetAttr((size_t)day, attr);
}
	
EWXWEXPORT(void, wxCalendarCtrl_SetHoliday)(void* _obj, int day)
{
	((wxCalendarCtrl*)_obj)->SetHoliday((size_t)day);
}
	
EWXWEXPORT(void, wxCalendarCtrl_ResetAttr)(void* _obj, int day)
{
	((wxCalendarCtrl*)_obj)->ResetAttr((size_t)day);
}
	
EWXWEXPORT(int, wxCalendarCtrl_HitTest)(void* _obj, int x, int y, void* date, void* wd)
{
	return (int)((wxCalendarCtrl*)_obj)->HitTest(wxPoint(x, y), (wxDateTime*)date, (wxDateTime::WeekDay*)wd);
}
	

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

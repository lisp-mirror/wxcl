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

}

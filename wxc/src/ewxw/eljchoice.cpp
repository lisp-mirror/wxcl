#include "wrapper.h"

extern "C"
{

EWXWEXPORT(void*, wxChoice_Create) (void* _prt, int _id, int _lft, int _top, int _wdt, int _hgt, int _n, void* _str, int _stl)
{
	wxString* list = new wxString[_n];

	for (int i = 0; i < _n; i++)
		list[i] = ((char**)_str)[i];

	wxChoice* result = new wxChoice ((wxWindow*)_prt, _id, wxPoint(_lft, _top), wxSize(_wdt, _hgt), _n, list, _stl, wxDefaultValidator);

	delete [] list;

	return result;
}

EWXWEXPORT(void, wxChoice_Delete)(void* _obj, int n)
{
	((wxChoice*)_obj)->Delete(n);
}
	
EWXWEXPORT(int, wxChoice_GetColumns)(void* _obj)
{
	return ((wxChoice*)_obj)->GetColumns();
}

EWXWEXPORT(void, wxChoice_SetColumns)(void* _obj,int n=1)
{
	((wxChoice*)_obj)->SetColumns(n);
}
	
EWXWEXPORT(int, wxChoice_GetCurrentSelection)(void* _obj)
{
	return ((wxChoice*)_obj)->GetCurrentSelection();
}
	
} 

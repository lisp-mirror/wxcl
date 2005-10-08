#include "wrapper.h"

extern "C"
{

  EWXWEXPORT(void*, wxListBox_Create) (void* _prt, int _id, int _lft, int _top, int _wdt, int _hgt, int _n,char **_choices, int _stl)
{
  wxListBox* result = new wxListBox ((wxWindow*)_prt, _id, wxPoint(_lft, _top), wxSize(_wdt, _hgt), _n,(wxString*) _choices, _stl, wxDefaultValidator);

// 	for (int i = 0; i < _n; i++)
// 		result->Append(((char**)_str)[i]);

	return (void*) result;
}

EWXWEXPORT(void, wxListBox_Deselect)(void* _obj, int n)
{
	((wxListBox*)_obj)->Deselect(n);
}

EWXWEXPORT(void, wxListBox_Set)(void* _obj, int n,char **_choices)
{
  ((wxListBox*)_obj)->Set(n,(wxString*)_choices);
}
  
EWXWEXPORT(int, wxListBox_IsSelected)(void* _obj, int n)
{
	return (int)((wxListBox*)_obj)->IsSelected(n);
}
	
EWXWEXPORT(int*, wxListBox_GetSelections)(void* _obj)
{
	wxArrayInt sel;
	int result = ((wxListBox*)_obj)->GetSelections(sel);
	
	int *selections = (int*)malloc(result*sizeof(int));

	if(selections)
	  for (int i = 0; i < result; i++)
	    selections[i] = sel[i];
	return selections;
}
	
EWXWEXPORT(void, wxListBox_InsertItems)(void* _obj, void* items, int pos, int count)
{
  	wxArrayString array;
	
  	for (int i = 0; i< count; i++)
  		array[i] = ((char**)items)[i];
	
	((wxListBox*)_obj)->InsertItems(array, pos);
}
	
EWXWEXPORT(void, wxListBox_SetFirstItem)(void* _obj, int n)
{
	((wxListBox*)_obj)->SetFirstItem(n);
}
	
}

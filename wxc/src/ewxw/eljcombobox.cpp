#include "wrapper.h"

extern "C"
{

EWXWEXPORT(void*, wxComboBox_Create) (void* _prt, int _id, char* _txt, int _lft, int _top, int _wdt, int _hgt, int _n, void* _str, int _stl)
{
	wxString* list = new wxString[_n];

	for (int i = 0; i < _n; i++)
		list[i] = ((char**)_str)[i];

	wxComboBox* result = new wxComboBox ((wxWindow*)_prt, _id, _txt, wxPoint(_lft, _top), wxSize(_wdt, _hgt), _n, list, _stl, wxDefaultValidator);

	delete [] list;

	if ((result->GetCount()) && (result->GetSelection() == -1))
	  result->SetSelection(0);
	
	return (void*) result;
}

EWXWEXPORT(void, wxComboBox_Copy)(void* _obj)
{
	((wxComboBox*)_obj)->Copy();
}
	
EWXWEXPORT(void, wxComboBox_Cut)(void* _obj)
{
	((wxComboBox*)_obj)->Cut();
}
	
EWXWEXPORT(void, wxComboBox_Paste)(void* _obj)
{
	((wxComboBox*)_obj)->Paste();
}
	
EWXWEXPORT(void, wxComboBox_SetInsertionPoint)(void* _obj, int pos)
{
	((wxComboBox*)_obj)->SetInsertionPoint(pos);
}
	
EWXWEXPORT(void, wxComboBox_SetInsertionPointEnd)(void* _obj)
{
	((wxComboBox*)_obj)->SetInsertionPointEnd();
}
	
EWXWEXPORT(int, wxComboBox_GetInsertionPoint)(void* _obj)
{
	return ((wxComboBox*)_obj)->GetInsertionPoint();
}
	
EWXWEXPORT(int, wxComboBox_GetLastPosition)(void* _obj)
{
	return ((wxComboBox*)_obj)->GetLastPosition();
}
	
EWXWEXPORT(void, wxComboBox_Replace)(void* _obj, int from, int to, char* value)
{
	((wxComboBox*)_obj)->Replace(from, to, value);
}
	
EWXWEXPORT(void, wxComboBox_Remove)(void* _obj, int from, int to)
{
	((wxComboBox*)_obj)->Remove(from, to);
	if ((((wxComboBox*)_obj)->GetCount()) && (((wxComboBox*)_obj)->GetSelection() == -1))
	  ((wxComboBox*)_obj)->SetSelection(0);
}
	
EWXWEXPORT(void, wxComboBox_SetTextSelection)(void* _obj, int from, int to)
{
	((wxComboBox*)_obj)->SetSelection(from, to);
}
	
EWXWEXPORT(void, wxComboBox_SetEditable)(void* _obj, int editable)
{
	((wxComboBox*)_obj)->SetEditable(editable != 0);
}
	
EWXWEXPORT(wxString*, wxComboBox_GetValue)(wxComboBox* _obj)
{
   return new wxString(_obj->GetValue());
}

EWXWEXPORT(void, wxComboBox_SetValue)(void* _obj, char* _buf)
{
        ((wxComboBox*)_obj)->SetValue(_buf);
}

EWXWEXPORT(void, wxComboBox_SetSelection)(void* _obj, long from,long to)
{
        ((wxComboBox*)_obj)->SetSelection(from,to);
}

EWXWEXPORT(void, wxComboBox_Undo)(void* _obj)
{
       ((wxComboBox*)_obj)->Undo();
}

}

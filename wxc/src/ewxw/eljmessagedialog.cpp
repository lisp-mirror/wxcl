#include "wrapper.h"

extern "C"
{

EWXWEXPORT(void*, wxMessageDialog_Create)(void* _prt, char* _msg, char* _cap, int _stl)
{
	return (void*) new wxMessageDialog((wxWindow*)_prt, _msg, _cap, (long)_stl);
}

EWXWEXPORT(void, wxMessageDialog_Delete)(void* _obj)
{
	delete (wxMessageDialog*)_obj;
}

EWXWEXPORT(int, wxMessageDialog_ShowModal)(void* _obj)
{
	return ((wxMessageDialog*)_obj)->ShowModal();
}

}

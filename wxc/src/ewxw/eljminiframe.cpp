#include "wrapper.h"

extern "C"
{

EWXWEXPORT(void*, wxMiniFrame_Create) (void* _prt, int _id, void* _txt, int _lft, int _top, int _wdt, int _hgt, int _stl)
{
	return (void*) new wxMiniFrame ((wxWindow*)_prt, _id, (char*)_txt, wxPoint(_lft, _top), wxSize(_wdt, _hgt), _stl);
}

}

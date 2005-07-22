#include "wrapper.h"

extern "C"
{

EWXWEXPORT(void*, wxWizard_Create) (void* _prt, int _id, void* _txt, void* _bmp, int _lft, int _top, int _wdt, int _hgt)
{
	wxBitmap bmp = wxNullBitmap;
	if (_bmp) bmp = *((wxBitmap*)_bmp);
#if wxVERSION_NUMBER >= 2400
	return (void*) new wxWizard ((wxWindow*)_prt, _id, (char*)_txt, bmp, wxPoint(_lft, _top));
#else
	return (void*) wxWizard::Create ((wxWindow*)_prt, _id, (char*)_txt, bmp, wxPoint(_lft, _top), wxSize(_wdt, _hgt));
#endif
}

EWXWEXPORT(int, wxWizard_RunWizard)(void* _obj, void* firstPage)
{
	return (int)((wxWizard*)_obj)->RunWizard((wxWizardPage*)firstPage);
}
	
EWXWEXPORT(void*, wxWizard_GetCurrentPage)(void* _obj)
{
	return (void*)((wxWizard*)_obj)->GetCurrentPage();
}
	
EWXWEXPORT(void, wxWizard_Chain)(void* f, void* s)
{
	wxWizardPageSimple::Chain((wxWizardPageSimple*)f, (wxWizardPageSimple*)s);
}
	
EWXWEXPORT(void, wxWizard_SetPageSize)(void* _obj, int w, int h)
{
	((wxWizard*)_obj)->SetPageSize(wxSize(w, h));
}
	
EWXWEXPORT(void, wxWizard_GetPageSize)(void* _obj, void* w, void* h)
{
	wxSize tmp = ((wxWizard*)_obj)->GetPageSize();
	*((int*)w) = tmp.x;
	*((int*)h) = tmp.y;
}
	
EWXWEXPORT(void*, wxWizardPageSimple_Create) (void* _prt)
{
	return (void*)new wxWizardPageSimple ((wxWizard*)_prt);
}

EWXWEXPORT(void*, wxWizardPageSimple_GetPrev)(void* _obj)
{
	return (void*)((wxWizardPageSimple*)_obj)->GetPrev();
}
	
EWXWEXPORT(void*, wxWizardPageSimple_GetNext)(void* _obj)
{
	return (void*)((wxWizardPageSimple*)_obj)->GetNext();
}
	
EWXWEXPORT(void, wxWizardPageSimple_GetBitmap)(void* _obj, void* _ref)
{
	*((wxBitmap*)_ref) = ((wxWizardPageSimple*)_obj)->GetBitmap();
}
	
EWXWEXPORT(void, wxWizardPageSimple_SetPrev)(void* _obj, void* prev)
{
	((wxWizardPageSimple*)_obj)->SetPrev((wxWizardPage*)prev);
}
	
EWXWEXPORT(void, wxWizardPageSimple_SetNext)(void* _obj, void* next)
{
	((wxWizardPageSimple*)_obj)->SetNext((wxWizardPage*)next);
}

EWXWEXPORT(int, wxWizardEvent_GetDirection)(void* _obj)
{
	return (int)((wxWizardEvent*)_obj)->GetDirection();
}
	
}

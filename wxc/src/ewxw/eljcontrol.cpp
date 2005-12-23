#include "wrapper.h"

extern "C"
{

EWXWEXPORT(void, wxControl_SetLabel)(void* _obj, char* text)
{
	((wxControl*)_obj)->SetLabel(text);
}
	
EWXWEXPORT(wxString*, wxControl_GetLabel)(wxControl* _obj)
{
  return new wxString(_obj->GetLabel());
}

EWXWEXPORT(void, wxControl_Command)(void* _obj, void* event)
{
	((wxControl*)_obj)->Command(*((wxCommandEvent*) event));
}
}

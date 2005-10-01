#include "wrapper.h"

extern "C"
{

EWXWEXPORT(void, wxControl_SetLabel)(void* _obj, char* text)
{
	((wxControl*)_obj)->SetLabel(text);
}
	
EWXWEXPORT(char *, wxControl_GetLabel)(void* _obj)
{
	wxString result = ((wxControl*)_obj)->GetLabel();
	char *buf = (char*)malloc(result.Length()*sizeof(char));
	if (buf) memcpy (buf, result.c_str(), result.Length());
	delete result;
	return buf;
}

EWXWEXPORT(void, wxControl_Command)(void* _obj, void* event)
{
	((wxControl*)_obj)->Command(*((wxCommandEvent*) event));
}

}

#include "wrapper.h"


extern "C"
{

EWXWEXPORT(void*, wxDirDialog_Create) (void* _prt, void* _msg, void* _dir, int _lft, int _top, int _stl)
{
	return (void*) new wxDirDialog ((wxWindow*)_prt, (char*)_msg, (char*) _dir, _stl, wxPoint(_lft, _top));
}

EWXWEXPORT(void, wxDirDialog_SetMessage)(void* _obj, void* msg)
{
	((wxDirDialog*)_obj)->SetMessage((char*)msg);
}
	
EWXWEXPORT(void, wxDirDialog_SetPath)(void* _obj, void* pth)
{
	((wxDirDialog*)_obj)->SetPath((char*) pth);
}
	
EWXWEXPORT(void, wxDirDialog_SetStyle)(void* _obj, int style)
{
	((wxDirDialog*)_obj)->SetStyle((long)style);
}
	
EWXWEXPORT(char *, wxDirDialog_GetMessage)(void* _obj)
{
	wxString result =((wxDirDialog*)_obj)->GetMessage();
	char *buf = (char*)malloc((1+result.Length())*sizeof(char));
	if (buf) strcpy (buf, result.c_str());
	delete result;
	return buf;
}
	
EWXWEXPORT(char*, wxDirDialog_GetPath)(void* _obj)
{
	wxString result =((wxDirDialog*)_obj)->GetPath();
	char *buf = (char*)malloc((1+result.Length())*sizeof(char));
	if (buf) strcpy (buf, result.c_str());
	delete result;
	return buf;
}
	
EWXWEXPORT(int, wxDirDialog_GetStyle)(void* _obj)
{
	return (int)((wxDirDialog*)_obj)->GetStyle();
}
	
}

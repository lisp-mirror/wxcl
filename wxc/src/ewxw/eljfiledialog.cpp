#include "wrapper.h"

extern "C"
{

EWXWEXPORT(void*, wxFileDialog_Create) (void* _prt, void* _msg, void* _dir, void* _fle, void* _wcd, int _lft, int _top, int _stl)
{
	return (void*) new wxFileDialog ((wxWindow*)_prt, (char*)_msg, (char*) _dir, (char*) _fle, (char*) _wcd, _stl, wxPoint(_lft, _top));
}

EWXWEXPORT(void, wxFileDialog_SetMessage)(void* _obj, void* message)
{
	((wxFileDialog*)_obj)->SetMessage((char*)message);
}
	
EWXWEXPORT(void, wxFileDialog_SetPath)(void* _obj, void* path)
{
	((wxFileDialog*)_obj)->SetPath((char*)path);
}
	
EWXWEXPORT(void, wxFileDialog_SetDirectory)(void* _obj, void* dir)
{
	((wxFileDialog*)_obj)->SetDirectory((char*)dir);
}
	
EWXWEXPORT(void, wxFileDialog_SetFilename)(void* _obj, void* name)
{
	((wxFileDialog*)_obj)->SetFilename((char*)name);
}
	
EWXWEXPORT(void, wxFileDialog_SetWildcard)(void* _obj, void* wildCard)
{
	((wxFileDialog*)_obj)->SetWildcard((char*)wildCard);
}
	
EWXWEXPORT(void, wxFileDialog_SetStyle)(void* _obj, int style)
{
	((wxFileDialog*)_obj)->SetStyle((long)style);
}
	
EWXWEXPORT(void, wxFileDialog_SetFilterIndex)(void* _obj, int filterIndex)
{
	((wxFileDialog*)_obj)->SetFilterIndex(filterIndex);
}
	
EWXWEXPORT(wxString*, wxFileDialog_GetMessage)(wxFileDialog* _obj)
{
   return new wxString(_obj->GetMessage());
}
	
EWXWEXPORT(wxString*, wxFileDialog_GetPath)(wxFileDialog* _obj)
{
   return new wxString(_obj->GetPath());
}
	
// EWXWEXPORT(int, wxFileDialog_GetPaths)(void* _obj, void* paths)
// {
// 	wxArrayString arr;
// 	((wxFileDialog*)_obj)->GetPaths(arr);
// 	if (paths)
// 	{
// 		for (unsigned int i = 0; i < arr.GetCount(); i++)
// 			((const char**)paths)[i] = strdup (arr.Item(i).c_str());
// 	}
// 	return arr.GetCount();
// }

EWXWEXPORT(char**, wxFileDialog_GetPaths)(void* _obj)
{
	wxArrayString arr;
	((wxFileDialog*)_obj)->GetPaths(arr);
	char **buf = (char**) malloc(arr.GetCount()*sizeof(char*));
	for (unsigned int i = 0; i < arr.GetCount(); i++) {
	  buf[i] = (char*) malloc((1+arr.Item(i).Length())*sizeof(char));
	  if (buf[i]) strcpy (buf[i], arr.Item(i).c_str());
	}
	return buf;
}

EWXWEXPORT(wxString*, wxFileDialog_GetDirectory)(wxFileDialog* _obj)
{
   return new wxString(_obj->GetDirectory());
}
	
EWXWEXPORT(wxString*, wxFileDialog_GetFilename)(wxFileDialog* _obj)
{
   return new wxString(_obj->GetFilename());
}
	
// EWXWEXPORT(int, wxFileDialog_GetFilenames)(void* _obj, void* paths)
// {
// 	wxArrayString arr;
// 	((wxFileDialog*)_obj)->GetFilenames(arr);
// 	if (paths)
// 	{
// 		for (unsigned int i = 0; i < arr.GetCount(); i++)
// 			((const char**)paths)[i] = strdup (arr.Item(i).c_str());
// 	}
// 	return arr.GetCount();
// }

EWXWEXPORT(char**, wxFileDialog_GetFilenames)(void* _obj)
{
	wxArrayString arr;
	((wxFileDialog*)_obj)->GetFilenames(arr);
	char **buf = (char**) malloc(arr.GetCount()*sizeof(char*));
	for (unsigned int i = 0; i < arr.GetCount(); i++) {
	  buf[i] = (char*) malloc((1+arr.Item(i).Length())*sizeof(char));
	  if (buf[i]) strcpy (buf[i], arr.Item(i).c_str());
	}
	return buf;
}

EWXWEXPORT(wxString*, wxFileDialog_GetWildcard)(wxFileDialog* _obj)
{
   return new wxString(_obj->GetWildcard());
}
	
EWXWEXPORT(int, wxFileDialog_GetStyle)(void* _obj)
{
	return (int)((wxFileDialog*)_obj)->GetStyle();
}
	
EWXWEXPORT(int, wxFileDialog_GetFilterIndex)(void* _obj)
{
	return ((wxFileDialog*)_obj)->GetFilterIndex();
}
	
}

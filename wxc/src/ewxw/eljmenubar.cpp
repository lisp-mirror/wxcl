#include "wrapper.h"

extern "C"
{

EWXWEXPORT(void*, wxMenuBar_Create)(int _style)
{
 	return new wxMenuBar(_style);
}

EWXWEXPORT(void, wxMenuBar_DeletePointer)(void* _obj)
{
	delete (wxMenuBar*)_obj;
}
	
EWXWEXPORT(int, wxMenuBar_Append)(void* _obj, void* menu, char* title)
{
	return (int)((wxMenuBar*)_obj)->Append((wxMenu*) menu, title);
}
	
EWXWEXPORT(int, wxMenuBar_Insert)(void* _obj, int pos, void* menu, char* title)
{
	return (int)((wxMenuBar*)_obj)->Insert((size_t) pos, (wxMenu*) menu, title);
}
	
EWXWEXPORT(int, wxMenuBar_GetMenuCount)(void* _obj)
{
	return (int)((wxMenuBar*)_obj)->GetMenuCount();
}
	
EWXWEXPORT(void*, wxMenuBar_GetMenu)(void* _obj, int pos)
{
	return (void*)((wxMenuBar*)_obj)->GetMenu((size_t) pos);
}
	
EWXWEXPORT(void*, wxMenuBar_Replace)(void* _obj, int pos, void* menu, char* title)
{
	return (void*)((wxMenuBar*)_obj)->Replace((size_t) pos, (wxMenu*) menu, title);
}
	
EWXWEXPORT(void*, wxMenuBar_Remove)(void* _obj, int pos)
{
	return (void*)((wxMenuBar*)_obj)->Remove((size_t) pos);
}
	
EWXWEXPORT(void, wxMenuBar_EnableTop)(void* _obj, int pos, int enable)
{
	((wxMenuBar*)_obj)->EnableTop((size_t) pos, enable != 0);
}
	
EWXWEXPORT(void, wxMenuBar_SetLabelTop)(void* _obj, int pos, char* label)
{
	((wxMenuBar*)_obj)->SetLabelTop((size_t) pos, label);
}
	
EWXWEXPORT(char*, wxMenuBar_GetLabelTop)(void* _obj, int pos)
{
	wxString result = ((wxMenuBar*)_obj)->GetLabelTop((size_t) pos);
	char *buf = (char*)malloc((1+result.Length())*sizeof(char));
	if (buf) strcpy (buf, result.c_str());
	delete result;
	return buf;
}
	
EWXWEXPORT(int, wxMenuBar_FindMenuItem)(void* _obj, char* menuString, char* itemString)
{
	return ((wxMenuBar*)_obj)->FindMenuItem(menuString, itemString);
}
	
EWXWEXPORT(void*, wxMenuBar_FindItem)(void* _obj, int id, void *menu)
{
	return (void*)((wxMenuBar*)_obj)->FindItem(id, (wxMenu**) menu);
}
	
EWXWEXPORT(int, wxMenuBar_FindMenu)(void* _obj, char* title)
{
	return ((wxMenuBar*)_obj)->FindMenu(title);
}
	
EWXWEXPORT(void, wxMenuBar_EnableItem)(void* _obj, int id, int enable)
{
	((wxMenuBar*)_obj)->Enable(id, enable != 0);
}
	
EWXWEXPORT(void, wxMenuBar_Check)(void* _obj, int id, int check)
{
	((wxMenuBar*)_obj)->Check(id, check != 0);
}
	
EWXWEXPORT(int, wxMenuBar_IsChecked)(void* _obj, int id)
{
	return (int)((wxMenuBar*)_obj)->IsChecked(id);
}
	
EWXWEXPORT(int, wxMenuBar_IsEnabled)(void* _obj, int id)
{
	return (int)((wxMenuBar*)_obj)->IsEnabled(id);
}
	
EWXWEXPORT(void, wxMenuBar_SetLabel)(void* _obj, int id, char* label)
{
	((wxMenuBar*)_obj)->SetLabel(id, label);
}
	
EWXWEXPORT(char*, wxMenuBar_GetLabel)(void* _obj, int id)
{
	wxString result = ((wxMenuBar*)_obj)->GetLabel(id);
	char *buf = (char*)malloc((1+result.Length())*sizeof(char));
	if (buf) strcpy (buf, result.c_str());
	delete result;
	return buf;
}	
EWXWEXPORT(void, wxMenuBar_SetHelpString)(void* _obj, int id, char* helpString)
{
	((wxMenuBar*)_obj)->SetHelpString(id, helpString);
}
	
EWXWEXPORT(char*, wxMenuBar_GetHelpString)(void* _obj, int id)
{
	wxString result = ((wxMenuBar*)_obj)->GetHelpString(id);
	char *buf = (char*)malloc((1+result.Length())*sizeof(char));
	if (buf) strcpy (buf, result.c_str());
	delete result;
	return buf;
}
	
EWXWEXPORT(void, wxMenuBar_Enable)(void* _obj, int enable)
{
        ((wxMenuBar*)_obj)->Enable(enable != 0);
}

EWXWEXPORT(void, wxMenuBar_Refresh)(void* _obj)
{
        ((wxMenuBar*)_obj)->Refresh();
}

}

#include "wrapper.h"

extern "C"
{

EWXWEXPORT(void*, wxMenuItem_Create)(wxMenu* parentMenu,int id, char* text, char* helpstr, int itemkind, void* submenu)
{
  return (void*) new wxMenuItem(parentMenu, id, text, helpstr, (wxItemKind)itemkind, (wxMenu*)submenu );
}  
	
EWXWEXPORT(void, wxMenuItem_Delete)(void* _obj)
{
	delete (wxMenuItem*)_obj;
}

EWXWEXPORT(void*, wxMenuItem_GetMenu)(void* _obj)
{
	return (void*)((wxMenuItem*)_obj)->GetMenu();
}

EWXWEXPORT(void, wxMenuItem_SetMenu)(void* _obj, wxMenu *parent)
{
	((wxMenuItem*)_obj)->SetMenu(parent);
}
  
EWXWEXPORT(void, wxMenuItem_SetId)(void* _obj, int id)
{
	((wxMenuItem*)_obj)->SetId(id);
}
	
EWXWEXPORT(int, wxMenuItem_GetId)(void* _obj)
{
	return ((wxMenuItem*)_obj)->GetId();
}
	
EWXWEXPORT(int, wxMenuItem_IsSeparator)(void* _obj)
{
	return (int)((wxMenuItem*)_obj)->IsSeparator();
}
	
EWXWEXPORT(void, wxMenuItem_SetText)(void* _obj, void* str)
{
	((wxMenuItem*)_obj)->SetText((char*) str);
}
	
EWXWEXPORT(wxString*, wxMenuItem_GetLabel)(wxMenuItem* _obj)
{
   return new wxString(_obj->GetLabel());
}
	
EWXWEXPORT(wxString*, wxMenuItem_GetText)(wxMenuItem* _obj)
{
   return new wxString(_obj->GetText());
}

EWXWEXPORT(wxString*, wxMenuItem_GetLabelFromText)(char* text)
{
   return new wxString(wxMenuItem::GetLabelFromText((char*) text));
}

EWXWEXPORT(void, wxMenuItem_SetCheckable)(void* _obj, int checkable)
{
	((wxMenuItem*)_obj)->SetCheckable(checkable != 0);
}
	
EWXWEXPORT(int, wxMenuItem_IsCheckable)(void* _obj)
{
	return (int)((wxMenuItem*)_obj)->IsCheckable();
}
	
EWXWEXPORT(int, wxMenuItem_IsSubMenu)(void* _obj)
{
	return (int)((wxMenuItem*)_obj)->IsSubMenu();
}
	
EWXWEXPORT(void, wxMenuItem_SetSubMenu)(void* _obj, void* menu)
{
	((wxMenuItem*)_obj)->SetSubMenu((wxMenu*)menu);
}
	
EWXWEXPORT(void*, wxMenuItem_GetSubMenu)(void* _obj)
{
	return (void*)((wxMenuItem*)_obj)->GetSubMenu();
}
	
EWXWEXPORT(void, wxMenuItem_Enable)(void* _obj, int enable)
{
	((wxMenuItem*)_obj)->Enable(enable != 0);
}
	
EWXWEXPORT(int, wxMenuItem_IsEnabled)(void* _obj)
{
	return (int)((wxMenuItem*)_obj)->IsEnabled();
}
	
EWXWEXPORT(void, wxMenuItem_Check)(void* _obj, int check)
{
	((wxMenuItem*)_obj)->Check(check != 0);
}
	
EWXWEXPORT(int, wxMenuItem_IsChecked)(void* _obj)
{
	return (int)((wxMenuItem*)_obj)->IsChecked();
}
	
EWXWEXPORT(void, wxMenuItem_SetHelp)(void* _obj, void* str)
{
	((wxMenuItem*)_obj)->SetHelp((char*)str);
}
	
EWXWEXPORT(wxString*, wxMenuItem_GetHelp)(wxMenuItem* _obj)
{
  return new wxString(_obj->GetHelp());
}

}

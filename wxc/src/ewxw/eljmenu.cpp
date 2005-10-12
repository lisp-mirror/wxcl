#include "wrapper.h"

static const char* hasDefs[] = {
#ifdef wxHAS_RADIO_MENU_ITEMS
  "RADIO_MENU_ITEMS",
#endif
};

extern "C"
{

EWXWEXPORT(void*, wxMenu_Create)(char* title, long style)
{
  return (void*) new wxMenu(title, style);
}
	
EWXWEXPORT(void, wxMenu_DeletePointer)(void* _obj)
{
	delete (wxMenu*)_obj;
}
	
EWXWEXPORT(void, wxMenu_AppendSeparator)(void* _obj)
{
	((wxMenu*)_obj)->AppendSeparator();
}
	
EWXWEXPORT(void, wxMenu_Append)(void* _obj, int id, char* text, char* help)
{
	((wxMenu*)_obj)->Append(id, text, help);
}

EWXWEXPORT(void, wxMenu_AppendCheckItem)(void* _obj, int id, char* text, char* help)
{
	((wxMenu*)_obj)->AppendCheckItem(id, text, help);
}

EWXWEXPORT(void, wxMenu_AppendRadioItem)(wxMenu* self, int id, char* text, char* help)
{
#ifdef wxHAS_RADIO_MENU_ITEMS
  self->AppendRadioItem(id, text, help);
#else
  self->AppendCheckItem(id, text, help);
#endif
}

EWXWEXPORT(void, wxMenu_AppendSub)(void* _obj, int id, char* text, void* submenu, char* help)
{
	((wxMenu*)_obj)->Append(id, text, (wxMenu*) submenu, help);
}
	
EWXWEXPORT(void, wxMenu_AppendItem)(void* _obj, void* _itm)
{
	((wxMenu*)_obj)->Append((wxMenuItem*)_itm);
}
	
EWXWEXPORT(void, wxMenu_Break)(void* _obj)
{
	((wxMenu*)_obj)->Break();
}
	
EWXWEXPORT(void, wxMenu_Insert)(void* _obj, size_t pos, int id, char* text, char* help)
{
	((wxMenu*)_obj)->Insert(pos, id, text, help);
}
	
EWXWEXPORT(void, wxMenu_InsertSub)(void* _obj, size_t pos, int id, char* text, void* submenu, char* help)
{
	((wxMenu*)_obj)->Insert(pos, id, text, (wxMenu*) submenu, help);
}

EWXWEXPORT(void, wxMenu_InsertCheckItem)(void* _obj, size_t pos, int id, char* text, char* help)
{
        ((wxMenu*)_obj)->InsertCheckItem(pos, id, text, help);
}

EWXWEXPORT(void, wxMenu_InsertRadioItem)(wxMenu* self, size_t pos, int id, char* text, char* help)
{
#ifdef wxHAS_RADIO_MENU_ITEMS
  self->InsertRadioItem(pos, id, text, help);
#else
  self->InsertCheckItem(pos, id, text, help);
#endif
}
	
EWXWEXPORT(void, wxMenu_InsertItem)(void* _obj, size_t pos, void* _itm)
{
	((wxMenu*)_obj)->Insert(pos, (wxMenuItem*)_itm);
}
	
EWXWEXPORT(void, wxMenu_Prepend)(void* _obj, int id, char* text, char* help)
{
	((wxMenu*)_obj)->Prepend(id, text, help);
}
	
EWXWEXPORT(void, wxMenu_PrependSub)(void* _obj, int id, char* text, void* submenu, char* help)
{
	((wxMenu*)_obj)->Prepend(id, text, (wxMenu*) submenu, help);
}
	
EWXWEXPORT(void, wxMenu_PrependItem)(void* _obj, void* _itm)
{
	((wxMenu*)_obj)->Prepend((wxMenuItem*)_itm);
}


EWXWEXPORT(void, wxMenu_PrependCheckItem)(void* _obj, int id, char* text, char* help)
{
	((wxMenu*)_obj)->PrependCheckItem(id, text, help);
}

EWXWEXPORT(void, wxMenu_PrependRadioItem)(wxMenu* self, int id, char* text, char* help)
{
#ifdef wxHAS_RADIO_MENU_ITEMS
  self->PrependRadioItem(id, text, help);
#else
  self->PrependCheckItem(id, text, help);
#endif
}

EWXWEXPORT(void, wxMenu_RemoveByItem)(void* _obj, void* item)
{
	((wxMenu*)_obj)->Remove((wxMenuItem*) item);
}
	
EWXWEXPORT(void*, wxMenu_RemoveById)(void* _obj, int id)
{
	return (void*)((wxMenu*)_obj)->Remove(id);
}
	
EWXWEXPORT(void, wxMenu_DeleteById)(void* _obj, int id)
{
	((wxMenu*)_obj)->Delete(id);
}
	
EWXWEXPORT(void, wxMenu_DeleteByItem)(void* _obj, void* _itm)
{
	((wxMenu*)_obj)->Delete((wxMenuItem*)_itm);
}
	
EWXWEXPORT(void, wxMenu_DestroyById)(void* _obj, int id)
{
	((wxMenu*)_obj)->Destroy(id);
}
	
EWXWEXPORT(void, wxMenu_DestroyByItem)(void* _obj, void* _itm)
{
	((wxMenu*)_obj)->Destroy((wxMenuItem*)_itm);
}
	
EWXWEXPORT(size_t, wxMenu_GetMenuItemCount)(void* _obj)
{
	return ((wxMenu*)_obj)->GetMenuItemCount();
}
	
EWXWEXPORT(int, wxMenu_GetMenuItems)(void* _obj, void* _lst)
{
	if (_lst)
	{
		for (unsigned int i = 0; i < ((wxMenu*)_obj)->GetMenuItems().GetCount(); i++)
			((void**)_lst)[i] = ((wxMenu*)_obj)->GetMenuItems().Item(i)->GetData();
	}
	return ((wxMenu*)_obj)->GetMenuItems().GetCount();
}
	
EWXWEXPORT(int, wxMenu_FindItemByLabel)(void* _obj, char* itemString)
{
	return ((wxMenu*)_obj)->FindItem(itemString);
}
	
EWXWEXPORT(void*, wxMenu_FindItem)(void* _obj, int id, void* menu)
{
	return (void*)((wxMenu*)_obj)->FindItem(id, (wxMenu**) menu);
}
	
EWXWEXPORT(void, wxMenu_Enable)(void* _obj, int id, int enable)
{
	((wxMenu*)_obj)->Enable(id, enable != 0);
}
	
EWXWEXPORT(int, wxMenu_IsEnabled)(void* _obj, int id)
{
	return (int)((wxMenu*)_obj)->IsEnabled(id);
}
	
EWXWEXPORT(void, wxMenu_Check)(void* _obj, int id, int check)
{
	((wxMenu*)_obj)->Check(id, check != 0);
}
	
EWXWEXPORT(int, wxMenu_IsChecked)(void* _obj, int id)
{
	return (int)((wxMenu*)_obj)->IsChecked(id);
}
	
EWXWEXPORT(void, wxMenu_SetLabel)(void* _obj, int id, char* label)
{
	((wxMenu*)_obj)->SetLabel(id, label);
}
	
EWXWEXPORT(char*, wxMenu_GetLabel)(void* _obj, int id)
{
	wxString result = ((wxMenu*)_obj)->GetLabel(id);
	char *buf = (char*)malloc((1+result.Length())*sizeof(char));
	if (buf) strcpy (buf, result.c_str());
	delete result;
	return buf;
}
	
EWXWEXPORT(void, wxMenu_SetHelpString)(void* _obj, int id, char* helpString)
{
	((wxMenu*)_obj)->SetHelpString(id, helpString);
}
	
EWXWEXPORT(char*, wxMenu_GetHelpString)(void* _obj, int id)
{
	wxString result = ((wxMenu*)_obj)->GetHelpString(id);
	char *buf = (char*)malloc((1+result.Length())*sizeof(char));
	if (buf) strcpy (buf, result.c_str());
	delete result;
	return buf;
}
	
EWXWEXPORT(void, wxMenu_SetTitle)(void* _obj, char* title)
{
	((wxMenu*)_obj)->SetTitle(title);
}
	
EWXWEXPORT(char*, wxMenu_GetTitle)(void* _obj)
{
	wxString result = ((wxMenu*)_obj)->GetTitle();
	char *buf = (char*)malloc((1+result.Length())*sizeof(char));
	if (buf) strcpy (buf, result.c_str());
	delete result;
	return buf;
}

//not needed added to wxEvtHandler now	
// EWXWEXPORT(void, wxMenu_SetClientData)(void* _obj, void* clientData)
// {
// 	((wxMenu*)_obj)->SetClientData(clientData);
// }
	
// EWXWEXPORT(void*, wxMenu_GetClientData)(void* _obj)
// {
// 	return (void*)((wxMenu*)_obj)->GetClientData();
// }
	
EWXWEXPORT(void, wxMenu_SetEventHandler)(void* _obj, void* handler)
{
	((wxMenu*)_obj)->SetEventHandler((wxEvtHandler*) handler);
}
	
EWXWEXPORT(void, wxMenu_SetInvokingWindow)(void* _obj, void* win)
{
	((wxMenu*)_obj)->SetInvokingWindow((wxWindow*) win);
}
	
EWXWEXPORT(void*, wxMenu_GetInvokingWindow)(void* _obj)
{
	return (void*)((wxMenu*)_obj)->GetInvokingWindow();
}
	
EWXWEXPORT(int, wxMenu_GetStyle)(void* _obj)
{
	return ((wxMenu*)_obj)->GetStyle();
}
	
EWXWEXPORT(void, wxMenu_UpdateUI)(void* _obj, void* source)
{
	((wxMenu*)_obj)->UpdateUI((wxEvtHandler*) source);
}
	
EWXWEXPORT(int, wxMenu_IsAttached)(void* _obj)
{
	return (int)((wxMenu*)_obj)->IsAttached();
}
	
EWXWEXPORT(void, wxMenu_SetParent)(void* _obj, void* parent)
{
	((wxMenu*)_obj)->SetParent((wxMenu*) parent);
}
	
EWXWEXPORT(void*, wxMenu_GetParent)(void* _obj)
{
	return (void*)((wxMenu*)_obj)->GetParent();
}
	
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
	
EWXWEXPORT(char*, wxMenuItem_GetLabel)(void* _obj)
{
	wxString result = ((wxMenuItem*)_obj)->GetLabel();
	char *buf = (char*)malloc((1+result.Length())*sizeof(char));
	if (buf) strcpy (buf, result.c_str());
	delete result;
	return buf;
}
	
EWXWEXPORT(char*, wxMenuItem_GetText)(void* _obj)
{
	wxString result = ((wxMenuItem*)_obj)->GetText();
	char *buf = (char*)malloc((1+result.Length())*sizeof(char));
	if (buf) strcpy (buf, result.c_str());
	delete result;
	return buf;
}

EWXWEXPORT(char*, wxMenuItem_GetLabelFromText)(char* text)
{
	wxString result = wxMenuItem::GetLabelFromText((char*) text);
	char *buf = (char*)malloc((1+result.Length())*sizeof(char));
	if (buf) strcpy (buf, result.c_str());
	delete result;
	return buf;
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
	
EWXWEXPORT(char*, wxMenuItem_GetHelp)(void* _obj)
{
	wxString result = ((wxMenuItem*)_obj)->GetHelp();
	char *buf = (char*)malloc((1+result.Length())*sizeof(char));
	if (buf) strcpy (buf, result.c_str());
	delete result;
	return buf;
}

}

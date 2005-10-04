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


EWXWEXPORT(void, wxControlWithItems_Clear)(void* _obj)
{
	((wxControlWithItems*)_obj)->Clear();
}
	
EWXWEXPORT(void, wxControlWithItems_Delete)(void* _obj, int n)
{
	((wxControlWithItems*)_obj)->Delete(n);
}
	
EWXWEXPORT(int, wxControlWithItems_GetCount)(void* _obj)
{
	return ((wxControlWithItems*)_obj)->GetCount();
}
	
EWXWEXPORT(char*, wxControlWithItems_GetString)(void* _obj, int n)
{
	wxString result = ((wxControlWithItems*)_obj)->GetString(n);
	char *buf = (char*)malloc(result.Length()*sizeof(char));
	if (buf) memcpy (buf, result.c_str(), result.Length());
	delete result;
	return buf;
}
	
EWXWEXPORT(void, wxControlWithItems_SetString)(void* _obj, int n, char* s)
{
	((wxControlWithItems*)_obj)->SetString(n, s);
}
	
EWXWEXPORT(int, wxControlWithItems_FindString)(void* _obj, char* s)
{
	return ((wxControlWithItems*)_obj)->FindString(s);
}
	
	
EWXWEXPORT(void, wxControlWithItems_SetSelection)(void* _obj, int n)
{
	((wxControlWithItems*)_obj)->SetSelection(n);
}
	
EWXWEXPORT(int, wxControlWithItems_GetSelection)(void* _obj)
{
	return ((wxControlWithItems*)_obj)->GetSelection();
}
	
EWXWEXPORT(void, wxControlWithItems_Append)(void* _obj, char* item)
{
	((wxControlWithItems*)_obj)->Append(item);
}
	
EWXWEXPORT(void, wxControlWithItems_AppendData)(void* _obj, char* item, void* _data)
{
	((wxControlWithItems*)_obj)->Append(item, _data);
}
	
EWXWEXPORT(void, wxControlWithItems_Insert)(void* _obj, char* item, int pos)
{
	((wxControlWithItems*)_obj)->Insert(item, pos);
}

EWXWEXPORT(void, wxControlWithItems_InsertData)(void* _obj, char* item, int pos, void* _data)
{
        ((wxControlWithItems*)_obj)->Insert(item, pos, _data);
}  
	
EWXWEXPORT(void, wxControlWithItems_SetClientData)(void* _obj, int n, void* clientData)
{
	((wxControlWithItems*)_obj)->SetClientData(n, clientData);
}
	
EWXWEXPORT(void*, wxControlWithItems_GetClientData)(void* _obj, int n)
{
	return (void*)((wxControlWithItems*)_obj)->GetClientData(n);
}

EWXWEXPORT(char*, wxControlWithItems_GetStringSelection)(void* _obj)
{
	wxString result = ((wxControlWithItems*)_obj)->GetStringSelection();
	char *buf = (char*)malloc(result.Length()*sizeof(char));
	if (buf) memcpy (buf, result.c_str(), result.Length());
	delete result;
	return buf;
}

EWXWEXPORT(int, wxControlWithItems_SetStringSelection)(void* _obj, char* str)
{
        if(((wxControlWithItems*)_obj)->SetStringSelection(str))
             return 1;
	return 0;
}

}

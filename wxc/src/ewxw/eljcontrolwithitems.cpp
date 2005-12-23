#include "wrapper.h"

extern "C"
{

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
	
EWXWEXPORT(wxString*, wxControlWithItems_GetString)(wxControlWithItems* _obj, int n)
{
   return new wxString(_obj->GetString(n));
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

EWXWEXPORT(wxString*, wxControlWithItems_GetStringSelection)(wxControlWithItems* _obj)
{
   return new wxString(_obj->GetStringSelection());
}

EWXWEXPORT(int, wxControlWithItems_SetStringSelection)(void* _obj, char* str)
{
  if(((wxControlWithItems*)_obj)->SetStringSelection(str))
    return 1;
  return 0;
}

}

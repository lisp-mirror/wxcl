#include "wrapper.h"

extern "C"
{

EWXWEXPORT(void*, wxListItem_Create)()
{
	return (void*) new wxListItem();
}

EWXWEXPORT(void, wxListItem_Delete)(void* _obj)
{
	delete (wxListItem*)_obj;
}
EWXWEXPORT(void, wxListItem_Clear)(void* _obj)
{
	((wxListItem*)_obj)->Clear();
}
	
EWXWEXPORT(void, wxListItem_ClearAttributes)(void* _obj)
{
	((wxListItem*)_obj)->ClearAttributes();
}
	
EWXWEXPORT(void, wxListItem_SetMask)(void* _obj, int mask)
{
	((wxListItem*)_obj)->SetMask((long)mask);
}
	
EWXWEXPORT(void, wxListItem_SetId)(void* _obj, int id)
{
	((wxListItem*)_obj)->SetId((long)id);
}
	
EWXWEXPORT(void, wxListItem_SetColumn)(void* _obj, int col)
{
	((wxListItem*)_obj)->SetColumn(col);
}
	
EWXWEXPORT(void, wxListItem_SetState)(void* _obj, int state)
{
	((wxListItem*)_obj)->SetState((long)state);
}
	
EWXWEXPORT(void, wxListItem_SetStateMask)(void* _obj, int stateMask)
{
	((wxListItem*)_obj)->SetStateMask((long)stateMask);
}
	
EWXWEXPORT(void, wxListItem_SetText)(void* _obj, void* text)
{
	((wxListItem*)_obj)->SetText((char*)text);
}
	
EWXWEXPORT(void, wxListItem_SetImage)(void* _obj, int image)
{
	((wxListItem*)_obj)->SetImage(image);
}
	
EWXWEXPORT(void, wxListItem_SetData)(void* _obj, int data)
{
	((wxListItem*)_obj)->SetData((long)data);
}
	
EWXWEXPORT(void, wxListItem_SetDataPointer)(void* _obj, void *data)
{
	((wxListItem*)_obj)->SetData(data);
}
	
EWXWEXPORT(void, wxListItem_SetWidth)(void* _obj, int width)
{
	((wxListItem*)_obj)->SetWidth(width);
}
	
EWXWEXPORT(void, wxListItem_SetAlign)(void* _obj, int align)
{
	((wxListItem*)_obj)->SetAlign((wxListColumnFormat)align);
}
	
EWXWEXPORT(void, wxListItem_SetTextColour)(void* _obj, void* colText)
{
	((wxListItem*)_obj)->SetTextColour(*((wxColour*)colText));
}
	
EWXWEXPORT(void, wxListItem_SetBackgroundColour)(void* _obj, void* colBack)
{
	((wxListItem*)_obj)->SetBackgroundColour(*((wxColour*)colBack));
}
	
EWXWEXPORT(void, wxListItem_SetFont)(void* _obj, void* font)
{
	((wxListItem*)_obj)->SetFont(*((wxFont*)font));
}
	
EWXWEXPORT(int, wxListItem_GetMask)(void* _obj)
{
	return (int)((wxListItem*)_obj)->GetMask();
}
	
EWXWEXPORT(int, wxListItem_GetId)(void* _obj)
{
	return (int)((wxListItem*)_obj)->GetId();
}
	
EWXWEXPORT(int, wxListItem_GetColumn)(void* _obj)
{
	return ((wxListItem*)_obj)->GetColumn();
}
	
EWXWEXPORT(int, wxListItem_GetState)(void* _obj)
{
	return (int)((wxListItem*)_obj)->GetState();
}
	
EWXWEXPORT(wxString*, wxListItem_GetText)(wxListItem* _obj)
{
   return new wxString(_obj->GetText());
}
	
EWXWEXPORT(int, wxListItem_GetImage)(void* _obj)
{
	return ((wxListItem*)_obj)->GetImage();
}
	
EWXWEXPORT(int, wxListItem_GetData)(void* _obj)
{
	return (int)((wxListItem*)_obj)->GetData();
}
	
EWXWEXPORT(int, wxListItem_GetWidth)(void* _obj)
{
	return ((wxListItem*)_obj)->GetWidth();
}
	
EWXWEXPORT(int, wxListItem_GetAlign)(void* _obj)
{
	return (int)((wxListItem*)_obj)->GetAlign();
}
	
EWXWEXPORT(void*, wxListItem_GetAttributes)(void* _obj)
{
	return (void*)((wxListItem*)_obj)->GetAttributes();
}
	
EWXWEXPORT(int, wxListItem_HasAttributes)(void* _obj)
{
	return (int)((wxListItem*)_obj)->HasAttributes();
}
	
EWXWEXPORT(wxColour*, wxListItem_GetTextColour)(void* _obj)
{
   wxColour* _ref = new wxColour(((wxListItem*)_obj)->GetTextColour());
   return _ref;
}
	
EWXWEXPORT(wxColour*, wxListItem_GetBackgroundColour)(void* _obj)
{
   wxColour* _ref = new wxColour(((wxListItem*)_obj)->GetBackgroundColour());
   return _ref;
}
	
EWXWEXPORT(wxFont*, wxListItem_GetFont)(void* _obj)
{
   wxFont* _ref = new wxFont(((wxListItem*)_obj)->GetFont());
   return _ref;
}

}

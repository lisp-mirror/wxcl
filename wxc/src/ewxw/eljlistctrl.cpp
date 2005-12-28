#include "wrapper.h"

extern "C"
{

typedef int _cdecl (*EiffelSortFunc) (void* obj, int data1, int data2);

typedef struct _EiffelSort
{
	void*          obj;
	EiffelSortFunc fnc;
}EiffelSort;

int wxCALLBACK ListCmp (long item1, long item2, long sortData)
{
	return ((EiffelSort*)sortData)->fnc (((EiffelSort*)sortData)->obj, (int)item1, (int)item2);
}

EWXWEXPORT(void*, wxListCtrl_Create) (void* _prt, int _id, int _lft, int _top, int _wdt, int _hgt, int _stl)
{
	return (void*) new wxListCtrl ((wxWindow*)_prt, _id, wxPoint(_lft, _top), wxSize(_wdt, _hgt), _stl);
}

EWXWEXPORT(int, wxListCtrl_SetForegroundColour)(void* _obj, void* col)
{
	return (int)((wxListCtrl*)_obj)->SetForegroundColour(*((wxColour*)col));
}
	
EWXWEXPORT(int, wxListCtrl_SetBackgroundColour)(void* _obj, void* col)
{
	return (int)((wxListCtrl*)_obj)->SetBackgroundColour(*((wxColour*)col));
}
	
EWXWEXPORT(int, wxListCtrl_GetColumn)(void* _obj, int col, void* item)
{
	return (int)((wxListCtrl*)_obj)->GetColumn(col, *((wxListItem*)item));
}
	
EWXWEXPORT(int, wxListCtrl_SetColumn)(void* _obj, int col, void* item)
{
	return (int)((wxListCtrl*)_obj)->SetColumn(col, *((wxListItem*)item));
}
	
EWXWEXPORT(int, wxListCtrl_GetColumnWidth)(void* _obj, int col)
{
	return ((wxListCtrl*)_obj)->GetColumnWidth(col);
}
	
EWXWEXPORT(int, wxListCtrl_SetColumnWidth)(void* _obj, int col, int width)
{
	return (int)((wxListCtrl*)_obj)->SetColumnWidth(col, width);
}
	
EWXWEXPORT(int, wxListCtrl_GetCountPerPage)(void* _obj)
{
	return ((wxListCtrl*)_obj)->GetCountPerPage();
}
	
EWXWEXPORT(void*, wxListCtrl_GetEditControl)(void* _obj)
{
#ifdef __WIN32__
	return (void*)((wxListCtrl*)_obj)->GetEditControl();
#else
	return NULL;
#endif
}
	
EWXWEXPORT(int, wxListCtrl_GetItem)(void* _obj, void* info)
{
	return (int)((wxListCtrl*)_obj)->GetItem(*((wxListItem*)info));
}
	
EWXWEXPORT(int, wxListCtrl_SetItemFromInfo)(void* _obj, void* info)
{
	return (int)((wxListCtrl*)_obj)->SetItem(*((wxListItem*)info));
}
	
EWXWEXPORT(int, wxListCtrl_SetItem)(void* _obj, int index, int col, void* label, int imageId)
{
	return (int)((wxListCtrl*)_obj)->SetItem((long)index, col, (char*)label, imageId);
}
	
EWXWEXPORT(int, wxListCtrl_GetItemState)(void* _obj, int item, int stateMask)
{
	return ((wxListCtrl*)_obj)->GetItemState((long)item, (long)stateMask);
}
	
EWXWEXPORT(int, wxListCtrl_SetItemState)(void* _obj, int item, int state, int stateMask)
{
	return (int)((wxListCtrl*)_obj)->SetItemState((long)item, (long)state, (long)stateMask);
}
	
EWXWEXPORT(int, wxListCtrl_SetItemImage)(void* _obj, int item, int image, int selImage)
{
	return (int)((wxListCtrl*)_obj)->SetItemImage((long)item, image, selImage);
}
	
EWXWEXPORT(wxString*, wxListCtrl_GetItemText)(void* _obj, int item)
{
   return new wxString(((wxListCtrl*)_obj)->GetItemText((long)item));
}
	
EWXWEXPORT(void, wxListCtrl_SetItemText)(void* _obj, int item, void* str)
{
	((wxListCtrl*)_obj)->SetItemText((long)item, (char*)str);
}
	
EWXWEXPORT(int, wxListCtrl_GetItemData)(void* _obj, int item)
{
	return (int)((wxListCtrl*)_obj)->GetItemData((long)item);
}
	
EWXWEXPORT(int, wxListCtrl_SetItemData)(void* _obj, int item, int data)
{
	return (int)((wxListCtrl*)_obj)->SetItemData((long)item, (long)data);
}
	
EWXWEXPORT(int, wxListCtrl_GetItemRect)(void* _obj, int item, int code, void* x, void* y, void* w, void* h)
{
	wxRect rct;
	int result = (int)((wxListCtrl*)_obj)->GetItemRect((long)item, rct, code);
	if (result)
	{
		*((int*)x) = rct.x;
		*((int*)y) = rct.y;
		*((int*)w) = rct.width;
		*((int*)h) = rct.height;
	} 
	return result;
}
	
EWXWEXPORT(int, wxListCtrl_GetItemPosition)(void* _obj, int item, void* x, void* y)
{
	wxPoint pos;
	int result = (int)((wxListCtrl*)_obj)->GetItemPosition((long)item, pos);
	*((int*)x) = pos.x;
	*((int*)y) = pos.y;

	return result;
}
	
EWXWEXPORT(int, wxListCtrl_SetItemPosition)(void* _obj, int item, int x, int y)
{
	wxPoint pos;
	int result = (int)((wxListCtrl*)_obj)->SetItemPosition((long)item, pos);
	*((int*)x) = pos.x;
	*((int*)y) = pos.y;

	return result;
}
	
EWXWEXPORT(int, wxListCtrl_GetItemCount)(void* _obj)
{
	return ((wxListCtrl*)_obj)->GetItemCount();
}
	
EWXWEXPORT(int, wxListCtrl_GetColumnCount)(void* _obj)
{
	return ((wxListCtrl*)_obj)->GetColumnCount();
}
	
EWXWEXPORT(int, wxListCtrl_GetItemSpacing)(void* _obj, int isSmall)
{
	return ((wxListCtrl*)_obj)->GetItemSpacing(isSmall != 0);
}
	
EWXWEXPORT(int, wxListCtrl_GetSelectedItemCount)(void* _obj)
{
	return ((wxListCtrl*)_obj)->GetSelectedItemCount();
}
	
EWXWEXPORT(void, wxListCtrl_GetTextColour)(void* _obj, void* colour)
{
	*((wxColour*)colour) = ((wxListCtrl*)_obj)->GetTextColour();
}
	
EWXWEXPORT(void, wxListCtrl_SetTextColour)(void* _obj, void* col)
{
	((wxListCtrl*)_obj)->SetTextColour(*((wxColour*)col));
}
	
EWXWEXPORT(int, wxListCtrl_GetTopItem)(void* _obj)
{
	return (int)((wxListCtrl*)_obj)->GetTopItem();
}
	
EWXWEXPORT(void, wxListCtrl_SetSingleStyle)(void* _obj, int style, int add)
{
	((wxListCtrl*)_obj)->SetSingleStyle((long)style, add != 0);
}
	
EWXWEXPORT(void, wxListCtrl_SetWindowStyleFlag)(void* _obj, int style)
{
	((wxListCtrl*)_obj)->SetWindowStyleFlag((long)style);
}
	
EWXWEXPORT(int, wxListCtrl_GetNextItem)(void* _obj, int item, int geometry, int state)
{
	return ((wxListCtrl*)_obj)->GetNextItem((long)item, geometry, state);
}
	
EWXWEXPORT(void*, wxListCtrl_GetImageList)(void* _obj, int which)
{
	return (void*)((wxListCtrl*)_obj)->GetImageList(which);
}
	
EWXWEXPORT(void, wxListCtrl_SetImageList)(void* _obj, void* imageList, int which)
{
	((wxListCtrl*)_obj)->SetImageList((wxImageList*)imageList, which);
}
	
EWXWEXPORT(int, wxListCtrl_Arrange)(void* _obj, int flag)
{
	return (int)((wxListCtrl*)_obj)->Arrange(flag);
}
	
EWXWEXPORT(int, wxListCtrl_DeleteItem)(void* _obj, int item)
{
	return (int)((wxListCtrl*)_obj)->DeleteItem((long)item);
}
	
EWXWEXPORT(int, wxListCtrl_DeleteAllItems)(void* _obj)
{
	return (int)((wxListCtrl*)_obj)->DeleteAllItems();
}
	
EWXWEXPORT(int, wxListCtrl_DeleteColumn)(void* _obj, int col)
{
	return (int)((wxListCtrl*)_obj)->DeleteColumn(col);
}
	
EWXWEXPORT(int, wxListCtrl_DeleteAllColumns)(void* _obj)
{
	return (int)((wxListCtrl*)_obj)->DeleteAllColumns();
}
	
EWXWEXPORT(void, wxListCtrl_ClearAll)(void* _obj)
{
	((wxListCtrl*)_obj)->ClearAll();
}
	
EWXWEXPORT(void, wxListCtrl_EditLabel)(void* _obj, int item)
{
	((wxListCtrl*)_obj)->EditLabel((long)item);
}
	
EWXWEXPORT(int, wxListCtrl_EndEditLabel)(void* _obj, int cancel)
{
#ifdef __WIN32__
	return (int)((wxListCtrl*)_obj)->EndEditLabel(cancel != 0);
#else
	return 0;
#endif
}
	
EWXWEXPORT(int, wxListCtrl_EnsureVisible)(void* _obj, int item)
{
	return (int)((wxListCtrl*)_obj)->EnsureVisible((long)item);
}
	
EWXWEXPORT(int, wxListCtrl_FindItem)(void* _obj, int start, void* str, int partial)
{
	return (long)((wxListCtrl*)_obj)->FindItem((long)start, (char*) str, partial != 0);
}
	
EWXWEXPORT(int, wxListCtrl_FindItemByData)(void* _obj, int start, int data)
{
	return (int)((wxListCtrl*)_obj)->FindItem((long)start, (long)data);
}
	
EWXWEXPORT(int, wxListCtrl_FindItemByPosition)(void* _obj, int start, int x, int y, int direction)
{
	return (int)((wxListCtrl*)_obj)->FindItem((long)start, wxPoint(x, y), direction);
}
	
EWXWEXPORT(int, wxListCtrl_HitTest)(void* _obj, int x, int y, void* flags)
{
	return ((wxListCtrl*)_obj)->HitTest(wxPoint(x, y), *((int*)flags));
}
	
EWXWEXPORT(int, wxListCtrl_InsertItem)(void* _obj, void* info)
{
	return (int)((wxListCtrl*)_obj)->InsertItem(*((wxListItem*)info));
}
	
EWXWEXPORT(int, wxListCtrl_InsertItemWithData)(void* _obj, int index, void* label)
{
	return (int)((wxListCtrl*)_obj)->InsertItem((long)index, (char*)label);
}
	
EWXWEXPORT(int, wxListCtrl_InsertItemWithImage)(void* _obj, int index, int imageIndex)
{
	return (int)((wxListCtrl*)_obj)->InsertItem((long)index, imageIndex);
}
	
EWXWEXPORT(int, wxListCtrl_InsertItemWithLabel)(void* _obj, int index, void* label, int imageIndex)
{
	return (int)((wxListCtrl*)_obj)->InsertItem((long)index, (char*)label, imageIndex);
}
	
EWXWEXPORT(int, wxListCtrl_InsertColumnFromInfo)(void* _obj, int col, void* info)
{
	return (int)((wxListCtrl*)_obj)->InsertColumn((long)col, *((wxListItem*)info));
}
	
EWXWEXPORT(int, wxListCtrl_InsertColumn)(void* _obj, int col, void* heading, int format, int width)
{
	return (int)((wxListCtrl*)_obj)->InsertColumn((long)col, (char*) heading, format, width);
}
	
EWXWEXPORT(int, wxListCtrl_ScrollList)(void* _obj, int dx, int dy)
{
	return (int)((wxListCtrl*)_obj)->ScrollList(dx, dy);
}
	
EWXWEXPORT(int, wxListCtrl_SortItems)(void* _obj, void* fnc, void* obj)
{
	EiffelSort srt = {obj, (EiffelSortFunc)fnc};
	return (int)((wxListCtrl*)_obj)->SortItems(ListCmp, (long)&srt);
}
	
EWXWEXPORT(void, wxListCtrl_UpdateStyle)(void* _obj)
{
#ifdef __WIN32__
	((wxListCtrl*)_obj)->UpdateStyle();
#endif
}

EWXWEXPORT(void, wxListCtrl_AssignImageList)(wxListCtrl* _obj, wxImageList* images, int which )
{
  _obj->AssignImageList(images,which);
}



EWXWEXPORT(void, wxListCtrl_GetColumn2)(wxListCtrl* _obj, int col, wxListItem* item)
{
  bool success = _obj->GetColumn(col, *item);
  if (!success) item->SetId(-1);
}

EWXWEXPORT(void, wxListCtrl_GetItem2)(wxListCtrl* _obj, wxListItem* info)
{
  bool success = _obj->GetItem(*info);
  if (!success) info->SetId(-1);
}

EWXWEXPORT(void, wxListCtrl_GetItemPosition2)(wxListCtrl* _obj, int item, int* x, int* y)
{
  wxPoint pos;
  bool success = _obj->GetItemPosition((long)item, pos);
  if (success) {
    *x = pos.x;
    *y = pos.y;
  }
  else {
    *x = -1;
    *y = -1;
  }
}

}

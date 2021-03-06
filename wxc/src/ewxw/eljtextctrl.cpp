#include "wrapper.h"

extern "C"
{

EWXWEXPORT(void*, wxTextCtrl_Create) (void* _prt, int _id, char* _txt, int _lft, int _top, int _wdt, int _hgt, long _stl)
{
	return (void*) new wxTextCtrl ((wxWindow*)_prt, _id, _txt, wxPoint(_lft, _top), wxSize(_wdt, _hgt), _stl, wxDefaultValidator);
}

EWXWEXPORT(wxString *, wxTextCtrl_GetValue)(wxTextCtrl* _obj)
{
   return new wxString(_obj->GetValue());
}
	
EWXWEXPORT(void, wxTextCtrl_SetValue)(void* _obj, char* value)
{
	((wxTextCtrl*)_obj)->SetValue(value);
}
	
EWXWEXPORT(int, wxTextCtrl_GetLineLength)(void* _obj, long lineNo)
{
	return ((wxTextCtrl*)_obj)->GetLineLength(lineNo);
}
	
EWXWEXPORT(wxString *, wxTextCtrl_GetLineText)(wxTextCtrl* _obj, long lineNo)
{
   return new wxString(_obj->GetLineText(lineNo));
}
	
EWXWEXPORT(int, wxTextCtrl_GetNumberOfLines)(void* _obj)
{
	return ((wxTextCtrl*)_obj)->GetNumberOfLines();
}
	
EWXWEXPORT(int, wxTextCtrl_IsModified)(void* _obj)
{
	return (int)((wxTextCtrl*)_obj)->IsModified();
}
	
EWXWEXPORT(int, wxTextCtrl_IsEditable)(void* _obj)
{
	return (int)((wxTextCtrl*)_obj)->IsEditable();
}
	
EWXWEXPORT(void, wxTextCtrl_GetSelection)(void* _obj, void* from, void* to)
{
	((wxTextCtrl*)_obj)->GetSelection((long*) from, (long*) to);
}
	
EWXWEXPORT(void, wxTextCtrl_Clear)(void* _obj)
{
	((wxTextCtrl*)_obj)->Clear();
}
	
EWXWEXPORT(void, wxTextCtrl_Replace)(void* _obj, long from, long to, char* value)
{
	((wxTextCtrl*)_obj)->Replace(from, to, value);
}
	
EWXWEXPORT(void, wxTextCtrl_Remove)(void* _obj, long from, long to)
{
	((wxTextCtrl*)_obj)->Remove(from, to);
}
	
EWXWEXPORT(int, wxTextCtrl_LoadFile)(void* _obj, char* file)
{
	return (int)((wxTextCtrl*)_obj)->LoadFile(file);
}
	
EWXWEXPORT(int, wxTextCtrl_SaveFile)(void* _obj, char* file)
{
	return (int)((wxTextCtrl*)_obj)->SaveFile(file);
}
	
EWXWEXPORT(void, wxTextCtrl_DiscardEdits)(void* _obj)
{
	((wxTextCtrl*)_obj)->DiscardEdits();
}
	
EWXWEXPORT(void, wxTextCtrl_WriteText)(void* _obj, char* text)
{
	((wxTextCtrl*)_obj)->WriteText(text);
}
	
EWXWEXPORT(void, wxTextCtrl_AppendText)(void* _obj, char* text)
{
	((wxTextCtrl*)_obj)->AppendText(text);
}
	
EWXWEXPORT(long, wxTextCtrl_XYToPosition)(void* _obj, long x, long y)
{
	return ((wxTextCtrl*)_obj)->XYToPosition(x, y);
}
	
EWXWEXPORT(int, wxTextCtrl_PositionToXY)(void* _obj, long pos, long *x, long *y)
{
	return (int)((wxTextCtrl*)_obj)->PositionToXY(pos, x, y);
}
	
EWXWEXPORT(void, wxTextCtrl_ShowPosition)(void* _obj, long pos)
{
	((wxTextCtrl*)_obj)->ShowPosition(pos);
}
	
EWXWEXPORT(void, wxTextCtrl_Copy)(void* _obj)
{
	((wxTextCtrl*)_obj)->Copy();
}
	
EWXWEXPORT(void, wxTextCtrl_Cut)(void* _obj)
{
	((wxTextCtrl*)_obj)->Cut();
}
	
EWXWEXPORT(void, wxTextCtrl_Paste)(void* _obj)
{
	((wxTextCtrl*)_obj)->Paste();
}
	
EWXWEXPORT(int, wxTextCtrl_CanCopy)(void* _obj)
{
	return (int)((wxTextCtrl*)_obj)->CanCopy();
}
	
EWXWEXPORT(int, wxTextCtrl_CanCut)(void* _obj)
{
	return (int)((wxTextCtrl*)_obj)->CanCut();
}
	
EWXWEXPORT(int, wxTextCtrl_CanPaste)(void* _obj)
{
	return (int)((wxTextCtrl*)_obj)->CanPaste();
}
	
EWXWEXPORT(void, wxTextCtrl_Undo)(void* _obj)
{
	((wxTextCtrl*)_obj)->Undo();
}
	
EWXWEXPORT(void, wxTextCtrl_Redo)(void* _obj)
{
	((wxTextCtrl*)_obj)->Redo();
}
	
EWXWEXPORT(int, wxTextCtrl_CanUndo)(void* _obj)
{
	return (int)((wxTextCtrl*)_obj)->CanUndo();
}
	
EWXWEXPORT(int, wxTextCtrl_CanRedo)(void* _obj)
{
	return (int)((wxTextCtrl*)_obj)->CanRedo();
}
	
EWXWEXPORT(void, wxTextCtrl_SetInsertionPoint)(void* _obj, long pos)
{
	((wxTextCtrl*)_obj)->SetInsertionPoint(pos);
}
	
EWXWEXPORT(void, wxTextCtrl_SetInsertionPointEnd)(void* _obj)
{
	((wxTextCtrl*)_obj)->SetInsertionPointEnd();
}
	
EWXWEXPORT(long, wxTextCtrl_GetInsertionPoint)(void* _obj)
{
	return ((wxTextCtrl*)_obj)->GetInsertionPoint();
}
	
EWXWEXPORT(long, wxTextCtrl_GetLastPosition)(void* _obj)
{
	return ((wxTextCtrl*)_obj)->GetLastPosition();
}
	
EWXWEXPORT(void, wxTextCtrl_SetSelection)(void* _obj, long from, long to)
{
	((wxTextCtrl*)_obj)->SetSelection(from, to);
}
	
EWXWEXPORT(void, wxTextCtrl_SetEditable)(void* _obj, int editable)
{
	((wxTextCtrl*)_obj)->SetEditable(editable != 0);
}
	
EWXWEXPORT(int, wxTextCtrl_EmulateKeyPress)(void * _obj, void *keyevent)
{
    return ((wxTextCtrl*)_obj)->EmulateKeyPress( * ((wxKeyEvent *) keyevent));
}

EWXWEXPORT(int, wxTextCtrl_GetStyle)(void * _obj,long pos,void *style)
{
  return (int) ((wxTextCtrl*)_obj)->GetStyle(pos,* (wxTextAttr *) style);
}

EWXWEXPORT(wxTextAttr*, wxTextCtrl_GetDefaultStyle)(void * _obj)
{
  return new wxTextAttr(((wxTextCtrl*)_obj)->GetDefaultStyle());
}

EWXWEXPORT(wxString *, wxTextCtrl_GetRange)(wxTextCtrl* _obj, long from, long to)
{
   return new wxString(_obj->GetRange(from, to));
}

EWXWEXPORT(wxString *, wxTextCtrl_GetStringSelection)(wxTextCtrl* _obj)
{
   return new wxString(_obj->GetStringSelection());
}

EWXWEXPORT( int, wxTextCtrl_IsMultiLine)(void * _obj)
{
    return (int) ((wxTextCtrl*)_obj)->IsMultiLine();
}

EWXWEXPORT( int, wxTextCtrl_IsSingleLine)(void * _obj)
{
    return (int) ((wxTextCtrl*)_obj)->IsSingleLine(   );
}


EWXWEXPORT(int, wxTextCtrl_SetDefaultStyle)(void * _obj, void *style)
{
    return (int) ((wxTextCtrl*)_obj)->SetDefaultStyle( * (wxTextAttr *) style  );
}

EWXWEXPORT(void, wxTextCtrl_SetMaxLength)(void * _obj, long len)
{
    ((wxTextCtrl*)_obj)->SetMaxLength( len  );
}

EWXWEXPORT(int, wxTextCtrl_SetStyle)(void * _obj, long start, long end, void * style)
{
    return (int) ((wxTextCtrl*)_obj)->SetStyle(start, end, * (wxTextAttr *) style);
}
}

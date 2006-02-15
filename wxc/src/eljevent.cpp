#include "wrapper.h"
#include "wx/process.h"
#include "wx/dialup.h"
#include "wx/tabctrl.h"

#ifdef USE_CONTRIB
#include "wx/plot/plot.h"
#include "wx/gizmos/dynamicsash.h"
#endif

extern "C"
{

EWXWEXPORT(void*,wxCommandEvent_Create)(int _typ, int _id)
{
        return new wxCommandEvent((wxEventType)_typ, _id);
}

EWXWEXPORT(void,wxCommandEvent_Delete)(void* _obj)
{
        delete (wxCommandEvent*)_obj;
}

EWXWEXPORT(long, wxEvent_GetTimestamp)(void* _obj)
{
        return ((wxEvent*)_obj)->GetTimestamp();
}

EWXWEXPORT(void, wxEvent_Skip)(void* _obj)
{
        ((wxEvent*)_obj)->Skip();
}

EWXWEXPORT(int, wxEvent_GetEventType)(void* _obj)
{
        return (int)((wxEvent*)_obj)->GetEventType();
}

EWXWEXPORT(void, wxEvent_SetEventType)(void* _obj, int typ)
{
        ((wxEvent*)_obj)->SetEventType((wxEventType) typ);
}

EWXWEXPORT(void*, wxEvent_GetEventObject)(void* _obj)
{
        return (void*)((wxEvent*)_obj)->GetEventObject();
}

EWXWEXPORT(void, wxEvent_SetEventObject)(void* _obj, void* obj)
{
        ((wxEvent*)_obj)->SetEventObject((wxObject*) obj);
}

EWXWEXPORT(void, wxEvent_SetTimestamp)(void* _obj, long ts)
{
        ((wxEvent*)_obj)->SetTimestamp(ts);
}

EWXWEXPORT(int, wxEvent_GetId)(void* _obj)
{
        return ((wxEvent*)_obj)->GetId();
}

EWXWEXPORT(void, wxEvent_SetId)(void* _obj, int Id)
{
        ((wxEvent*)_obj)->SetId(Id);
}

EWXWEXPORT(int, wxEvent_GetSkipped)(void* _obj)
{
        return (int)((wxEvent*)_obj)->GetSkipped();
}

EWXWEXPORT(int, wxEvent_IsCommandEvent)(void* _obj)
{
        return (int)((wxEvent*)_obj)->IsCommandEvent();
}

EWXWEXPORT(void*, wxEvent_Clone)(void* _obj)
{
        return ((wxEvent*)_obj)->Clone();

}

EWXWEXPORT(void, wxEvent_SetCallbackUserData)(void* _obj, wxObject* obj)
{
        ((wxEvent*)_obj)->m_callbackUserData = (wxObject*) obj;
}

EWXWEXPORT(void*, wxEvent_GetCallbackUserData)(void* _obj)
{
        return (void*)((wxEvent*)_obj)->m_callbackUserData;
}

EWXWEXPORT(void, wxCommandEvent_SetClientData)(void* _obj, void* clientData)
{
        ((wxCommandEvent*)_obj)->SetClientData(clientData);
}

EWXWEXPORT(void*, wxCommandEvent_GetClientData)(void* _obj)
{
        return ((wxCommandEvent*)_obj)->m_clientData;
}

EWXWEXPORT(void, wxCommandEvent_SetClientObject)(void* _obj, void* clientObject)
{
        ((wxCommandEvent*)_obj)->SetClientObject((wxClientData*) clientObject);
}

EWXWEXPORT(void*, wxCommandEvent_GetClientObject)(void* _obj)
{
        return (void*)((wxCommandEvent*)_obj)->GetClientObject();
}

EWXWEXPORT(int, wxCommandEvent_GetSelection)(void* _obj)
{
        return ((wxCommandEvent*)_obj)->GetSelection();
}

EWXWEXPORT(void, wxCommandEvent_SetString)(void* _obj, char* s)
{
        ((wxCommandEvent*)_obj)->SetString(s);
}

EWXWEXPORT(wxString*, wxCommandEvent_GetString)(void* _obj)
{
  return new wxString(((wxCommandEvent*)_obj)->GetString());
}

EWXWEXPORT(int, wxCommandEvent_IsChecked)(void* _obj)
{
        return (int)((wxCommandEvent*)_obj)->IsChecked();
}

EWXWEXPORT(int, wxCommandEvent_IsSelection)(void* _obj)
{
        return (int)((wxCommandEvent*)_obj)->IsSelection();
}

EWXWEXPORT(void, wxCommandEvent_SetExtraLong)(void* _obj, long extraLong)
{
        ((wxCommandEvent*)_obj)->SetExtraLong(extraLong);
}

EWXWEXPORT(long, wxCommandEvent_GetExtraLong)(void* _obj)
{
        return ((wxCommandEvent*)_obj)->m_extraLong;
}

EWXWEXPORT(void, wxCommandEvent_SetInt)(void* _obj, int i)
{
        ((wxCommandEvent*)_obj)->SetInt(i);
}

EWXWEXPORT(int, wxCommandEvent_GetInt)(void* _obj)
{
        return ((wxCommandEvent*)_obj)->GetInt();
}

EWXWEXPORT(void, wxNotifyEvent_Veto)(void* _obj)
{
        ((wxNotifyEvent*)_obj)->Veto();
}

EWXWEXPORT(void, wxNotifyEvent_Allow)(void* _obj)
{
        ((wxNotifyEvent*)_obj)->Allow();
}

EWXWEXPORT(int, wxNotifyEvent_IsAllowed)(void* _obj)
{
        return (int)((wxNotifyEvent*)_obj)->IsAllowed();
}

EWXWEXPORT(int, wxScrollWinEvent_GetOrientation)(void* _obj)
{
        return ((wxScrollWinEvent*)_obj)->GetOrientation();
}

EWXWEXPORT(int, wxScrollWinEvent_GetPosition)(void* _obj)
{
        return ((wxScrollWinEvent*)_obj)->GetPosition();
}

EWXWEXPORT(void, wxScrollWinEvent_SetOrientation)(void* _obj, int orient)
{
        ((wxScrollWinEvent*)_obj)->SetOrientation(orient);
}

EWXWEXPORT(void, wxScrollWinEvent_SetPosition)(void* _obj, int pos)
{
        ((wxScrollWinEvent*)_obj)->SetPosition(pos);
}

EWXWEXPORT(int, wxMouseEvent_IsButton)(void* _obj)
{
        return (int)((wxMouseEvent*)_obj)->IsButton();
}

EWXWEXPORT(int, wxMouseEvent_ButtonDown)(void* _obj, int but)
{
        return (int)((wxMouseEvent*)_obj)->ButtonDown(but);
}

EWXWEXPORT(int, wxMouseEvent_ButtonDClick)(void* _obj, int but)
{
        return (int)((wxMouseEvent*)_obj)->ButtonDClick(but);
}

EWXWEXPORT(int, wxMouseEvent_ButtonUp)(void* _obj, int but)
{
        return (int)((wxMouseEvent*)_obj)->ButtonUp(but);
}

EWXWEXPORT(int, wxMouseEvent_Button)(void* _obj, int but)
{
        return (int)((wxMouseEvent*)_obj)->Button(but);
}

EWXWEXPORT(int, wxMouseEvent_ButtonIsDown)(void* _obj, int but)
{
        return (int)((wxMouseEvent*)_obj)->ButtonIsDown(but);
}

EWXWEXPORT(int, wxMouseEvent_ControlDown)(void* _obj)
{
        return (int)((wxMouseEvent*)_obj)->ControlDown();
}

EWXWEXPORT(int, wxMouseEvent_MetaDown)(void* _obj)
{
        return (int)((wxMouseEvent*)_obj)->MetaDown();
}

EWXWEXPORT(int, wxMouseEvent_AltDown)(void* _obj)
{
        return (int)((wxMouseEvent*)_obj)->AltDown();
}

EWXWEXPORT(int, wxMouseEvent_ShiftDown)(void* _obj)
{
        return (int)((wxMouseEvent*)_obj)->ShiftDown();
}

EWXWEXPORT(int, wxMouseEvent_LeftDown)(void* _obj)
{
        return (int)((wxMouseEvent*)_obj)->LeftDown();
}

EWXWEXPORT(int, wxMouseEvent_MiddleDown)(void* _obj)
{
        return (int)((wxMouseEvent*)_obj)->MiddleDown();
}

EWXWEXPORT(int, wxMouseEvent_RightDown)(void* _obj)
{
        return (int)((wxMouseEvent*)_obj)->RightDown();
}

EWXWEXPORT(int, wxMouseEvent_LeftUp)(void* _obj)
{
        return (int)((wxMouseEvent*)_obj)->LeftUp();
}

EWXWEXPORT(int, wxMouseEvent_MiddleUp)(void* _obj)
{
        return (int)((wxMouseEvent*)_obj)->MiddleUp();
}

EWXWEXPORT(int, wxMouseEvent_RightUp)(void* _obj)
{
        return (int)((wxMouseEvent*)_obj)->RightUp();
}

EWXWEXPORT(int, wxMouseEvent_LeftDClick)(void* _obj)
{
        return (int)((wxMouseEvent*)_obj)->LeftDClick();
}

EWXWEXPORT(int, wxMouseEvent_MiddleDClick)(void* _obj)
{
        return (int)((wxMouseEvent*)_obj)->MiddleDClick();
}

EWXWEXPORT(int, wxMouseEvent_RightDClick)(void* _obj)
{
        return (int)((wxMouseEvent*)_obj)->RightDClick();
}

EWXWEXPORT(int, wxMouseEvent_LeftIsDown)(void* _obj)
{
        return (int)((wxMouseEvent*)_obj)->LeftIsDown();
}

EWXWEXPORT(int, wxMouseEvent_MiddleIsDown)(void* _obj)
{
        return (int)((wxMouseEvent*)_obj)->MiddleIsDown();
}

EWXWEXPORT(int, wxMouseEvent_RightIsDown)(void* _obj)
{
        return (int)((wxMouseEvent*)_obj)->RightIsDown();
}

EWXWEXPORT(int, wxMouseEvent_Dragging)(void* _obj)
{
        return (int)((wxMouseEvent*)_obj)->Dragging();
}

EWXWEXPORT(int, wxMouseEvent_Moving)(void* _obj)
{
        return (int)((wxMouseEvent*)_obj)->Moving();
}

EWXWEXPORT(int, wxMouseEvent_Entering)(void* _obj)
{
        return (int)((wxMouseEvent*)_obj)->Entering();
}

EWXWEXPORT(int, wxMouseEvent_Leaving)(void* _obj)
{
        return (int)((wxMouseEvent*)_obj)->Leaving();
}

EWXWEXPORT(void, wxMouseEvent_GetPosition)(void* _obj, int* xpos, int* ypos)
{
        ((wxMouseEvent*)_obj)->GetPosition((wxCoord*)xpos, (wxCoord*)ypos);
}

EWXWEXPORT(void, wxMouseEvent_GetLogicalPosition)(void* _obj, void* dc, int* xpos, int* ypos)
{
        wxPoint pt = ((wxMouseEvent*)_obj)->GetLogicalPosition(*((wxDC*)dc));
        *xpos = pt.x;
        *ypos = pt.y;
}

EWXWEXPORT(int, wxMouseEvent_GetX)(void* _obj)
{
        return ((wxMouseEvent*)_obj)->GetX();
}

EWXWEXPORT(int, wxMouseEvent_GetY)(void* _obj)
{
        return ((wxMouseEvent*)_obj)->GetY();
}

EWXWEXPORT(int, wxSetCursorEvent_GetX)(void* _obj)
{
        return (int)((wxSetCursorEvent*)_obj)->GetX();
}

EWXWEXPORT(int, wxSetCursorEvent_GetY)(void* _obj)
{
        return (int)((wxSetCursorEvent*)_obj)->GetY();
}

EWXWEXPORT(void, wxSetCursorEvent_SetCursor)(void* _obj, void* cursor)
{
        ((wxSetCursorEvent*)_obj)->SetCursor(*((wxCursor*)cursor));
}

EWXWEXPORT(void*, wxSetCursorEvent_GetCursor)(void* _obj)
{
        return (void*)(&((wxSetCursorEvent*)_obj)->GetCursor());
}

EWXWEXPORT(int, wxSetCursorEvent_HasCursor)(void* _obj)
{
        return (int)((wxSetCursorEvent*)_obj)->HasCursor();
}

EWXWEXPORT(int, wxKeyEvent_ControlDown)(void* _obj)
{
        return (int)((wxKeyEvent*)_obj)->ControlDown();
}

EWXWEXPORT(int, wxKeyEvent_MetaDown)(void* _obj)
{
        return (int)((wxKeyEvent*)_obj)->MetaDown();
}

EWXWEXPORT(int, wxKeyEvent_AltDown)(void* _obj)
{
        return (int)((wxKeyEvent*)_obj)->AltDown();
}

EWXWEXPORT(int, wxKeyEvent_ShiftDown)(void* _obj)
{
        return (int)((wxKeyEvent*)_obj)->ShiftDown();
}

EWXWEXPORT(int, wxKeyEvent_HasModifiers)(void* _obj)
{
        return (int)((wxKeyEvent*)_obj)->HasModifiers();
}

EWXWEXPORT(int, wxKeyEvent_GetKeyCode)(void* _obj)
{
        return ((wxKeyEvent*)_obj)->GetKeyCode();
}

EWXWEXPORT(void, wxKeyEvent_SetKeyCode)(void* _obj, int code)
{
        ((wxKeyEvent*)_obj)->m_keyCode = code;
}

EWXWEXPORT(void, wxKeyEvent_GetPosition)(void* _obj, int* xpos, int* ypos)
{
        ((wxKeyEvent*)_obj)->GetPosition((wxCoord*) xpos, (wxCoord*) ypos);
}

EWXWEXPORT(int, wxKeyEvent_GetX)(void* _obj)
{
        return (int)((wxKeyEvent*)_obj)->GetX();
}

EWXWEXPORT(int, wxKeyEvent_GetY)(void* _obj)
{
        return (int)((wxKeyEvent*)_obj)->GetY();
}

EWXWEXPORT(void, wxSizeEvent_GetSize)(void* _obj, int* w, int* h)
{
        wxSize sz = ((wxSizeEvent*)_obj)->GetSize();
        *w = sz.x;
        *h = sz.y;
}

EWXWEXPORT(void, wxMoveEvent_GetPosition)(void* _obj, int* x, int* y)
{
        wxPoint pt = ((wxMoveEvent*)_obj)->GetPosition();
        *x = pt.x;
        *y = pt.y;
}

EWXWEXPORT(void*, wxEraseEvent_GetDC)(void* _obj)
{
        return (void*)((wxEraseEvent*)_obj)->GetDC();
}

EWXWEXPORT(int, wxActivateEvent_GetActive)(void* _obj)
{
        return (int)((wxActivateEvent*)_obj)->GetActive();
}

EWXWEXPORT(int, wxMenuEvent_GetMenuId)(void* _obj)
{
        return ((wxMenuEvent*)_obj)->GetMenuId();
}

EWXWEXPORT(void, wxCloseEvent_SetLoggingOff)(void* _obj, int logOff)
{
        ((wxCloseEvent*)_obj)->SetLoggingOff(logOff != 0);
}

EWXWEXPORT(int, wxCloseEvent_GetLoggingOff)(void* _obj)
{
        return (int)((wxCloseEvent*)_obj)->GetLoggingOff();
}

EWXWEXPORT(void, wxCloseEvent_Veto)(void* _obj, int veto)
{
        ((wxCloseEvent*)_obj)->Veto(veto != 0);
}

EWXWEXPORT(void, wxCloseEvent_SetCanVeto)(void* _obj, int canVeto)
{
        ((wxCloseEvent*)_obj)->SetCanVeto(canVeto != 0);
}

EWXWEXPORT(int, wxCloseEvent_CanVeto)(void* _obj)
{
        return (int)((wxCloseEvent*)_obj)->CanVeto();
}

EWXWEXPORT(int, wxCloseEvent_GetVeto)(void* _obj)
{
        return (int)((wxCloseEvent*)_obj)->GetVeto();
}

EWXWEXPORT(void, wxShowEvent_SetShow)(void* _obj, int show)
{
        ((wxShowEvent*)_obj)->SetShow(show != 0);
}

EWXWEXPORT(int, wxShowEvent_GetShow)(void* _obj)
{
        return (int)((wxShowEvent*)_obj)->GetShow();
}

EWXWEXPORT(void, wxJoystickEvent_GetPosition)(void* _obj, int* x, int* y)
{
        wxPoint pt = ((wxJoystickEvent*)_obj)->GetPosition();
        *x = pt.x;
        *y = pt.y;
}

EWXWEXPORT(int, wxJoystickEvent_GetZPosition)(void* _obj)
{
        return ((wxJoystickEvent*)_obj)->GetZPosition();
}

EWXWEXPORT(int, wxJoystickEvent_GetButtonState)(void* _obj)
{
        return ((wxJoystickEvent*)_obj)->GetButtonState();
}

EWXWEXPORT(int, wxJoystickEvent_GetButtonChange)(void* _obj)
{
        return ((wxJoystickEvent*)_obj)->GetButtonChange();
}

EWXWEXPORT(int, wxJoystickEvent_GetJoystick)(void* _obj)
{
        return ((wxJoystickEvent*)_obj)->GetJoystick();
}

EWXWEXPORT(void, wxJoystickEvent_SetJoystick)(void* _obj, int stick)
{
        ((wxJoystickEvent*)_obj)->SetJoystick(stick);
}

EWXWEXPORT(void, wxJoystickEvent_SetButtonState)(void* _obj, int state)
{
        ((wxJoystickEvent*)_obj)->SetButtonState(state);
}

EWXWEXPORT(void, wxJoystickEvent_SetButtonChange)(void* _obj, int change)
{
        ((wxJoystickEvent*)_obj)->SetButtonChange(change);
}

EWXWEXPORT(void, wxJoystickEvent_SetPosition)(void* _obj, void* pos)
{
        ((wxJoystickEvent*)_obj)->SetPosition(*((wxPoint*)pos));
}

EWXWEXPORT(void, wxJoystickEvent_SetZPosition)(void* _obj, int zPos)
{
        ((wxJoystickEvent*)_obj)->SetZPosition(zPos);
}

EWXWEXPORT(int, wxJoystickEvent_IsButton)(void* _obj)
{
        return (int)((wxJoystickEvent*)_obj)->IsButton();
}

EWXWEXPORT(int, wxJoystickEvent_IsMove)(void* _obj)
{
        return (int)((wxJoystickEvent*)_obj)->IsMove();
}

EWXWEXPORT(int, wxJoystickEvent_IsZMove)(void* _obj)
{
        return (int)((wxJoystickEvent*)_obj)->IsZMove();
}

EWXWEXPORT(int, wxJoystickEvent_ButtonDown)(void* _obj, int but)
{
        return (int)((wxJoystickEvent*)_obj)->ButtonDown(but);
}

EWXWEXPORT(int, wxJoystickEvent_ButtonUp)(void* _obj, int but)
{
        return (int)((wxJoystickEvent*)_obj)->ButtonUp(but);
}

EWXWEXPORT(int, wxJoystickEvent_ButtonIsDown)(void* _obj, int but)
{
        return (int)((wxJoystickEvent*)_obj)->ButtonIsDown(but);
}

EWXWEXPORT(int, wxUpdateUIEvent_GetChecked)(void* _obj)
{
        return (int)((wxUpdateUIEvent*)_obj)->GetChecked();
}

EWXWEXPORT(int, wxUpdateUIEvent_GetEnabled)(void* _obj)
{
        return (int)((wxUpdateUIEvent*)_obj)->GetEnabled();
}

EWXWEXPORT(int, wxUpdateUIEvent_GetText)(void* _obj, void* _buf)
{
        wxString result =((wxUpdateUIEvent*)_obj)->GetText();
        if (_buf) memcpy (_buf, result.c_str(), result.Length());
        return result.Length();
}

EWXWEXPORT(int, wxUpdateUIEvent_GetSetText)(void* _obj)
{
        return (int)((wxUpdateUIEvent*)_obj)->GetSetText();
}

EWXWEXPORT(int, wxUpdateUIEvent_GetSetChecked)(void* _obj)
{
        return (int)((wxUpdateUIEvent*)_obj)->GetSetChecked();
}

EWXWEXPORT(int, wxUpdateUIEvent_GetSetEnabled)(void* _obj)
{
        return (int)((wxUpdateUIEvent*)_obj)->GetSetEnabled();
}

EWXWEXPORT(void, wxUpdateUIEvent_Check)(void* _obj, int check)
{
        ((wxUpdateUIEvent*)_obj)->Check(check != 0);
}

EWXWEXPORT(void, wxUpdateUIEvent_Enable)(void* _obj, int enable)
{
        ((wxUpdateUIEvent*)_obj)->Enable(enable != 0);
}

EWXWEXPORT(void, wxUpdateUIEvent_SetText)(void* _obj, char* text)
{
        ((wxUpdateUIEvent*)_obj)->SetText(text);
}

EWXWEXPORT(void, wxPaletteChangedEvent_SetChangedWindow)(void* _obj, void* win)
{
        ((wxPaletteChangedEvent*)_obj)->SetChangedWindow((wxWindow*) win);
}

EWXWEXPORT(void*, wxPaletteChangedEvent_GetChangedWindow)(void* _obj)
{
        return (void*)((wxPaletteChangedEvent*)_obj)->GetChangedWindow();
}

EWXWEXPORT(void, wxQueryNewPaletteEvent_SetPaletteRealized)(void* _obj, int realized)
{
        ((wxQueryNewPaletteEvent*)_obj)->SetPaletteRealized(realized != 0);
}

EWXWEXPORT(int, wxQueryNewPaletteEvent_GetPaletteRealized)(void* _obj)
{
        return (int)((wxQueryNewPaletteEvent*)_obj)->GetPaletteRealized();
}

EWXWEXPORT(int, wxNavigationKeyEvent_GetDirection)(void* _obj)
{
        return (int)((wxNavigationKeyEvent*)_obj)->GetDirection();
}

EWXWEXPORT(void, wxNavigationKeyEvent_SetDirection)(void* _obj, int bForward)
{
        ((wxNavigationKeyEvent*)_obj)->SetDirection(bForward != 0);
}

EWXWEXPORT(int, wxNavigationKeyEvent_IsWindowChange)(void* _obj)
{
        return (int)((wxNavigationKeyEvent*)_obj)->IsWindowChange();
}

EWXWEXPORT(void, wxNavigationKeyEvent_SetWindowChange)(void* _obj, int bIs)
{
        ((wxNavigationKeyEvent*)_obj)->SetWindowChange(bIs != 0);
}

EWXWEXPORT(int, wxNavigationKeyEvent_ShouldPropagate)(void* _obj)
{
        return (int)((wxNavigationKeyEvent*)_obj)->ShouldPropagate();
}
/*
EWXWEXPORT(void, wxNavigationKeyEvent_SetPropagate)(void* _obj, int bDoIt)
{
        ((wxNavigationKeyEvent*)_obj)->SetPropagate(bDoIt != 0);
}
*/
EWXWEXPORT(void*, wxNavigationKeyEvent_GetCurrentFocus)(void* _obj)
{
        return (void*)((wxNavigationKeyEvent*)_obj)->GetCurrentFocus();
}

EWXWEXPORT(void, wxNavigationKeyEvent_SetCurrentFocus)(void* _obj, void* win)
{
        ((wxNavigationKeyEvent*)_obj)->SetCurrentFocus((wxWindow*)win);
}

EWXWEXPORT(void*, wxWindowCreateEvent_GetWindow)(void* _obj)
{
        return (void*)((wxWindowCreateEvent*)_obj)->GetWindow();
}

EWXWEXPORT(void*, wxWindowDestroyEvent_GetWindow)(void* _obj)
{
        return (void*)((wxWindowDestroyEvent*)_obj)->GetWindow();
}

EWXWEXPORT(void, wxIdleEvent_RequestMore)(void* _obj, int needMore)
{
        ((wxIdleEvent*)_obj)->RequestMore(needMore != 0);
}

EWXWEXPORT(int, wxIdleEvent_MoreRequested)(void* _obj)
{
        return (int)((wxIdleEvent*)_obj)->MoreRequested();
}

EWXWEXPORT(int, wxListEvent_GetCode)(void* _obj)
{
#if wxCHECK_VERSION(2,5,0)
	return ((wxListEvent*)_obj)->GetKeyCode();
#else
        return ((wxListEvent*)_obj)->GetCode();
#endif
}

EWXWEXPORT(int, wxListEvent_GetIndex)(void* _obj)
{
        return (int)((wxListEvent*)_obj)->GetIndex();
}
/*
EWXWEXPORT(int, wxListEvent_GetOldIndex)(void* _obj)
{
        return (int)((wxListEvent*)_obj)->GetOldIndex();
}

EWXWEXPORT(int, wxListEvent_GetOldItem)(void* _obj)
{
        return (int)((wxListEvent*)_obj)->GetOldItem();
}
*/
EWXWEXPORT(int, wxListEvent_GetColumn)(void* _obj)
{
        return ((wxListEvent*)_obj)->GetColumn();
}

EWXWEXPORT(int, wxListEvent_Cancelled)(void* _obj)
{
#if wxVERSION_NUMBER < 2400
        return (int)((wxListEvent*)_obj)->Cancelled();
#else
        return 0;
#endif
}

EWXWEXPORT(void, wxListEvent_GetPoint)(void* _obj, void* x, void* y)
{
        wxPoint pos = ((wxListEvent*)_obj)->GetPoint();
        *((int*)x) = pos.x;
        *((int*)y) = pos.y;
}

EWXWEXPORT(int, wxListEvent_GetLabel)(void* _obj, void* _buf)
{
        wxString result = ((wxListEvent*)_obj)->GetLabel();
        if (_buf) memcpy (_buf, result.c_str(), result.Length());
        return result.Length();
}

EWXWEXPORT(int, wxListEvent_GetText)(void* _obj, void* _buf)
{
        wxString result = ((wxListEvent*)_obj)->GetText();
        if (_buf) memcpy (_buf, result.c_str(), result.Length());
        return result.Length();
}

EWXWEXPORT(int, wxListEvent_GetImage)(void* _obj)
{
        return ((wxListEvent*)_obj)->GetImage();
}

EWXWEXPORT(int, wxListEvent_GetData)(void* _obj)
{
        return (int)((wxListEvent*)_obj)->GetData();
}

EWXWEXPORT(int, wxListEvent_GetMask)(void* _obj)
{
        return (int)((wxListEvent*)_obj)->GetMask();
}

EWXWEXPORT(void, wxListEvent_GetItem)(void* _obj, void* _ref)
{
#if wxVERSION_NUMBER < 2400
        *((wxListItem*)_ref) = ((wxListEvent*)_obj)->GetItem();
#else
        wxListItem* ret = new wxListItem(((wxListEvent*)_obj)->GetItem());
        *((void**)_ref) = (void*)ret;
#endif
}

EWXWEXPORT(void, wxTreeEvent_GetItem)(void* _obj, void* _ref)
{
        *((wxTreeItemId*)_ref) = ((wxTreeEvent*)_obj)->GetItem();
}

EWXWEXPORT(void, wxTreeEvent_GetOldItem)(void* _obj, void* _ref)
{
        *((wxTreeItemId*)_ref) = ((wxTreeEvent*)_obj)->GetOldItem();
}

EWXWEXPORT(void, wxTreeEvent_GetPoint)(void* _obj, void* x, void* y)
{
        wxPoint pos = ((wxTreeEvent*)_obj)->GetPoint();
        *((int*)x) = pos.x;
        *((int*)y) = pos.y;
}

EWXWEXPORT(int, wxTreeEvent_GetCode)(void* _obj)
{
        return ((wxTreeEvent*)_obj)->GetKeyCode();
}

EWXWEXPORT(int, wxTreeEvent_GetLabel)(void* _obj, void* _buf)
{
        wxString result = ((wxTreeEvent*)_obj)->GetLabel();
        if (_buf) memcpy (_buf, result.c_str(), result.Length());
        return result.Length();
}

EWXWEXPORT(int, wxSpinEvent_GetPosition)(void* _obj)
{
        return ((wxSpinEvent*)_obj)->GetPosition();
}

EWXWEXPORT(void, wxSpinEvent_SetPosition)(void* _obj, int pos)
{
        ((wxSpinEvent*)_obj)->SetPosition(pos);
}

EWXWEXPORT(int, wxTimerEvent_GetInterval)(void* _obj)
{
        return ((wxTimerEvent*)_obj)->GetInterval();
}

EWXWEXPORT(int, wxCalendarEvent_GetWeekDay)(void* _obj)
{
        return ((wxCalendarEvent*)_obj)->GetWeekDay();
}

EWXWEXPORT(void, wxCalendarEvent_GetDate)(void* _obj, void* _dte)
{
        *((wxDateTime*)_dte) = ((wxCalendarEvent*)_obj)->GetDate();
}


EWXWEXPORT(int, wxScrollEvent_GetOrientation)(void* _obj)
{
        return ((wxScrollEvent*)_obj)->GetOrientation();
}

EWXWEXPORT(int, wxScrollEvent_GetPosition)(void* _obj)
{
        return ((wxScrollEvent*)_obj)->GetPosition();
}

//#if wxVERSION_NUMBER >= 2400
EWXWEXPORT(void,wxHelpEvent_GetPosition)(void* _obj, void* x, void* y)
{
        wxPoint pos = ((wxHelpEvent*)_obj)->GetPosition();
        *((int*)x) = pos.x;
        *((int*)y) = pos.y;
}

EWXWEXPORT(void,wxHelpEvent_SetPosition)(void* _obj, int x, int y)
{
        ((wxHelpEvent*)_obj)->SetPosition(wxPoint(x, y));
}

EWXWEXPORT(int,wxHelpEvent_GetLink)(void* _obj, void* _ref)
{
        wxString tmp =((wxHelpEvent*)_obj)->GetLink();
        if (_ref)
                memcpy (_ref, tmp.c_str(), tmp.Length());
        return tmp.Length();
}

EWXWEXPORT(void,wxHelpEvent_SetLink)(void* _obj, void* link)
{
        ((wxHelpEvent*)_obj)->SetLink((char*)link);
}

EWXWEXPORT(int,wxHelpEvent_GetTarget)(void* _obj, void* _ref)
{
        wxString tmp =((wxHelpEvent*)_obj)->GetTarget();
        if (_ref)
                memcpy (_ref, tmp.c_str(), tmp.Length());
        return tmp.Length();
}

EWXWEXPORT(void,wxHelpEvent_SetTarget)(void* _obj, void* target)
{
        ((wxHelpEvent*)_obj)->SetTarget((char*)target);
}

EWXWEXPORT_VAR int* wxEVENT_COMMAND_BUTTON_CLICKED = (int*) &wxEVT_COMMAND_BUTTON_CLICKED;
EWXWEXPORT_VAR int* wxEVENT_COMMAND_CHECKBOX_CLICKED = (int*) &wxEVT_COMMAND_CHECKBOX_CLICKED;
EWXWEXPORT_VAR int* wxEVENT_COMMAND_CHOICE_SELECTED = (int*) &wxEVT_COMMAND_CHOICE_SELECTED;
EWXWEXPORT_VAR int* wxEVENT_COMMAND_LISTBOX_SELECTED = (int*) &wxEVT_COMMAND_LISTBOX_SELECTED;
EWXWEXPORT_VAR int* wxEVENT_COMMAND_LISTBOX_DOUBLECLICKED = (int*) &wxEVT_COMMAND_LISTBOX_DOUBLECLICKED;
EWXWEXPORT_VAR int* wxEVENT_COMMAND_CHECKLISTBOX_TOGGLED = (int*) &wxEVT_COMMAND_CHECKLISTBOX_TOGGLED;
EWXWEXPORT_VAR int* wxEVENT_COMMAND_TEXT_UPDATED = (int*) &wxEVT_COMMAND_TEXT_UPDATED;
EWXWEXPORT_VAR int* wxEVENT_COMMAND_TEXT_ENTER = (int*) &wxEVT_COMMAND_TEXT_ENTER;
EWXWEXPORT_VAR int* wxEVENT_COMMAND_MENU_SELECTED = (int*) &wxEVT_COMMAND_MENU_SELECTED;
EWXWEXPORT_VAR int* wxEVENT_COMMAND_TOOL_CLICKED = (int*) &wxEVT_COMMAND_TOOL_CLICKED;
EWXWEXPORT_VAR int* wxEVENT_COMMAND_SLIDER_UPDATED = (int*) &wxEVT_COMMAND_SLIDER_UPDATED;
EWXWEXPORT_VAR int* wxEVENT_COMMAND_RADIOBOX_SELECTED = (int*) &wxEVT_COMMAND_RADIOBOX_SELECTED;
EWXWEXPORT_VAR int* wxEVENT_COMMAND_RADIOBUTTON_SELECTED = (int*) &wxEVT_COMMAND_RADIOBUTTON_SELECTED;
EWXWEXPORT_VAR int* wxEVENT_COMMAND_SCROLLBAR_UPDATED = (int*) &wxEVT_COMMAND_SCROLLBAR_UPDATED;
EWXWEXPORT_VAR int* wxEVENT_COMMAND_VLBOX_SELECTED = (int*) &wxEVT_COMMAND_VLBOX_SELECTED;
EWXWEXPORT_VAR int* wxEVENT_COMMAND_COMBOBOX_SELECTED = (int*) &wxEVT_COMMAND_COMBOBOX_SELECTED;
EWXWEXPORT_VAR int* wxEVENT_COMMAND_TOOL_RCLICKED = (int*) &wxEVT_COMMAND_TOOL_RCLICKED;
EWXWEXPORT_VAR int* wxEVENT_COMMAND_TOOL_ENTER = (int*) &wxEVT_COMMAND_TOOL_ENTER;
EWXWEXPORT_VAR int* wxEVENT_COMMAND_SPINCTRL_UPDATED = (int*) &wxEVT_COMMAND_SPINCTRL_UPDATED;
EWXWEXPORT_VAR int* wxEVENT_SOCKET = (int*) &wxEVT_SOCKET;
EWXWEXPORT_VAR int* wxEVENT_LEFT_DOWN = (int*) &wxEVT_LEFT_DOWN;
EWXWEXPORT_VAR int* wxEVENT_LEFT_UP = (int*) &wxEVT_LEFT_UP;
EWXWEXPORT_VAR int* wxEVENT_MIDDLE_DOWN = (int*) &wxEVT_MIDDLE_DOWN;
EWXWEXPORT_VAR int* wxEVENT_MIDDLE_UP = (int*) &wxEVT_MIDDLE_UP;
EWXWEXPORT_VAR int* wxEVENT_RIGHT_DOWN = (int*) &wxEVT_RIGHT_DOWN;
EWXWEXPORT_VAR int* wxEVENT_RIGHT_UP = (int*) &wxEVT_RIGHT_UP;
EWXWEXPORT_VAR int* wxEVENT_MOTION = (int*) &wxEVT_MOTION;
EWXWEXPORT_VAR int* wxEVENT_ENTER_WINDOW = (int*) &wxEVT_ENTER_WINDOW;
EWXWEXPORT_VAR int* wxEVENT_LEAVE_WINDOW = (int*) &wxEVT_LEAVE_WINDOW;
EWXWEXPORT_VAR int* wxEVENT_LEFT_DCLICK = (int*) &wxEVT_LEFT_DCLICK;
EWXWEXPORT_VAR int* wxEVENT_MIDDLE_DCLICK = (int*) &wxEVT_MIDDLE_DCLICK;
EWXWEXPORT_VAR int* wxEVENT_RIGHT_DCLICK = (int*) &wxEVT_RIGHT_DCLICK;
EWXWEXPORT_VAR int* wxEVENT_SET_FOCUS = (int*) &wxEVT_SET_FOCUS;
EWXWEXPORT_VAR int* wxEVENT_KILL_FOCUS = (int*) &wxEVT_KILL_FOCUS;
EWXWEXPORT_VAR int* wxEVENT_NC_LEFT_DOWN = (int*) &wxEVT_NC_LEFT_DOWN;
EWXWEXPORT_VAR int* wxEVENT_NC_LEFT_UP = (int*) &wxEVT_NC_LEFT_UP;
EWXWEXPORT_VAR int* wxEVENT_NC_MIDDLE_DOWN = (int*) &wxEVT_NC_MIDDLE_DOWN;
EWXWEXPORT_VAR int* wxEVENT_NC_MIDDLE_UP = (int*) &wxEVT_NC_MIDDLE_UP;
EWXWEXPORT_VAR int* wxEVENT_NC_RIGHT_DOWN = (int*) &wxEVT_NC_RIGHT_DOWN;
EWXWEXPORT_VAR int* wxEVENT_NC_RIGHT_UP = (int*) &wxEVT_NC_RIGHT_UP;
EWXWEXPORT_VAR int* wxEVENT_NC_MOTION = (int*) &wxEVT_NC_MOTION;
EWXWEXPORT_VAR int* wxEVENT_NC_ENTER_WINDOW = (int*) &wxEVT_NC_ENTER_WINDOW;
EWXWEXPORT_VAR int* wxEVENT_NC_LEAVE_WINDOW = (int*) &wxEVT_NC_LEAVE_WINDOW;
EWXWEXPORT_VAR int* wxEVENT_NC_LEFT_DCLICK = (int*) &wxEVT_NC_LEFT_DCLICK;
EWXWEXPORT_VAR int* wxEVENT_NC_MIDDLE_DCLICK = (int*) &wxEVT_NC_MIDDLE_DCLICK;
EWXWEXPORT_VAR int* wxEVENT_NC_RIGHT_DCLICK = (int*) &wxEVT_NC_RIGHT_DCLICK;
EWXWEXPORT_VAR int* wxEVENT_CHAR = (int*) &wxEVT_CHAR;
EWXWEXPORT_VAR int* wxEVENT_CHAR_HOOK = (int*) &wxEVT_CHAR_HOOK;
EWXWEXPORT_VAR int* wxEVENT_NAVIGATION_KEY = (int*) &wxEVT_NAVIGATION_KEY;
EWXWEXPORT_VAR int* wxEVENT_KEY_DOWN = (int*) &wxEVT_KEY_DOWN;
EWXWEXPORT_VAR int* wxEVENT_KEY_UP = (int*) &wxEVT_KEY_UP;
EWXWEXPORT_VAR int* wxEVENT_SET_CURSOR = (int*) &wxEVT_SET_CURSOR;
EWXWEXPORT_VAR int* wxEVENT_SCROLL_TOP = (int*) &wxEVT_SCROLL_TOP;
EWXWEXPORT_VAR int* wxEVENT_SCROLL_BOTTOM = (int*) &wxEVT_SCROLL_BOTTOM;
EWXWEXPORT_VAR int* wxEVENT_SCROLL_LINEUP = (int*) &wxEVT_SCROLL_LINEUP;
EWXWEXPORT_VAR int* wxEVENT_SCROLL_LINEDOWN = (int*) &wxEVT_SCROLL_LINEDOWN;
EWXWEXPORT_VAR int* wxEVENT_SCROLL_PAGEUP = (int*) &wxEVT_SCROLL_PAGEUP;
EWXWEXPORT_VAR int* wxEVENT_SCROLL_PAGEDOWN = (int*) &wxEVT_SCROLL_PAGEDOWN;
EWXWEXPORT_VAR int* wxEVENT_SCROLL_THUMBTRACK = (int*) &wxEVT_SCROLL_THUMBTRACK;
EWXWEXPORT_VAR int* wxEVENT_SCROLL_THUMBRELEASE = (int*) &wxEVT_SCROLL_THUMBRELEASE;
EWXWEXPORT_VAR int* wxEVENT_SCROLLWIN_TOP = (int*) &wxEVT_SCROLLWIN_TOP;
EWXWEXPORT_VAR int* wxEVENT_SCROLLWIN_BOTTOM = (int*) &wxEVT_SCROLLWIN_BOTTOM;
EWXWEXPORT_VAR int* wxEVENT_SCROLLWIN_LINEUP = (int*) &wxEVT_SCROLLWIN_LINEUP;
EWXWEXPORT_VAR int* wxEVENT_SCROLLWIN_LINEDOWN = (int*) &wxEVT_SCROLLWIN_LINEDOWN;
EWXWEXPORT_VAR int* wxEVENT_SCROLLWIN_PAGEUP = (int*) &wxEVT_SCROLLWIN_PAGEUP;
EWXWEXPORT_VAR int* wxEVENT_SCROLLWIN_PAGEDOWN = (int*) &wxEVT_SCROLLWIN_PAGEDOWN;
EWXWEXPORT_VAR int* wxEVENT_SCROLLWIN_THUMBTRACK = (int*) &wxEVT_SCROLLWIN_THUMBTRACK;
EWXWEXPORT_VAR int* wxEVENT_SCROLLWIN_THUMBRELEASE = (int*) &wxEVT_SCROLLWIN_THUMBRELEASE;
EWXWEXPORT_VAR int* wxEVENT_SIZE = (int*) &wxEVT_SIZE;
EWXWEXPORT_VAR int* wxEVENT_MOVE = (int*) &wxEVT_MOVE;
EWXWEXPORT_VAR int* wxEVENT_CLOSE_WINDOW = (int*) &wxEVT_CLOSE_WINDOW;
EWXWEXPORT_VAR int* wxEVENT_END_SESSION = (int*) &wxEVT_END_SESSION;
EWXWEXPORT_VAR int* wxEVENT_QUERY_END_SESSION = (int*) &wxEVT_QUERY_END_SESSION;
EWXWEXPORT_VAR int* wxEVENT_ACTIVATE_APP = (int*) &wxEVT_ACTIVATE_APP;
EWXWEXPORT_VAR int* wxEVENT_POWER = (int*) &wxEVT_POWER;
EWXWEXPORT_VAR int* wxEVENT_ACTIVATE = (int*) &wxEVT_ACTIVATE;
EWXWEXPORT_VAR int* wxEVENT_CREATE = (int*) &wxEVT_CREATE;
EWXWEXPORT_VAR int* wxEVENT_DESTROY = (int*) &wxEVT_DESTROY;
EWXWEXPORT_VAR int* wxEVENT_SHOW = (int*) &wxEVT_SHOW;
EWXWEXPORT_VAR int* wxEVENT_ICONIZE = (int*) &wxEVT_ICONIZE;
EWXWEXPORT_VAR int* wxEVENT_MAXIMIZE = (int*) &wxEVT_MAXIMIZE;
EWXWEXPORT_VAR int* wxEVENT_MOUSE_CAPTURE_CHANGED = (int*) &wxEVT_MOUSE_CAPTURE_CHANGED;
EWXWEXPORT_VAR int* wxEVENT_PAINT = (int*) &wxEVT_PAINT;
EWXWEXPORT_VAR int* wxEVENT_ERASE_BACKGROUND = (int*) &wxEVT_ERASE_BACKGROUND;
EWXWEXPORT_VAR int* wxEVENT_NC_PAINT = (int*) &wxEVT_NC_PAINT;
EWXWEXPORT_VAR int* wxEVENT_PAINT_ICON = (int*) &wxEVT_PAINT_ICON;
EWXWEXPORT_VAR int* wxEVENT_MENU_HIGHLIGHT = (int*) &wxEVT_MENU_HIGHLIGHT;
EWXWEXPORT_VAR int* wxEVENT_CONTEXT_MENU = (int*) &wxEVT_CONTEXT_MENU;
EWXWEXPORT_VAR int* wxEVENT_SYS_COLOUR_CHANGED = (int*) &wxEVT_SYS_COLOUR_CHANGED;
EWXWEXPORT_VAR int* wxEVENT_SETTING_CHANGED = (int*) &wxEVT_SETTING_CHANGED;
EWXWEXPORT_VAR int* wxEVENT_QUERY_NEW_PALETTE = (int*) &wxEVT_QUERY_NEW_PALETTE;
EWXWEXPORT_VAR int* wxEVENT_PALETTE_CHANGED = (int*) &wxEVT_PALETTE_CHANGED;
EWXWEXPORT_VAR int* wxEVENT_JOY_BUTTON_DOWN = (int*) &wxEVT_JOY_BUTTON_DOWN;
EWXWEXPORT_VAR int* wxEVENT_JOY_BUTTON_UP = (int*) &wxEVT_JOY_BUTTON_UP;
EWXWEXPORT_VAR int* wxEVENT_JOY_MOVE = (int*) &wxEVT_JOY_MOVE;
EWXWEXPORT_VAR int* wxEVENT_JOY_ZMOVE = (int*) &wxEVT_JOY_ZMOVE;
EWXWEXPORT_VAR int* wxEVENT_DROP_FILES = (int*) &wxEVT_DROP_FILES;
EWXWEXPORT_VAR int* wxEVENT_DRAW_ITEM = (int*) &wxEVT_DRAW_ITEM;
EWXWEXPORT_VAR int* wxEVENT_MEASURE_ITEM = (int*) &wxEVT_MEASURE_ITEM;
EWXWEXPORT_VAR int* wxEVENT_COMPARE_ITEM = (int*) &wxEVT_COMPARE_ITEM;
EWXWEXPORT_VAR int* wxEVENT_INIT_DIALOG = (int*) &wxEVT_INIT_DIALOG;
EWXWEXPORT_VAR int* wxEVENT_IDLE = (int*) &wxEVT_IDLE;
EWXWEXPORT_VAR int* wxEVENT_UPDATE_UI = (int*) &wxEVT_UPDATE_UI;
EWXWEXPORT_VAR int* wxEVENT_END_PROCESS = (int*) &wxEVT_END_PROCESS;

#ifndef __WXMAC__ //doesn't work on OSX yet
EWXWEXPORT_VAR int* wxEVENT_DIALUP_CONNECTED = (int*) &wxEVT_DIALUP_CONNECTED;
EWXWEXPORT_VAR int* wxEVENT_DIALUP_DISCONNECTED = (int*) &wxEVT_DIALUP_DISCONNECTED;
#endif
EWXWEXPORT_VAR int* wxEVENT_COMMAND_LEFT_CLICK = (int*) &wxEVT_COMMAND_LEFT_CLICK;
EWXWEXPORT_VAR int* wxEVENT_COMMAND_LEFT_DCLICK = (int*) &wxEVT_COMMAND_LEFT_DCLICK;
EWXWEXPORT_VAR int* wxEVENT_COMMAND_RIGHT_CLICK = (int*) &wxEVT_COMMAND_RIGHT_CLICK;
EWXWEXPORT_VAR int* wxEVENT_COMMAND_RIGHT_DCLICK = (int*) &wxEVT_COMMAND_RIGHT_DCLICK;
EWXWEXPORT_VAR int* wxEVENT_COMMAND_SET_FOCUS = (int*) &wxEVT_COMMAND_SET_FOCUS;
EWXWEXPORT_VAR int* wxEVENT_COMMAND_KILL_FOCUS = (int*) &wxEVT_COMMAND_KILL_FOCUS;
EWXWEXPORT_VAR int* wxEVENT_COMMAND_ENTER = (int*) &wxEVT_COMMAND_ENTER;
EWXWEXPORT_VAR int* wxEVENT_COMMAND_TREE_BEGIN_DRAG = (int*) &wxEVT_COMMAND_TREE_BEGIN_DRAG;
EWXWEXPORT_VAR int* wxEVENT_COMMAND_TREE_BEGIN_RDRAG = (int*) &wxEVT_COMMAND_TREE_BEGIN_RDRAG;
EWXWEXPORT_VAR int* wxEVENT_COMMAND_TREE_BEGIN_LABEL_EDIT = (int*) &wxEVT_COMMAND_TREE_BEGIN_LABEL_EDIT;
EWXWEXPORT_VAR int* wxEVENT_COMMAND_TREE_END_LABEL_EDIT = (int*) &wxEVT_COMMAND_TREE_END_LABEL_EDIT;
EWXWEXPORT_VAR int* wxEVENT_COMMAND_TREE_DELETE_ITEM = (int*) &wxEVT_COMMAND_TREE_DELETE_ITEM;
EWXWEXPORT_VAR int* wxEVENT_COMMAND_TREE_GET_INFO = (int*) &wxEVT_COMMAND_TREE_GET_INFO;
EWXWEXPORT_VAR int* wxEVENT_COMMAND_TREE_SET_INFO = (int*) &wxEVT_COMMAND_TREE_SET_INFO;
EWXWEXPORT_VAR int* wxEVENT_COMMAND_TREE_ITEM_EXPANDED = (int*) &wxEVT_COMMAND_TREE_ITEM_EXPANDED;
EWXWEXPORT_VAR int* wxEVENT_COMMAND_TREE_ITEM_EXPANDING = (int*) &wxEVT_COMMAND_TREE_ITEM_EXPANDING;
EWXWEXPORT_VAR int* wxEVENT_COMMAND_TREE_ITEM_COLLAPSED = (int*) &wxEVT_COMMAND_TREE_ITEM_COLLAPSED;
EWXWEXPORT_VAR int* wxEVENT_COMMAND_TREE_ITEM_COLLAPSING = (int*) &wxEVT_COMMAND_TREE_ITEM_COLLAPSING;
EWXWEXPORT_VAR int* wxEVENT_COMMAND_TREE_SEL_CHANGED = (int*) &wxEVT_COMMAND_TREE_SEL_CHANGED;
EWXWEXPORT_VAR int* wxEVENT_COMMAND_TREE_SEL_CHANGING = (int*) &wxEVT_COMMAND_TREE_SEL_CHANGING;
EWXWEXPORT_VAR int* wxEVENT_COMMAND_TREE_KEY_DOWN = (int*) &wxEVT_COMMAND_TREE_KEY_DOWN;
EWXWEXPORT_VAR int* wxEVENT_COMMAND_TREE_ITEM_ACTIVATED = (int*) &wxEVT_COMMAND_TREE_ITEM_ACTIVATED;
EWXWEXPORT_VAR int* wxEVENT_COMMAND_TREE_ITEM_RIGHT_CLICK = (int*) &wxEVT_COMMAND_TREE_ITEM_RIGHT_CLICK;
EWXWEXPORT_VAR int* wxEVENT_COMMAND_TREE_ITEM_MIDDLE_CLICK = (int*) &wxEVT_COMMAND_TREE_ITEM_MIDDLE_CLICK;
EWXWEXPORT_VAR int* wxEVENT_COMMAND_TREE_END_DRAG = (int*) &wxEVT_COMMAND_TREE_END_DRAG;
EWXWEXPORT_VAR int* wxEVENT_COMMAND_LIST_BEGIN_DRAG = (int*) &wxEVT_COMMAND_LIST_BEGIN_DRAG;
EWXWEXPORT_VAR int* wxEVENT_COMMAND_LIST_BEGIN_RDRAG = (int*) &wxEVT_COMMAND_LIST_BEGIN_RDRAG;
EWXWEXPORT_VAR int* wxEVENT_COMMAND_LIST_BEGIN_LABEL_EDIT = (int*) &wxEVT_COMMAND_LIST_BEGIN_LABEL_EDIT;
EWXWEXPORT_VAR int* wxEVENT_COMMAND_LIST_END_LABEL_EDIT = (int*) &wxEVT_COMMAND_LIST_END_LABEL_EDIT;
EWXWEXPORT_VAR int* wxEVENT_COMMAND_LIST_DELETE_ITEM = (int*) &wxEVT_COMMAND_LIST_DELETE_ITEM;
EWXWEXPORT_VAR int* wxEVENT_COMMAND_LIST_DELETE_ALL_ITEMS = (int*) &wxEVT_COMMAND_LIST_DELETE_ALL_ITEMS;
EWXWEXPORT_VAR int* wxEVENT_COMMAND_LIST_GET_INFO = (int*) &wxEVT_COMMAND_LIST_GET_INFO;
EWXWEXPORT_VAR int* wxEVENT_COMMAND_LIST_SET_INFO = (int*) &wxEVT_COMMAND_LIST_SET_INFO;
EWXWEXPORT_VAR int* wxEVENT_COMMAND_LIST_ITEM_SELECTED = (int*) &wxEVT_COMMAND_LIST_ITEM_SELECTED;
EWXWEXPORT_VAR int* wxEVENT_COMMAND_LIST_ITEM_DESELECTED = (int*) &wxEVT_COMMAND_LIST_ITEM_DESELECTED;
EWXWEXPORT_VAR int* wxEVENT_COMMAND_LIST_KEY_DOWN = (int*) &wxEVT_COMMAND_LIST_KEY_DOWN;
EWXWEXPORT_VAR int* wxEVENT_COMMAND_LIST_INSERT_ITEM = (int*) &wxEVT_COMMAND_LIST_INSERT_ITEM;
EWXWEXPORT_VAR int* wxEVENT_COMMAND_LIST_COL_CLICK = (int*) &wxEVT_COMMAND_LIST_COL_CLICK;
EWXWEXPORT_VAR int* wxEVENT_COMMAND_LIST_ITEM_RIGHT_CLICK = (int*) &wxEVT_COMMAND_LIST_ITEM_RIGHT_CLICK;
EWXWEXPORT_VAR int* wxEVENT_COMMAND_LIST_ITEM_MIDDLE_CLICK = (int*) &wxEVT_COMMAND_LIST_ITEM_MIDDLE_CLICK;
EWXWEXPORT_VAR int* wxEVENT_COMMAND_LIST_ITEM_ACTIVATED = (int*) &wxEVT_COMMAND_LIST_ITEM_ACTIVATED;
EWXWEXPORT_VAR int* wxEVENT_COMMAND_LIST_ITEM_FOCUSED = (int*) &wxEVT_COMMAND_LIST_ITEM_FOCUSED;
#ifndef __WXGTK__
EWXWEXPORT_VAR int* wxEVENT_COMMAND_TAB_SEL_CHANGED = (int*) &wxEVT_COMMAND_TAB_SEL_CHANGED;
EWXWEXPORT_VAR int* wxEVENT_COMMAND_TAB_SEL_CHANGING = (int*) &wxEVT_COMMAND_TAB_SEL_CHANGING;
#endif
EWXWEXPORT_VAR int* wxEVENT_COMMAND_NOTEBOOK_PAGE_CHANGED = (int*) &wxEVT_COMMAND_NOTEBOOK_PAGE_CHANGED;
EWXWEXPORT_VAR int* wxEVENT_COMMAND_NOTEBOOK_PAGE_CHANGING = (int*) &wxEVT_COMMAND_NOTEBOOK_PAGE_CHANGING;
EWXWEXPORT_VAR int* wxEVENT_COMMAND_SPLITTER_SASH_POS_CHANGED = (int*) &wxEVT_COMMAND_SPLITTER_SASH_POS_CHANGED;
EWXWEXPORT_VAR int* wxEVENT_COMMAND_SPLITTER_SASH_POS_CHANGING = (int*) &wxEVT_COMMAND_SPLITTER_SASH_POS_CHANGING;
EWXWEXPORT_VAR int* wxEVENT_COMMAND_SPLITTER_DOUBLECLICKED = (int*) &wxEVT_COMMAND_SPLITTER_DOUBLECLICKED;
EWXWEXPORT_VAR int* wxEVENT_COMMAND_SPLITTER_UNSPLIT = (int*) &wxEVT_COMMAND_SPLITTER_UNSPLIT;
EWXWEXPORT_VAR int* wxEVENT_WIZARD_PAGE_CHANGED = (int*) &wxEVT_WIZARD_PAGE_CHANGED;
EWXWEXPORT_VAR int* wxEVENT_WIZARD_PAGE_CHANGING = (int*) &wxEVT_WIZARD_PAGE_CHANGING;
EWXWEXPORT_VAR int* wxEVENT_WIZARD_CANCEL = (int*) &wxEVT_WIZARD_CANCEL;
EWXWEXPORT_VAR int* wxEVENT_CALENDAR_SEL_CHANGED = (int*) &wxEVT_CALENDAR_SEL_CHANGED;
EWXWEXPORT_VAR int* wxEVENT_CALENDAR_DAY_CHANGED = (int*) &wxEVT_CALENDAR_DAY_CHANGED;
EWXWEXPORT_VAR int* wxEVENT_CALENDAR_MONTH_CHANGED = (int*) &wxEVT_CALENDAR_MONTH_CHANGED;
EWXWEXPORT_VAR int* wxEVENT_CALENDAR_YEAR_CHANGED = (int*) &wxEVT_CALENDAR_YEAR_CHANGED;
EWXWEXPORT_VAR int* wxEVENT_CALENDAR_DOUBLECLICKED = (int*) &wxEVT_CALENDAR_DOUBLECLICKED;
EWXWEXPORT_VAR int* wxEVENT_CALENDAR_WEEKDAY_CLICKED = (int*) &wxEVT_CALENDAR_WEEKDAY_CLICKED;
// EWXWEXPORT_VAR int* wxEVENT_PLOT_SEL_CHANGING = (int*) &wxEVT_PLOT_SEL_CHANGING;
// EWXWEXPORT_VAR int* wxEVENT_PLOT_SEL_CHANGED = (int*) &wxEVT_PLOT_SEL_CHANGED;
// EWXWEXPORT_VAR int* wxEVENT_PLOT_CLICKED = (int*) &wxEVT_PLOT_CLICKED;
// EWXWEXPORT_VAR int* wxEVENT_PLOT_DOUBLECLICKED = (int*) &wxEVT_PLOT_DOUBLECLICKED;
// EWXWEXPORT_VAR int* wxEVENT_PLOT_ZOOM_IN = (int*) &wxEVT_PLOT_ZOOM_IN;
// EWXWEXPORT_VAR int* wxEVENT_PLOT_ZOOM_OUT = (int*) &wxEVT_PLOT_ZOOM_OUT;
// EWXWEXPORT_VAR int* wxEVENT_PLOT_VALUE_SEL_CREATING = (int*) &wxEVT_PLOT_VALUE_SEL_CREATING;
// EWXWEXPORT_VAR int* wxEVENT_PLOT_VALUE_SEL_CREATED = (int*) &wxEVT_PLOT_VALUE_SEL_CREATED;
// EWXWEXPORT_VAR int* wxEVENT_PLOT_VALUE_SEL_CHANGING = (int*) &wxEVT_PLOT_VALUE_SEL_CHANGING;
// EWXWEXPORT_VAR int* wxEVENT_PLOT_VALUE_SEL_CHANGED = (int*) &wxEVT_PLOT_VALUE_SEL_CHANGED;
// EWXWEXPORT_VAR int* wxEVENT_PLOT_AREA_SEL_CREATING = (int*) &wxEVT_PLOT_AREA_SEL_CREATING;
// EWXWEXPORT_VAR int* wxEVENT_PLOT_AREA_SEL_CREATED = (int*) &wxEVT_PLOT_AREA_SEL_CREATED;
// EWXWEXPORT_VAR int* wxEVENT_PLOT_AREA_SEL_CHANGING = (int*) &wxEVT_PLOT_AREA_SEL_CHANGING;
// EWXWEXPORT_VAR int* wxEVENT_PLOT_AREA_SEL_CHANGED = (int*) &wxEVT_PLOT_AREA_SEL_CHANGED;
// EWXWEXPORT_VAR int* wxEVENT_PLOT_BEGIN_X_LABEL_EDIT = (int*) &wxEVT_PLOT_BEGIN_X_LABEL_EDIT;
// EWXWEXPORT_VAR int* wxEVENT_PLOT_END_X_LABEL_EDIT = (int*) &wxEVT_PLOT_END_X_LABEL_EDIT;
// EWXWEXPORT_VAR int* wxEVENT_PLOT_BEGIN_Y_LABEL_EDIT = (int*) &wxEVT_PLOT_BEGIN_Y_LABEL_EDIT;
// EWXWEXPORT_VAR int* wxEVENT_PLOT_END_Y_LABEL_EDIT = (int*) &wxEVT_PLOT_END_Y_LABEL_EDIT;
// EWXWEXPORT_VAR int* wxEVENT_PLOT_BEGIN_TITLE_EDIT = (int*) &wxEVT_PLOT_BEGIN_TITLE_EDIT;
// EWXWEXPORT_VAR int* wxEVENT_PLOT_END_TITLE_EDIT = (int*) &wxEVT_PLOT_END_TITLE_EDIT;
// EWXWEXPORT_VAR int* wxEVENT_PLOT_AREA_CREATE = (int*) &wxEVT_PLOT_AREA_CREATE;
EWXWEXPORT_VAR int* wxEVENT_USER_FIRST = (int*) &wxEVT_USER_FIRST;
// EWXWEXPORT_VAR int* wxEVENT_DYNAMIC_SASH_SPLIT = (int*) &wxEVT_DYNAMIC_SASH_SPLIT;
// EWXWEXPORT_VAR int* wxEVENT_DYNAMIC_SASH_UNIFY = (int*) &wxEVT_DYNAMIC_SASH_UNIFY;
EWXWEXPORT_VAR int* wxEVENT_HELP = (int*) &wxEVT_HELP;
EWXWEXPORT_VAR int* wxEVENT_DETAILED_HELP = (int*) &wxEVT_DETAILED_HELP;
EWXWEXPORT_VAR int* wxEVENT_GRID_CELL_LEFT_CLICK = (int*) &wxEVT_GRID_CELL_LEFT_CLICK;
EWXWEXPORT_VAR int* wxEVENT_GRID_CELL_RIGHT_CLICK = (int*) &wxEVT_GRID_CELL_RIGHT_CLICK;
EWXWEXPORT_VAR int* wxEVENT_GRID_CELL_LEFT_DCLICK = (int*) &wxEVT_GRID_CELL_LEFT_DCLICK;
EWXWEXPORT_VAR int* wxEVENT_GRID_CELL_RIGHT_DCLICK = (int*) &wxEVT_GRID_CELL_RIGHT_DCLICK;
EWXWEXPORT_VAR int* wxEVENT_GRID_LABEL_LEFT_CLICK = (int*) &wxEVT_GRID_LABEL_LEFT_CLICK;
EWXWEXPORT_VAR int* wxEVENT_GRID_LABEL_RIGHT_CLICK = (int*) &wxEVT_GRID_LABEL_RIGHT_CLICK;
EWXWEXPORT_VAR int* wxEVENT_GRID_LABEL_LEFT_DCLICK = (int*) &wxEVT_GRID_LABEL_LEFT_DCLICK;
EWXWEXPORT_VAR int* wxEVENT_GRID_LABEL_RIGHT_DCLICK = (int*) &wxEVT_GRID_LABEL_RIGHT_DCLICK;
EWXWEXPORT_VAR int* wxEVENT_GRID_ROW_SIZE = (int*) &wxEVT_GRID_ROW_SIZE;
EWXWEXPORT_VAR int* wxEVENT_GRID_COL_SIZE = (int*) &wxEVT_GRID_COL_SIZE;
EWXWEXPORT_VAR int* wxEVENT_GRID_RANGE_SELECT = (int*) &wxEVT_GRID_RANGE_SELECT;
EWXWEXPORT_VAR int* wxEVENT_GRID_CELL_CHANGE = (int*) &wxEVT_GRID_CELL_CHANGE;
EWXWEXPORT_VAR int* wxEVENT_GRID_SELECT_CELL = (int*) &wxEVT_GRID_SELECT_CELL;
EWXWEXPORT_VAR int* wxEVENT_GRID_EDITOR_SHOWN = (int*) &wxEVT_GRID_EDITOR_SHOWN;
EWXWEXPORT_VAR int* wxEVENT_GRID_EDITOR_HIDDEN = (int*) &wxEVT_GRID_EDITOR_HIDDEN;
EWXWEXPORT_VAR int* wxEVENT_GRID_EDITOR_CREATED = (int*) &wxEVT_GRID_EDITOR_CREATED;

}

(in-package :wxcl-dialogs)

(defcfun ("wxCommandEvent_Create" wxCommandEvent_Create) :pointer
  (_typ :int)
  (_id :int))

(defcfun ("wxCommandEvent_Delete" wxCommandEvent_Delete) :void
  (_obj :pointer))

(defcfun ("wxEvent_GetTimestamp" wxEvent_GetTimestamp) :long
  (_obj :pointer))

(defcfun ("wxEvent_Skip" wxEvent_Skip) :void
  (_obj :pointer))

(defcfun ("wxEvent_GetEventType" wxEvent_GetEventType) :int
  (_obj :pointer))

(defcfun ("wxEvent_SetEventType" wxEvent_SetEventType) :void
  (_obj :pointer)
  (typ :int))

(defcfun ("wxEvent_GetEventObject" wxEvent_GetEventObject) :pointer
  (_obj :pointer))

(defcfun ("wxEvent_SetEventObject" wxEvent_SetEventObject) :void
  (_obj :pointer)
  (obj :pointer))

(defcfun ("wxEvent_SetTimestamp" wxEvent_SetTimestamp) :void
  (_obj :pointer)
  (ts :long))

(defcfun ("wxEvent_GetId" wxEvent_GetId) :int
  (_obj :pointer))

(defcfun ("wxEvent_SetId" wxEvent_SetId) :void
  (_obj :pointer)
  (Id :int))

(defcfun ("wxEvent_GetSkipped" wxEvent_GetSkipped) :int
  (_obj :pointer))

(defcfun ("wxEvent_IsCommandEvent" wxEvent_IsCommandEvent) :int
  (_obj :pointer))

(defcfun ("wxEvent_Clone" wxEvent_Clone) :pointer
  (_obj :pointer))

(defcfun ("wxEvent_SetCallbackUserData" wxEvent_SetCallbackUserData) :void
  (_obj :pointer)
  (obj :pointer))

(defcfun ("wxEvent_GetCallbackUserData" wxEvent_GetCallbackUserData) :pointer
  (_obj :pointer))

(defcfun ("wxCommandEvent_SetClientData" wxCommandEvent_SetClientData) :void
  (_obj :pointer)
  (clientData :pointer))

(defcfun ("wxCommandEvent_GetClientData" wxCommandEvent_GetClientData) :pointer
  (_obj :pointer))

(defcfun ("wxCommandEvent_SetClientObject" wxCommandEvent_SetClientObject) :void
  (_obj :pointer)
  (clientObject :pointer))

(defcfun ("wxCommandEvent_GetClientObject" wxCommandEvent_GetClientObject) :pointer
  (_obj :pointer))

(defcfun ("wxCommandEvent_GetSelection" wxCommandEvent_GetSelection) :int
  (_obj :pointer))

(defcfun ("wxCommandEvent_SetString" wxCommandEvent_SetString) :void
  (_obj :pointer)
  (s :string))

(defcfun ("wxCommandEvent_GetString" wxCommandEvent_GetString) :lisp-string
  (_obj :pointer))

(defcfun ("wxCommandEvent_IsChecked" wxCommandEvent_IsChecked) :int
  (_obj :pointer))

(defcfun ("wxCommandEvent_IsSelection" wxCommandEvent_IsSelection) :int
  (_obj :pointer))

(defcfun ("wxCommandEvent_SetExtraLong" wxCommandEvent_SetExtraLong) :void
  (_obj :pointer)
  (extraLong :long))

(defcfun ("wxCommandEvent_GetExtraLong" wxCommandEvent_GetExtraLong) :long
  (_obj :pointer))

(defcfun ("wxCommandEvent_SetInt" wxCommandEvent_SetInt) :void
  (_obj :pointer)
  (i :int))

(defcfun ("wxCommandEvent_GetInt" wxCommandEvent_GetInt) :int
  (_obj :pointer))

(defcfun ("wxNotifyEvent_Veto" wxNotifyEvent_Veto) :void
  (_obj :pointer))

(defcfun ("wxNotifyEvent_Allow" wxNotifyEvent_Allow) :void
  (_obj :pointer))

(defcfun ("wxNotifyEvent_IsAllowed" wxNotifyEvent_IsAllowed) :int
  (_obj :pointer))

(defcfun ("wxScrollWinEvent_GetOrientation" wxScrollWinEvent_GetOrientation) :int
  (_obj :pointer))

(defcfun ("wxScrollWinEvent_GetPosition" wxScrollWinEvent_GetPosition) :int
  (_obj :pointer))

(defcfun ("wxScrollWinEvent_SetOrientation" wxScrollWinEvent_SetOrientation) :void
  (_obj :pointer)
  (orient :int))

(defcfun ("wxScrollWinEvent_SetPosition" wxScrollWinEvent_SetPosition) :void
  (_obj :pointer)
  (pos :int))

(defcfun ("wxMouseEvent_IsButton" wxMouseEvent_IsButton) :int
  (_obj :pointer))

(defcfun ("wxMouseEvent_ButtonDown" wxMouseEvent_ButtonDown) :int
  (_obj :pointer)
  (but :int))

(defcfun ("wxMouseEvent_ButtonDClick" wxMouseEvent_ButtonDClick) :int
  (_obj :pointer)
  (but :int))

(defcfun ("wxMouseEvent_ButtonUp" wxMouseEvent_ButtonUp) :int
  (_obj :pointer)
  (but :int))

(defcfun ("wxMouseEvent_Button" wxMouseEvent_Button) :int
  (_obj :pointer)
  (but :int))

(defcfun ("wxMouseEvent_ButtonIsDown" wxMouseEvent_ButtonIsDown) :int
  (_obj :pointer)
  (but :int))

(defcfun ("wxMouseEvent_ControlDown" wxMouseEvent_ControlDown) :int
  (_obj :pointer))

(defcfun ("wxMouseEvent_MetaDown" wxMouseEvent_MetaDown) :int
  (_obj :pointer))

(defcfun ("wxMouseEvent_AltDown" wxMouseEvent_AltDown) :int
  (_obj :pointer))

(defcfun ("wxMouseEvent_ShiftDown" wxMouseEvent_ShiftDown) :int
  (_obj :pointer))

(defcfun ("wxMouseEvent_LeftDown" wxMouseEvent_LeftDown) :int
  (_obj :pointer))

(defcfun ("wxMouseEvent_MiddleDown" wxMouseEvent_MiddleDown) :int
  (_obj :pointer))

(defcfun ("wxMouseEvent_RightDown" wxMouseEvent_RightDown) :int
  (_obj :pointer))

(defcfun ("wxMouseEvent_LeftUp" wxMouseEvent_LeftUp) :int
  (_obj :pointer))

(defcfun ("wxMouseEvent_MiddleUp" wxMouseEvent_MiddleUp) :int
  (_obj :pointer))

(defcfun ("wxMouseEvent_RightUp" wxMouseEvent_RightUp) :int
  (_obj :pointer))

(defcfun ("wxMouseEvent_LeftDClick" wxMouseEvent_LeftDClick) :int
  (_obj :pointer))

(defcfun ("wxMouseEvent_MiddleDClick" wxMouseEvent_MiddleDClick) :int
  (_obj :pointer))

(defcfun ("wxMouseEvent_RightDClick" wxMouseEvent_RightDClick) :int
  (_obj :pointer))

(defcfun ("wxMouseEvent_LeftIsDown" wxMouseEvent_LeftIsDown) :int
  (_obj :pointer))

(defcfun ("wxMouseEvent_MiddleIsDown" wxMouseEvent_MiddleIsDown) :int
  (_obj :pointer))

(defcfun ("wxMouseEvent_RightIsDown" wxMouseEvent_RightIsDown) :int
  (_obj :pointer))

(defcfun ("wxMouseEvent_Dragging" wxMouseEvent_Dragging) :int
  (_obj :pointer))

(defcfun ("wxMouseEvent_Moving" wxMouseEvent_Moving) :int
  (_obj :pointer))

(defcfun ("wxMouseEvent_Entering" wxMouseEvent_Entering) :int
  (_obj :pointer))

(defcfun ("wxMouseEvent_Leaving" wxMouseEvent_Leaving) :int
  (_obj :pointer))

(defcfun ("wxMouseEvent_GetPosition" wxMouseEvent_GetPosition) :void
  (_obj :pointer)
  (xpos :int)
  (ypos :int))

(defcfun ("wxMouseEvent_GetLogicalPosition" wxMouseEvent_GetLogicalPosition) :void
  (_obj :pointer)
  (dc :pointer)
  (xpos :int)
  (ypos :int))

(defcfun ("wxMouseEvent_GetX" wxMouseEvent_GetX) :int
  (_obj :pointer))

(defcfun ("wxMouseEvent_GetY" wxMouseEvent_GetY) :int
  (_obj :pointer))

(defcfun ("wxSetCursorEvent_GetX" wxSetCursorEvent_GetX) :int
  (_obj :pointer))

(defcfun ("wxSetCursorEvent_GetY" wxSetCursorEvent_GetY) :int
  (_obj :pointer))

(defcfun ("wxSetCursorEvent_SetCursor" wxSetCursorEvent_SetCursor) :void
  (_obj :pointer)
  (cursor :pointer))

(defcfun ("wxSetCursorEvent_GetCursor" wxSetCursorEvent_GetCursor) :pointer
  (_obj :pointer))

(defcfun ("wxSetCursorEvent_HasCursor" wxSetCursorEvent_HasCursor) :int
  (_obj :pointer))

(defcfun ("wxKeyEvent_ControlDown" wxKeyEvent_ControlDown) :int
  (_obj :pointer))

(defcfun ("wxKeyEvent_MetaDown" wxKeyEvent_MetaDown) :int
  (_obj :pointer))

(defcfun ("wxKeyEvent_AltDown" wxKeyEvent_AltDown) :int
  (_obj :pointer))

(defcfun ("wxKeyEvent_ShiftDown" wxKeyEvent_ShiftDown) :int
  (_obj :pointer))

(defcfun ("wxKeyEvent_HasModifiers" wxKeyEvent_HasModifiers) :int
  (_obj :pointer))

(defcfun ("wxKeyEvent_GetKeyCode" wxKeyEvent_GetKeyCode) :int
  (_obj :pointer))

(defcfun ("wxKeyEvent_SetKeyCode" wxKeyEvent_SetKeyCode) :void
  (_obj :pointer)
  (code :int))

(defcfun ("wxKeyEvent_GetPosition" wxKeyEvent_GetPosition) :void
  (_obj :pointer)
  (xpos :int)
  (ypos :int))

(defcfun ("wxKeyEvent_GetX" wxKeyEvent_GetX) :int
  (_obj :pointer))

(defcfun ("wxKeyEvent_GetY" wxKeyEvent_GetY) :int
  (_obj :pointer))

(defcfun ("wxSizeEvent_GetSize" wxSizeEvent_GetSize) :void
  (_obj :pointer)
  (w :int)
  (h :int))

(defcfun ("wxMoveEvent_GetPosition" wxMoveEvent_GetPosition) :void
  (_obj :pointer)
  (x :int)
  (y :int))

(defcfun ("wxEraseEvent_GetDC" wxEraseEvent_GetDC) :pointer
  (_obj :pointer))

(defcfun ("wxActivateEvent_GetActive" wxActivateEvent_GetActive) :int
  (_obj :pointer))

(defcfun ("wxMenuEvent_GetMenuId" wxMenuEvent_GetMenuId) :int
  (_obj :pointer))

(defcfun ("wxCloseEvent_SetLoggingOff" wxCloseEvent_SetLoggingOff) :void
  (_obj :pointer)
  (logOff :int))

(defcfun ("wxCloseEvent_GetLoggingOff" wxCloseEvent_GetLoggingOff) :int
  (_obj :pointer))

(defcfun ("wxCloseEvent_Veto" wxCloseEvent_Veto) :void
  (_obj :pointer)
  (veto :int))

(defcfun ("wxCloseEvent_SetCanVeto" wxCloseEvent_SetCanVeto) :void
  (_obj :pointer)
  (canVeto :int))

(defcfun ("wxCloseEvent_CanVeto" wxCloseEvent_CanVeto) :int
  (_obj :pointer))

(defcfun ("wxCloseEvent_GetVeto" wxCloseEvent_GetVeto) :int
  (_obj :pointer))

(defcfun ("wxShowEvent_SetShow" wxShowEvent_SetShow) :void
  (_obj :pointer)
  (show :int))

(defcfun ("wxShowEvent_GetShow" wxShowEvent_GetShow) :int
  (_obj :pointer))

(defcfun ("wxJoystickEvent_GetPosition" wxJoystickEvent_GetPosition) :void
  (_obj :pointer)
  (x :int)
  (y :int))

(defcfun ("wxJoystickEvent_GetZPosition" wxJoystickEvent_GetZPosition) :int
  (_obj :pointer))

(defcfun ("wxJoystickEvent_GetButtonState" wxJoystickEvent_GetButtonState) :int
  (_obj :pointer))

(defcfun ("wxJoystickEvent_GetButtonChange" wxJoystickEvent_GetButtonChange) :int
  (_obj :pointer))

(defcfun ("wxJoystickEvent_GetJoystick" wxJoystickEvent_GetJoystick) :int
  (_obj :pointer))

(defcfun ("wxJoystickEvent_SetJoystick" wxJoystickEvent_SetJoystick) :void
  (_obj :pointer)
  (stick :int))

(defcfun ("wxJoystickEvent_SetButtonState" wxJoystickEvent_SetButtonState) :void
  (_obj :pointer)
  (state :int))

(defcfun ("wxJoystickEvent_SetButtonChange" wxJoystickEvent_SetButtonChange) :void
  (_obj :pointer)
  (change :int))

(defcfun ("wxJoystickEvent_SetPosition" wxJoystickEvent_SetPosition) :void
  (_obj :pointer)
  (pos :pointer))

(defcfun ("wxJoystickEvent_SetZPosition" wxJoystickEvent_SetZPosition) :void
  (_obj :pointer)
  (zPos :int))

(defcfun ("wxJoystickEvent_IsButton" wxJoystickEvent_IsButton) :int
  (_obj :pointer))

(defcfun ("wxJoystickEvent_IsMove" wxJoystickEvent_IsMove) :int
  (_obj :pointer))

(defcfun ("wxJoystickEvent_IsZMove" wxJoystickEvent_IsZMove) :int
  (_obj :pointer))

(defcfun ("wxJoystickEvent_ButtonDown" wxJoystickEvent_ButtonDown) :int
  (_obj :pointer)
  (but :int))

(defcfun ("wxJoystickEvent_ButtonUp" wxJoystickEvent_ButtonUp) :int
  (_obj :pointer)
  (but :int))

(defcfun ("wxJoystickEvent_ButtonIsDown" wxJoystickEvent_ButtonIsDown) :int
  (_obj :pointer)
  (but :int))

(defcfun ("wxUpdateUIEvent_GetChecked" wxUpdateUIEvent_GetChecked) :int
  (_obj :pointer))

(defcfun ("wxUpdateUIEvent_GetEnabled" wxUpdateUIEvent_GetEnabled) :int
  (_obj :pointer))

(defcfun ("wxUpdateUIEvent_GetText" wxUpdateUIEvent_GetText) :int
  (_obj :pointer)
  (_buf :pointer))

(defcfun ("wxUpdateUIEvent_GetSetText" wxUpdateUIEvent_GetSetText) :int
  (_obj :pointer))

(defcfun ("wxUpdateUIEvent_GetSetChecked" wxUpdateUIEvent_GetSetChecked) :int
  (_obj :pointer))

(defcfun ("wxUpdateUIEvent_GetSetEnabled" wxUpdateUIEvent_GetSetEnabled) :int
  (_obj :pointer))

(defcfun ("wxUpdateUIEvent_Check" wxUpdateUIEvent_Check) :void
  (_obj :pointer)
  (check :int))

(defcfun ("wxUpdateUIEvent_Enable" wxUpdateUIEvent_Enable) :void
  (_obj :pointer)
  (enable :int))

(defcfun ("wxUpdateUIEvent_SetText" wxUpdateUIEvent_SetText) :void
  (_obj :pointer)
  (text :string))

(defcfun ("wxPaletteChangedEvent_SetChangedWindow" wxPaletteChangedEvent_SetChangedWindow) :void
  (_obj :pointer)
  (win :pointer))

(defcfun ("wxPaletteChangedEvent_GetChangedWindow" wxPaletteChangedEvent_GetChangedWindow) :pointer
  (_obj :pointer))

(defcfun ("wxQueryNewPaletteEvent_SetPaletteRealized" wxQueryNewPaletteEvent_SetPaletteRealized) :void
  (_obj :pointer)
  (realized :int))

(defcfun ("wxQueryNewPaletteEvent_GetPaletteRealized" wxQueryNewPaletteEvent_GetPaletteRealized) :int
  (_obj :pointer))

(defcfun ("wxNavigationKeyEvent_GetDirection" wxNavigationKeyEvent_GetDirection) :int
  (_obj :pointer))

(defcfun ("wxNavigationKeyEvent_SetDirection" wxNavigationKeyEvent_SetDirection) :void
  (_obj :pointer)
  (bForward :int))

(defcfun ("wxNavigationKeyEvent_IsWindowChange" wxNavigationKeyEvent_IsWindowChange) :int
  (_obj :pointer))

(defcfun ("wxNavigationKeyEvent_SetWindowChange" wxNavigationKeyEvent_SetWindowChange) :void
  (_obj :pointer)
  (bIs :int))

(defcfun ("wxNavigationKeyEvent_ShouldPropagate" wxNavigationKeyEvent_ShouldPropagate) :int
  (_obj :pointer))

(defcfun ("wxNavigationKeyEvent_GetCurrentFocus" wxNavigationKeyEvent_GetCurrentFocus) :pointer
  (_obj :pointer))

(defcfun ("wxNavigationKeyEvent_SetCurrentFocus" wxNavigationKeyEvent_SetCurrentFocus) :void
  (_obj :pointer)
  (win :pointer))

(defcfun ("wxWindowCreateEvent_GetWindow" wxWindowCreateEvent_GetWindow) :pointer
  (_obj :pointer))

(defcfun ("wxWindowDestroyEvent_GetWindow" wxWindowDestroyEvent_GetWindow) :pointer
  (_obj :pointer))

(defcfun ("wxIdleEvent_RequestMore" wxIdleEvent_RequestMore) :void
  (_obj :pointer)
  (needMore :int))

(defcfun ("wxIdleEvent_MoreRequested" wxIdleEvent_MoreRequested) :int
  (_obj :pointer))

(defcfun ("wxListEvent_GetCode" wxListEvent_GetCode) :int
  (_obj :pointer))

(defcfun ("wxListEvent_GetIndex" wxListEvent_GetIndex) :int
  (_obj :pointer))

(defcfun ("wxListEvent_GetColumn" wxListEvent_GetColumn) :int
  (_obj :pointer))

(defcfun ("wxListEvent_Cancelled" wxListEvent_Cancelled) :int
  (_obj :pointer))

(defcfun ("wxListEvent_GetPoint" wxListEvent_GetPoint) :void
  (_obj :pointer)
  (x :pointer)
  (y :pointer))

(defcfun ("wxListEvent_GetLabel" wxListEvent_GetLabel) :int
  (_obj :pointer)
  (_buf :pointer))

(defcfun ("wxListEvent_GetText" wxListEvent_GetText) :int
  (_obj :pointer)
  (_buf :pointer))

(defcfun ("wxListEvent_GetImage" wxListEvent_GetImage) :int
  (_obj :pointer))

(defcfun ("wxListEvent_GetData" wxListEvent_GetData) :int
  (_obj :pointer))

(defcfun ("wxListEvent_GetMask" wxListEvent_GetMask) :int
  (_obj :pointer))

(defcfun ("wxListEvent_GetItem" wxListEvent_GetItem) :void
  (_obj :pointer)
  (_ref :pointer))

(defcfun ("wxTreeEvent_GetItem" wxTreeEvent_GetItem) :void
  (_obj :pointer)
  (_ref :pointer))

(defcfun ("wxTreeEvent_GetOldItem" wxTreeEvent_GetOldItem) :void
  (_obj :pointer)
  (_ref :pointer))

(defcfun ("wxTreeEvent_GetPoint" wxTreeEvent_GetPoint) :void
  (_obj :pointer)
  (x :pointer)
  (y :pointer))

(defcfun ("wxTreeEvent_GetCode" wxTreeEvent_GetCode) :int
  (_obj :pointer))

(defcfun ("wxTreeEvent_GetLabel" wxTreeEvent_GetLabel) :int
  (_obj :pointer)
  (_buf :pointer))

(defcfun ("wxSpinEvent_GetPosition" wxSpinEvent_GetPosition) :int
  (_obj :pointer))

(defcfun ("wxSpinEvent_SetPosition" wxSpinEvent_SetPosition) :void
  (_obj :pointer)
  (pos :int))

(defcfun ("wxTimerEvent_GetInterval" wxTimerEvent_GetInterval) :int
  (_obj :pointer))

(defcfun ("wxCalendarEvent_GetWeekDay" wxCalendarEvent_GetWeekDay) :int
  (_obj :pointer))

(defcfun ("wxCalendarEvent_GetDate" wxCalendarEvent_GetDate) :void
  (_obj :pointer)
  (_dte :pointer))

(defcfun ("wxScrollEvent_GetOrientation" wxScrollEvent_GetOrientation) :int
  (_obj :pointer))

(defcfun ("wxScrollEvent_GetPosition" wxScrollEvent_GetPosition) :int
  (_obj :pointer))

(defcfun ("wxHelpEvent_GetPosition" wxHelpEvent_GetPosition) :void
  (_obj :pointer)
  (x :pointer)
  (y :pointer))

(defcfun ("wxHelpEvent_SetPosition" wxHelpEvent_SetPosition) :void
  (_obj :pointer)
  (x :int)
  (y :int))

(defcfun ("wxHelpEvent_GetLink" wxHelpEvent_GetLink) :int
  (_obj :pointer)
  (_ref :pointer))

(defcfun ("wxHelpEvent_SetLink" wxHelpEvent_SetLink) :void
  (_obj :pointer)
  (link :pointer))

(defcfun ("wxHelpEvent_GetTarget" wxHelpEvent_GetTarget) :int
  (_obj :pointer)
  (_ref :pointer))

(defcfun ("wxHelpEvent_SetTarget" wxHelpEvent_SetTarget) :void
  (_obj :pointer)
  (target :pointer))

(defcvar ("wxEVENT_COMMAND_BUTTON_CLICKED" wxEVENT_COMMAND_BUTTON_CLICKED)
 :int)

(defcvar ("wxEVENT_COMMAND_CHECKBOX_CLICKED" wxEVENT_COMMAND_CHECKBOX_CLICKED)
 :int)

(defcvar ("wxEVENT_COMMAND_CHOICE_SELECTED" wxEVENT_COMMAND_CHOICE_SELECTED)
 :int)

(defcvar ("wxEVENT_COMMAND_LISTBOX_SELECTED" wxEVENT_COMMAND_LISTBOX_SELECTED)
 :int)

(defcvar ("wxEVENT_COMMAND_LISTBOX_DOUBLECLICKED" wxEVENT_COMMAND_LISTBOX_DOUBLECLICKED)
 :int)

(defcvar ("wxEVENT_COMMAND_CHECKLISTBOX_TOGGLED" wxEVENT_COMMAND_CHECKLISTBOX_TOGGLED)
 :int)

(defcvar ("wxEVENT_COMMAND_TEXT_UPDATED" wxEVENT_COMMAND_TEXT_UPDATED)
 :int)

(defcvar ("wxEVENT_COMMAND_TEXT_ENTER" wxEVENT_COMMAND_TEXT_ENTER)
 :int)

(defcvar ("wxEVENT_COMMAND_MENU_SELECTED" wxEVENT_COMMAND_MENU_SELECTED)
 :int)

(defcvar ("wxEVENT_COMMAND_TOOL_CLICKED" wxEVENT_COMMAND_TOOL_CLICKED)
 :int)

(defcvar ("wxEVENT_COMMAND_SLIDER_UPDATED" wxEVENT_COMMAND_SLIDER_UPDATED)
 :int)

(defcvar ("wxEVENT_COMMAND_RADIOBOX_SELECTED" wxEVENT_COMMAND_RADIOBOX_SELECTED)
 :int)

(defcvar ("wxEVENT_COMMAND_RADIOBUTTON_SELECTED" wxEVENT_COMMAND_RADIOBUTTON_SELECTED)
 :int)

(defcvar ("wxEVENT_COMMAND_SCROLLBAR_UPDATED" wxEVENT_COMMAND_SCROLLBAR_UPDATED)
 :int)

(defcvar ("wxEVENT_COMMAND_VLBOX_SELECTED" wxEVENT_COMMAND_VLBOX_SELECTED)
 :int)

(defcvar ("wxEVENT_COMMAND_COMBOBOX_SELECTED" wxEVENT_COMMAND_COMBOBOX_SELECTED)
 :int)

(defcvar ("wxEVENT_COMMAND_TOOL_RCLICKED" wxEVENT_COMMAND_TOOL_RCLICKED)
 :int)

(defcvar ("wxEVENT_COMMAND_TOOL_ENTER" wxEVENT_COMMAND_TOOL_ENTER)
 :int)

(defcvar ("wxEVENT_COMMAND_SPINCTRL_UPDATED" wxEVENT_COMMAND_SPINCTRL_UPDATED)
 :int)

(defcvar ("wxEVENT_SOCKET" wxEVENT_SOCKET)
 :int)

(defcvar ("wxEVENT_LEFT_DOWN" wxEVENT_LEFT_DOWN)
 :int)

(defcvar ("wxEVENT_LEFT_UP" wxEVENT_LEFT_UP)
 :int)

(defcvar ("wxEVENT_MIDDLE_DOWN" wxEVENT_MIDDLE_DOWN)
 :int)

(defcvar ("wxEVENT_MIDDLE_UP" wxEVENT_MIDDLE_UP)
 :int)

(defcvar ("wxEVENT_RIGHT_DOWN" wxEVENT_RIGHT_DOWN)
 :int)

(defcvar ("wxEVENT_RIGHT_UP" wxEVENT_RIGHT_UP)
 :int)

(defcvar ("wxEVENT_MOTION" wxEVENT_MOTION)
 :int)

(defcvar ("wxEVENT_ENTER_WINDOW" wxEVENT_ENTER_WINDOW)
 :int)

(defcvar ("wxEVENT_LEAVE_WINDOW" wxEVENT_LEAVE_WINDOW)
 :int)

(defcvar ("wxEVENT_LEFT_DCLICK" wxEVENT_LEFT_DCLICK)
 :int)

(defcvar ("wxEVENT_MIDDLE_DCLICK" wxEVENT_MIDDLE_DCLICK)
 :int)

(defcvar ("wxEVENT_RIGHT_DCLICK" wxEVENT_RIGHT_DCLICK)
 :int)

(defcvar ("wxEVENT_SET_FOCUS" wxEVENT_SET_FOCUS)
 :int)

(defcvar ("wxEVENT_KILL_FOCUS" wxEVENT_KILL_FOCUS)
 :int)

(defcvar ("wxEVENT_NC_LEFT_DOWN" wxEVENT_NC_LEFT_DOWN)
 :int)

(defcvar ("wxEVENT_NC_LEFT_UP" wxEVENT_NC_LEFT_UP)
 :int)

(defcvar ("wxEVENT_NC_MIDDLE_DOWN" wxEVENT_NC_MIDDLE_DOWN)
 :int)

(defcvar ("wxEVENT_NC_MIDDLE_UP" wxEVENT_NC_MIDDLE_UP)
 :int)

(defcvar ("wxEVENT_NC_RIGHT_DOWN" wxEVENT_NC_RIGHT_DOWN)
 :int)

(defcvar ("wxEVENT_NC_RIGHT_UP" wxEVENT_NC_RIGHT_UP)
 :int)

(defcvar ("wxEVENT_NC_MOTION" wxEVENT_NC_MOTION)
 :int)

(defcvar ("wxEVENT_NC_ENTER_WINDOW" wxEVENT_NC_ENTER_WINDOW)
 :int)

(defcvar ("wxEVENT_NC_LEAVE_WINDOW" wxEVENT_NC_LEAVE_WINDOW)
 :int)

(defcvar ("wxEVENT_NC_LEFT_DCLICK" wxEVENT_NC_LEFT_DCLICK)
 :int)

(defcvar ("wxEVENT_NC_MIDDLE_DCLICK" wxEVENT_NC_MIDDLE_DCLICK)
 :int)

(defcvar ("wxEVENT_NC_RIGHT_DCLICK" wxEVENT_NC_RIGHT_DCLICK)
 :int)

(defcvar ("wxEVENT_CHAR" wxEVENT_CHAR)
 :int)

(defcvar ("wxEVENT_CHAR_HOOK" wxEVENT_CHAR_HOOK)
 :int)

(defcvar ("wxEVENT_NAVIGATION_KEY" wxEVENT_NAVIGATION_KEY)
 :int)

(defcvar ("wxEVENT_KEY_DOWN" wxEVENT_KEY_DOWN)
 :int)

(defcvar ("wxEVENT_KEY_UP" wxEVENT_KEY_UP)
 :int)

(defcvar ("wxEVENT_SET_CURSOR" wxEVENT_SET_CURSOR)
 :int)

(defcvar ("wxEVENT_SCROLL_TOP" wxEVENT_SCROLL_TOP)
 :int)

(defcvar ("wxEVENT_SCROLL_BOTTOM" wxEVENT_SCROLL_BOTTOM)
 :int)

(defcvar ("wxEVENT_SCROLL_LINEUP" wxEVENT_SCROLL_LINEUP)
 :int)

(defcvar ("wxEVENT_SCROLL_LINEDOWN" wxEVENT_SCROLL_LINEDOWN)
 :int)

(defcvar ("wxEVENT_SCROLL_PAGEUP" wxEVENT_SCROLL_PAGEUP)
 :int)

(defcvar ("wxEVENT_SCROLL_PAGEDOWN" wxEVENT_SCROLL_PAGEDOWN)
 :int)

(defcvar ("wxEVENT_SCROLL_THUMBTRACK" wxEVENT_SCROLL_THUMBTRACK)
 :int)

(defcvar ("wxEVENT_SCROLL_THUMBRELEASE" wxEVENT_SCROLL_THUMBRELEASE)
 :int)

(defcvar ("wxEVENT_SCROLLWIN_TOP" wxEVENT_SCROLLWIN_TOP)
 :int)

(defcvar ("wxEVENT_SCROLLWIN_BOTTOM" wxEVENT_SCROLLWIN_BOTTOM)
 :int)

(defcvar ("wxEVENT_SCROLLWIN_LINEUP" wxEVENT_SCROLLWIN_LINEUP)
 :int)

(defcvar ("wxEVENT_SCROLLWIN_LINEDOWN" wxEVENT_SCROLLWIN_LINEDOWN)
 :int)

(defcvar ("wxEVENT_SCROLLWIN_PAGEUP" wxEVENT_SCROLLWIN_PAGEUP)
 :int)

(defcvar ("wxEVENT_SCROLLWIN_PAGEDOWN" wxEVENT_SCROLLWIN_PAGEDOWN)
 :int)

(defcvar ("wxEVENT_SCROLLWIN_THUMBTRACK" wxEVENT_SCROLLWIN_THUMBTRACK)
 :int)

(defcvar ("wxEVENT_SCROLLWIN_THUMBRELEASE" wxEVENT_SCROLLWIN_THUMBRELEASE)
 :int)

(defcvar ("wxEVENT_SIZE" wxEVENT_SIZE)
 :int)

(defcvar ("wxEVENT_MOVE" wxEVENT_MOVE)
 :int)

(defcvar ("wxEVENT_CLOSE_WINDOW" wxEVENT_CLOSE_WINDOW)
 :int)

(defcvar ("wxEVENT_END_SESSION" wxEVENT_END_SESSION)
 :int)

(defcvar ("wxEVENT_QUERY_END_SESSION" wxEVENT_QUERY_END_SESSION)
 :int)

(defcvar ("wxEVENT_ACTIVATE_APP" wxEVENT_ACTIVATE_APP)
 :int)

(defcvar ("wxEVENT_POWER" wxEVENT_POWER)
 :int)

(defcvar ("wxEVENT_ACTIVATE" wxEVENT_ACTIVATE)
 :int)

(defcvar ("wxEVENT_CREATE" wxEVENT_CREATE)
 :int)

(defcvar ("wxEVENT_DESTROY" wxEVENT_DESTROY)
 :int)

(defcvar ("wxEVENT_SHOW" wxEVENT_SHOW)
 :int)

(defcvar ("wxEVENT_ICONIZE" wxEVENT_ICONIZE)
 :int)

(defcvar ("wxEVENT_MAXIMIZE" wxEVENT_MAXIMIZE)
 :int)

(defcvar ("wxEVENT_MOUSE_CAPTURE_CHANGED" wxEVENT_MOUSE_CAPTURE_CHANGED)
 :int)

(defcvar ("wxEVENT_PAINT" wxEVENT_PAINT)
 :int)

(defcvar ("wxEVENT_ERASE_BACKGROUND" wxEVENT_ERASE_BACKGROUND)
 :int)

(defcvar ("wxEVENT_NC_PAINT" wxEVENT_NC_PAINT)
 :int)

(defcvar ("wxEVENT_PAINT_ICON" wxEVENT_PAINT_ICON)
 :int)

(defcvar ("wxEVENT_MENU_HIGHLIGHT" wxEVENT_MENU_HIGHLIGHT)
 :int)

(defcvar ("wxEVENT_CONTEXT_MENU" wxEVENT_CONTEXT_MENU)
 :int)

(defcvar ("wxEVENT_SYS_COLOUR_CHANGED" wxEVENT_SYS_COLOUR_CHANGED)
 :int)

(defcvar ("wxEVENT_SETTING_CHANGED" wxEVENT_SETTING_CHANGED)
 :int)

(defcvar ("wxEVENT_QUERY_NEW_PALETTE" wxEVENT_QUERY_NEW_PALETTE)
 :int)

(defcvar ("wxEVENT_PALETTE_CHANGED" wxEVENT_PALETTE_CHANGED)
 :int)

(defcvar ("wxEVENT_JOY_BUTTON_DOWN" wxEVENT_JOY_BUTTON_DOWN)
 :int)

(defcvar ("wxEVENT_JOY_BUTTON_UP" wxEVENT_JOY_BUTTON_UP)
 :int)

(defcvar ("wxEVENT_JOY_MOVE" wxEVENT_JOY_MOVE)
 :int)

(defcvar ("wxEVENT_JOY_ZMOVE" wxEVENT_JOY_ZMOVE)
 :int)

(defcvar ("wxEVENT_DROP_FILES" wxEVENT_DROP_FILES)
 :int)

(defcvar ("wxEVENT_DRAW_ITEM" wxEVENT_DRAW_ITEM)
 :int)

(defcvar ("wxEVENT_MEASURE_ITEM" wxEVENT_MEASURE_ITEM)
 :int)

(defcvar ("wxEVENT_COMPARE_ITEM" wxEVENT_COMPARE_ITEM)
 :int)

(defcvar ("wxEVENT_INIT_DIALOG" wxEVENT_INIT_DIALOG)
 :int)

(defcvar ("wxEVENT_IDLE" wxEVENT_IDLE)
 :int)

(defcvar ("wxEVENT_UPDATE_UI" wxEVENT_UPDATE_UI)
 :int)

(defcvar ("wxEVENT_END_PROCESS" wxEVENT_END_PROCESS)
 :int)

(defcvar ("wxEVENT_DIALUP_CONNECTED" wxEVENT_DIALUP_CONNECTED)
 :int)

(defcvar ("wxEVENT_DIALUP_DISCONNECTED" wxEVENT_DIALUP_DISCONNECTED)
 :int)

(defcvar ("wxEVENT_COMMAND_LEFT_CLICK" wxEVENT_COMMAND_LEFT_CLICK)
 :int)

(defcvar ("wxEVENT_COMMAND_LEFT_DCLICK" wxEVENT_COMMAND_LEFT_DCLICK)
 :int)

(defcvar ("wxEVENT_COMMAND_RIGHT_CLICK" wxEVENT_COMMAND_RIGHT_CLICK)
 :int)

(defcvar ("wxEVENT_COMMAND_RIGHT_DCLICK" wxEVENT_COMMAND_RIGHT_DCLICK)
 :int)

(defcvar ("wxEVENT_COMMAND_SET_FOCUS" wxEVENT_COMMAND_SET_FOCUS)
 :int)

(defcvar ("wxEVENT_COMMAND_KILL_FOCUS" wxEVENT_COMMAND_KILL_FOCUS)
 :int)

(defcvar ("wxEVENT_COMMAND_ENTER" wxEVENT_COMMAND_ENTER)
 :int)

(defcvar ("wxEVENT_COMMAND_TREE_BEGIN_DRAG" wxEVENT_COMMAND_TREE_BEGIN_DRAG)
 :int)

(defcvar ("wxEVENT_COMMAND_TREE_BEGIN_RDRAG" wxEVENT_COMMAND_TREE_BEGIN_RDRAG)
 :int)

(defcvar ("wxEVENT_COMMAND_TREE_BEGIN_LABEL_EDIT" wxEVENT_COMMAND_TREE_BEGIN_LABEL_EDIT)
 :int)

(defcvar ("wxEVENT_COMMAND_TREE_END_LABEL_EDIT" wxEVENT_COMMAND_TREE_END_LABEL_EDIT)
 :int)

(defcvar ("wxEVENT_COMMAND_TREE_DELETE_ITEM" wxEVENT_COMMAND_TREE_DELETE_ITEM)
 :int)

(defcvar ("wxEVENT_COMMAND_TREE_GET_INFO" wxEVENT_COMMAND_TREE_GET_INFO)
 :int)

(defcvar ("wxEVENT_COMMAND_TREE_SET_INFO" wxEVENT_COMMAND_TREE_SET_INFO)
 :int)

(defcvar ("wxEVENT_COMMAND_TREE_ITEM_EXPANDED" wxEVENT_COMMAND_TREE_ITEM_EXPANDED)
 :int)

(defcvar ("wxEVENT_COMMAND_TREE_ITEM_EXPANDING" wxEVENT_COMMAND_TREE_ITEM_EXPANDING)
 :int)

(defcvar ("wxEVENT_COMMAND_TREE_ITEM_COLLAPSED" wxEVENT_COMMAND_TREE_ITEM_COLLAPSED)
 :int)

(defcvar ("wxEVENT_COMMAND_TREE_ITEM_COLLAPSING" wxEVENT_COMMAND_TREE_ITEM_COLLAPSING)
 :int)

(defcvar ("wxEVENT_COMMAND_TREE_SEL_CHANGED" wxEVENT_COMMAND_TREE_SEL_CHANGED)
 :int)

(defcvar ("wxEVENT_COMMAND_TREE_SEL_CHANGING" wxEVENT_COMMAND_TREE_SEL_CHANGING)
 :int)

(defcvar ("wxEVENT_COMMAND_TREE_KEY_DOWN" wxEVENT_COMMAND_TREE_KEY_DOWN)
 :int)

(defcvar ("wxEVENT_COMMAND_TREE_ITEM_ACTIVATED" wxEVENT_COMMAND_TREE_ITEM_ACTIVATED)
 :int)

(defcvar ("wxEVENT_COMMAND_TREE_ITEM_RIGHT_CLICK" wxEVENT_COMMAND_TREE_ITEM_RIGHT_CLICK)
 :int)

(defcvar ("wxEVENT_COMMAND_TREE_ITEM_MIDDLE_CLICK" wxEVENT_COMMAND_TREE_ITEM_MIDDLE_CLICK)
 :int)

(defcvar ("wxEVENT_COMMAND_TREE_END_DRAG" wxEVENT_COMMAND_TREE_END_DRAG)
 :int)

(defcvar ("wxEVENT_COMMAND_LIST_BEGIN_DRAG" wxEVENT_COMMAND_LIST_BEGIN_DRAG)
 :int)

(defcvar ("wxEVENT_COMMAND_LIST_BEGIN_RDRAG" wxEVENT_COMMAND_LIST_BEGIN_RDRAG)
 :int)

(defcvar ("wxEVENT_COMMAND_LIST_BEGIN_LABEL_EDIT" wxEVENT_COMMAND_LIST_BEGIN_LABEL_EDIT)
 :int)

(defcvar ("wxEVENT_COMMAND_LIST_END_LABEL_EDIT" wxEVENT_COMMAND_LIST_END_LABEL_EDIT)
 :int)

(defcvar ("wxEVENT_COMMAND_LIST_DELETE_ITEM" wxEVENT_COMMAND_LIST_DELETE_ITEM)
 :int)

(defcvar ("wxEVENT_COMMAND_LIST_DELETE_ALL_ITEMS" wxEVENT_COMMAND_LIST_DELETE_ALL_ITEMS)
 :int)

(defcvar ("wxEVENT_COMMAND_LIST_GET_INFO" wxEVENT_COMMAND_LIST_GET_INFO)
 :int)

(defcvar ("wxEVENT_COMMAND_LIST_SET_INFO" wxEVENT_COMMAND_LIST_SET_INFO)
 :int)

(defcvar ("wxEVENT_COMMAND_LIST_ITEM_SELECTED" wxEVENT_COMMAND_LIST_ITEM_SELECTED)
 :int)

(defcvar ("wxEVENT_COMMAND_LIST_ITEM_DESELECTED" wxEVENT_COMMAND_LIST_ITEM_DESELECTED)
 :int)

(defcvar ("wxEVENT_COMMAND_LIST_KEY_DOWN" wxEVENT_COMMAND_LIST_KEY_DOWN)
 :int)

(defcvar ("wxEVENT_COMMAND_LIST_INSERT_ITEM" wxEVENT_COMMAND_LIST_INSERT_ITEM)
 :int)

(defcvar ("wxEVENT_COMMAND_LIST_COL_CLICK" wxEVENT_COMMAND_LIST_COL_CLICK)
 :int)

(defcvar ("wxEVENT_COMMAND_LIST_ITEM_RIGHT_CLICK" wxEVENT_COMMAND_LIST_ITEM_RIGHT_CLICK)
 :int)

(defcvar ("wxEVENT_COMMAND_LIST_ITEM_MIDDLE_CLICK" wxEVENT_COMMAND_LIST_ITEM_MIDDLE_CLICK)
 :int)

(defcvar ("wxEVENT_COMMAND_LIST_ITEM_ACTIVATED" wxEVENT_COMMAND_LIST_ITEM_ACTIVATED)
 :int)

(defcvar ("wxEVENT_COMMAND_LIST_ITEM_FOCUSED" wxEVENT_COMMAND_LIST_ITEM_FOCUSED)
 :int)

(defcvar ("wxEVENT_COMMAND_TAB_SEL_CHANGED" wxEVENT_COMMAND_TAB_SEL_CHANGED)
 :int)

(defcvar ("wxEVENT_COMMAND_TAB_SEL_CHANGING" wxEVENT_COMMAND_TAB_SEL_CHANGING)
 :int)

(defcvar ("wxEVENT_COMMAND_NOTEBOOK_PAGE_CHANGED" wxEVENT_COMMAND_NOTEBOOK_PAGE_CHANGED)
 :int)

(defcvar ("wxEVENT_COMMAND_NOTEBOOK_PAGE_CHANGING" wxEVENT_COMMAND_NOTEBOOK_PAGE_CHANGING)
 :int)

(defcvar ("wxEVENT_COMMAND_SPLITTER_SASH_POS_CHANGED" wxEVENT_COMMAND_SPLITTER_SASH_POS_CHANGED)
 :int)

(defcvar ("wxEVENT_COMMAND_SPLITTER_SASH_POS_CHANGING" wxEVENT_COMMAND_SPLITTER_SASH_POS_CHANGING)
 :int)

(defcvar ("wxEVENT_COMMAND_SPLITTER_DOUBLECLICKED" wxEVENT_COMMAND_SPLITTER_DOUBLECLICKED)
 :int)

(defcvar ("wxEVENT_COMMAND_SPLITTER_UNSPLIT" wxEVENT_COMMAND_SPLITTER_UNSPLIT)
 :int)

(defcvar ("wxEVENT_WIZARD_PAGE_CHANGED" wxEVENT_WIZARD_PAGE_CHANGED)
 :int)

(defcvar ("wxEVENT_WIZARD_PAGE_CHANGING" wxEVENT_WIZARD_PAGE_CHANGING)
 :int)

(defcvar ("wxEVENT_WIZARD_CANCEL" wxEVENT_WIZARD_CANCEL)
 :int)

(defcvar ("wxEVENT_CALENDAR_SEL_CHANGED" wxEVENT_CALENDAR_SEL_CHANGED)
 :int)

(defcvar ("wxEVENT_CALENDAR_DAY_CHANGED" wxEVENT_CALENDAR_DAY_CHANGED)
 :int)

(defcvar ("wxEVENT_CALENDAR_MONTH_CHANGED" wxEVENT_CALENDAR_MONTH_CHANGED)
 :int)

(defcvar ("wxEVENT_CALENDAR_YEAR_CHANGED" wxEVENT_CALENDAR_YEAR_CHANGED)
 :int)

(defcvar ("wxEVENT_CALENDAR_DOUBLECLICKED" wxEVENT_CALENDAR_DOUBLECLICKED)
 :int)

(defcvar ("wxEVENT_CALENDAR_WEEKDAY_CLICKED" wxEVENT_CALENDAR_WEEKDAY_CLICKED)
 :int)

(defcvar ("wxEVENT_USER_FIRST" wxEVENT_USER_FIRST)
 :int)

(defcvar ("wxEVENT_HELP" wxEVENT_HELP)
 :int)

(defcvar ("wxEVENT_DETAILED_HELP" wxEVENT_DETAILED_HELP)
 :int)

(defcvar ("wxEVENT_GRID_CELL_LEFT_CLICK" wxEVENT_GRID_CELL_LEFT_CLICK)
 :int)

(defcvar ("wxEVENT_GRID_CELL_RIGHT_CLICK" wxEVENT_GRID_CELL_RIGHT_CLICK)
 :int)

(defcvar ("wxEVENT_GRID_CELL_LEFT_DCLICK" wxEVENT_GRID_CELL_LEFT_DCLICK)
 :int)

(defcvar ("wxEVENT_GRID_CELL_RIGHT_DCLICK" wxEVENT_GRID_CELL_RIGHT_DCLICK)
 :int)

(defcvar ("wxEVENT_GRID_LABEL_LEFT_CLICK" wxEVENT_GRID_LABEL_LEFT_CLICK)
 :int)

(defcvar ("wxEVENT_GRID_LABEL_RIGHT_CLICK" wxEVENT_GRID_LABEL_RIGHT_CLICK)
 :int)

(defcvar ("wxEVENT_GRID_LABEL_LEFT_DCLICK" wxEVENT_GRID_LABEL_LEFT_DCLICK)
 :int)

(defcvar ("wxEVENT_GRID_LABEL_RIGHT_DCLICK" wxEVENT_GRID_LABEL_RIGHT_DCLICK)
 :int)

(defcvar ("wxEVENT_GRID_ROW_SIZE" wxEVENT_GRID_ROW_SIZE)
 :int)

(defcvar ("wxEVENT_GRID_COL_SIZE" wxEVENT_GRID_COL_SIZE)
 :int)

(defcvar ("wxEVENT_GRID_RANGE_SELECT" wxEVENT_GRID_RANGE_SELECT)
 :int)

(defcvar ("wxEVENT_GRID_CELL_CHANGE" wxEVENT_GRID_CELL_CHANGE)
 :int)

(defcvar ("wxEVENT_GRID_SELECT_CELL" wxEVENT_GRID_SELECT_CELL)
 :int)

(defcvar ("wxEVENT_GRID_EDITOR_SHOWN" wxEVENT_GRID_EDITOR_SHOWN)
 :int)

(defcvar ("wxEVENT_GRID_EDITOR_HIDDEN" wxEVENT_GRID_EDITOR_HIDDEN)
 :int)

(defcvar ("wxEVENT_GRID_EDITOR_CREATED" wxEVENT_GRID_EDITOR_CREATED)
 :int)

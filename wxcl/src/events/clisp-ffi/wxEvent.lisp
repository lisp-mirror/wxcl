;;;wxEvent.lisp
;;;License  : wxWindows License 3.1
;;;Author(s) : Surendra Singhi (surendra@asu.edu) 
;;;Copyright (C) 2005 Surendra Singhi 
;;;See the file LICENSE for information on usage and redistribution.
;;;
;;; $Header$
;;;
; (defpackage :wxEvent
;     (:use :common-lisp :ffi :wxCL)
;   (:export
;    :wxCommandEvent_Create
;    :wxCommandEvent_Delete
;    :wxEvent_Skip
;    :wxEvent_GetEventType
;    :wxEvent_SetEventType
;    :wxEvent_GetEventObject
;    :wxEvent_SetEventObject
;    :wxEvent_GetTimestamp
;    :wxEvent_SetTimestamp
;    :wxEvent_GetId
;    :wxEvent_SetId
;    :wxEvent_GetSkipped
;    :wxEvent_IsCommandEvent
;    :wxEvent_Clone
;    :wxEvent_SetCallbackUserData
;    :wxEvent_GetCallbackUserData
;    :wxCommandEvent_SetClientData
;    :wxCommandEvent_GetClientData
;    :wxCommandEvent_SetClientObject
;    :wxCommandEvent_GetClientObject
;    :wxCommandEvent_GetSelection
;    :wxCommandEvent_SetString
;    :wxCommandEvent_GetString
;    :wxCommandEvent_IsChecked
;    :wxCommandEvent_IsSelection
;    :wxCommandEvent_SetExtraLong
;    :wxCommandEvent_GetExtraLong
;    :wxCommandEvent_SetInt
;    :wxCommandEvent_GetInt
;    :wxNotifyEvent_Veto
;    :wxNotifyEvent_Allow
;    :wxNotifyEvent_IsAllowed
;    :wxScrollWinEvent_GetOrientation
;    :wxScrollWinEvent_GetPosition
;    :wxScrollWinEvent_SetOrientation
;    :wxScrollWinEvent_SetPosition
;    :wxMouseEvent_IsButton
;    :wxMouseEvent_ButtonDown
;    :wxMouseEvent_ButtonDClick
;    :wxMouseEvent_ButtonUp
;    :wxMouseEvent_Button
;    :wxMouseEvent_ButtonIsDown
;    :wxMouseEvent_ControlDown
;    :wxMouseEvent_MetaDown
;    :wxMouseEvent_AltDown
;    :wxMouseEvent_ShiftDown
;    :wxMouseEvent_LeftDown
;    :wxMouseEvent_MiddleDown
;    :wxMouseEvent_RightDown
;    :wxMouseEvent_LeftUp
;    :wxMouseEvent_MiddleUp
;    :wxMouseEvent_RightUp
;    :wxMouseEvent_LeftDClick
;    :wxMouseEvent_MiddleDClick
;    :wxMouseEvent_RightDClick
;    :wxMouseEvent_LeftIsDown
;    :wxMouseEvent_MiddleIsDown
;    :wxMouseEvent_RightIsDown
;    :wxMouseEvent_Dragging
;    :wxMouseEvent_Moving
;    :wxMouseEvent_Entering
;    :wxMouseEvent_Leaving
;    :wxMouseEvent_GetPosition
;    :wxMouseEvent_GetLogicalPosition
;    :wxMouseEvent_GetX
;    :wxMouseEvent_GetY
;    :wxMouseEvent_GetWheelDelta
;    :wxMouseEvent_GetWheelRotation
;    :wxMouseEvent_GetButton
;    :wxcGetMousePosition
;    :wxSetCursorEvent_GetX
;    :wxSetCursorEvent_GetY
;    :wxSetCursorEvent_SetCursor
;    :wxSetCursorEvent_GetCursor
;    :wxSetCursorEvent_HasCursor
;    :wxKeyEvent_ControlDown
;    :wxKeyEvent_MetaDown
;    :wxKeyEvent_AltDown
;    :wxKeyEvent_ShiftDown
;    :wxKeyEvent_HasModifiers
;    :wxKeyEvent_GetKeyCode
;    :wxKeyEvent_SetKeyCode
;    :wxKeyEvent_GetPosition
;    :wxKeyEvent_GetX
;    :wxKeyEvent_GetY
;    :wxSizeEvent_GetSize
;    :wxMoveEvent_GetPosition
;    :wxMoveEvent_CopyObject
;    :wxEraseEvent_GetDC
;    :wxActivateEvent_GetActive
;    :wxActivateEvent_CopyObject
;    :wxMenuEvent_GetMenuId
;    :wxCloseEvent_SetLoggingOff
;    :wxCloseEvent_GetLoggingOff
;    :wxCloseEvent_Veto
;    :wxCloseEvent_SetCanVeto
;    :wxCloseEvent_CanVeto
;    :wxCloseEvent_GetVeto
;    :wxShowEvent_SetShow
;    :wxShowEvent_GetShow
;    :wxJoystickEvent_GetPosition
;    :wxJoystickEvent_GetZPosition
;    :wxJoystickEvent_GetButtonState
;    :wxJoystickEvent_GetButtonChange
;    :wxJoystickEvent_GetJoystick
;    :wxJoystickEvent_SetJoystick
;    :wxJoystickEvent_SetButtonState
;    :wxJoystickEvent_SetButtonChange
;    :wxJoystickEvent_SetPosition
;    :wxJoystickEvent_SetZPosition
;    :wxJoystickEvent_IsButton
;    :wxJoystickEvent_IsMove
;    :wxJoystickEvent_IsZMove
;    :wxJoystickEvent_ButtonDown
;    :wxJoystickEvent_ButtonUp
;    :wxJoystickEvent_ButtonIsDown
;    :wxUpdateUIEvent_GetChecked
;    :wxUpdateUIEvent_GetEnabled
;    :wxUpdateUIEvent_GetText
;    :wxUpdateUIEvent_GetSetText
;    :wxUpdateUIEvent_GetSetChecked
;    :wxUpdateUIEvent_GetSetEnabled
;    :wxUpdateUIEvent_Check
;    :wxUpdateUIEvent_Enable
;    :wxUpdateUIEvent_SetText
;    :wxPaletteChangedEvent_SetChangedWindow
;    :wxPaletteChangedEvent_GetChangedWindow
;    :wxQueryNewPaletteEvent_SetPaletteRealized
;    :wxQueryNewPaletteEvent_GetPaletteRealized
;    :wxNavigationKeyEvent_GetDirection
;    :wxNavigationKeyEvent_SetDirection
;    :wxNavigationKeyEvent_IsWindowChange
;    :wxNavigationKeyEvent_SetWindowChange
;    :wxNavigationKeyEvent_ShouldPropagate
; ;	:wxNavigationKeyEvent_SetPropagate
;    :wxNavigationKeyEvent_GetCurrentFocus
;    :wxNavigationKeyEvent_SetCurrentFocus
;    :wxWindowCreateEvent_GetWindow
;    :wxWindowDestroyEvent_GetWindow
;    :wxIdleEvent_RequestMore
;    :wxIdleEvent_MoreRequested
;    :wxListEvent_GetCode
;    :wxListEvent_GetIndex
; ;	:wxListEvent_GetOldIndex
; ;	:wxListEvent_GetOldItem
;    :wxListEvent_GetColumn
;    :wxListEvent_Cancelled
;    :wxListEvent_GetPoint
;    :wxListEvent_GetLabel
;    :wxListEvent_GetText
;    :wxListEvent_GetImage
;    :wxListEvent_GetData
;    :wxListEvent_GetMask
;    :wxListEvent_GetItem
;    :wxTreeEvent_GetItem
;    :wxTreeEvent_GetOldItem
;    :wxTreeEvent_GetPoint
;    :wxTreeEvent_GetCode
;    :wxTreeEvent_GetLabel
;    :wxSpinEvent_GetPosition
;    :wxSpinEvent_SetPosition
;    :wxTimerEvent_GetInterval
;    :wxCalendarEvent_GetWeekDay
;    :wxCalendarEvent_GetDate
;    :wxScrollEvent_GetOrientation
;    :wxScrollEvent_GetPosition
;    :wxHelpEvent_GetPosition
;    :wxHelpEvent_SetPosition
;    :wxHelpEvent_GetLink
;    :wxHelpEvent_SetLink
;    :wxHelpEvent_GetTarget
;    :wxHelpEvent_SetTarget
;    ))

(in-package :wxcl-events)

(print "ok at least in this file")
(ffi:default-foreign-language :stdc)

(ffi:def-c-var +event-command-button-clicked+
    (:name "wxEVENT_COMMAND_BUTTON_CLICKED")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var +event-command-checkbox-clicked+
    (:name "wxEVENT_COMMAND_CHECKBOX_CLICKED")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var +event-command-choice-selected+
    (:name "wxEVENT_COMMAND_CHOICE_SELECTED")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var +event-command-listbox-selected+
    (:name "wxEVENT_COMMAND_LISTBOX_SELECTED")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var +event-command-listbox-doubleclicked+
    (:name "wxEVENT_COMMAND_LISTBOX_DOUBLECLICKED")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var +event-command-checklistbox-toggled+
    (:name "wxEVENT_COMMAND_CHECKLISTBOX_TOGGLED")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var +event-command-text-updated+
    (:name "wxEVENT_COMMAND_TEXT_UPDATED")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var +event-command-text-enter+
    (:name "wxEVENT_COMMAND_TEXT_ENTER")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var +event-command-menu-selected+
    (:name "wxEVENT_COMMAND_MENU_SELECTED")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var +event-command-tool-clicked+
    (:name "wxEVENT_COMMAND_TOOL_CLICKED")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var +event-command-slider-updated+
    (:name "wxEVENT_COMMAND_SLIDER_UPDATED")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var +event-command-radiobox-selected+
    (:name "wxEVENT_COMMAND_RADIOBOX_SELECTED")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var +event-command-radiobutton-selected+
    (:name "wxEVENT_COMMAND_RADIOBUTTON_SELECTED")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var +event-command-scrollbar-updated+
    (:name "wxEVENT_COMMAND_SCROLLBAR_UPDATED")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var +event-command-vlbox-selected+
    (:name "wxEVENT_COMMAND_VLBOX_SELECTED")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var +event-command-combobox-selected+
    (:name "wxEVENT_COMMAND_COMBOBOX_SELECTED")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var +event-command-tool-rclicked+
    (:name "wxEVENT_COMMAND_TOOL_RCLICKED")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var +event-command-tool-enter+
    (:name "wxEVENT_COMMAND_TOOL_ENTER")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var +event-command-spinctrl-updated+
    (:name "wxEVENT_COMMAND_SPINCTRL_UPDATED")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var +event-socket+
    (:name "wxEVENT_SOCKET")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var +event-left-down+
    (:name "wxEVENT_LEFT_DOWN")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var +event-left-up+
    (:name "wxEVENT_LEFT_UP")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var +event-middle-down+
    (:name "wxEVENT_MIDDLE_DOWN")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var +event-middle-up+
    (:name "wxEVENT_MIDDLE_UP")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var +event-right-down+
    (:name "wxEVENT_RIGHT_DOWN")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var +event-right-up+
    (:name "wxEVENT_RIGHT_UP")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var +event-motion+
    (:name "wxEVENT_MOTION")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var +event-enter-window+
    (:name "wxEVENT_ENTER_WINDOW")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var +event-leave-window+
    (:name "wxEVENT_LEAVE_WINDOW")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var +event-left-dclick+
    (:name "wxEVENT_LEFT_DCLICK")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var +event-middle-dclick+
    (:name "wxEVENT_MIDDLE_DCLICK")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var +event-right-dclick+
    (:name "wxEVENT_RIGHT_DCLICK")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var +event-set-focus+
    (:name "wxEVENT_SET_FOCUS")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var +event-kill-focus+
    (:name "wxEVENT_KILL_FOCUS")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var +event-nc-left-down+
    (:name "wxEVENT_NC_LEFT_DOWN")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var +event-nc-left-up+
    (:name "wxEVENT_NC_LEFT_UP")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var +event-nc-middle-down+
    (:name "wxEVENT_NC_MIDDLE_DOWN")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var +event-nc-middle-up+
    (:name "wxEVENT_NC_MIDDLE_UP")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var +event-nc-right-down+
    (:name "wxEVENT_NC_RIGHT_DOWN")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var +event-nc-right-up+
    (:name "wxEVENT_NC_RIGHT_UP")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var +event-nc-motion+
    (:name "wxEVENT_NC_MOTION")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var +event-nc-enter-window+
    (:name "wxEVENT_NC_ENTER_WINDOW")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var +event-nc-leave-window+
    (:name "wxEVENT_NC_LEAVE_WINDOW")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var +event-nc-left-dclick+
    (:name "wxEVENT_NC_LEFT_DCLICK")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var +event-nc-middle-dclick+
    (:name "wxEVENT_NC_MIDDLE_DCLICK")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var +event-nc-right-dclick+
    (:name "wxEVENT_NC_RIGHT_DCLICK")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var +event-char+
    (:name "wxEVENT_CHAR")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var +event-char-hook+
    (:name "wxEVENT_CHAR_HOOK")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var +event-navigation-key+
    (:name "wxEVENT_NAVIGATION_KEY")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var +event-key-down+
    (:name "wxEVENT_KEY_DOWN")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var +event-key-up+
    (:name "wxEVENT_KEY_UP")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var +event-set-cursor+
    (:name "wxEVENT_SET_CURSOR")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var +event-scroll-top+
    (:name "wxEVENT_SCROLL_TOP")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var +event-scroll-bottom+
    (:name "wxEVENT_SCROLL_BOTTOM")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var +event-scroll-lineup+
    (:name "wxEVENT_SCROLL_LINEUP")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var +event-scroll-linedown+
    (:name "wxEVENT_SCROLL_LINEDOWN")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var +event-scroll-pageup+
    (:name "wxEVENT_SCROLL_PAGEUP")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var +event-scroll-pagedown+
    (:name "wxEVENT_SCROLL_PAGEDOWN")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var +event-scroll-thumbtrack+
    (:name "wxEVENT_SCROLL_THUMBTRACK")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var +event-scroll-thumbrelease+
    (:name "wxEVENT_SCROLL_THUMBRELEASE")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var +event-scrollwin-top+
    (:name "wxEVENT_SCROLLWIN_TOP")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var +event-scrollwin-bottom+
    (:name "wxEVENT_SCROLLWIN_BOTTOM")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var +event-scrollwin-lineup+
    (:name "wxEVENT_SCROLLWIN_LINEUP")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var +event-scrollwin-linedown+
    (:name "wxEVENT_SCROLLWIN_LINEDOWN")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var +event-scrollwin-pageup+
    (:name "wxEVENT_SCROLLWIN_PAGEUP")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var +event-scrollwin-pagedown+
    (:name "wxEVENT_SCROLLWIN_PAGEDOWN")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var +event-scrollwin-thumbtrack+
    (:name "wxEVENT_SCROLLWIN_THUMBTRACK")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var +event-scrollwin-thumbrelease+
    (:name "wxEVENT_SCROLLWIN_THUMBRELEASE")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var +event-size+
    (:name "wxEVENT_SIZE")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var +event-move+
    (:name "wxEVENT_MOVE")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var +event-close-window+
    (:name "wxEVENT_CLOSE_WINDOW")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var +event-end-session+
    (:name "wxEVENT_END_SESSION")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var +event-query-end-session+
    (:name "wxEVENT_QUERY_END_SESSION")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var +event-activate-app+
    (:name "wxEVENT_ACTIVATE_APP")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var +event-power+
    (:name "wxEVENT_POWER")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var +event-activate+
    (:name "wxEVENT_ACTIVATE")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var +event-create+
    (:name "wxEVENT_CREATE")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var +event-destroy+
    (:name "wxEVENT_DESTROY")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var +event-show+
    (:name "wxEVENT_SHOW")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var +event-iconize+
    (:name "wxEVENT_ICONIZE")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var +event-maximize+
    (:name "wxEVENT_MAXIMIZE")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var +event-mouse-capture-changed+
    (:name "wxEVENT_MOUSE_CAPTURE_CHANGED")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var +event-paint+
    (:name "wxEVENT_PAINT")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var +event-erase-background+
    (:name "wxEVENT_ERASE_BACKGROUND")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var +event-nc-paint+
    (:name "wxEVENT_NC_PAINT")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var +event-paint-icon+
    (:name "wxEVENT_PAINT_ICON")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var +event-menu-highlight+
    (:name "wxEVENT_MENU_HIGHLIGHT")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var +event-context-menu+
    (:name "wxEVENT_CONTEXT_MENU")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var +event-sys-colour-changed+
    (:name "wxEVENT_SYS_COLOUR_CHANGED")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var +event-setting-changed+
    (:name "wxEVENT_SETTING_CHANGED")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var +event-query-new-palette+
    (:name "wxEVENT_QUERY_NEW_PALETTE")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var +event-palette-changed+
    (:name "wxEVENT_PALETTE_CHANGED")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var +event-joy-button-down+
    (:name "wxEVENT_JOY_BUTTON_DOWN")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var +event-joy-button-up+
    (:name "wxEVENT_JOY_BUTTON_UP")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var +event-joy-move+
    (:name "wxEVENT_JOY_MOVE")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var +event-joy-zmove+
    (:name "wxEVENT_JOY_ZMOVE")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var +event-drop-files+
    (:name "wxEVENT_DROP_FILES")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var +event-draw-item+
    (:name "wxEVENT_DRAW_ITEM")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var +event-measure-item+
    (:name "wxEVENT_MEASURE_ITEM")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var +event-compare-item+
    (:name "wxEVENT_COMPARE_ITEM")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var +event-init-dialog+
    (:name "wxEVENT_INIT_DIALOG")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var +event-idle+
    (:name "wxEVENT_IDLE")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var +event-update-ui+
    (:name "wxEVENT_UPDATE_UI")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var +event-end-process+
    (:name "wxEVENT_END_PROCESS")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var +event-dialup-connected+
    (:name "wxEVENT_DIALUP_CONNECTED")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var +event-dialup-disconnected+
    (:name "wxEVENT_DIALUP_DISCONNECTED")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var +event-command-left-click+
    (:name "wxEVENT_COMMAND_LEFT_CLICK")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var +event-command-left-dclick+
    (:name "wxEVENT_COMMAND_LEFT_DCLICK")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var +event-command-right-click+
    (:name "wxEVENT_COMMAND_RIGHT_CLICK")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var +event-command-right-dclick+
    (:name "wxEVENT_COMMAND_RIGHT_DCLICK")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var +event-command-set-focus+
    (:name "wxEVENT_COMMAND_SET_FOCUS")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var +event-command-kill-focus+
    (:name "wxEVENT_COMMAND_KILL_FOCUS")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var +event-command-enter+
    (:name "wxEVENT_COMMAND_ENTER")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var +event-command-tree-begin-drag+
    (:name "wxEVENT_COMMAND_TREE_BEGIN_DRAG")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var +event-command-tree-begin-rdrag+
    (:name "wxEVENT_COMMAND_TREE_BEGIN_RDRAG")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var +event-command-tree-begin-label-edit+
    (:name "wxEVENT_COMMAND_TREE_BEGIN_LABEL_EDIT")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var +event-command-tree-end-label-edit+
    (:name "wxEVENT_COMMAND_TREE_END_LABEL_EDIT")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var +event-command-tree-delete-item+
    (:name "wxEVENT_COMMAND_TREE_DELETE_ITEM")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var +event-command-tree-get-info+
    (:name "wxEVENT_COMMAND_TREE_GET_INFO")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var +event-command-tree-set-info+
    (:name "wxEVENT_COMMAND_TREE_SET_INFO")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var +event-command-tree-item-expanded+
    (:name "wxEVENT_COMMAND_TREE_ITEM_EXPANDED")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var +event-command-tree-item-expanding+
    (:name "wxEVENT_COMMAND_TREE_ITEM_EXPANDING")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var +event-command-tree-item-collapsed+
    (:name "wxEVENT_COMMAND_TREE_ITEM_COLLAPSED")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var +event-command-tree-item-collapsing+
    (:name "wxEVENT_COMMAND_TREE_ITEM_COLLAPSING")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var +event-command-tree-sel-changed+
    (:name "wxEVENT_COMMAND_TREE_SEL_CHANGED")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var +event-command-tree-sel-changing+
    (:name "wxEVENT_COMMAND_TREE_SEL_CHANGING")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var +event-command-tree-key-down+
    (:name "wxEVENT_COMMAND_TREE_KEY_DOWN")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var +event-command-tree-item-activated+
    (:name "wxEVENT_COMMAND_TREE_ITEM_ACTIVATED")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var +event-command-tree-item-right-click+
    (:name "wxEVENT_COMMAND_TREE_ITEM_RIGHT_CLICK")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var +event-command-tree-item-middle-click+
    (:name "wxEVENT_COMMAND_TREE_ITEM_MIDDLE_CLICK")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var +event-command-tree-end-drag+
    (:name "wxEVENT_COMMAND_TREE_END_DRAG")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var +event-command-list-begin-drag+
    (:name "wxEVENT_COMMAND_LIST_BEGIN_DRAG")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var +event-command-list-begin-rdrag+
    (:name "wxEVENT_COMMAND_LIST_BEGIN_RDRAG")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var +event-command-list-begin-label-edit+
    (:name "wxEVENT_COMMAND_LIST_BEGIN_LABEL_EDIT")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var +event-command-list-end-label-edit+
    (:name "wxEVENT_COMMAND_LIST_END_LABEL_EDIT")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var +event-command-list-delete-item+
    (:name "wxEVENT_COMMAND_LIST_DELETE_ITEM")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var +event-command-list-delete-all-items+
    (:name "wxEVENT_COMMAND_LIST_DELETE_ALL_ITEMS")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var +event-command-list-get-info+
    (:name "wxEVENT_COMMAND_LIST_GET_INFO")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var +event-command-list-set-info+
    (:name "wxEVENT_COMMAND_LIST_SET_INFO")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var +event-command-list-item-selected+
    (:name "wxEVENT_COMMAND_LIST_ITEM_SELECTED")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var +event-command-list-item-deselected+
    (:name "wxEVENT_COMMAND_LIST_ITEM_DESELECTED")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var +event-command-list-key-down+
    (:name "wxEVENT_COMMAND_LIST_KEY_DOWN")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var +event-command-list-insert-item+
    (:name "wxEVENT_COMMAND_LIST_INSERT_ITEM")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var +event-command-list-col-click+
    (:name "wxEVENT_COMMAND_LIST_COL_CLICK")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var +event-command-list-item-right-click+
    (:name "wxEVENT_COMMAND_LIST_ITEM_RIGHT_CLICK")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var +event-command-list-item-middle-click+
    (:name "wxEVENT_COMMAND_LIST_ITEM_MIDDLE_CLICK")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var +event-command-list-item-activated+
    (:name "wxEVENT_COMMAND_LIST_ITEM_ACTIVATED")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var +event-command-list-item-focused+
    (:name "wxEVENT_COMMAND_LIST_ITEM_FOCUSED")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var +event-command-tab-sel-changed+
    (:name "wxEVENT_COMMAND_TAB_SEL_CHANGED")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var +event-command-tab-sel-changing+
    (:name "wxEVENT_COMMAND_TAB_SEL_CHANGING")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var +event-command-notebook-page-changed+
    (:name "wxEVENT_COMMAND_NOTEBOOK_PAGE_CHANGED")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var +event-command-notebook-page-changing+
    (:name "wxEVENT_COMMAND_NOTEBOOK_PAGE_CHANGING")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var +event-command-splitter-sash-pos-changed+
    (:name "wxEVENT_COMMAND_SPLITTER_SASH_POS_CHANGED")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var +event-command-splitter-sash-pos-changing+
    (:name "wxEVENT_COMMAND_SPLITTER_SASH_POS_CHANGING")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var +event-command-splitter-doubleclicked+
    (:name "wxEVENT_COMMAND_SPLITTER_DOUBLECLICKED")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var +event-command-splitter-unsplit+
    (:name "wxEVENT_COMMAND_SPLITTER_UNSPLIT")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var +event-wizard-page-changed+
    (:name "wxEVENT_WIZARD_PAGE_CHANGED")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var +event-wizard-page-changing+
    (:name "wxEVENT_WIZARD_PAGE_CHANGING")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var +event-wizard-cancel+
    (:name "wxEVENT_WIZARD_CANCEL")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var +event-calendar-sel-changed+
    (:name "wxEVENT_CALENDAR_SEL_CHANGED")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var +event-calendar-day-changed+
    (:name "wxEVENT_CALENDAR_DAY_CHANGED")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var +event-calendar-month-changed+
    (:name "wxEVENT_CALENDAR_MONTH_CHANGED")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var +event-calendar-year-changed+
    (:name "wxEVENT_CALENDAR_YEAR_CHANGED")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var +event-calendar-doubleclicked+
    (:name "wxEVENT_CALENDAR_DOUBLECLICKED")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var +event-calendar-weekday-clicked+
    (:name "wxEVENT_CALENDAR_WEEKDAY_CLICKED")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var +event-user-first+
    (:name "wxEVENT_USER_FIRST")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var +event-help+
    (:name "wxEVENT_HELP")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var +event-detailed-help+
    (:name "wxEVENT_DETAILED_HELP")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var +event-grid-cell-left-click+
    (:name "wxEVENT_GRID_CELL_LEFT_CLICK")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var +event-grid-cell-right-click+
    (:name "wxEVENT_GRID_CELL_RIGHT_CLICK")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var +event-grid-cell-left-dclick+
    (:name "wxEVENT_GRID_CELL_LEFT_DCLICK")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var +event-grid-cell-right-dclick+
    (:name "wxEVENT_GRID_CELL_RIGHT_DCLICK")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var +event-grid-label-left-click+
    (:name "wxEVENT_GRID_LABEL_LEFT_CLICK")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var +event-grid-label-right-click+
    (:name "wxEVENT_GRID_LABEL_RIGHT_CLICK")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var +event-grid-label-left-dclick+
    (:name "wxEVENT_GRID_LABEL_LEFT_DCLICK")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var +event-grid-label-right-dclick+
    (:name "wxEVENT_GRID_LABEL_RIGHT_DCLICK")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var +event-grid-row-size+
    (:name "wxEVENT_GRID_ROW_SIZE")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var +event-grid-col-size+
    (:name "wxEVENT_GRID_COL_SIZE")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var +event-grid-range-select+
    (:name "wxEVENT_GRID_RANGE_SELECT")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var +event-grid-cell-change+
    (:name "wxEVENT_GRID_CELL_CHANGE")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var +event-grid-select-cell+
    (:name "wxEVENT_GRID_SELECT_CELL")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var +event-grid-editor-shown+
    (:name "wxEVENT_GRID_EDITOR_SHOWN")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var +event-grid-editor-hidden+
    (:name "wxEVENT_GRID_EDITOR_HIDDEN")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var +event-grid-editor-created+
    (:name "wxEVENT_GRID_EDITOR_CREATED")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

; (ffi:def-c-var +event-dynamic-sash-split+
;  (:name "wxEVENT_DYNAMIC_SASH_SPLIT")
; (:type (ffi:c-ptr ffi:int))
;   (:read-only t)
; (:library +library-name+))

; (ffi:def-c-var +event-dynamic-sash-unify+
;  (:name "wxEVENT_DYNAMIC_SASH_UNIFY")
; (:type (ffi:c-ptr ffi:int))
;   (:read-only t)
; (:library +library-name+))

; (ffi:def-c-var +event-plot-sel-changing+
;  (:name "wxEVENT_PLOT_SEL_CHANGING")
; (:type (ffi:c-ptr ffi:int))
;   (:read-only t)
; (:library +library-name+))

; (ffi:def-c-var +event-plot-sel-changed+
;  (:name "wxEVENT_PLOT_SEL_CHANGED")
; (:type (ffi:c-ptr ffi:int))
;   (:read-only t)
; (:library +library-name+))

; (ffi:def-c-var +event-plot-clicked+
;  (:name "wxEVENT_PLOT_CLICKED")
; (:type (ffi:c-ptr ffi:int))
;   (:read-only t)
; (:library +library-name+))

; (ffi:def-c-var +event-plot-doubleclicked+
;  (:name "wxEVENT_PLOT_DOUBLECLICKED")
; (:type (ffi:c-ptr ffi:int))
;   (:read-only t)
; (:library +library-name+))

; (ffi:def-c-var +event-plot-zoom-in+
;  (:name "wxEVENT_PLOT_ZOOM_IN")
; (:type (ffi:c-ptr ffi:int))
;   (:read-only t)
; (:library +library-name+))

; (ffi:def-c-var +event-plot-zoom-out+
;  (:name "wxEVENT_PLOT_ZOOM_OUT")
; (:type (ffi:c-ptr ffi:int))
;   (:read-only t)
; (:library +library-name+))

; (ffi:def-c-var +event-plot-value-sel-creating+
;  (:name "wxEVENT_PLOT_VALUE_SEL_CREATING")
; (:type (ffi:c-ptr ffi:int))
;   (:read-only t)
; (:library +library-name+))

; (ffi:def-c-var +event-plot-value-sel-created+
;  (:name "wxEVENT_PLOT_VALUE_SEL_CREATED")
; (:type (ffi:c-ptr ffi:int))
;   (:read-only t)
; (:library +library-name+))

; (ffi:def-c-var +event-plot-value-sel-changing+
;  (:name "wxEVENT_PLOT_VALUE_SEL_CHANGING")
; (:type (ffi:c-ptr ffi:int))
;   (:read-only t)
; (:library +library-name+))

; (ffi:def-c-var +event-plot-value-sel-changed+
;  (:name "wxEVENT_PLOT_VALUE_SEL_CHANGED")
; (:type (ffi:c-ptr ffi:int))
;   (:read-only t)
; (:library +library-name+))

; (ffi:def-c-var +event-plot-area-sel-creating+
;  (:name "wxEVENT_PLOT_AREA_SEL_CREATING")
; (:type (ffi:c-ptr ffi:int))
;   (:read-only t)
; (:library +library-name+))

; (ffi:def-c-var +event-plot-area-sel-created+
;  (:name "wxEVENT_PLOT_AREA_SEL_CREATED")
; (:type (ffi:c-ptr ffi:int))
;   (:read-only t)
; (:library +library-name+))

; (ffi:def-c-var +event-plot-area-sel-changing+
;  (:name "wxEVENT_PLOT_AREA_SEL_CHANGING")
; (:type (ffi:c-ptr ffi:int))
;   (:read-only t)
; (:library +library-name+))

; (ffi:def-c-var +event-plot-area-sel-changed+
;  (:name "wxEVENT_PLOT_AREA_SEL_CHANGED")
; (:type (ffi:c-ptr ffi:int))
;   (:read-only t)
; (:library +library-name+))

; (ffi:def-c-var +event-plot-begin-x-label-edit+
;  (:name "wxEVENT_PLOT_BEGIN_X_LABEL_EDIT")
; (:type (ffi:c-ptr ffi:int))
;   (:read-only t)
; (:library +library-name+))

; (ffi:def-c-var +event-plot-end-x-label-edit+
;  (:name "wxEVENT_PLOT_END_X_LABEL_EDIT")
; (:type (ffi:c-ptr ffi:int))
;   (:read-only t)
; (:library +library-name+))

; (ffi:def-c-var +event-plot-begin-y-label-edit+
;  (:name "wxEVENT_PLOT_BEGIN_Y_LABEL_EDIT")
; (:type (ffi:c-ptr ffi:int))
;   (:read-only t)
; (:library +library-name+))

; (ffi:def-c-var +event-plot-end-y-label-edit+
;  (:name "wxEVENT_PLOT_END_Y_LABEL_EDIT")
; (:type (ffi:c-ptr ffi:int))
;   (:read-only t)
; (:library +library-name+))

; (ffi:def-c-var +event-plot-begin-title-edit+
;  (:name "wxEVENT_PLOT_BEGIN_TITLE_EDIT")
; (:type (ffi:c-ptr ffi:int))
;   (:read-only t)
; (:library +library-name+))

; (ffi:def-c-var +event-plot-end-title-edit+
;  (:name "wxEVENT_PLOT_END_TITLE_EDIT")
; (:type (ffi:c-ptr ffi:int))
;   (:read-only t)
; (:library +library-name+))

; (ffi:def-c-var +event-plot-area-create+
;  (:name "wxEVENT_PLOT_AREA_CREATE")
; (:type (ffi:c-ptr ffi:int))
;   (:read-only t)
; (:library +library-name+))




(ffi:def-call-out wxCommandEvent_Create
    (:name "wxCommandEvent_Create")
  (:arguments (_typ ffi:int)
	      (_id ffi:int))
  (:return-type (ffi:c-pointer NIL))
  (:library +library-name+))

(ffi:def-call-out wxCommandEvent_Delete
    (:name "wxCommandEvent_Delete")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxEvent_Skip
    (:name "wxEvent_Skip")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxEvent_GetEventType
    (:name "wxEvent_GetEventType")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out wxEvent_SetEventType
    (:name "wxEvent_SetEventType")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (typ ffi:int))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxEvent_GetEventObject
    (:name "wxEvent_GetEventObject")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type (ffi:c-pointer NIL))
  (:library +library-name+))

(ffi:def-call-out wxEvent_SetEventObject
    (:name "wxEvent_SetEventObject")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (obj (ffi:c-pointer NIL)))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxEvent_GetTimestamp
    (:name "wxEvent_GetTimestamp")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type ffi:long)
  (:library +library-name+))

(ffi:def-call-out wxEvent_SetTimestamp
    (:name "wxEvent_SetTimestamp")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (ts ffi:long))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxEvent_GetId
    (:name "wxEvent_GetId")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out wxEvent_SetId
    (:name "wxEvent_SetId")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (Id ffi:int))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxEvent_GetSkipped
    (:name "wxEvent_GetSkipped")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out wxEvent_IsCommandEvent
    (:name "wxEvent_IsCommandEvent")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out wxEvent_Clone
    (:name "wxEvent_Clone")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type (ffi:c-pointer NIL))
  (:library +library-name+))

(ffi:def-call-out wxEvent_SetCallbackUserData
    (:name "wxEvent_SetCallbackUserData")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (obj (ffi:c-pointer NIL))) ;wxObject
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxEvent_GetCallbackUserData
    (:name "wxEvent_GetCallbackUserData")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type (ffi:c-pointer NIL))
  (:library +library-name+))

(ffi:def-call-out wxCommandEvent_SetClientData
    (:name "wxCommandEvent_SetClientData")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (clientData (ffi:c-pointer NIL)))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxCommandEvent_GetClientData
    (:name "wxCommandEvent_GetClientData")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type (ffi:c-pointer NIL))
  (:library +library-name+))

(ffi:def-call-out wxCommandEvent_SetClientObject
    (:name "wxCommandEvent_SetClientObject")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (clientObject (ffi:c-pointer NIL)))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxCommandEvent_GetClientObject
    (:name "wxCommandEvent_GetClientObject")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type (ffi:c-pointer NIL))
  (:library +library-name+))

(ffi:def-call-out wxCommandEvent_GetSelection
    (:name "wxCommandEvent_GetSelection")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out wxCommandEvent_SetString
    (:name "wxCommandEvent_SetString")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (s ffi:c-string))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxCommandEvent_GetString
    (:name "wxCommandEvent_GetString")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type ffi:c-string :malloc-free)
  (:library +library-name+))

(ffi:def-call-out wxCommandEvent_IsChecked
    (:name "wxCommandEvent_IsChecked")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out wxCommandEvent_IsSelection
    (:name "wxCommandEvent_IsSelection")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out wxCommandEvent_SetExtraLong
    (:name "wxCommandEvent_SetExtraLong")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (extraLong ffi:long))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxCommandEvent_GetExtraLong
    (:name "wxCommandEvent_GetExtraLong")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type ffi:long)
  (:library +library-name+))

(ffi:def-call-out wxCommandEvent_SetInt
    (:name "wxCommandEvent_SetInt")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (i ffi:int))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxCommandEvent_GetInt
    (:name "wxCommandEvent_GetInt")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out wxNotifyEvent_Veto
    (:name "wxNotifyEvent_Veto")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxNotifyEvent_Allow
    (:name "wxNotifyEvent_Allow")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxNotifyEvent_IsAllowed
    (:name "wxNotifyEvent_IsAllowed")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out wxScrollWinEvent_GetOrientation
    (:name "wxScrollWinEvent_GetOrientation")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out wxScrollWinEvent_GetPosition
    (:name "wxScrollWinEvent_GetPosition")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out wxScrollWinEvent_SetOrientation
    (:name "wxScrollWinEvent_SetOrientation")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (orient ffi:int))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxScrollWinEvent_SetPosition
    (:name "wxScrollWinEvent_SetPosition")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (pos ffi:int))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxMouseEvent_IsButton
    (:name "wxMouseEvent_IsButton")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out wxMouseEvent_ButtonDown
    (:name "wxMouseEvent_ButtonDown")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (but ffi:int))
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out wxMouseEvent_ButtonDClick
    (:name "wxMouseEvent_ButtonDClick")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (but ffi:int))
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out wxMouseEvent_ButtonUp
    (:name "wxMouseEvent_ButtonUp")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (but ffi:int))
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out wxMouseEvent_Button
    (:name "wxMouseEvent_Button")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (but ffi:int))
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out wxMouseEvent_ButtonIsDown
    (:name "wxMouseEvent_ButtonIsDown")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (but ffi:int))
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out wxMouseEvent_ControlDown
    (:name "wxMouseEvent_ControlDown")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out wxMouseEvent_MetaDown
    (:name "wxMouseEvent_MetaDown")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out wxMouseEvent_AltDown
    (:name "wxMouseEvent_AltDown")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out wxMouseEvent_ShiftDown
    (:name "wxMouseEvent_ShiftDown")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out wxMouseEvent_LeftDown
    (:name "wxMouseEvent_LeftDown")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out wxMouseEvent_MiddleDown
    (:name "wxMouseEvent_MiddleDown")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out wxMouseEvent_RightDown
    (:name "wxMouseEvent_RightDown")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out wxMouseEvent_LeftUp
    (:name "wxMouseEvent_LeftUp")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out wxMouseEvent_MiddleUp
    (:name "wxMouseEvent_MiddleUp")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out wxMouseEvent_RightUp
    (:name "wxMouseEvent_RightUp")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out wxMouseEvent_LeftDClick
    (:name "wxMouseEvent_LeftDClick")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out wxMouseEvent_MiddleDClick
    (:name "wxMouseEvent_MiddleDClick")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out wxMouseEvent_RightDClick
    (:name "wxMouseEvent_RightDClick")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out wxMouseEvent_LeftIsDown
    (:name "wxMouseEvent_LeftIsDown")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out wxMouseEvent_MiddleIsDown
    (:name "wxMouseEvent_MiddleIsDown")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out wxMouseEvent_RightIsDown
    (:name "wxMouseEvent_RightIsDown")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out wxMouseEvent_Dragging
    (:name "wxMouseEvent_Dragging")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out wxMouseEvent_Moving
    (:name "wxMouseEvent_Moving")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out wxMouseEvent_Entering
    (:name "wxMouseEvent_Entering")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out wxMouseEvent_Leaving
    (:name "wxMouseEvent_Leaving")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out wxMouseEvent_GetPosition
    (:name "wxMouseEvent_GetPosition")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (xpos (ffi:c-ptr ffi:int))
	      (ypos (ffi:c-ptr ffi:int)))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxMouseEvent_GetLogicalPosition
    (:name "wxMouseEvent_GetLogicalPosition")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (dc (ffi:c-pointer NIL))
	      (xpos (ffi:c-ptr ffi:int))
	      (ypos (ffi:c-ptr ffi:int)))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxMouseEvent_GetX
    (:name "wxMouseEvent_GetX")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out wxMouseEvent_GetY
    (:name "wxMouseEvent_GetY")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out wxcGetMousePosition
    (:name "wxcGetMousePosition")
  (:arguments (x (ffi:c-ptr ffi:int))
	      (y (ffi:c-ptr ffi:int)))
  (:library +library-name+))

(ffi:def-call-out wxMouseEvent_GetWheelDelta
    (:name "wxMouseEvent_GetWheelDelta")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out wxMouseEvent_GetWheelRotation
    (:name "wxMouseEvent_GetWheelRotation")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out wxMouseEvent_GetButton
    (:name "wxMouseEvent_GetButton")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out wxSetCursorEvent_GetX
    (:name "wxSetCursorEvent_GetX")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out wxSetCursorEvent_GetY
    (:name "wxSetCursorEvent_GetY")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out wxSetCursorEvent_SetCursor
    (:name "wxSetCursorEvent_SetCursor")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (cursor (ffi:c-pointer NIL)))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxSetCursorEvent_GetCursor
    (:name "wxSetCursorEvent_GetCursor")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type (ffi:c-pointer NIL))
  (:library +library-name+))

(ffi:def-call-out wxSetCursorEvent_HasCursor
    (:name "wxSetCursorEvent_HasCursor")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out wxKeyEvent_ControlDown
    (:name "wxKeyEvent_ControlDown")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out wxKeyEvent_MetaDown
    (:name "wxKeyEvent_MetaDown")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out wxKeyEvent_AltDown
    (:name "wxKeyEvent_AltDown")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out wxKeyEvent_ShiftDown
    (:name "wxKeyEvent_ShiftDown")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out wxKeyEvent_HasModifiers
    (:name "wxKeyEvent_HasModifiers")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out wxKeyEvent_GetKeyCode
    (:name "wxKeyEvent_GetKeyCode")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out wxKeyEvent_SetKeyCode
    (:name "wxKeyEvent_SetKeyCode")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (code ffi:int))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxKeyEvent_GetPosition
    (:name "wxKeyEvent_GetPosition")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (xpos (ffi:c-ptr ffi:int))
	      (ypos (ffi:c-ptr ffi:int)))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxKeyEvent_GetX
    (:name "wxKeyEvent_GetX")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out wxKeyEvent_GetY
    (:name "wxKeyEvent_GetY")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out wxSizeEvent_GetSize
    (:name "wxSizeEvent_GetSize")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (w (ffi:c-ptr ffi:int))
	      (h (ffi:c-ptr ffi:int)))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxMoveEvent_GetPosition
    (:name "wxMoveEvent_GetPosition")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (x (ffi:c-ptr ffi:int))
	      (y (ffi:c-ptr ffi:int)))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxEraseEvent_GetDC
    (:name "wxEraseEvent_GetDC")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type (ffi:c-pointer NIL))
  (:library +library-name+))

(ffi:def-call-out wxActivateEvent_GetActive
    (:name "wxActivateEvent_GetActive")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out wxMenuEvent_GetMenuId
    (:name "wxMenuEvent_GetMenuId")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out wxCloseEvent_SetLoggingOff
    (:name "wxCloseEvent_SetLoggingOff")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (logOff ffi:int))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxCloseEvent_GetLoggingOff
    (:name "wxCloseEvent_GetLoggingOff")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out wxCloseEvent_Veto
    (:name "wxCloseEvent_Veto")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (veto ffi:int))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxCloseEvent_SetCanVeto
    (:name "wxCloseEvent_SetCanVeto")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (canVeto ffi:int))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxCloseEvent_CanVeto
    (:name "wxCloseEvent_CanVeto")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out wxCloseEvent_GetVeto
    (:name "wxCloseEvent_GetVeto")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out wxShowEvent_SetShow
    (:name "wxShowEvent_SetShow")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (show ffi:int))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxShowEvent_GetShow
    (:name "wxShowEvent_GetShow")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out wxJoystickEvent_GetPosition
    (:name "wxJoystickEvent_GetPosition")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (x (ffi:c-ptr ffi:int))
	      (y (ffi:c-ptr ffi:int)))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxJoystickEvent_GetZPosition
    (:name "wxJoystickEvent_GetZPosition")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out wxJoystickEvent_GetButtonState
    (:name "wxJoystickEvent_GetButtonState")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out wxJoystickEvent_GetButtonChange
    (:name "wxJoystickEvent_GetButtonChange")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out wxJoystickEvent_GetJoystick
    (:name "wxJoystickEvent_GetJoystick")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out wxJoystickEvent_SetJoystick
    (:name "wxJoystickEvent_SetJoystick")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (stick ffi:int))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxJoystickEvent_SetButtonState
    (:name "wxJoystickEvent_SetButtonState")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (state ffi:int))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxJoystickEvent_SetButtonChange
    (:name "wxJoystickEvent_SetButtonChange")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (change ffi:int))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxJoystickEvent_SetPosition
    (:name "wxJoystickEvent_SetPosition")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (pos (ffi:c-pointer NIL)))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxJoystickEvent_SetZPosition
    (:name "wxJoystickEvent_SetZPosition")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (zPos ffi:int))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxJoystickEvent_IsButton
    (:name "wxJoystickEvent_IsButton")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out wxJoystickEvent_IsMove
    (:name "wxJoystickEvent_IsMove")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out wxJoystickEvent_IsZMove
    (:name "wxJoystickEvent_IsZMove")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out wxJoystickEvent_ButtonDown
    (:name "wxJoystickEvent_ButtonDown")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (but ffi:int))
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out wxJoystickEvent_ButtonUp
    (:name "wxJoystickEvent_ButtonUp")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (but ffi:int))
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out wxJoystickEvent_ButtonIsDown
    (:name "wxJoystickEvent_ButtonIsDown")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (but ffi:int))
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out wxUpdateUIEvent_GetChecked
    (:name "wxUpdateUIEvent_GetChecked")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out wxUpdateUIEvent_GetEnabled
    (:name "wxUpdateUIEvent_GetEnabled")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out wxUpdateUIEvent_GetText
    (:name "wxUpdateUIEvent_GetText")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (_buf (ffi:c-pointer NIL)))
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out wxUpdateUIEvent_GetSetText
    (:name "wxUpdateUIEvent_GetSetText")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out wxUpdateUIEvent_GetSetChecked
    (:name "wxUpdateUIEvent_GetSetChecked")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out wxUpdateUIEvent_GetSetEnabled
    (:name "wxUpdateUIEvent_GetSetEnabled")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out wxUpdateUIEvent_Check
    (:name "wxUpdateUIEvent_Check")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (check ffi:int))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxUpdateUIEvent_Enable
    (:name "wxUpdateUIEvent_Enable")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (enable ffi:int))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxUpdateUIEvent_SetText
    (:name "wxUpdateUIEvent_SetText")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (text ffi:c-string))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxPaletteChangedEvent_SetChangedWindow
    (:name "wxPaletteChangedEvent_SetChangedWindow")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (win (ffi:c-pointer NIL)))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxPaletteChangedEvent_GetChangedWindow
    (:name "wxPaletteChangedEvent_GetChangedWindow")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type (ffi:c-pointer NIL))
  (:library +library-name+))

(ffi:def-call-out wxQueryNewPaletteEvent_SetPaletteRealized
    (:name "wxQueryNewPaletteEvent_SetPaletteRealized")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (realized ffi:int))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxQueryNewPaletteEvent_GetPaletteRealized
    (:name "wxQueryNewPaletteEvent_GetPaletteRealized")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out wxNavigationKeyEvent_GetDirection
    (:name "wxNavigationKeyEvent_GetDirection")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out wxNavigationKeyEvent_SetDirection
    (:name "wxNavigationKeyEvent_SetDirection")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (bForward ffi:int))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxNavigationKeyEvent_IsWindowChange
    (:name "wxNavigationKeyEvent_IsWindowChange")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out wxNavigationKeyEvent_SetWindowChange
    (:name "wxNavigationKeyEvent_SetWindowChange")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (bIs ffi:int))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxNavigationKeyEvent_ShouldPropagate
    (:name "wxNavigationKeyEvent_ShouldPropagate")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type ffi:int)
  (:library +library-name+))

; (ffi:def-call-out wxNavigationKeyEvent_SetPropagate
; 	(:name "wxNavigationKeyEvent_SetPropagate")
; 	(:arguments (_obj (ffi:c-pointer NIL))
; 		(bDoIt ffi:int))
; 	(:return-type NIL)
; 	(:library +library-name+))

(ffi:def-call-out wxNavigationKeyEvent_GetCurrentFocus
    (:name "wxNavigationKeyEvent_GetCurrentFocus")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type (ffi:c-pointer NIL))
  (:library +library-name+))

(ffi:def-call-out wxNavigationKeyEvent_SetCurrentFocus
    (:name "wxNavigationKeyEvent_SetCurrentFocus")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (win (ffi:c-pointer NIL)))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxWindowCreateEvent_GetWindow
    (:name "wxWindowCreateEvent_GetWindow")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type (ffi:c-pointer NIL))
  (:library +library-name+))

(ffi:def-call-out wxWindowDestroyEvent_GetWindow
    (:name "wxWindowDestroyEvent_GetWindow")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type (ffi:c-pointer NIL))
  (:library +library-name+))

(ffi:def-call-out wxIdleEvent_RequestMore
    (:name "wxIdleEvent_RequestMore")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (needMore ffi:int))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxIdleEvent_MoreRequested
    (:name "wxIdleEvent_MoreRequested")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out wxListEvent_GetCode
    (:name "wxListEvent_GetCode")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out wxListEvent_GetIndex
    (:name "wxListEvent_GetIndex")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type ffi:int)
  (:library +library-name+))

; (ffi:def-call-out wxListEvent_GetOldIndex
; 	(:name "wxListEvent_GetOldIndex")
; 	(:arguments (_obj (ffi:c-pointer NIL)))
; 	(:return-type ffi:int)
; 	(:library +library-name+))

; (ffi:def-call-out wxListEvent_GetOldItem
; 	(:name "wxListEvent_GetOldItem")
; 	(:arguments (_obj (ffi:c-pointer NIL)))
; 	(:return-type ffi:int)
; 	(:library +library-name+))

(ffi:def-call-out wxListEvent_GetColumn
    (:name "wxListEvent_GetColumn")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out wxListEvent_Cancelled
    (:name "wxListEvent_Cancelled")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out wxListEvent_GetPoint
    (:name "wxListEvent_GetPoint")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (x (ffi:c-pointer NIL))
	      (y (ffi:c-pointer NIL)))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxListEvent_GetLabel
    (:name "wxListEvent_GetLabel")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (_buf (ffi:c-pointer NIL)))
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out wxListEvent_GetText
    (:name "wxListEvent_GetText")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (_buf (ffi:c-pointer NIL)))
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out wxListEvent_GetImage
    (:name "wxListEvent_GetImage")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out wxListEvent_GetData
    (:name "wxListEvent_GetData")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out wxListEvent_GetMask
    (:name "wxListEvent_GetMask")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out wxListEvent_GetItem
    (:name "wxListEvent_GetItem")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (_ref (ffi:c-pointer NIL)))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxTreeEvent_GetItem
    (:name "wxTreeEvent_GetItem")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (_ref (ffi:c-pointer NIL)))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxTreeEvent_GetOldItem
    (:name "wxTreeEvent_GetOldItem")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (_ref (ffi:c-pointer NIL)))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxTreeEvent_GetPoint
    (:name "wxTreeEvent_GetPoint")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (x (ffi:c-pointer NIL))
	      (y (ffi:c-pointer NIL)))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxTreeEvent_GetCode
    (:name "wxTreeEvent_GetCode")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out wxTreeEvent_GetLabel
    (:name "wxTreeEvent_GetLabel")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (_buf (ffi:c-pointer NIL)))
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out wxSpinEvent_GetPosition
    (:name "wxSpinEvent_GetPosition")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out wxSpinEvent_SetPosition
    (:name "wxSpinEvent_SetPosition")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (pos ffi:int))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxTimerEvent_GetInterval
    (:name "wxTimerEvent_GetInterval")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out wxCalendarEvent_GetWeekDay
    (:name "wxCalendarEvent_GetWeekDay")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out wxCalendarEvent_GetDate
    (:name "wxCalendarEvent_GetDate")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (_dte (ffi:c-pointer NIL)))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxScrollEvent_GetOrientation
    (:name "wxScrollEvent_GetOrientation")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out wxScrollEvent_GetPosition
    (:name "wxScrollEvent_GetPosition")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out wxHelpEvent_GetPosition
    (:name "wxHelpEvent_GetPosition")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (x (ffi:c-pointer NIL))
	      (y (ffi:c-pointer NIL)))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxHelpEvent_SetPosition
    (:name "wxHelpEvent_SetPosition")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (x ffi:int)
	      (y ffi:int))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxHelpEvent_GetLink
    (:name "wxHelpEvent_GetLink")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (_ref (ffi:c-pointer NIL)))
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out wxHelpEvent_SetLink
    (:name "wxHelpEvent_SetLink")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (link (ffi:c-pointer NIL)))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxHelpEvent_GetTarget
    (:name "wxHelpEvent_GetTarget")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (_ref (ffi:c-pointer NIL)))
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out wxHelpEvent_SetTarget
    (:name "wxHelpEvent_SetTarget")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (target (ffi:c-pointer NIL)))
  (:return-type NIL)
  (:library +library-name+))


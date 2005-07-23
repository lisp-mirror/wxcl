;;;wxEvent.lisp
;;;License   : BSD-style
;;;Author(s) : Surendra Singhi (surendra@asu.edu) 
;;;Copyright (C) 2005 Surendra Singhi 
;;;See the file LICENSE for information on usage and redistribution.
;;;
;;; $Header$
;;;
;; This is an automatically generated file. 
;;Make changes as you feel are necessary (but remember if you try to regenerate this file, your changes will be lost). 

(defpackage :wxEvent
  (:use :common-lisp :ffi)
  (:export
	:wxCommandEvent_Create
	:wxCommandEvent_Delete
	:wxEvent_Skip
	:wxEvent_GetEventType
	:wxEvent_SetEventType
	:wxEvent_GetEventObject
	:wxEvent_SetEventObject
	:wxEvent_GetTimestamp
	:wxEvent_SetTimestamp
	:wxEvent_GetId
	:wxEvent_SetId
	:wxEvent_GetSkipped
	:wxEvent_IsCommandEvent
	:wxEvent_CopyObject
	:wxEvent_SetCallbackUserData
	:wxEvent_GetCallbackUserData
	:wxCommandEvent_SetClientData
	:wxCommandEvent_GetClientData
	:wxCommandEvent_SetClientObject
	:wxCommandEvent_GetClientObject
	:wxCommandEvent_GetSelection
	:wxCommandEvent_SetString
	:wxCommandEvent_GetString
	:wxCommandEvent_IsChecked
	:wxCommandEvent_IsSelection
	:wxCommandEvent_SetExtraLong
	:wxCommandEvent_GetExtraLong
	:wxCommandEvent_SetInt
	:wxCommandEvent_GetInt
	:wxCommandEvent_CopyObject
	:wxNotifyEvent_Veto
	:wxNotifyEvent_Allow
	:wxNotifyEvent_IsAllowed
	:wxNotifyEvent_CopyObject
	:wxScrollWinEvent_GetOrientation
	:wxScrollWinEvent_GetPosition
	:wxScrollWinEvent_SetOrientation
	:wxScrollWinEvent_SetPosition
	:wxMouseEvent_IsButton
	:wxMouseEvent_ButtonDown
	:wxMouseEvent_ButtonDClick
	:wxMouseEvent_ButtonUp
	:wxMouseEvent_Button
	:wxMouseEvent_ButtonIsDown
	:wxMouseEvent_ControlDown
	:wxMouseEvent_MetaDown
	:wxMouseEvent_AltDown
	:wxMouseEvent_ShiftDown
	:wxMouseEvent_LeftDown
	:wxMouseEvent_MiddleDown
	:wxMouseEvent_RightDown
	:wxMouseEvent_LeftUp
	:wxMouseEvent_MiddleUp
	:wxMouseEvent_RightUp
	:wxMouseEvent_LeftDClick
	:wxMouseEvent_MiddleDClick
	:wxMouseEvent_RightDClick
	:wxMouseEvent_LeftIsDown
	:wxMouseEvent_MiddleIsDown
	:wxMouseEvent_RightIsDown
	:wxMouseEvent_Dragging
	:wxMouseEvent_Moving
	:wxMouseEvent_Entering
	:wxMouseEvent_Leaving
	:wxMouseEvent_GetPosition
	:wxMouseEvent_GetLogicalPosition
	:wxMouseEvent_GetX
	:wxMouseEvent_GetY
	:wxMouseEvent_CopyObject
	:wxSetCursorEvent_GetX
	:wxSetCursorEvent_GetY
	:wxSetCursorEvent_SetCursor
	:wxSetCursorEvent_GetCursor
	:wxSetCursorEvent_HasCursor
	:wxKeyEvent_ControlDown
	:wxKeyEvent_MetaDown
	:wxKeyEvent_AltDown
	:wxKeyEvent_ShiftDown
	:wxKeyEvent_HasModifiers
	:wxKeyEvent_GetKeyCode
	:wxKeyEvent_SetKeyCode
	:wxKeyEvent_GetPosition
	:wxKeyEvent_GetX
	:wxKeyEvent_GetY
	:wxKeyEvent_CopyObject
	:wxSizeEvent_GetSize
	:wxSizeEvent_CopyObject
	:wxMoveEvent_GetPosition
	:wxMoveEvent_CopyObject
	:wxEraseEvent_GetDC
	:wxEraseEvent_CopyObject
	:wxActivateEvent_GetActive
	:wxActivateEvent_CopyObject
	:wxMenuEvent_GetMenuId
	:wxMenuEvent_CopyObject
	:wxCloseEvent_SetLoggingOff
	:wxCloseEvent_GetLoggingOff
	:wxCloseEvent_Veto
	:wxCloseEvent_SetCanVeto
	:wxCloseEvent_CanVeto
	:wxCloseEvent_GetVeto
	:wxCloseEvent_CopyObject
	:wxShowEvent_SetShow
	:wxShowEvent_GetShow
	:wxShowEvent_CopyObject
	:wxJoystickEvent_GetPosition
	:wxJoystickEvent_GetZPosition
	:wxJoystickEvent_GetButtonState
	:wxJoystickEvent_GetButtonChange
	:wxJoystickEvent_GetJoystick
	:wxJoystickEvent_SetJoystick
	:wxJoystickEvent_SetButtonState
	:wxJoystickEvent_SetButtonChange
	:wxJoystickEvent_SetPosition
	:wxJoystickEvent_SetZPosition
	:wxJoystickEvent_IsButton
	:wxJoystickEvent_IsMove
	:wxJoystickEvent_IsZMove
	:wxJoystickEvent_ButtonDown
	:wxJoystickEvent_ButtonUp
	:wxJoystickEvent_ButtonIsDown
	:wxJoystickEvent_CopyObject
	:wxUpdateUIEvent_GetChecked
	:wxUpdateUIEvent_GetEnabled
	:wxUpdateUIEvent_GetText
	:wxUpdateUIEvent_GetSetText
	:wxUpdateUIEvent_GetSetChecked
	:wxUpdateUIEvent_GetSetEnabled
	:wxUpdateUIEvent_Check
	:wxUpdateUIEvent_Enable
	:wxUpdateUIEvent_SetText
	:wxUpdateUIEvent_CopyObject
	:wxPaletteChangedEvent_SetChangedWindow
	:wxPaletteChangedEvent_GetChangedWindow
	:wxPaletteChangedEvent_CopyObject
	:wxQueryNewPaletteEvent_SetPaletteRealized
	:wxQueryNewPaletteEvent_GetPaletteRealized
	:wxQueryNewPaletteEvent_CopyObject
	:wxNavigationKeyEvent_GetDirection
	:wxNavigationKeyEvent_SetDirection
	:wxNavigationKeyEvent_IsWindowChange
	:wxNavigationKeyEvent_SetWindowChange
	:wxNavigationKeyEvent_ShouldPropagate
	:wxNavigationKeyEvent_SetPropagate
	:wxNavigationKeyEvent_GetCurrentFocus
	:wxNavigationKeyEvent_SetCurrentFocus
	:wxWindowCreateEvent_GetWindow
	:wxWindowDestroyEvent_GetWindow
	:wxIdleEvent_RequestMore
	:wxIdleEvent_MoreRequested
	:wxIdleEvent_CopyObject
	:wxListEvent_GetCode
	:wxListEvent_GetIndex
	:wxListEvent_GetOldIndex
	:wxListEvent_GetOldItem
	:wxListEvent_GetColumn
	:wxListEvent_Cancelled
	:wxListEvent_GetPoint
	:wxListEvent_GetLabel
	:wxListEvent_GetText
	:wxListEvent_GetImage
	:wxListEvent_GetData
	:wxListEvent_GetMask
	:wxListEvent_GetItem
	:wxTreeEvent_GetItem
	:wxTreeEvent_GetOldItem
	:wxTreeEvent_GetPoint
	:wxTreeEvent_GetCode
	:wxTreeEvent_GetLabel
	:wxSpinEvent_GetPosition
	:wxSpinEvent_SetPosition
	:wxTimerEvent_GetInterval
	:wxCalendarEvent_GetWeekDay
	:wxCalendarEvent_GetDate
	:wxScrollEvent_GetOrientation
	:wxScrollEvent_GetPosition))

(in-package :wxEvent)

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
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxEvent_SetTimestamp
	(:name "wxEvent_SetTimestamp")
	(:arguments (_obj (ffi:c-pointer NIL))
		(ts ffi:int))
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

(ffi:def-call-out wxEvent_CopyObject
	(:name "wxEvent_CopyObject")
	(:arguments (_obj (ffi:c-pointer NIL))
		(object_dest (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxEvent_SetCallbackUserData
	(:name "wxEvent_SetCallbackUserData")
	(:arguments (_obj (ffi:c-pointer NIL))
		(obj (ffi:c-pointer wxObject)))
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
	(:arguments (_obj (ffi:c-pointer NIL))
		(_buf (ffi:c-pointer NIL)))
	(:return-type ffi:int)
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
	(:return-type ffi:long)
	(:library +library-name+))

(ffi:def-call-out wxCommandEvent_CopyObject
	(:name "wxCommandEvent_CopyObject")
	(:arguments (_obj (ffi:c-pointer NIL))
		(object_dest (ffi:c-pointer NIL)))
	(:return-type NIL)
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

(ffi:def-call-out wxNotifyEvent_CopyObject
	(:name "wxNotifyEvent_CopyObject")
	(:arguments (_obj (ffi:c-pointer NIL))
		(object_dest (ffi:c-pointer NIL)))
	(:return-type NIL)
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

(ffi:def-call-out wxMouseEvent_CopyObject
	(:name "wxMouseEvent_CopyObject")
	(:arguments (_obj (ffi:c-pointer NIL))
		(object_dest (ffi:c-pointer NIL)))
	(:return-type NIL)
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

(ffi:def-call-out wxKeyEvent_CopyObject
	(:name "wxKeyEvent_CopyObject")
	(:arguments (_obj (ffi:c-pointer NIL))
		(obj (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxSizeEvent_GetSize
	(:name "wxSizeEvent_GetSize")
	(:arguments (_obj (ffi:c-pointer NIL))
		(w (ffi:c-ptr ffi:int))
		(h (ffi:c-ptr ffi:int)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxSizeEvent_CopyObject
	(:name "wxSizeEvent_CopyObject")
	(:arguments (_obj (ffi:c-pointer NIL))
		(obj (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxMoveEvent_GetPosition
	(:name "wxMoveEvent_GetPosition")
	(:arguments (_obj (ffi:c-pointer NIL))
		(x (ffi:c-ptr ffi:int))
		(y (ffi:c-ptr ffi:int)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxMoveEvent_CopyObject
	(:name "wxMoveEvent_CopyObject")
	(:arguments (_obj (ffi:c-pointer NIL))
		(obj (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxEraseEvent_GetDC
	(:name "wxEraseEvent_GetDC")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type (ffi:c-pointer NIL))
	(:library +library-name+))

(ffi:def-call-out wxEraseEvent_CopyObject
	(:name "wxEraseEvent_CopyObject")
	(:arguments (_obj (ffi:c-pointer NIL))
		(obj (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxActivateEvent_GetActive
	(:name "wxActivateEvent_GetActive")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxActivateEvent_CopyObject
	(:name "wxActivateEvent_CopyObject")
	(:arguments (_obj (ffi:c-pointer NIL))
		(obj (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxMenuEvent_GetMenuId
	(:name "wxMenuEvent_GetMenuId")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxMenuEvent_CopyObject
	(:name "wxMenuEvent_CopyObject")
	(:arguments (_obj (ffi:c-pointer NIL))
		(obj (ffi:c-pointer NIL)))
	(:return-type NIL)
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

(ffi:def-call-out wxCloseEvent_CopyObject
	(:name "wxCloseEvent_CopyObject")
	(:arguments (_obj (ffi:c-pointer NIL))
		(obj (ffi:c-pointer NIL)))
	(:return-type NIL)
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

(ffi:def-call-out wxShowEvent_CopyObject
	(:name "wxShowEvent_CopyObject")
	(:arguments (_obj (ffi:c-pointer NIL))
		(obj (ffi:c-pointer NIL)))
	(:return-type NIL)
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

(ffi:def-call-out wxJoystickEvent_CopyObject
	(:name "wxJoystickEvent_CopyObject")
	(:arguments (_obj (ffi:c-pointer NIL))
		(obj (ffi:c-pointer NIL)))
	(:return-type NIL)
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

(ffi:def-call-out wxUpdateUIEvent_CopyObject
	(:name "wxUpdateUIEvent_CopyObject")
	(:arguments (_obj (ffi:c-pointer NIL))
		(obj (ffi:c-pointer NIL)))
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

(ffi:def-call-out wxPaletteChangedEvent_CopyObject
	(:name "wxPaletteChangedEvent_CopyObject")
	(:arguments (_obj (ffi:c-pointer NIL))
		(obj (ffi:c-pointer NIL)))
	(:return-type NIL)
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

(ffi:def-call-out wxQueryNewPaletteEvent_CopyObject
	(:name "wxQueryNewPaletteEvent_CopyObject")
	(:arguments (_obj (ffi:c-pointer NIL))
		(obj (ffi:c-pointer NIL)))
	(:return-type NIL)
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

(ffi:def-call-out wxNavigationKeyEvent_SetPropagate
	(:name "wxNavigationKeyEvent_SetPropagate")
	(:arguments (_obj (ffi:c-pointer NIL))
		(bDoIt ffi:int))
	(:return-type NIL)
	(:library +library-name+))

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

(ffi:def-call-out wxIdleEvent_CopyObject
	(:name "wxIdleEvent_CopyObject")
	(:arguments (_obj (ffi:c-pointer NIL))
		(object_dest (ffi:c-pointer NIL)))
	(:return-type NIL)
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

(ffi:def-call-out wxListEvent_GetOldIndex
	(:name "wxListEvent_GetOldIndex")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxListEvent_GetOldItem
	(:name "wxListEvent_GetOldItem")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

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

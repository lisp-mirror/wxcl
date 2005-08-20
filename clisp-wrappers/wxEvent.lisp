;;;wxEvent.lisp
;;;License  : GNU General Public License (GPL)
;;;Author(s) : Surendra Singhi (surendra@asu.edu) 
;;;Copyright (C) 2005 Surendra Singhi 
;;;See the file LICENSE for information on usage and redistribution.
;;;
;;; $Header$
;;;
(defpackage :wxEvent
  (:use :common-lisp :ffi :wxCL)
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
	:wxMouseEvent_GetWheelDelta
	:wxMouseEvent_GetWheelRotation
	:wxMouseEvent_GetButton
	:wxcGetMousePosition
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
;	:wxNavigationKeyEvent_SetPropagate
	:wxNavigationKeyEvent_GetCurrentFocus
	:wxNavigationKeyEvent_SetCurrentFocus
	:wxWindowCreateEvent_GetWindow
	:wxWindowDestroyEvent_GetWindow
	:wxIdleEvent_RequestMore
	:wxIdleEvent_MoreRequested
	:wxIdleEvent_CopyObject
	:wxListEvent_GetCode
	:wxListEvent_GetIndex
;	:wxListEvent_GetOldIndex
;	:wxListEvent_GetOldItem
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
	:wxScrollEvent_GetPosition
	:wxHelpEvent_GetPosition
	:wxHelpEvent_SetPosition
	:wxHelpEvent_GetLink
	:wxHelpEvent_SetLink
	:wxHelpEvent_GetTarget
	:wxHelpEvent_SetTarget
	:expEVT_COMMAND_BUTTON_CLICKED
	:expEVT_COMMAND_CHECKBOX_CLICKED
	:expEVT_COMMAND_CHOICE_SELECTED
	:expEVT_COMMAND_LISTBOX_SELECTED
	:expEVT_COMMAND_LISTBOX_DOUBLECLICKED
	:expEVT_COMMAND_CHECKLISTBOX_TOGGLED
	:expEVT_COMMAND_TEXT_UPDATED
	:expEVT_COMMAND_TEXT_ENTER
	:expEVT_COMMAND_MENU_SELECTED
	:expEVT_COMMAND_TOOL_CLICKED
	:expEVT_COMMAND_SLIDER_UPDATED
	:expEVT_COMMAND_RADIOBOX_SELECTED
	:expEVT_COMMAND_RADIOBUTTON_SELECTED
	:expEVT_COMMAND_SCROLLBAR_UPDATED
	:expEVT_COMMAND_VLBOX_SELECTED
	:expEVT_COMMAND_COMBOBOX_SELECTED
	:expEVT_COMMAND_TOOL_RCLICKED
	:expEVT_COMMAND_TOOL_ENTER
	:expEVT_COMMAND_SPINCTRL_UPDATED
	:expEVT_SOCKET
	:expEVT_TIMER
	:expEVT_LEFT_DOWN
	:expEVT_LEFT_UP
	:expEVT_MIDDLE_DOWN
	:expEVT_MIDDLE_UP
	:expEVT_RIGHT_DOWN
	:expEVT_RIGHT_UP
	:expEVT_MOTION
	:expEVT_ENTER_WINDOW
	:expEVT_LEAVE_WINDOW
	:expEVT_LEFT_DCLICK
	:expEVT_MIDDLE_DCLICK
	:expEVT_RIGHT_DCLICK
	:expEVT_SET_FOCUS
	:expEVT_KILL_FOCUS
	:expEVT_NC_LEFT_DOWN
	:expEVT_NC_LEFT_UP
	:expEVT_NC_MIDDLE_DOWN
	:expEVT_NC_MIDDLE_UP
	:expEVT_NC_RIGHT_DOWN
	:expEVT_NC_RIGHT_UP
	:expEVT_NC_MOTION
	:expEVT_NC_ENTER_WINDOW
	:expEVT_NC_LEAVE_WINDOW
	:expEVT_NC_LEFT_DCLICK
	:expEVT_NC_MIDDLE_DCLICK
	:expEVT_NC_RIGHT_DCLICK
	:expEVT_CHAR
	:expEVT_CHAR_HOOK
	:expEVT_NAVIGATION_KEY
	:expEVT_KEY_DOWN
	:expEVT_KEY_UP
	:expEVT_SET_CURSOR
	:expEVT_SCROLL_TOP
	:expEVT_SCROLL_BOTTOM
	:expEVT_SCROLL_LINEUP
	:expEVT_SCROLL_LINEDOWN
	:expEVT_SCROLL_PAGEUP
	:expEVT_SCROLL_PAGEDOWN
	:expEVT_SCROLL_THUMBTRACK
	:expEVT_SCROLL_THUMBRELEASE
	:expEVT_SCROLLWIN_TOP
	:expEVT_SCROLLWIN_BOTTOM
	:expEVT_SCROLLWIN_LINEUP
	:expEVT_SCROLLWIN_LINEDOWN
	:expEVT_SCROLLWIN_PAGEUP
	:expEVT_SCROLLWIN_PAGEDOWN
	:expEVT_SCROLLWIN_THUMBTRACK
	:expEVT_SCROLLWIN_THUMBRELEASE
	:expEVT_SIZE
	:expEVT_MOVE
	:expEVT_CLOSE_WINDOW
	:expEVT_END_SESSION
	:expEVT_QUERY_END_SESSION
	:expEVT_ACTIVATE_APP
	:expEVT_POWER
	:expEVT_ACTIVATE
	:expEVT_CREATE
	:expEVT_DESTROY
	:expEVT_SHOW
	:expEVT_ICONIZE
	:expEVT_MAXIMIZE
	:expEVT_MOUSE_CAPTURE_CHANGED
	:expEVT_PAINT
	:expEVT_ERASE_BACKGROUND
	:expEVT_NC_PAINT
	:expEVT_PAINT_ICON
	:expEVT_MENU_CHAR
	:expEVT_MENU_INIT
	:expEVT_MENU_HIGHLIGHT
	:expEVT_POPUP_MENU_INIT
	:expEVT_CONTEXT_MENU
	:expEVT_SYS_COLOUR_CHANGED
	:expEVT_SETTING_CHANGED
	:expEVT_QUERY_NEW_PALETTE
	:expEVT_PALETTE_CHANGED
	:expEVT_JOY_BUTTON_DOWN
	:expEVT_JOY_BUTTON_UP
	:expEVT_JOY_MOVE
	:expEVT_JOY_ZMOVE
	:expEVT_DROP_FILES
	:expEVT_DRAW_ITEM
	:expEVT_MEASURE_ITEM
	:expEVT_COMPARE_ITEM
	:expEVT_INIT_DIALOG
	:expEVT_IDLE
	:expEVT_UPDATE_UI
	:expEVT_END_PROCESS
	:expEVT_DIALUP_CONNECTED
	:expEVT_DIALUP_DISCONNECTED
	:expEVT_COMMAND_LEFT_CLICK
	:expEVT_COMMAND_LEFT_DCLICK
	:expEVT_COMMAND_RIGHT_CLICK
	:expEVT_COMMAND_RIGHT_DCLICK
	:expEVT_COMMAND_SET_FOCUS
	:expEVT_COMMAND_KILL_FOCUS
	:expEVT_COMMAND_ENTER
	:expEVT_COMMAND_TREE_BEGIN_DRAG
	:expEVT_COMMAND_TREE_BEGIN_RDRAG
	:expEVT_COMMAND_TREE_BEGIN_LABEL_EDIT
	:expEVT_COMMAND_TREE_END_LABEL_EDIT
	:expEVT_COMMAND_TREE_DELETE_ITEM
	:expEVT_COMMAND_TREE_GET_INFO
	:expEVT_COMMAND_TREE_SET_INFO
	:expEVT_COMMAND_TREE_ITEM_EXPANDED
	:expEVT_COMMAND_TREE_ITEM_EXPANDING
	:expEVT_COMMAND_TREE_ITEM_COLLAPSED
	:expEVT_COMMAND_TREE_ITEM_COLLAPSING
	:expEVT_COMMAND_TREE_SEL_CHANGED
	:expEVT_COMMAND_TREE_SEL_CHANGING
	:expEVT_COMMAND_TREE_KEY_DOWN
	:expEVT_COMMAND_TREE_ITEM_ACTIVATED
	:expEVT_COMMAND_TREE_ITEM_RIGHT_CLICK
	:expEVT_COMMAND_TREE_ITEM_MIDDLE_CLICK
	:expEVT_COMMAND_TREE_END_DRAG
	:expEVT_COMMAND_LIST_BEGIN_DRAG
	:expEVT_COMMAND_LIST_BEGIN_RDRAG
	:expEVT_COMMAND_LIST_BEGIN_LABEL_EDIT
	:expEVT_COMMAND_LIST_END_LABEL_EDIT
	:expEVT_COMMAND_LIST_DELETE_ITEM
	:expEVT_COMMAND_LIST_DELETE_ALL_ITEMS
	:expEVT_COMMAND_LIST_GET_INFO
	:expEVT_COMMAND_LIST_SET_INFO
	:expEVT_COMMAND_LIST_ITEM_SELECTED
	:expEVT_COMMAND_LIST_ITEM_DESELECTED
	:expEVT_COMMAND_LIST_KEY_DOWN
	:expEVT_COMMAND_LIST_INSERT_ITEM
	:expEVT_COMMAND_LIST_COL_CLICK
	:expEVT_COMMAND_LIST_ITEM_RIGHT_CLICK
	:expEVT_COMMAND_LIST_ITEM_MIDDLE_CLICK
	:expEVT_COMMAND_LIST_ITEM_ACTIVATED
	:expEVT_COMMAND_LIST_ITEM_FOCUSED
	:expEVT_COMMAND_TAB_SEL_CHANGED
	:expEVT_COMMAND_TAB_SEL_CHANGING
	:expEVT_COMMAND_NOTEBOOK_PAGE_CHANGED
	:expEVT_COMMAND_NOTEBOOK_PAGE_CHANGING
	:expEVT_COMMAND_SPLITTER_SASH_POS_CHANGED
	:expEVT_COMMAND_SPLITTER_SASH_POS_CHANGING
	:expEVT_COMMAND_SPLITTER_DOUBLECLICKED
	:expEVT_COMMAND_SPLITTER_UNSPLIT
	:expEVT_WIZARD_PAGE_CHANGED
	:expEVT_WIZARD_PAGE_CHANGING
	:expEVT_WIZARD_CANCEL
	:expEVT_CALENDAR_SEL_CHANGED
	:expEVT_CALENDAR_DAY_CHANGED
	:expEVT_CALENDAR_MONTH_CHANGED
	:expEVT_CALENDAR_YEAR_CHANGED
	:expEVT_CALENDAR_DOUBLECLICKED
	:expEVT_CALENDAR_WEEKDAY_CLICKED
;	:expEVT_PLOT_SEL_CHANGING
;	:expEVT_PLOT_SEL_CHANGED
;	:expEVT_PLOT_CLICKED
; 	:expEVT_PLOT_DOUBLECLICKED
; 	:expEVT_PLOT_ZOOM_IN
; 	:expEVT_PLOT_ZOOM_OUT
; 	:expEVT_PLOT_VALUE_SEL_CREATING
; 	:expEVT_PLOT_VALUE_SEL_CREATED
; 	:expEVT_PLOT_VALUE_SEL_CHANGING
; 	:expEVT_PLOT_VALUE_SEL_CHANGED
; 	:expEVT_PLOT_AREA_SEL_CREATING
; 	:expEVT_PLOT_AREA_SEL_CREATED
; 	:expEVT_PLOT_AREA_SEL_CHANGING
; 	:expEVT_PLOT_AREA_SEL_CHANGED
; 	:expEVT_PLOT_BEGIN_X_LABEL_EDIT
; 	:expEVT_PLOT_END_X_LABEL_EDIT
; 	:expEVT_PLOT_BEGIN_Y_LABEL_EDIT
; 	:expEVT_PLOT_END_Y_LABEL_EDIT
; 	:expEVT_PLOT_BEGIN_TITLE_EDIT
; 	:expEVT_PLOT_END_TITLE_EDIT
; 	:expEVT_PLOT_AREA_CREATE
;	:expEVT_USER_FIRST
; 	:expEVT_DYNAMIC_SASH_SPLIT
; 	:expEVT_DYNAMIC_SASH_UNIFY
	:expEVT_HELP
	:expEVT_DETAILED_HELP
	:expEVT_GRID_CELL_LEFT_CLICK
	:expEVT_GRID_CELL_RIGHT_CLICK
	:expEVT_GRID_CELL_LEFT_DCLICK
	:expEVT_GRID_CELL_RIGHT_DCLICK
	:expEVT_GRID_LABEL_LEFT_CLICK
	:expEVT_GRID_LABEL_RIGHT_CLICK
	:expEVT_GRID_LABEL_LEFT_DCLICK
	:expEVT_GRID_LABEL_RIGHT_DCLICK
	:expEVT_GRID_ROW_SIZE
	:expEVT_GRID_COL_SIZE
	:expEVT_GRID_RANGE_SELECT
	:expEVT_GRID_CELL_CHANGE
	:expEVT_GRID_SELECT_CELL
	:expEVT_GRID_EDITOR_SHOWN
	:expEVT_GRID_EDITOR_HIDDEN
	:expEVT_GRID_EDITOR_CREATED
	:expEVT_MOUSEWHEEL))

(in-package :wxEvent)

(ffi:default-foreign-language :stdc)

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
		(obj (ffi:c-pointer NIL)))  ;wxObject
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

(ffi:def-call-out expEVT_COMMAND_BUTTON_CLICKED
	(:name "expEVT_COMMAND_BUTTON_CLICKED")
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out expEVT_COMMAND_CHECKBOX_CLICKED
	(:name "expEVT_COMMAND_CHECKBOX_CLICKED")
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out expEVT_COMMAND_CHOICE_SELECTED
	(:name "expEVT_COMMAND_CHOICE_SELECTED")
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out expEVT_COMMAND_LISTBOX_SELECTED
	(:name "expEVT_COMMAND_LISTBOX_SELECTED")
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out expEVT_COMMAND_LISTBOX_DOUBLECLICKED
	(:name "expEVT_COMMAND_LISTBOX_DOUBLECLICKED")
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out expEVT_COMMAND_CHECKLISTBOX_TOGGLED
	(:name "expEVT_COMMAND_CHECKLISTBOX_TOGGLED")
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out expEVT_COMMAND_TEXT_UPDATED
	(:name "expEVT_COMMAND_TEXT_UPDATED")
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out expEVT_COMMAND_TEXT_ENTER
	(:name "expEVT_COMMAND_TEXT_ENTER")
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out expEVT_COMMAND_MENU_SELECTED
	(:name "expEVT_COMMAND_MENU_SELECTED")
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out expEVT_COMMAND_TOOL_CLICKED
	(:name "expEVT_COMMAND_TOOL_CLICKED")
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out expEVT_COMMAND_SLIDER_UPDATED
	(:name "expEVT_COMMAND_SLIDER_UPDATED")
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out expEVT_COMMAND_RADIOBOX_SELECTED
	(:name "expEVT_COMMAND_RADIOBOX_SELECTED")
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out expEVT_COMMAND_RADIOBUTTON_SELECTED
	(:name "expEVT_COMMAND_RADIOBUTTON_SELECTED")
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out expEVT_COMMAND_SCROLLBAR_UPDATED
	(:name "expEVT_COMMAND_SCROLLBAR_UPDATED")
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out expEVT_COMMAND_VLBOX_SELECTED
	(:name "expEVT_COMMAND_VLBOX_SELECTED")
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out expEVT_COMMAND_COMBOBOX_SELECTED
	(:name "expEVT_COMMAND_COMBOBOX_SELECTED")
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out expEVT_COMMAND_TOOL_RCLICKED
	(:name "expEVT_COMMAND_TOOL_RCLICKED")
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out expEVT_COMMAND_TOOL_ENTER
	(:name "expEVT_COMMAND_TOOL_ENTER")
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out expEVT_COMMAND_SPINCTRL_UPDATED
	(:name "expEVT_COMMAND_SPINCTRL_UPDATED")
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out expEVT_SOCKET
	(:name "expEVT_SOCKET")
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out expEVT_TIMER
	(:name "expEVT_TIMER")
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out expEVT_LEFT_DOWN
	(:name "expEVT_LEFT_DOWN")
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out expEVT_LEFT_UP
	(:name "expEVT_LEFT_UP")
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out expEVT_MIDDLE_DOWN
	(:name "expEVT_MIDDLE_DOWN")
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out expEVT_MIDDLE_UP
	(:name "expEVT_MIDDLE_UP")
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out expEVT_RIGHT_DOWN
	(:name "expEVT_RIGHT_DOWN")
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out expEVT_RIGHT_UP
	(:name "expEVT_RIGHT_UP")
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out expEVT_MOTION
	(:name "expEVT_MOTION")
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out expEVT_ENTER_WINDOW
	(:name "expEVT_ENTER_WINDOW")
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out expEVT_LEAVE_WINDOW
	(:name "expEVT_LEAVE_WINDOW")
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out expEVT_LEFT_DCLICK
	(:name "expEVT_LEFT_DCLICK")
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out expEVT_MIDDLE_DCLICK
	(:name "expEVT_MIDDLE_DCLICK")
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out expEVT_RIGHT_DCLICK
	(:name "expEVT_RIGHT_DCLICK")
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out expEVT_SET_FOCUS
	(:name "expEVT_SET_FOCUS")
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out expEVT_KILL_FOCUS
	(:name "expEVT_KILL_FOCUS")
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out expEVT_NC_LEFT_DOWN
	(:name "expEVT_NC_LEFT_DOWN")
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out expEVT_NC_LEFT_UP
	(:name "expEVT_NC_LEFT_UP")
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out expEVT_NC_MIDDLE_DOWN
	(:name "expEVT_NC_MIDDLE_DOWN")
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out expEVT_NC_MIDDLE_UP
	(:name "expEVT_NC_MIDDLE_UP")
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out expEVT_NC_RIGHT_DOWN
	(:name "expEVT_NC_RIGHT_DOWN")
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out expEVT_NC_RIGHT_UP
	(:name "expEVT_NC_RIGHT_UP")
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out expEVT_NC_MOTION
	(:name "expEVT_NC_MOTION")
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out expEVT_NC_ENTER_WINDOW
	(:name "expEVT_NC_ENTER_WINDOW")
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out expEVT_NC_LEAVE_WINDOW
	(:name "expEVT_NC_LEAVE_WINDOW")
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out expEVT_NC_LEFT_DCLICK
	(:name "expEVT_NC_LEFT_DCLICK")
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out expEVT_NC_MIDDLE_DCLICK
	(:name "expEVT_NC_MIDDLE_DCLICK")
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out expEVT_NC_RIGHT_DCLICK
	(:name "expEVT_NC_RIGHT_DCLICK")
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out expEVT_CHAR
	(:name "expEVT_CHAR")
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out expEVT_CHAR_HOOK
	(:name "expEVT_CHAR_HOOK")
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out expEVT_NAVIGATION_KEY
	(:name "expEVT_NAVIGATION_KEY")
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out expEVT_KEY_DOWN
	(:name "expEVT_KEY_DOWN")
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out expEVT_KEY_UP
	(:name "expEVT_KEY_UP")
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out expEVT_SET_CURSOR
	(:name "expEVT_SET_CURSOR")
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out expEVT_SCROLL_TOP
	(:name "expEVT_SCROLL_TOP")
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out expEVT_SCROLL_BOTTOM
	(:name "expEVT_SCROLL_BOTTOM")
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out expEVT_SCROLL_LINEUP
	(:name "expEVT_SCROLL_LINEUP")
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out expEVT_SCROLL_LINEDOWN
	(:name "expEVT_SCROLL_LINEDOWN")
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out expEVT_SCROLL_PAGEUP
	(:name "expEVT_SCROLL_PAGEUP")
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out expEVT_SCROLL_PAGEDOWN
	(:name "expEVT_SCROLL_PAGEDOWN")
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out expEVT_SCROLL_THUMBTRACK
	(:name "expEVT_SCROLL_THUMBTRACK")
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out expEVT_SCROLL_THUMBRELEASE
	(:name "expEVT_SCROLL_THUMBRELEASE")
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out expEVT_SCROLLWIN_TOP
	(:name "expEVT_SCROLLWIN_TOP")
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out expEVT_SCROLLWIN_BOTTOM
	(:name "expEVT_SCROLLWIN_BOTTOM")
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out expEVT_SCROLLWIN_LINEUP
	(:name "expEVT_SCROLLWIN_LINEUP")
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out expEVT_SCROLLWIN_LINEDOWN
	(:name "expEVT_SCROLLWIN_LINEDOWN")
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out expEVT_SCROLLWIN_PAGEUP
	(:name "expEVT_SCROLLWIN_PAGEUP")
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out expEVT_SCROLLWIN_PAGEDOWN
	(:name "expEVT_SCROLLWIN_PAGEDOWN")
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out expEVT_SCROLLWIN_THUMBTRACK
	(:name "expEVT_SCROLLWIN_THUMBTRACK")
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out expEVT_SCROLLWIN_THUMBRELEASE
	(:name "expEVT_SCROLLWIN_THUMBRELEASE")
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out expEVT_SIZE
	(:name "expEVT_SIZE")
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out expEVT_MOVE
	(:name "expEVT_MOVE")
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out expEVT_CLOSE_WINDOW
	(:name "expEVT_CLOSE_WINDOW")
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out expEVT_END_SESSION
	(:name "expEVT_END_SESSION")
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out expEVT_QUERY_END_SESSION
	(:name "expEVT_QUERY_END_SESSION")
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out expEVT_ACTIVATE_APP
	(:name "expEVT_ACTIVATE_APP")
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out expEVT_POWER
	(:name "expEVT_POWER")
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out expEVT_ACTIVATE
	(:name "expEVT_ACTIVATE")
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out expEVT_CREATE
	(:name "expEVT_CREATE")
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out expEVT_DESTROY
	(:name "expEVT_DESTROY")
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out expEVT_SHOW
	(:name "expEVT_SHOW")
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out expEVT_ICONIZE
	(:name "expEVT_ICONIZE")
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out expEVT_MAXIMIZE
	(:name "expEVT_MAXIMIZE")
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out expEVT_MOUSE_CAPTURE_CHANGED
	(:name "expEVT_MOUSE_CAPTURE_CHANGED")
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out expEVT_PAINT
	(:name "expEVT_PAINT")
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out expEVT_ERASE_BACKGROUND
	(:name "expEVT_ERASE_BACKGROUND")
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out expEVT_NC_PAINT
	(:name "expEVT_NC_PAINT")
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out expEVT_PAINT_ICON
	(:name "expEVT_PAINT_ICON")
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out expEVT_MENU_CHAR
	(:name "expEVT_MENU_CHAR")
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out expEVT_MENU_INIT
	(:name "expEVT_MENU_INIT")
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out expEVT_MENU_HIGHLIGHT
	(:name "expEVT_MENU_HIGHLIGHT")
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out expEVT_POPUP_MENU_INIT
	(:name "expEVT_POPUP_MENU_INIT")
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out expEVT_CONTEXT_MENU
	(:name "expEVT_CONTEXT_MENU")
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out expEVT_SYS_COLOUR_CHANGED
	(:name "expEVT_SYS_COLOUR_CHANGED")
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out expEVT_SETTING_CHANGED
	(:name "expEVT_SETTING_CHANGED")
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out expEVT_QUERY_NEW_PALETTE
	(:name "expEVT_QUERY_NEW_PALETTE")
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out expEVT_PALETTE_CHANGED
	(:name "expEVT_PALETTE_CHANGED")
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out expEVT_JOY_BUTTON_DOWN
	(:name "expEVT_JOY_BUTTON_DOWN")
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out expEVT_JOY_BUTTON_UP
	(:name "expEVT_JOY_BUTTON_UP")
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out expEVT_JOY_MOVE
	(:name "expEVT_JOY_MOVE")
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out expEVT_JOY_ZMOVE
	(:name "expEVT_JOY_ZMOVE")
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out expEVT_DROP_FILES
	(:name "expEVT_DROP_FILES")
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out expEVT_DRAW_ITEM
	(:name "expEVT_DRAW_ITEM")
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out expEVT_MEASURE_ITEM
	(:name "expEVT_MEASURE_ITEM")
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out expEVT_COMPARE_ITEM
	(:name "expEVT_COMPARE_ITEM")
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out expEVT_INIT_DIALOG
	(:name "expEVT_INIT_DIALOG")
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out expEVT_IDLE
	(:name "expEVT_IDLE")
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out expEVT_UPDATE_UI
	(:name "expEVT_UPDATE_UI")
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out expEVT_END_PROCESS
	(:name "expEVT_END_PROCESS")
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out expEVT_DIALUP_CONNECTED
	(:name "expEVT_DIALUP_CONNECTED")
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out expEVT_DIALUP_DISCONNECTED
	(:name "expEVT_DIALUP_DISCONNECTED")
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out expEVT_COMMAND_LEFT_CLICK
	(:name "expEVT_COMMAND_LEFT_CLICK")
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out expEVT_COMMAND_LEFT_DCLICK
	(:name "expEVT_COMMAND_LEFT_DCLICK")
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out expEVT_COMMAND_RIGHT_CLICK
	(:name "expEVT_COMMAND_RIGHT_CLICK")
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out expEVT_COMMAND_RIGHT_DCLICK
	(:name "expEVT_COMMAND_RIGHT_DCLICK")
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out expEVT_COMMAND_SET_FOCUS
	(:name "expEVT_COMMAND_SET_FOCUS")
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out expEVT_COMMAND_KILL_FOCUS
	(:name "expEVT_COMMAND_KILL_FOCUS")
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out expEVT_COMMAND_ENTER
	(:name "expEVT_COMMAND_ENTER")
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out expEVT_COMMAND_TREE_BEGIN_DRAG
	(:name "expEVT_COMMAND_TREE_BEGIN_DRAG")
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out expEVT_COMMAND_TREE_BEGIN_RDRAG
	(:name "expEVT_COMMAND_TREE_BEGIN_RDRAG")
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out expEVT_COMMAND_TREE_BEGIN_LABEL_EDIT
	(:name "expEVT_COMMAND_TREE_BEGIN_LABEL_EDIT")
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out expEVT_COMMAND_TREE_END_LABEL_EDIT
	(:name "expEVT_COMMAND_TREE_END_LABEL_EDIT")
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out expEVT_COMMAND_TREE_DELETE_ITEM
	(:name "expEVT_COMMAND_TREE_DELETE_ITEM")
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out expEVT_COMMAND_TREE_GET_INFO
	(:name "expEVT_COMMAND_TREE_GET_INFO")
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out expEVT_COMMAND_TREE_SET_INFO
	(:name "expEVT_COMMAND_TREE_SET_INFO")
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out expEVT_COMMAND_TREE_ITEM_EXPANDED
	(:name "expEVT_COMMAND_TREE_ITEM_EXPANDED")
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out expEVT_COMMAND_TREE_ITEM_EXPANDING
	(:name "expEVT_COMMAND_TREE_ITEM_EXPANDING")
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out expEVT_COMMAND_TREE_ITEM_COLLAPSED
	(:name "expEVT_COMMAND_TREE_ITEM_COLLAPSED")
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out expEVT_COMMAND_TREE_ITEM_COLLAPSING
	(:name "expEVT_COMMAND_TREE_ITEM_COLLAPSING")
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out expEVT_COMMAND_TREE_SEL_CHANGED
	(:name "expEVT_COMMAND_TREE_SEL_CHANGED")
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out expEVT_COMMAND_TREE_SEL_CHANGING
	(:name "expEVT_COMMAND_TREE_SEL_CHANGING")
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out expEVT_COMMAND_TREE_KEY_DOWN
	(:name "expEVT_COMMAND_TREE_KEY_DOWN")
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out expEVT_COMMAND_TREE_ITEM_ACTIVATED
	(:name "expEVT_COMMAND_TREE_ITEM_ACTIVATED")
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out expEVT_COMMAND_TREE_ITEM_RIGHT_CLICK
	(:name "expEVT_COMMAND_TREE_ITEM_RIGHT_CLICK")
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out expEVT_COMMAND_TREE_ITEM_MIDDLE_CLICK
	(:name "expEVT_COMMAND_TREE_ITEM_MIDDLE_CLICK")
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out expEVT_COMMAND_TREE_END_DRAG
	(:name "expEVT_COMMAND_TREE_END_DRAG")
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out expEVT_COMMAND_LIST_BEGIN_DRAG
	(:name "expEVT_COMMAND_LIST_BEGIN_DRAG")
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out expEVT_COMMAND_LIST_BEGIN_RDRAG
	(:name "expEVT_COMMAND_LIST_BEGIN_RDRAG")
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out expEVT_COMMAND_LIST_BEGIN_LABEL_EDIT
	(:name "expEVT_COMMAND_LIST_BEGIN_LABEL_EDIT")
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out expEVT_COMMAND_LIST_END_LABEL_EDIT
	(:name "expEVT_COMMAND_LIST_END_LABEL_EDIT")
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out expEVT_COMMAND_LIST_DELETE_ITEM
	(:name "expEVT_COMMAND_LIST_DELETE_ITEM")
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out expEVT_COMMAND_LIST_DELETE_ALL_ITEMS
	(:name "expEVT_COMMAND_LIST_DELETE_ALL_ITEMS")
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out expEVT_COMMAND_LIST_GET_INFO
	(:name "expEVT_COMMAND_LIST_GET_INFO")
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out expEVT_COMMAND_LIST_SET_INFO
	(:name "expEVT_COMMAND_LIST_SET_INFO")
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out expEVT_COMMAND_LIST_ITEM_SELECTED
	(:name "expEVT_COMMAND_LIST_ITEM_SELECTED")
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out expEVT_COMMAND_LIST_ITEM_DESELECTED
	(:name "expEVT_COMMAND_LIST_ITEM_DESELECTED")
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out expEVT_COMMAND_LIST_KEY_DOWN
	(:name "expEVT_COMMAND_LIST_KEY_DOWN")
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out expEVT_COMMAND_LIST_INSERT_ITEM
	(:name "expEVT_COMMAND_LIST_INSERT_ITEM")
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out expEVT_COMMAND_LIST_COL_CLICK
	(:name "expEVT_COMMAND_LIST_COL_CLICK")
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out expEVT_COMMAND_LIST_ITEM_RIGHT_CLICK
	(:name "expEVT_COMMAND_LIST_ITEM_RIGHT_CLICK")
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out expEVT_COMMAND_LIST_ITEM_MIDDLE_CLICK
	(:name "expEVT_COMMAND_LIST_ITEM_MIDDLE_CLICK")
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out expEVT_COMMAND_LIST_ITEM_ACTIVATED
	(:name "expEVT_COMMAND_LIST_ITEM_ACTIVATED")
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out expEVT_COMMAND_LIST_ITEM_FOCUSED
	(:name "expEVT_COMMAND_LIST_ITEM_FOCUSED")
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out expEVT_COMMAND_TAB_SEL_CHANGED
	(:name "expEVT_COMMAND_TAB_SEL_CHANGED")
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out expEVT_COMMAND_TAB_SEL_CHANGING
	(:name "expEVT_COMMAND_TAB_SEL_CHANGING")
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out expEVT_COMMAND_NOTEBOOK_PAGE_CHANGED
	(:name "expEVT_COMMAND_NOTEBOOK_PAGE_CHANGED")
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out expEVT_COMMAND_NOTEBOOK_PAGE_CHANGING
	(:name "expEVT_COMMAND_NOTEBOOK_PAGE_CHANGING")
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out expEVT_COMMAND_SPLITTER_SASH_POS_CHANGED
	(:name "expEVT_COMMAND_SPLITTER_SASH_POS_CHANGED")
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out expEVT_COMMAND_SPLITTER_SASH_POS_CHANGING
	(:name "expEVT_COMMAND_SPLITTER_SASH_POS_CHANGING")
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out expEVT_COMMAND_SPLITTER_DOUBLECLICKED
	(:name "expEVT_COMMAND_SPLITTER_DOUBLECLICKED")
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out expEVT_COMMAND_SPLITTER_UNSPLIT
	(:name "expEVT_COMMAND_SPLITTER_UNSPLIT")
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out expEVT_WIZARD_PAGE_CHANGED
	(:name "expEVT_WIZARD_PAGE_CHANGED")
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out expEVT_WIZARD_PAGE_CHANGING
	(:name "expEVT_WIZARD_PAGE_CHANGING")
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out expEVT_WIZARD_CANCEL
	(:name "expEVT_WIZARD_CANCEL")
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out expEVT_CALENDAR_SEL_CHANGED
	(:name "expEVT_CALENDAR_SEL_CHANGED")
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out expEVT_CALENDAR_DAY_CHANGED
	(:name "expEVT_CALENDAR_DAY_CHANGED")
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out expEVT_CALENDAR_MONTH_CHANGED
	(:name "expEVT_CALENDAR_MONTH_CHANGED")
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out expEVT_CALENDAR_YEAR_CHANGED
	(:name "expEVT_CALENDAR_YEAR_CHANGED")
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out expEVT_CALENDAR_DOUBLECLICKED
	(:name "expEVT_CALENDAR_DOUBLECLICKED")
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out expEVT_CALENDAR_WEEKDAY_CLICKED
	(:name "expEVT_CALENDAR_WEEKDAY_CLICKED")
	(:return-type ffi:int)
	(:library +library-name+))

; (ffi:def-call-out expEVT_PLOT_SEL_CHANGING
; 	(:name "expEVT_PLOT_SEL_CHANGING")
; 	(:return-type ffi:int)
; 	(:library +library-name+))

; (ffi:def-call-out expEVT_PLOT_SEL_CHANGED
; 	(:name "expEVT_PLOT_SEL_CHANGED")
; 	(:return-type ffi:int)
; 	(:library +library-name+))

; (ffi:def-call-out expEVT_PLOT_CLICKED
; 	(:name "expEVT_PLOT_CLICKED")
; 	(:return-type ffi:int)
; 	(:library +library-name+))

; (ffi:def-call-out expEVT_PLOT_DOUBLECLICKED
; 	(:name "expEVT_PLOT_DOUBLECLICKED")
; 	(:return-type ffi:int)
; 	(:library +library-name+))

; (ffi:def-call-out expEVT_PLOT_ZOOM_IN
; 	(:name "expEVT_PLOT_ZOOM_IN")
; 	(:return-type ffi:int)
; 	(:library +library-name+))

; (ffi:def-call-out expEVT_PLOT_ZOOM_OUT
; 	(:name "expEVT_PLOT_ZOOM_OUT")
; 	(:return-type ffi:int)
; 	(:library +library-name+))

; (ffi:def-call-out expEVT_PLOT_VALUE_SEL_CREATING
; 	(:name "expEVT_PLOT_VALUE_SEL_CREATING")
; 	(:return-type ffi:int)
; 	(:library +library-name+))

; (ffi:def-call-out expEVT_PLOT_VALUE_SEL_CREATED
; 	(:name "expEVT_PLOT_VALUE_SEL_CREATED")
; 	(:return-type ffi:int)
; 	(:library +library-name+))

; (ffi:def-call-out expEVT_PLOT_VALUE_SEL_CHANGING
; 	(:name "expEVT_PLOT_VALUE_SEL_CHANGING")
; 	(:return-type ffi:int)
; 	(:library +library-name+))

; (ffi:def-call-out expEVT_PLOT_VALUE_SEL_CHANGED
; 	(:name "expEVT_PLOT_VALUE_SEL_CHANGED")
; 	(:return-type ffi:int)
; 	(:library +library-name+))

; (ffi:def-call-out expEVT_PLOT_AREA_SEL_CREATING
; 	(:name "expEVT_PLOT_AREA_SEL_CREATING")
; 	(:return-type ffi:int)
; 	(:library +library-name+))

; (ffi:def-call-out expEVT_PLOT_AREA_SEL_CREATED
; 	(:name "expEVT_PLOT_AREA_SEL_CREATED")
; 	(:return-type ffi:int)
; 	(:library +library-name+))

; (ffi:def-call-out expEVT_PLOT_AREA_SEL_CHANGING
; 	(:name "expEVT_PLOT_AREA_SEL_CHANGING")
; 	(:return-type ffi:int)
; 	(:library +library-name+))

; (ffi:def-call-out expEVT_PLOT_AREA_SEL_CHANGED
; 	(:name "expEVT_PLOT_AREA_SEL_CHANGED")
; 	(:return-type ffi:int)
; 	(:library +library-name+))

; (ffi:def-call-out expEVT_PLOT_BEGIN_X_LABEL_EDIT
; 	(:name "expEVT_PLOT_BEGIN_X_LABEL_EDIT")
; 	(:return-type ffi:int)
; 	(:library +library-name+))

; (ffi:def-call-out expEVT_PLOT_END_X_LABEL_EDIT
; 	(:name "expEVT_PLOT_END_X_LABEL_EDIT")
; 	(:return-type ffi:int)
; 	(:library +library-name+))

; (ffi:def-call-out expEVT_PLOT_BEGIN_Y_LABEL_EDIT
; 	(:name "expEVT_PLOT_BEGIN_Y_LABEL_EDIT")
; 	(:return-type ffi:int)
; 	(:library +library-name+))

; (ffi:def-call-out expEVT_PLOT_END_Y_LABEL_EDIT
; 	(:name "expEVT_PLOT_END_Y_LABEL_EDIT")
; 	(:return-type ffi:int)
; 	(:library +library-name+))

; (ffi:def-call-out expEVT_PLOT_BEGIN_TITLE_EDIT
; 	(:name "expEVT_PLOT_BEGIN_TITLE_EDIT")
; 	(:return-type ffi:int)
; 	(:library +library-name+))

; (ffi:def-call-out expEVT_PLOT_END_TITLE_EDIT
; 	(:name "expEVT_PLOT_END_TITLE_EDIT")
; 	(:return-type ffi:int)
; 	(:library +library-name+))

; (ffi:def-call-out expEVT_PLOT_AREA_CREATE
; 	(:name "expEVT_PLOT_AREA_CREATE")
; 	(:return-type ffi:int)
; 	(:library +library-name+))

; (ffi:def-call-out expEVT_USER_FIRST
; 	(:name "expEVT_USER_FIRST")
; 	(:return-type ffi:int)
; 	(:library +library-name+))

; (ffi:def-call-out expEVT_DYNAMIC_SASH_SPLIT
; 	(:name "expEVT_DYNAMIC_SASH_SPLIT")
; 	(:return-type ffi:int)
; 	(:library +library-name+))

; (ffi:def-call-out expEVT_DYNAMIC_SASH_UNIFY
; 	(:name "expEVT_DYNAMIC_SASH_UNIFY")
; 	(:return-type ffi:int)
; 	(:library +library-name+))

(ffi:def-call-out expEVT_HELP
	(:name "expEVT_HELP")
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out expEVT_DETAILED_HELP
	(:name "expEVT_DETAILED_HELP")
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out expEVT_GRID_CELL_LEFT_CLICK
	(:name "expEVT_GRID_CELL_LEFT_CLICK")
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out expEVT_GRID_CELL_RIGHT_CLICK
	(:name "expEVT_GRID_CELL_RIGHT_CLICK")
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out expEVT_GRID_CELL_LEFT_DCLICK
	(:name "expEVT_GRID_CELL_LEFT_DCLICK")
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out expEVT_GRID_CELL_RIGHT_DCLICK
	(:name "expEVT_GRID_CELL_RIGHT_DCLICK")
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out expEVT_GRID_LABEL_LEFT_CLICK
	(:name "expEVT_GRID_LABEL_LEFT_CLICK")
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out expEVT_GRID_LABEL_RIGHT_CLICK
	(:name "expEVT_GRID_LABEL_RIGHT_CLICK")
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out expEVT_GRID_LABEL_LEFT_DCLICK
	(:name "expEVT_GRID_LABEL_LEFT_DCLICK")
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out expEVT_GRID_LABEL_RIGHT_DCLICK
	(:name "expEVT_GRID_LABEL_RIGHT_DCLICK")
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out expEVT_GRID_ROW_SIZE
	(:name "expEVT_GRID_ROW_SIZE")
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out expEVT_GRID_COL_SIZE
	(:name "expEVT_GRID_COL_SIZE")
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out expEVT_GRID_RANGE_SELECT
	(:name "expEVT_GRID_RANGE_SELECT")
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out expEVT_GRID_CELL_CHANGE
	(:name "expEVT_GRID_CELL_CHANGE")
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out expEVT_GRID_SELECT_CELL
	(:name "expEVT_GRID_SELECT_CELL")
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out expEVT_GRID_EDITOR_SHOWN
	(:name "expEVT_GRID_EDITOR_SHOWN")
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out expEVT_GRID_EDITOR_HIDDEN
	(:name "expEVT_GRID_EDITOR_HIDDEN")
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out expEVT_GRID_EDITOR_CREATED
	(:name "expEVT_GRID_EDITOR_CREATED")
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out expEVT_MOUSEWHEEL
	(:name "expEVT_MOUSEWHEEL")
	(:return-type ffi:int)
	(:library +library-name+))

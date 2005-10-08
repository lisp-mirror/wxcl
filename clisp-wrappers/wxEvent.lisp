;;;wxEvent.lisp
;;;License  : wxWindows License 3.1
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
   :wxEVT_COMMAND_BUTTON_CLICKED
   :wxEVT_COMMAND_CHECKBOX_CLICKED
   :wxEVT_COMMAND_CHOICE_SELECTED
   :wxEVT_COMMAND_LISTBOX_SELECTED
   :wxEVT_COMMAND_LISTBOX_DOUBLECLICKED
   :wxEVT_COMMAND_CHECKLISTBOX_TOGGLED
   :wxEVT_COMMAND_TEXT_UPDATED
   :wxEVT_COMMAND_TEXT_ENTER
   :wxEVT_COMMAND_MENU_SELECTED
   :wxEVT_COMMAND_TOOL_CLICKED
   :wxEVT_COMMAND_SLIDER_UPDATED
   :wxEVT_COMMAND_RADIOBOX_SELECTED
   :wxEVT_COMMAND_RADIOBUTTON_SELECTED
   :wxEVT_COMMAND_SCROLLBAR_UPDATED
   :wxEVT_COMMAND_VLBOX_SELECTED
   :wxEVT_COMMAND_COMBOBOX_SELECTED
   :wxEVT_COMMAND_TOOL_RCLICKED
   :wxEVT_COMMAND_TOOL_ENTER
   :wxEVT_COMMAND_SPINCTRL_UPDATED
   :wxEVT_SOCKET
   :wxEVT_LEFT_DOWN
   :wxEVT_LEFT_UP
   :wxEVT_MIDDLE_DOWN
   :wxEVT_MIDDLE_UP
   :wxEVT_RIGHT_DOWN
   :wxEVT_RIGHT_UP
   :wxEVT_MOTION
   :wxEVT_ENTER_WINDOW
   :wxEVT_LEAVE_WINDOW
   :wxEVT_LEFT_DCLICK
   :wxEVT_MIDDLE_DCLICK
   :wxEVT_RIGHT_DCLICK
   :wxEVT_SET_FOCUS
   :wxEVT_KILL_FOCUS
   :wxEVT_NC_LEFT_DOWN
   :wxEVT_NC_LEFT_UP
   :wxEVT_NC_MIDDLE_DOWN
   :wxEVT_NC_MIDDLE_UP
   :wxEVT_NC_RIGHT_DOWN
   :wxEVT_NC_RIGHT_UP
   :wxEVT_NC_MOTION
   :wxEVT_NC_ENTER_WINDOW
   :wxEVT_NC_LEAVE_WINDOW
   :wxEVT_NC_LEFT_DCLICK
   :wxEVT_NC_MIDDLE_DCLICK
   :wxEVT_NC_RIGHT_DCLICK
   :wxEVT_CHAR
   :wxEVT_CHAR_HOOK
   :wxEVT_NAVIGATION_KEY
   :wxEVT_KEY_DOWN
   :wxEVT_KEY_UP
   :wxEVT_SET_CURSOR
   :wxEVT_SCROLL_TOP
   :wxEVT_SCROLL_BOTTOM
   :wxEVT_SCROLL_LINEUP
   :wxEVT_SCROLL_LINEDOWN
   :wxEVT_SCROLL_PAGEUP
   :wxEVT_SCROLL_PAGEDOWN
   :wxEVT_SCROLL_THUMBTRACK
   :wxEVT_SCROLL_THUMBRELEASE
   :wxEVT_SCROLLWIN_TOP
   :wxEVT_SCROLLWIN_BOTTOM
   :wxEVT_SCROLLWIN_LINEUP
   :wxEVT_SCROLLWIN_LINEDOWN
   :wxEVT_SCROLLWIN_PAGEUP
   :wxEVT_SCROLLWIN_PAGEDOWN
   :wxEVT_SCROLLWIN_THUMBTRACK
   :wxEVT_SCROLLWIN_THUMBRELEASE
   :wxEVT_SIZE
   :wxEVT_MOVE
   :wxEVT_CLOSE_WINDOW
   :wxEVT_END_SESSION
   :wxEVT_QUERY_END_SESSION
   :wxEVT_ACTIVATE_APP
   :wxEVT_POWER
   :wxEVT_ACTIVATE
   :wxEVT_CREATE
   :wxEVT_DESTROY
   :wxEVT_SHOW
   :wxEVT_ICONIZE
   :wxEVT_MAXIMIZE
   :wxEVT_MOUSE_CAPTURE_CHANGED
   :wxEVT_PAINT
   :wxEVT_ERASE_BACKGROUND
   :wxEVT_NC_PAINT
   :wxEVT_PAINT_ICON
   :wxEVT_MENU_HIGHLIGHT
   :wxEVT_CONTEXT_MENU
   :wxEVT_SYS_COLOUR_CHANGED
   :wxEVT_SETTING_CHANGED
   :wxEVT_QUERY_NEW_PALETTE
   :wxEVT_PALETTE_CHANGED
   :wxEVT_JOY_BUTTON_DOWN
   :wxEVT_JOY_BUTTON_UP
   :wxEVT_JOY_MOVE
   :wxEVT_JOY_ZMOVE
   :wxEVT_DROP_FILES
   :wxEVT_DRAW_ITEM
   :wxEVT_MEASURE_ITEM
   :wxEVT_COMPARE_ITEM
   :wxEVT_INIT_DIALOG
   :wxEVT_IDLE
   :wxEVT_UPDATE_UI
   :wxEVT_END_PROCESS
   :wxEVT_DIALUP_CONNECTED
   :wxEVT_DIALUP_DISCONNECTED
   :wxEVT_COMMAND_LEFT_CLICK
   :wxEVT_COMMAND_LEFT_DCLICK
   :wxEVT_COMMAND_RIGHT_CLICK
   :wxEVT_COMMAND_RIGHT_DCLICK
   :wxEVT_COMMAND_SET_FOCUS
   :wxEVT_COMMAND_KILL_FOCUS
   :wxEVT_COMMAND_ENTER
   :wxEVT_COMMAND_TREE_BEGIN_DRAG
   :wxEVT_COMMAND_TREE_BEGIN_RDRAG
   :wxEVT_COMMAND_TREE_BEGIN_LABEL_EDIT
   :wxEVT_COMMAND_TREE_END_LABEL_EDIT
   :wxEVT_COMMAND_TREE_DELETE_ITEM
   :wxEVT_COMMAND_TREE_GET_INFO
   :wxEVT_COMMAND_TREE_SET_INFO
   :wxEVT_COMMAND_TREE_ITEM_EXPANDED
   :wxEVT_COMMAND_TREE_ITEM_EXPANDING
   :wxEVT_COMMAND_TREE_ITEM_COLLAPSED
   :wxEVT_COMMAND_TREE_ITEM_COLLAPSING
   :wxEVT_COMMAND_TREE_SEL_CHANGED
   :wxEVT_COMMAND_TREE_SEL_CHANGING
   :wxEVT_COMMAND_TREE_KEY_DOWN
   :wxEVT_COMMAND_TREE_ITEM_ACTIVATED
   :wxEVT_COMMAND_TREE_ITEM_RIGHT_CLICK
   :wxEVT_COMMAND_TREE_ITEM_MIDDLE_CLICK
   :wxEVT_COMMAND_TREE_END_DRAG
   :wxEVT_COMMAND_LIST_BEGIN_DRAG
   :wxEVT_COMMAND_LIST_BEGIN_RDRAG
   :wxEVT_COMMAND_LIST_BEGIN_LABEL_EDIT
   :wxEVT_COMMAND_LIST_END_LABEL_EDIT
   :wxEVT_COMMAND_LIST_DELETE_ITEM
   :wxEVT_COMMAND_LIST_DELETE_ALL_ITEMS
   :wxEVT_COMMAND_LIST_GET_INFO
   :wxEVT_COMMAND_LIST_SET_INFO
   :wxEVT_COMMAND_LIST_ITEM_SELECTED
   :wxEVT_COMMAND_LIST_ITEM_DESELECTED
   :wxEVT_COMMAND_LIST_KEY_DOWN
   :wxEVT_COMMAND_LIST_INSERT_ITEM
   :wxEVT_COMMAND_LIST_COL_CLICK
   :wxEVT_COMMAND_LIST_ITEM_RIGHT_CLICK
   :wxEVT_COMMAND_LIST_ITEM_MIDDLE_CLICK
   :wxEVT_COMMAND_LIST_ITEM_ACTIVATED
   :wxEVT_COMMAND_LIST_ITEM_FOCUSED
   :wxEVT_COMMAND_TAB_SEL_CHANGED
   :wxEVT_COMMAND_TAB_SEL_CHANGING
   :wxEVT_COMMAND_NOTEBOOK_PAGE_CHANGED
   :wxEVT_COMMAND_NOTEBOOK_PAGE_CHANGING
   :wxEVT_COMMAND_SPLITTER_SASH_POS_CHANGED
   :wxEVT_COMMAND_SPLITTER_SASH_POS_CHANGING
   :wxEVT_COMMAND_SPLITTER_DOUBLECLICKED
   :wxEVT_COMMAND_SPLITTER_UNSPLIT
   :wxEVT_WIZARD_PAGE_CHANGED
   :wxEVT_WIZARD_PAGE_CHANGING
   :wxEVT_WIZARD_CANCEL
   :wxEVT_CALENDAR_SEL_CHANGED
   :wxEVT_CALENDAR_DAY_CHANGED
   :wxEVT_CALENDAR_MONTH_CHANGED
   :wxEVT_CALENDAR_YEAR_CHANGED
   :wxEVT_CALENDAR_DOUBLECLICKED
   :wxEVT_CALENDAR_WEEKDAY_CLICKED
;    :wxEVT_PLOT_SEL_CHANGING
;    :wxEVT_PLOT_SEL_CHANGED
;    :wxEVT_PLOT_CLICKED
;    :wxEVT_PLOT_DOUBLECLICKED
;    :wxEVT_PLOT_ZOOM_IN
;    :wxEVT_PLOT_ZOOM_OUT
;    :wxEVT_PLOT_VALUE_SEL_CREATING
;    :wxEVT_PLOT_VALUE_SEL_CREATED
;    :wxEVT_PLOT_VALUE_SEL_CHANGING
;    :wxEVT_PLOT_VALUE_SEL_CHANGED
;    :wxEVT_PLOT_AREA_SEL_CREATING
;    :wxEVT_PLOT_AREA_SEL_CREATED
;    :wxEVT_PLOT_AREA_SEL_CHANGING
;    :wxEVT_PLOT_AREA_SEL_CHANGED
;    :wxEVT_PLOT_BEGIN_X_LABEL_EDIT
;    :wxEVT_PLOT_END_X_LABEL_EDIT
;    :wxEVT_PLOT_BEGIN_Y_LABEL_EDIT
;    :wxEVT_PLOT_END_Y_LABEL_EDIT
;    :wxEVT_PLOT_BEGIN_TITLE_EDIT
;    :wxEVT_PLOT_END_TITLE_EDIT
;    :wxEVT_PLOT_AREA_CREATE
   :wxEVT_USER_FIRST
;    :wxEVT_DYNAMIC_SASH_SPLIT
;    :wxEVT_DYNAMIC_SASH_UNIFY
   :wxEVT_HELP
   :wxEVT_DETAILED_HELP
   :wxEVT_GRID_CELL_LEFT_CLICK
   :wxEVT_GRID_CELL_RIGHT_CLICK
   :wxEVT_GRID_CELL_LEFT_DCLICK
   :wxEVT_GRID_CELL_RIGHT_DCLICK
   :wxEVT_GRID_LABEL_LEFT_CLICK
   :wxEVT_GRID_LABEL_RIGHT_CLICK
   :wxEVT_GRID_LABEL_LEFT_DCLICK
   :wxEVT_GRID_LABEL_RIGHT_DCLICK
   :wxEVT_GRID_ROW_SIZE
   :wxEVT_GRID_COL_SIZE
   :wxEVT_GRID_RANGE_SELECT
   :wxEVT_GRID_CELL_CHANGE
   :wxEVT_GRID_SELECT_CELL
   :wxEVT_GRID_EDITOR_SHOWN
   :wxEVT_GRID_EDITOR_HIDDEN
   :wxEVT_GRID_EDITOR_CREATED))

(in-package :wxEvent)

(ffi:default-foreign-language :stdc)

(ffi:def-c-var wxEVT_COMMAND_BUTTON_CLICKED
    (:name "wxEVENT_COMMAND_BUTTON_CLICKED")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var wxEVT_COMMAND_CHECKBOX_CLICKED
    (:name "wxEVENT_COMMAND_CHECKBOX_CLICKED")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var wxEVT_COMMAND_CHOICE_SELECTED
    (:name "wxEVENT_COMMAND_CHOICE_SELECTED")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var wxEVT_COMMAND_LISTBOX_SELECTED
    (:name "wxEVENT_COMMAND_LISTBOX_SELECTED")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var wxEVT_COMMAND_LISTBOX_DOUBLECLICKED
    (:name "wxEVENT_COMMAND_LISTBOX_DOUBLECLICKED")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var wxEVT_COMMAND_CHECKLISTBOX_TOGGLED
    (:name "wxEVENT_COMMAND_CHECKLISTBOX_TOGGLED")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var wxEVT_COMMAND_TEXT_UPDATED
    (:name "wxEVENT_COMMAND_TEXT_UPDATED")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var wxEVT_COMMAND_TEXT_ENTER
    (:name "wxEVENT_COMMAND_TEXT_ENTER")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var wxEVT_COMMAND_MENU_SELECTED
    (:name "wxEVENT_COMMAND_MENU_SELECTED")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var wxEVT_COMMAND_TOOL_CLICKED
    (:name "wxEVENT_COMMAND_TOOL_CLICKED")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var wxEVT_COMMAND_SLIDER_UPDATED
    (:name "wxEVENT_COMMAND_SLIDER_UPDATED")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var wxEVT_COMMAND_RADIOBOX_SELECTED
    (:name "wxEVENT_COMMAND_RADIOBOX_SELECTED")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var wxEVT_COMMAND_RADIOBUTTON_SELECTED
    (:name "wxEVENT_COMMAND_RADIOBUTTON_SELECTED")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var wxEVT_COMMAND_SCROLLBAR_UPDATED
    (:name "wxEVENT_COMMAND_SCROLLBAR_UPDATED")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var wxEVT_COMMAND_VLBOX_SELECTED
    (:name "wxEVENT_COMMAND_VLBOX_SELECTED")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var wxEVT_COMMAND_COMBOBOX_SELECTED
    (:name "wxEVENT_COMMAND_COMBOBOX_SELECTED")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var wxEVT_COMMAND_TOOL_RCLICKED
    (:name "wxEVENT_COMMAND_TOOL_RCLICKED")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var wxEVT_COMMAND_TOOL_ENTER
    (:name "wxEVENT_COMMAND_TOOL_ENTER")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var wxEVT_COMMAND_SPINCTRL_UPDATED
    (:name "wxEVENT_COMMAND_SPINCTRL_UPDATED")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var wxEVT_SOCKET
    (:name "wxEVENT_SOCKET")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var wxEVT_LEFT_DOWN
    (:name "wxEVENT_LEFT_DOWN")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var wxEVT_LEFT_UP
    (:name "wxEVENT_LEFT_UP")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var wxEVT_MIDDLE_DOWN
    (:name "wxEVENT_MIDDLE_DOWN")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var wxEVT_MIDDLE_UP
    (:name "wxEVENT_MIDDLE_UP")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var wxEVT_RIGHT_DOWN
    (:name "wxEVENT_RIGHT_DOWN")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var wxEVT_RIGHT_UP
    (:name "wxEVENT_RIGHT_UP")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var wxEVT_MOTION
    (:name "wxEVENT_MOTION")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var wxEVT_ENTER_WINDOW
    (:name "wxEVENT_ENTER_WINDOW")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var wxEVT_LEAVE_WINDOW
    (:name "wxEVENT_LEAVE_WINDOW")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var wxEVT_LEFT_DCLICK
    (:name "wxEVENT_LEFT_DCLICK")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var wxEVT_MIDDLE_DCLICK
    (:name "wxEVENT_MIDDLE_DCLICK")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var wxEVT_RIGHT_DCLICK
    (:name "wxEVENT_RIGHT_DCLICK")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var wxEVT_SET_FOCUS
    (:name "wxEVENT_SET_FOCUS")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var wxEVT_KILL_FOCUS
    (:name "wxEVENT_KILL_FOCUS")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var wxEVT_NC_LEFT_DOWN
    (:name "wxEVENT_NC_LEFT_DOWN")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var wxEVT_NC_LEFT_UP
    (:name "wxEVENT_NC_LEFT_UP")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var wxEVT_NC_MIDDLE_DOWN
    (:name "wxEVENT_NC_MIDDLE_DOWN")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var wxEVT_NC_MIDDLE_UP
    (:name "wxEVENT_NC_MIDDLE_UP")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var wxEVT_NC_RIGHT_DOWN
    (:name "wxEVENT_NC_RIGHT_DOWN")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var wxEVT_NC_RIGHT_UP
    (:name "wxEVENT_NC_RIGHT_UP")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var wxEVT_NC_MOTION
    (:name "wxEVENT_NC_MOTION")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var wxEVT_NC_ENTER_WINDOW
    (:name "wxEVENT_NC_ENTER_WINDOW")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var wxEVT_NC_LEAVE_WINDOW
    (:name "wxEVENT_NC_LEAVE_WINDOW")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var wxEVT_NC_LEFT_DCLICK
    (:name "wxEVENT_NC_LEFT_DCLICK")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var wxEVT_NC_MIDDLE_DCLICK
    (:name "wxEVENT_NC_MIDDLE_DCLICK")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var wxEVT_NC_RIGHT_DCLICK
    (:name "wxEVENT_NC_RIGHT_DCLICK")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var wxEVT_CHAR
    (:name "wxEVENT_CHAR")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var wxEVT_CHAR_HOOK
    (:name "wxEVENT_CHAR_HOOK")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var wxEVT_NAVIGATION_KEY
    (:name "wxEVENT_NAVIGATION_KEY")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var wxEVT_KEY_DOWN
    (:name "wxEVENT_KEY_DOWN")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var wxEVT_KEY_UP
    (:name "wxEVENT_KEY_UP")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var wxEVT_SET_CURSOR
    (:name "wxEVENT_SET_CURSOR")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var wxEVT_SCROLL_TOP
    (:name "wxEVENT_SCROLL_TOP")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var wxEVT_SCROLL_BOTTOM
    (:name "wxEVENT_SCROLL_BOTTOM")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var wxEVT_SCROLL_LINEUP
    (:name "wxEVENT_SCROLL_LINEUP")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var wxEVT_SCROLL_LINEDOWN
    (:name "wxEVENT_SCROLL_LINEDOWN")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var wxEVT_SCROLL_PAGEUP
    (:name "wxEVENT_SCROLL_PAGEUP")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var wxEVT_SCROLL_PAGEDOWN
    (:name "wxEVENT_SCROLL_PAGEDOWN")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var wxEVT_SCROLL_THUMBTRACK
    (:name "wxEVENT_SCROLL_THUMBTRACK")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var wxEVT_SCROLL_THUMBRELEASE
    (:name "wxEVENT_SCROLL_THUMBRELEASE")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var wxEVT_SCROLLWIN_TOP
    (:name "wxEVENT_SCROLLWIN_TOP")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var wxEVT_SCROLLWIN_BOTTOM
    (:name "wxEVENT_SCROLLWIN_BOTTOM")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var wxEVT_SCROLLWIN_LINEUP
    (:name "wxEVENT_SCROLLWIN_LINEUP")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var wxEVT_SCROLLWIN_LINEDOWN
    (:name "wxEVENT_SCROLLWIN_LINEDOWN")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var wxEVT_SCROLLWIN_PAGEUP
    (:name "wxEVENT_SCROLLWIN_PAGEUP")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var wxEVT_SCROLLWIN_PAGEDOWN
    (:name "wxEVENT_SCROLLWIN_PAGEDOWN")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var wxEVT_SCROLLWIN_THUMBTRACK
    (:name "wxEVENT_SCROLLWIN_THUMBTRACK")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var wxEVT_SCROLLWIN_THUMBRELEASE
    (:name "wxEVENT_SCROLLWIN_THUMBRELEASE")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var wxEVT_SIZE
    (:name "wxEVENT_SIZE")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var wxEVT_MOVE
    (:name "wxEVENT_MOVE")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var wxEVT_CLOSE_WINDOW
    (:name "wxEVENT_CLOSE_WINDOW")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var wxEVT_END_SESSION
    (:name "wxEVENT_END_SESSION")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var wxEVT_QUERY_END_SESSION
    (:name "wxEVENT_QUERY_END_SESSION")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var wxEVT_ACTIVATE_APP
    (:name "wxEVENT_ACTIVATE_APP")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var wxEVT_POWER
    (:name "wxEVENT_POWER")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var wxEVT_ACTIVATE
    (:name "wxEVENT_ACTIVATE")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var wxEVT_CREATE
    (:name "wxEVENT_CREATE")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var wxEVT_DESTROY
    (:name "wxEVENT_DESTROY")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var wxEVT_SHOW
    (:name "wxEVENT_SHOW")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var wxEVT_ICONIZE
    (:name "wxEVENT_ICONIZE")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var wxEVT_MAXIMIZE
    (:name "wxEVENT_MAXIMIZE")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var wxEVT_MOUSE_CAPTURE_CHANGED
    (:name "wxEVENT_MOUSE_CAPTURE_CHANGED")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var wxEVT_PAINT
    (:name "wxEVENT_PAINT")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var wxEVT_ERASE_BACKGROUND
    (:name "wxEVENT_ERASE_BACKGROUND")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var wxEVT_NC_PAINT
    (:name "wxEVENT_NC_PAINT")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var wxEVT_PAINT_ICON
    (:name "wxEVENT_PAINT_ICON")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var wxEVT_MENU_HIGHLIGHT
    (:name "wxEVENT_MENU_HIGHLIGHT")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var wxEVT_CONTEXT_MENU
    (:name "wxEVENT_CONTEXT_MENU")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var wxEVT_SYS_COLOUR_CHANGED
    (:name "wxEVENT_SYS_COLOUR_CHANGED")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var wxEVT_SETTING_CHANGED
    (:name "wxEVENT_SETTING_CHANGED")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var wxEVT_QUERY_NEW_PALETTE
    (:name "wxEVENT_QUERY_NEW_PALETTE")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var wxEVT_PALETTE_CHANGED
    (:name "wxEVENT_PALETTE_CHANGED")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var wxEVT_JOY_BUTTON_DOWN
    (:name "wxEVENT_JOY_BUTTON_DOWN")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var wxEVT_JOY_BUTTON_UP
    (:name "wxEVENT_JOY_BUTTON_UP")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var wxEVT_JOY_MOVE
    (:name "wxEVENT_JOY_MOVE")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var wxEVT_JOY_ZMOVE
    (:name "wxEVENT_JOY_ZMOVE")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var wxEVT_DROP_FILES
    (:name "wxEVENT_DROP_FILES")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var wxEVT_DRAW_ITEM
    (:name "wxEVENT_DRAW_ITEM")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var wxEVT_MEASURE_ITEM
    (:name "wxEVENT_MEASURE_ITEM")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var wxEVT_COMPARE_ITEM
    (:name "wxEVENT_COMPARE_ITEM")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var wxEVT_INIT_DIALOG
    (:name "wxEVENT_INIT_DIALOG")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var wxEVT_IDLE
    (:name "wxEVENT_IDLE")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var wxEVT_UPDATE_UI
    (:name "wxEVENT_UPDATE_UI")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var wxEVT_END_PROCESS
    (:name "wxEVENT_END_PROCESS")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var wxEVT_DIALUP_CONNECTED
    (:name "wxEVENT_DIALUP_CONNECTED")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var wxEVT_DIALUP_DISCONNECTED
    (:name "wxEVENT_DIALUP_DISCONNECTED")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var wxEVT_COMMAND_LEFT_CLICK
    (:name "wxEVENT_COMMAND_LEFT_CLICK")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var wxEVT_COMMAND_LEFT_DCLICK
    (:name "wxEVENT_COMMAND_LEFT_DCLICK")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var wxEVT_COMMAND_RIGHT_CLICK
    (:name "wxEVENT_COMMAND_RIGHT_CLICK")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var wxEVT_COMMAND_RIGHT_DCLICK
    (:name "wxEVENT_COMMAND_RIGHT_DCLICK")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var wxEVT_COMMAND_SET_FOCUS
    (:name "wxEVENT_COMMAND_SET_FOCUS")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var wxEVT_COMMAND_KILL_FOCUS
    (:name "wxEVENT_COMMAND_KILL_FOCUS")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var wxEVT_COMMAND_ENTER
    (:name "wxEVENT_COMMAND_ENTER")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var wxEVT_COMMAND_TREE_BEGIN_DRAG
    (:name "wxEVENT_COMMAND_TREE_BEGIN_DRAG")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var wxEVT_COMMAND_TREE_BEGIN_RDRAG
    (:name "wxEVENT_COMMAND_TREE_BEGIN_RDRAG")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var wxEVT_COMMAND_TREE_BEGIN_LABEL_EDIT
    (:name "wxEVENT_COMMAND_TREE_BEGIN_LABEL_EDIT")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var wxEVT_COMMAND_TREE_END_LABEL_EDIT
    (:name "wxEVENT_COMMAND_TREE_END_LABEL_EDIT")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var wxEVT_COMMAND_TREE_DELETE_ITEM
    (:name "wxEVENT_COMMAND_TREE_DELETE_ITEM")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var wxEVT_COMMAND_TREE_GET_INFO
    (:name "wxEVENT_COMMAND_TREE_GET_INFO")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var wxEVT_COMMAND_TREE_SET_INFO
    (:name "wxEVENT_COMMAND_TREE_SET_INFO")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var wxEVT_COMMAND_TREE_ITEM_EXPANDED
    (:name "wxEVENT_COMMAND_TREE_ITEM_EXPANDED")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var wxEVT_COMMAND_TREE_ITEM_EXPANDING
    (:name "wxEVENT_COMMAND_TREE_ITEM_EXPANDING")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var wxEVT_COMMAND_TREE_ITEM_COLLAPSED
    (:name "wxEVENT_COMMAND_TREE_ITEM_COLLAPSED")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var wxEVT_COMMAND_TREE_ITEM_COLLAPSING
    (:name "wxEVENT_COMMAND_TREE_ITEM_COLLAPSING")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var wxEVT_COMMAND_TREE_SEL_CHANGED
    (:name "wxEVENT_COMMAND_TREE_SEL_CHANGED")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var wxEVT_COMMAND_TREE_SEL_CHANGING
    (:name "wxEVENT_COMMAND_TREE_SEL_CHANGING")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var wxEVT_COMMAND_TREE_KEY_DOWN
    (:name "wxEVENT_COMMAND_TREE_KEY_DOWN")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var wxEVT_COMMAND_TREE_ITEM_ACTIVATED
    (:name "wxEVENT_COMMAND_TREE_ITEM_ACTIVATED")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var wxEVT_COMMAND_TREE_ITEM_RIGHT_CLICK
    (:name "wxEVENT_COMMAND_TREE_ITEM_RIGHT_CLICK")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var wxEVT_COMMAND_TREE_ITEM_MIDDLE_CLICK
    (:name "wxEVENT_COMMAND_TREE_ITEM_MIDDLE_CLICK")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var wxEVT_COMMAND_TREE_END_DRAG
    (:name "wxEVENT_COMMAND_TREE_END_DRAG")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var wxEVT_COMMAND_LIST_BEGIN_DRAG
    (:name "wxEVENT_COMMAND_LIST_BEGIN_DRAG")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var wxEVT_COMMAND_LIST_BEGIN_RDRAG
    (:name "wxEVENT_COMMAND_LIST_BEGIN_RDRAG")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var wxEVT_COMMAND_LIST_BEGIN_LABEL_EDIT
    (:name "wxEVENT_COMMAND_LIST_BEGIN_LABEL_EDIT")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var wxEVT_COMMAND_LIST_END_LABEL_EDIT
    (:name "wxEVENT_COMMAND_LIST_END_LABEL_EDIT")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var wxEVT_COMMAND_LIST_DELETE_ITEM
    (:name "wxEVENT_COMMAND_LIST_DELETE_ITEM")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var wxEVT_COMMAND_LIST_DELETE_ALL_ITEMS
    (:name "wxEVENT_COMMAND_LIST_DELETE_ALL_ITEMS")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var wxEVT_COMMAND_LIST_GET_INFO
    (:name "wxEVENT_COMMAND_LIST_GET_INFO")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var wxEVT_COMMAND_LIST_SET_INFO
    (:name "wxEVENT_COMMAND_LIST_SET_INFO")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var wxEVT_COMMAND_LIST_ITEM_SELECTED
    (:name "wxEVENT_COMMAND_LIST_ITEM_SELECTED")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var wxEVT_COMMAND_LIST_ITEM_DESELECTED
    (:name "wxEVENT_COMMAND_LIST_ITEM_DESELECTED")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var wxEVT_COMMAND_LIST_KEY_DOWN
    (:name "wxEVENT_COMMAND_LIST_KEY_DOWN")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var wxEVT_COMMAND_LIST_INSERT_ITEM
    (:name "wxEVENT_COMMAND_LIST_INSERT_ITEM")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var wxEVT_COMMAND_LIST_COL_CLICK
    (:name "wxEVENT_COMMAND_LIST_COL_CLICK")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var wxEVT_COMMAND_LIST_ITEM_RIGHT_CLICK
    (:name "wxEVENT_COMMAND_LIST_ITEM_RIGHT_CLICK")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var wxEVT_COMMAND_LIST_ITEM_MIDDLE_CLICK
    (:name "wxEVENT_COMMAND_LIST_ITEM_MIDDLE_CLICK")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var wxEVT_COMMAND_LIST_ITEM_ACTIVATED
    (:name "wxEVENT_COMMAND_LIST_ITEM_ACTIVATED")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var wxEVT_COMMAND_LIST_ITEM_FOCUSED
    (:name "wxEVENT_COMMAND_LIST_ITEM_FOCUSED")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var wxEVT_COMMAND_TAB_SEL_CHANGED
    (:name "wxEVENT_COMMAND_TAB_SEL_CHANGED")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var wxEVT_COMMAND_TAB_SEL_CHANGING
    (:name "wxEVENT_COMMAND_TAB_SEL_CHANGING")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var wxEVT_COMMAND_NOTEBOOK_PAGE_CHANGED
    (:name "wxEVENT_COMMAND_NOTEBOOK_PAGE_CHANGED")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var wxEVT_COMMAND_NOTEBOOK_PAGE_CHANGING
    (:name "wxEVENT_COMMAND_NOTEBOOK_PAGE_CHANGING")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var wxEVT_COMMAND_SPLITTER_SASH_POS_CHANGED
    (:name "wxEVENT_COMMAND_SPLITTER_SASH_POS_CHANGED")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var wxEVT_COMMAND_SPLITTER_SASH_POS_CHANGING
    (:name "wxEVENT_COMMAND_SPLITTER_SASH_POS_CHANGING")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var wxEVT_COMMAND_SPLITTER_DOUBLECLICKED
    (:name "wxEVENT_COMMAND_SPLITTER_DOUBLECLICKED")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var wxEVT_COMMAND_SPLITTER_UNSPLIT
    (:name "wxEVENT_COMMAND_SPLITTER_UNSPLIT")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var wxEVT_WIZARD_PAGE_CHANGED
    (:name "wxEVENT_WIZARD_PAGE_CHANGED")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var wxEVT_WIZARD_PAGE_CHANGING
    (:name "wxEVENT_WIZARD_PAGE_CHANGING")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var wxEVT_WIZARD_CANCEL
    (:name "wxEVENT_WIZARD_CANCEL")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var wxEVT_CALENDAR_SEL_CHANGED
    (:name "wxEVENT_CALENDAR_SEL_CHANGED")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var wxEVT_CALENDAR_DAY_CHANGED
    (:name "wxEVENT_CALENDAR_DAY_CHANGED")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var wxEVT_CALENDAR_MONTH_CHANGED
    (:name "wxEVENT_CALENDAR_MONTH_CHANGED")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var wxEVT_CALENDAR_YEAR_CHANGED
    (:name "wxEVENT_CALENDAR_YEAR_CHANGED")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var wxEVT_CALENDAR_DOUBLECLICKED
    (:name "wxEVENT_CALENDAR_DOUBLECLICKED")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var wxEVT_CALENDAR_WEEKDAY_CLICKED
    (:name "wxEVENT_CALENDAR_WEEKDAY_CLICKED")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

; (ffi:def-c-var wxEVT_PLOT_SEL_CHANGING
;     (:name "wxEVENT_PLOT_SEL_CHANGING")
;   (:type (ffi:c-ptr ffi:int))
;   (:read-only t)
;   (:library +library-name+))

; (ffi:def-c-var wxEVT_PLOT_SEL_CHANGED
;     (:name "wxEVENT_PLOT_SEL_CHANGED")
;   (:type (ffi:c-ptr ffi:int))
;   (:read-only t)
;   (:library +library-name+))

; (ffi:def-c-var wxEVT_PLOT_CLICKED
;     (:name "wxEVENT_PLOT_CLICKED")
;   (:type (ffi:c-ptr ffi:int))
;   (:read-only t)
;   (:library +library-name+))

; (ffi:def-c-var wxEVT_PLOT_DOUBLECLICKED
;     (:name "wxEVENT_PLOT_DOUBLECLICKED")
;   (:type (ffi:c-ptr ffi:int))
;   (:read-only t)
;   (:library +library-name+))

; (ffi:def-c-var wxEVT_PLOT_ZOOM_IN
;     (:name "wxEVENT_PLOT_ZOOM_IN")
;   (:type (ffi:c-ptr ffi:int))
;   (:read-only t)
;   (:library +library-name+))

; (ffi:def-c-var wxEVT_PLOT_ZOOM_OUT
;     (:name "wxEVENT_PLOT_ZOOM_OUT")
;   (:type (ffi:c-ptr ffi:int))
;   (:read-only t)
;   (:library +library-name+))

; (ffi:def-c-var wxEVT_PLOT_VALUE_SEL_CREATING
;     (:name "wxEVENT_PLOT_VALUE_SEL_CREATING")
;   (:type (ffi:c-ptr ffi:int))
;   (:read-only t)
;   (:library +library-name+))

; (ffi:def-c-var wxEVT_PLOT_VALUE_SEL_CREATED
;     (:name "wxEVENT_PLOT_VALUE_SEL_CREATED")
;   (:type (ffi:c-ptr ffi:int))
;   (:read-only t)
;   (:library +library-name+))

; (ffi:def-c-var wxEVT_PLOT_VALUE_SEL_CHANGING
;     (:name "wxEVENT_PLOT_VALUE_SEL_CHANGING")
;   (:type (ffi:c-ptr ffi:int))
;   (:read-only t)
;   (:library +library-name+))

; (ffi:def-c-var wxEVT_PLOT_VALUE_SEL_CHANGED
;     (:name "wxEVENT_PLOT_VALUE_SEL_CHANGED")
;   (:type (ffi:c-ptr ffi:int))
;   (:read-only t)
;   (:library +library-name+))

; (ffi:def-c-var wxEVT_PLOT_AREA_SEL_CREATING
;     (:name "wxEVENT_PLOT_AREA_SEL_CREATING")
;   (:type (ffi:c-ptr ffi:int))
;   (:read-only t)
;   (:library +library-name+))

; (ffi:def-c-var wxEVT_PLOT_AREA_SEL_CREATED
;     (:name "wxEVENT_PLOT_AREA_SEL_CREATED")
;   (:type (ffi:c-ptr ffi:int))
;   (:read-only t)
;   (:library +library-name+))

; (ffi:def-c-var wxEVT_PLOT_AREA_SEL_CHANGING
;     (:name "wxEVENT_PLOT_AREA_SEL_CHANGING")
;   (:type (ffi:c-ptr ffi:int))
;   (:read-only t)
;   (:library +library-name+))

; (ffi:def-c-var wxEVT_PLOT_AREA_SEL_CHANGED
;     (:name "wxEVENT_PLOT_AREA_SEL_CHANGED")
;   (:type (ffi:c-ptr ffi:int))
;   (:read-only t)
;   (:library +library-name+))

; (ffi:def-c-var wxEVT_PLOT_BEGIN_X_LABEL_EDIT
;     (:name "wxEVENT_PLOT_BEGIN_X_LABEL_EDIT")
;   (:type (ffi:c-ptr ffi:int))
;   (:read-only t)
;   (:library +library-name+))

; (ffi:def-c-var wxEVT_PLOT_END_X_LABEL_EDIT
;     (:name "wxEVENT_PLOT_END_X_LABEL_EDIT")
;   (:type (ffi:c-ptr ffi:int))
;   (:read-only t)
;   (:library +library-name+))

; (ffi:def-c-var wxEVT_PLOT_BEGIN_Y_LABEL_EDIT
;     (:name "wxEVENT_PLOT_BEGIN_Y_LABEL_EDIT")
;   (:type (ffi:c-ptr ffi:int))
;   (:read-only t)
;   (:library +library-name+))

; (ffi:def-c-var wxEVT_PLOT_END_Y_LABEL_EDIT
;     (:name "wxEVENT_PLOT_END_Y_LABEL_EDIT")
;   (:type (ffi:c-ptr ffi:int))
;   (:read-only t)
;   (:library +library-name+))

; (ffi:def-c-var wxEVT_PLOT_BEGIN_TITLE_EDIT
;     (:name "wxEVENT_PLOT_BEGIN_TITLE_EDIT")
;   (:type (ffi:c-ptr ffi:int))
;   (:read-only t)
;   (:library +library-name+))

; (ffi:def-c-var wxEVT_PLOT_END_TITLE_EDIT
;     (:name "wxEVENT_PLOT_END_TITLE_EDIT")
;   (:type (ffi:c-ptr ffi:int))
;   (:read-only t)
;   (:library +library-name+))

; (ffi:def-c-var wxEVT_PLOT_AREA_CREATE
;     (:name "wxEVENT_PLOT_AREA_CREATE")
;   (:type (ffi:c-ptr ffi:int))
;   (:read-only t)
;   (:library +library-name+))

(ffi:def-c-var wxEVT_USER_FIRST
    (:name "wxEVENT_USER_FIRST")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

; (ffi:def-c-var wxEVT_DYNAMIC_SASH_SPLIT
;     (:name "wxEVENT_DYNAMIC_SASH_SPLIT")
;   (:type (ffi:c-ptr ffi:int))
;   (:read-only t)
;   (:library +library-name+))

; (ffi:def-c-var wxEVT_DYNAMIC_SASH_UNIFY
;     (:name "wxEVENT_DYNAMIC_SASH_UNIFY")
;   (:type (ffi:c-ptr ffi:int))
;   (:read-only t)
;   (:library +library-name+))

(ffi:def-c-var wxEVT_HELP
    (:name "wxEVENT_HELP")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var wxEVT_DETAILED_HELP
    (:name "wxEVENT_DETAILED_HELP")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var wxEVT_GRID_CELL_LEFT_CLICK
    (:name "wxEVENT_GRID_CELL_LEFT_CLICK")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var wxEVT_GRID_CELL_RIGHT_CLICK
    (:name "wxEVENT_GRID_CELL_RIGHT_CLICK")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var wxEVT_GRID_CELL_LEFT_DCLICK
    (:name "wxEVENT_GRID_CELL_LEFT_DCLICK")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var wxEVT_GRID_CELL_RIGHT_DCLICK
    (:name "wxEVENT_GRID_CELL_RIGHT_DCLICK")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var wxEVT_GRID_LABEL_LEFT_CLICK
    (:name "wxEVENT_GRID_LABEL_LEFT_CLICK")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var wxEVT_GRID_LABEL_RIGHT_CLICK
    (:name "wxEVENT_GRID_LABEL_RIGHT_CLICK")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var wxEVT_GRID_LABEL_LEFT_DCLICK
    (:name "wxEVENT_GRID_LABEL_LEFT_DCLICK")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var wxEVT_GRID_LABEL_RIGHT_DCLICK
    (:name "wxEVENT_GRID_LABEL_RIGHT_DCLICK")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var wxEVT_GRID_ROW_SIZE
    (:name "wxEVENT_GRID_ROW_SIZE")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var wxEVT_GRID_COL_SIZE
    (:name "wxEVENT_GRID_COL_SIZE")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var wxEVT_GRID_RANGE_SELECT
    (:name "wxEVENT_GRID_RANGE_SELECT")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var wxEVT_GRID_CELL_CHANGE
    (:name "wxEVENT_GRID_CELL_CHANGE")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var wxEVT_GRID_SELECT_CELL
    (:name "wxEVENT_GRID_SELECT_CELL")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var wxEVT_GRID_EDITOR_SHOWN
    (:name "wxEVENT_GRID_EDITOR_SHOWN")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var wxEVT_GRID_EDITOR_HIDDEN
    (:name "wxEVENT_GRID_EDITOR_HIDDEN")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var wxEVT_GRID_EDITOR_CREATED
    (:name "wxEVENT_GRID_EDITOR_CREATED")
  (:type (ffi:c-ptr ffi:int))
  (:read-only t)
  (:library +library-name+))



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


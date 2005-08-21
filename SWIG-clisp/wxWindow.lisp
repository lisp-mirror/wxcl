;;;wxWindow.lisp
;;;License  : wxWindows License 3.1
;;;Author(s) : Surendra Singhi (surendra@asu.edu) 
;;;Copyright (C) 2005 Surendra Singhi 
;;;See the file LICENSE for information on usage and redistribution.
;;;
;;; $Header$
;;;
;; This is an automatically generated file. 
;;Make changes as you feel are necessary (but remember if you try to regenerate this file, your changes will be lost). 

(defpackage :wxWindow
  (:use :common-lisp :ffi)
  (:export
	:wxWindow_Create
	:wxWindow_Close
	:wxWindow_Destroy
	:wxWindow_Clear
	:wxWindow_Fit
	:wxWindow_DestroyChildren
	:wxWindow_IsBeingDeleted
	:wxWindow_SetLabel
	:wxWindow_GetLabel
	:wxWindow_GetLabelEmpty
	:wxWindow_SetName
	:wxWindow_GetName
	:wxWindow_SetId
	:wxWindow_GetId
	:wxWindow_SetSize
	:wxWindow_Move
	:wxWindow_Raise
	:wxWindow_Lower
	:wxWindow_SetClientSize
	:wxWindow_GetPosition
	:wxWindow_GetSize
	:wxWindow_GetRect
	:wxWindow_GetClientSize
	:wxWindow_GetBestSize
	:wxWindow_Center
	:wxWindow_CenterOnParent
	:wxWindow_SetSizeHints
	:wxWindow_GetMinWidth
	:wxWindow_GetMinHeight
	:wxWindow_GetMaxWidth
	:wxWindow_GetMaxHeight
	:wxWindow_Show
	:wxWindow_Hide
	:wxWindow_Enable
	:wxWindow_Disable
	:wxWindow_IsShown
	:wxWindow_IsEnabled
	:wxWindow_SetWindowStyleFlag
	:wxWindow_GetWindowStyleFlag
	:wxWindow_HasFlag
	:wxWindow_SetExtraStyle
	:wxWindow_MakeModal
	:wxWindow_SetFocus
	:wxWindow_FindFocus
	:wxWindow_GetChildren
	:wxWindow_GetParent
	:wxWindow_IsTopLevel
	:wxWindow_FindWindow
	:wxWindow_AddChild
	:wxWindow_RemoveChild
	:wxWindow_GetEventHandler
	:wxWindow_PushEventHandler
	:wxWindow_PopEventHandler
	:wxWindow_SetValidator
	:wxWindow_GetValidator
	:wxWindow_SetClientData
	:wxWindow_GetClientData
	:wxWindow_Validate
	:wxWindow_TransferDataToWindow
	:wxWindow_TransferDataFromWindow
	:wxWindow_InitDialog
	:wxWindow_SetAcceleratorTable
	:wxWindow_ConvertPixelsToDialog
	:wxWindow_ConvertDialogToPixels
	:wxWindow_WarpPointer
	:wxWindow_CaptureMouse
	:wxWindow_ReleaseMouse
	:wxWindow_Refresh
	:wxWindow_RefreshRect
	:wxWindow_PrepareDC
	:wxWindow_GetUpdateRegion
	:wxWindow_IsExposed
	:wxWindow_SetBackgroundColour
	:wxWindow_SetForegroundColour
	:wxWindow_GetBackgroundColour
	:wxWindow_GetForegroundColour
	:wxWindow_SetCursor
	:wxWindow_GetCursor
	:wxWindow_SetFont
	:wxWindow_GetFont
	:wxWindow_SetCaret
	:wxWindow_GetCaret
	:wxWindow_GetCharHeight
	:wxWindow_GetCharWidth
	:wxWindow_GetTextExtent
	:wxWindow_ScreenToClient
	:wxWindow_UpdateWindowUI
	:wxWindow_PopupMenu
	:wxWindow_SetScrollPos
	:wxWindow_GetScrollPos
	:wxWindow_GetScrollThumb
	:wxWindow_GetScrollRange
	:wxWindow_ScrollWindow
	:wxWindow_ScrollWindowRect
	:wxWindow_SetToolTip
	:wxWindow_GetToolTip
	:wxWindow_SetDropTarget
	:wxWindow_GetDropTarget
	:wxWindow_SetConstraints
	:wxWindow_GetConstraints
	:wxWindow_SetAutoLayout
	:wxWindow_GetAutoLayout
	:wxWindow_Layout
	:wxWindow_UnsetConstraints
	:wxWindow_GetConstraintsInvolvedIn
	:wxWindow_AddConstraintReference
	:wxWindow_RemoveConstraintReference
	:wxWindow_DeleteRelatedConstraints
	:wxWindow_ResetConstraints
	:wxWindow_SetConstraintSizes
	:wxWindow_LayoutPhase1
	:wxWindow_LayoutPhase2
	:wxWindow_DoPhase
	:wxWindow_SetSizeConstraint
	:wxWindow_MoveConstraint
	:wxWindow_GetSizeConstraint
	:wxWindow_GetClientSizeConstraint
	:wxWindow_GetPositionConstraint
	:wxWindow_SetSizer
	:wxWindow_GetSizer
	:wxWindow_GetHandle
	:wxWindow_SetScrollbar
	:wxWindow_Reparent
	:wxWindow_GetAdjustedBestSize
	:wxWindow_Freeze
	:wxWindow_Thaw))

(in-package :wxWindow)

(ffi:def-call-out wxWindow_Create
	(:name "wxWindow_Create")
	(:arguments (_prt (ffi:c-pointer NIL))
		(_id ffi:int)
		(_x ffi:int)
		(_y ffi:int)
		(_w ffi:int)
		(_h ffi:int)
		(_stl ffi:int))
	(:return-type (ffi:c-pointer NIL))
	(:library +library-name+))

(ffi:def-call-out wxWindow_Close
	(:name "wxWindow_Close")
	(:arguments (_obj (ffi:c-pointer NIL))
		(_force ffi:int))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxWindow_Destroy
	(:name "wxWindow_Destroy")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxWindow_Clear
	(:name "wxWindow_Clear")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxWindow_Fit
	(:name "wxWindow_Fit")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxWindow_DestroyChildren
	(:name "wxWindow_DestroyChildren")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxWindow_IsBeingDeleted
	(:name "wxWindow_IsBeingDeleted")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxWindow_SetLabel
	(:name "wxWindow_SetLabel")
	(:arguments (_obj (ffi:c-pointer NIL))
		(_title ffi:c-string))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxWindow_GetLabel
	(:name "wxWindow_GetLabel")
	(:arguments (_obj (ffi:c-pointer NIL))
		(_buf (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxWindow_GetLabelEmpty
	(:name "wxWindow_GetLabelEmpty")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxWindow_SetName
	(:name "wxWindow_SetName")
	(:arguments (_obj (ffi:c-pointer NIL))
		(_name ffi:c-string))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxWindow_GetName
	(:name "wxWindow_GetName")
	(:arguments (_obj (ffi:c-pointer NIL))
		(_buf (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxWindow_SetId
	(:name "wxWindow_SetId")
	(:arguments (_obj (ffi:c-pointer NIL))
		(_id ffi:int))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxWindow_GetId
	(:name "wxWindow_GetId")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxWindow_SetSize
	(:name "wxWindow_SetSize")
	(:arguments (_obj (ffi:c-pointer NIL))
		(x ffi:int)
		(y ffi:int)
		(width ffi:int)
		(height ffi:int)
		(sizeFlags ffi:int))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxWindow_Move
	(:name "wxWindow_Move")
	(:arguments (_obj (ffi:c-pointer NIL))
		(x ffi:int)
		(y ffi:int))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxWindow_Raise
	(:name "wxWindow_Raise")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxWindow_Lower
	(:name "wxWindow_Lower")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxWindow_SetClientSize
	(:name "wxWindow_SetClientSize")
	(:arguments (_obj (ffi:c-pointer NIL))
		(width ffi:int)
		(height ffi:int))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxWindow_GetPosition
	(:name "wxWindow_GetPosition")
	(:arguments (_obj (ffi:c-pointer NIL))
		(_x (ffi:c-pointer NIL))
		(_y (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxWindow_GetSize
	(:name "wxWindow_GetSize")
	(:arguments (_obj (ffi:c-pointer NIL))
		(_w (ffi:c-pointer NIL))
		(_h (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxWindow_GetRect
	(:name "wxWindow_GetRect")
	(:arguments (_obj (ffi:c-pointer NIL))
		(x (ffi:c-ptr ffi:int))
		(y (ffi:c-ptr ffi:int))
		(w (ffi:c-ptr ffi:int))
		(h (ffi:c-ptr ffi:int)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxWindow_GetClientSize
	(:name "wxWindow_GetClientSize")
	(:arguments (_obj (ffi:c-pointer NIL))
		(_w (ffi:c-pointer NIL))
		(_h (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxWindow_GetBestSize
	(:name "wxWindow_GetBestSize")
	(:arguments (_obj (ffi:c-pointer NIL))
		(_w (ffi:c-pointer NIL))
		(_h (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxWindow_Center
	(:name "wxWindow_Center")
	(:arguments (_obj (ffi:c-pointer NIL))
		(direction ffi:int))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxWindow_CenterOnParent
	(:name "wxWindow_CenterOnParent")
	(:arguments (_obj (ffi:c-pointer NIL))
		(dir ffi:int))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxWindow_SetSizeHints
	(:name "wxWindow_SetSizeHints")
	(:arguments (_obj (ffi:c-pointer NIL))
		(minW ffi:int)
		(minH ffi:int)
		(maxW ffi:int)
		(maxH ffi:int)
		(incW ffi:int)
		(incH ffi:int))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxWindow_GetMinWidth
	(:name "wxWindow_GetMinWidth")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxWindow_GetMinHeight
	(:name "wxWindow_GetMinHeight")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxWindow_GetMaxWidth
	(:name "wxWindow_GetMaxWidth")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxWindow_GetMaxHeight
	(:name "wxWindow_GetMaxHeight")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxWindow_Show
	(:name "wxWindow_Show")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxWindow_Hide
	(:name "wxWindow_Hide")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxWindow_Enable
	(:name "wxWindow_Enable")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxWindow_Disable
	(:name "wxWindow_Disable")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxWindow_IsShown
	(:name "wxWindow_IsShown")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxWindow_IsEnabled
	(:name "wxWindow_IsEnabled")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxWindow_SetWindowStyleFlag
	(:name "wxWindow_SetWindowStyleFlag")
	(:arguments (_obj (ffi:c-pointer NIL))
		(style ffi:long))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxWindow_GetWindowStyleFlag
	(:name "wxWindow_GetWindowStyleFlag")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxWindow_HasFlag
	(:name "wxWindow_HasFlag")
	(:arguments (_obj (ffi:c-pointer NIL))
		(flag ffi:int))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxWindow_SetExtraStyle
	(:name "wxWindow_SetExtraStyle")
	(:arguments (_obj (ffi:c-pointer NIL))
		(exStyle ffi:long))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxWindow_MakeModal
	(:name "wxWindow_MakeModal")
	(:arguments (_obj (ffi:c-pointer NIL))
		(modal ffi:int))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxWindow_SetFocus
	(:name "wxWindow_SetFocus")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxWindow_FindFocus
	(:name "wxWindow_FindFocus")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type (ffi:c-pointer NIL))
	(:library +library-name+))

(ffi:def-call-out wxWindow_GetChildren
	(:name "wxWindow_GetChildren")
	(:arguments (_obj (ffi:c-pointer NIL))
		(_res (ffi:c-pointer NIL))
		(_cnt ffi:int))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxWindow_GetParent
	(:name "wxWindow_GetParent")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type (ffi:c-pointer NIL))
	(:library +library-name+))

(ffi:def-call-out wxWindow_IsTopLevel
	(:name "wxWindow_IsTopLevel")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxWindow_FindWindow
	(:name "wxWindow_FindWindow")
	(:arguments (_obj (ffi:c-pointer NIL))
		(name ffi:c-string))
	(:return-type (ffi:c-pointer NIL))
	(:library +library-name+))

(ffi:def-call-out wxWindow_AddChild
	(:name "wxWindow_AddChild")
	(:arguments (_obj (ffi:c-pointer NIL))
		(child (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxWindow_RemoveChild
	(:name "wxWindow_RemoveChild")
	(:arguments (_obj (ffi:c-pointer NIL))
		(child (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxWindow_GetEventHandler
	(:name "wxWindow_GetEventHandler")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type (ffi:c-pointer NIL))
	(:library +library-name+))

(ffi:def-call-out wxWindow_PushEventHandler
	(:name "wxWindow_PushEventHandler")
	(:arguments (_obj (ffi:c-pointer NIL))
		(handler (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxWindow_PopEventHandler
	(:name "wxWindow_PopEventHandler")
	(:arguments (_obj (ffi:c-pointer NIL))
		(deleteHandler ffi:int))
	(:return-type (ffi:c-pointer NIL))
	(:library +library-name+))

(ffi:def-call-out wxWindow_SetValidator
	(:name "wxWindow_SetValidator")
	(:arguments (_obj (ffi:c-pointer NIL))
		(validator (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxWindow_GetValidator
	(:name "wxWindow_GetValidator")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type (ffi:c-pointer NIL))
	(:library +library-name+))

(ffi:def-call-out wxWindow_SetClientData
	(:name "wxWindow_SetClientData")
	(:arguments (_obj (ffi:c-pointer NIL))
		(data (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxWindow_GetClientData
	(:name "wxWindow_GetClientData")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type (ffi:c-pointer NIL))
	(:library +library-name+))

(ffi:def-call-out wxWindow_Validate
	(:name "wxWindow_Validate")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxWindow_TransferDataToWindow
	(:name "wxWindow_TransferDataToWindow")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxWindow_TransferDataFromWindow
	(:name "wxWindow_TransferDataFromWindow")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxWindow_InitDialog
	(:name "wxWindow_InitDialog")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxWindow_SetAcceleratorTable
	(:name "wxWindow_SetAcceleratorTable")
	(:arguments (_obj (ffi:c-pointer NIL))
		(accel (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxWindow_ConvertPixelsToDialog
	(:name "wxWindow_ConvertPixelsToDialog")
	(:arguments (_obj (ffi:c-pointer NIL))
		(x (ffi:c-ptr ffi:int))
		(y (ffi:c-ptr ffi:int)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxWindow_ConvertDialogToPixels
	(:name "wxWindow_ConvertDialogToPixels")
	(:arguments (_obj (ffi:c-pointer NIL))
		(x (ffi:c-ptr ffi:int))
		(y (ffi:c-ptr ffi:int)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxWindow_WarpPointer
	(:name "wxWindow_WarpPointer")
	(:arguments (_obj (ffi:c-pointer NIL))
		(x ffi:int)
		(y ffi:int))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxWindow_CaptureMouse
	(:name "wxWindow_CaptureMouse")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxWindow_ReleaseMouse
	(:name "wxWindow_ReleaseMouse")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxWindow_Refresh
	(:name "wxWindow_Refresh")
	(:arguments (_obj (ffi:c-pointer NIL))
		(eraseBackground ffi:int))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxWindow_RefreshRect
	(:name "wxWindow_RefreshRect")
	(:arguments (_obj (ffi:c-pointer NIL))
		(eraseBackground ffi:int)
		(x ffi:int)
		(y ffi:int)
		(w ffi:int)
		(h ffi:int))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxWindow_PrepareDC
	(:name "wxWindow_PrepareDC")
	(:arguments (_obj (ffi:c-pointer NIL))
		(dc (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxWindow_GetUpdateRegion
	(:name "wxWindow_GetUpdateRegion")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type (ffi:c-pointer NIL))
	(:library +library-name+))

(ffi:def-call-out wxWindow_IsExposed
	(:name "wxWindow_IsExposed")
	(:arguments (_obj (ffi:c-pointer NIL))
		(x ffi:int)
		(y ffi:int)
		(w ffi:int)
		(h ffi:int))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxWindow_SetBackgroundColour
	(:name "wxWindow_SetBackgroundColour")
	(:arguments (_obj (ffi:c-pointer NIL))
		(colour (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxWindow_SetForegroundColour
	(:name "wxWindow_SetForegroundColour")
	(:arguments (_obj (ffi:c-pointer NIL))
		(colour (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxWindow_GetBackgroundColour
	(:name "wxWindow_GetBackgroundColour")
	(:arguments (_obj (ffi:c-pointer NIL))
		(colour (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxWindow_GetForegroundColour
	(:name "wxWindow_GetForegroundColour")
	(:arguments (_obj (ffi:c-pointer NIL))
		(colour (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxWindow_SetCursor
	(:name "wxWindow_SetCursor")
	(:arguments (_obj (ffi:c-pointer NIL))
		(cursor (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxWindow_GetCursor
	(:name "wxWindow_GetCursor")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type (ffi:c-pointer NIL))
	(:library +library-name+))

(ffi:def-call-out wxWindow_SetFont
	(:name "wxWindow_SetFont")
	(:arguments (_obj (ffi:c-pointer NIL))
		(font (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxWindow_GetFont
	(:name "wxWindow_GetFont")
	(:arguments (_obj (ffi:c-pointer NIL))
		(_font (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxWindow_SetCaret
	(:name "wxWindow_SetCaret")
	(:arguments (_obj (ffi:c-pointer NIL))
		(caret (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxWindow_GetCaret
	(:name "wxWindow_GetCaret")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type (ffi:c-pointer NIL))
	(:library +library-name+))

(ffi:def-call-out wxWindow_GetCharHeight
	(:name "wxWindow_GetCharHeight")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxWindow_GetCharWidth
	(:name "wxWindow_GetCharWidth")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxWindow_GetTextExtent
	(:name "wxWindow_GetTextExtent")
	(:arguments (_obj (ffi:c-pointer NIL))
		(string ffi:c-string)
		(x (ffi:c-ptr ffi:int))
		(y (ffi:c-ptr ffi:int))
		(descent (ffi:c-ptr ffi:int))
		(externalLeading (ffi:c-ptr ffi:int))
		(theFont (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxWindow_ScreenToClient
	(:name "wxWindow_ScreenToClient")
	(:arguments (_obj (ffi:c-pointer NIL))
		(x (ffi:c-ptr ffi:int))
		(y (ffi:c-ptr ffi:int)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxWindow_UpdateWindowUI
	(:name "wxWindow_UpdateWindowUI")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxWindow_PopupMenu
	(:name "wxWindow_PopupMenu")
	(:arguments (_obj (ffi:c-pointer NIL))
		(menu (ffi:c-pointer NIL))
		(x ffi:int)
		(y ffi:int))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxWindow_SetScrollPos
	(:name "wxWindow_SetScrollPos")
	(:arguments (_obj (ffi:c-pointer NIL))
		(orient ffi:int)
		(pos ffi:int)
		(refresh ffi:int))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxWindow_GetScrollPos
	(:name "wxWindow_GetScrollPos")
	(:arguments (_obj (ffi:c-pointer NIL))
		(orient ffi:int))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxWindow_GetScrollThumb
	(:name "wxWindow_GetScrollThumb")
	(:arguments (_obj (ffi:c-pointer NIL))
		(orient ffi:int))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxWindow_GetScrollRange
	(:name "wxWindow_GetScrollRange")
	(:arguments (_obj (ffi:c-pointer NIL))
		(orient ffi:int))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxWindow_ScrollWindow
	(:name "wxWindow_ScrollWindow")
	(:arguments (_obj (ffi:c-pointer NIL))
		(dx ffi:int)
		(dy ffi:int))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxWindow_ScrollWindowRect
	(:name "wxWindow_ScrollWindowRect")
	(:arguments (_obj (ffi:c-pointer NIL))
		(dx ffi:int)
		(dy ffi:int)
		(x ffi:int)
		(y ffi:int)
		(w ffi:int)
		(h ffi:int))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxWindow_SetToolTip
	(:name "wxWindow_SetToolTip")
	(:arguments (_obj (ffi:c-pointer NIL))
		(tip ffi:c-string))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxWindow_GetToolTip
	(:name "wxWindow_GetToolTip")
	(:arguments (_obj (ffi:c-pointer NIL))
		(_buf (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxWindow_SetDropTarget
	(:name "wxWindow_SetDropTarget")
	(:arguments (_obj (ffi:c-pointer NIL))
		(dropTarget (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxWindow_GetDropTarget
	(:name "wxWindow_GetDropTarget")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type (ffi:c-pointer NIL))
	(:library +library-name+))

(ffi:def-call-out wxWindow_SetConstraints
	(:name "wxWindow_SetConstraints")
	(:arguments (_obj (ffi:c-pointer NIL))
		(constraints (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxWindow_GetConstraints
	(:name "wxWindow_GetConstraints")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type (ffi:c-pointer NIL))
	(:library +library-name+))

(ffi:def-call-out wxWindow_SetAutoLayout
	(:name "wxWindow_SetAutoLayout")
	(:arguments (_obj (ffi:c-pointer NIL))
		(autoLayout ffi:int))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxWindow_GetAutoLayout
	(:name "wxWindow_GetAutoLayout")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxWindow_Layout
	(:name "wxWindow_Layout")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxWindow_UnsetConstraints
	(:name "wxWindow_UnsetConstraints")
	(:arguments (_obj (ffi:c-pointer NIL))
		(c (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxWindow_GetConstraintsInvolvedIn
	(:name "wxWindow_GetConstraintsInvolvedIn")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type (ffi:c-pointer NIL))
	(:library +library-name+))

(ffi:def-call-out wxWindow_AddConstraintReference
	(:name "wxWindow_AddConstraintReference")
	(:arguments (_obj (ffi:c-pointer NIL))
		(otherWin (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxWindow_RemoveConstraintReference
	(:name "wxWindow_RemoveConstraintReference")
	(:arguments (_obj (ffi:c-pointer NIL))
		(otherWin (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxWindow_DeleteRelatedConstraints
	(:name "wxWindow_DeleteRelatedConstraints")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxWindow_ResetConstraints
	(:name "wxWindow_ResetConstraints")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxWindow_SetConstraintSizes
	(:name "wxWindow_SetConstraintSizes")
	(:arguments (_obj (ffi:c-pointer NIL))
		(recurse ffi:int))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxWindow_LayoutPhase1
	(:name "wxWindow_LayoutPhase1")
	(:arguments (_obj (ffi:c-pointer NIL))
		(noChanges (ffi:c-ptr ffi:int)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxWindow_LayoutPhase2
	(:name "wxWindow_LayoutPhase2")
	(:arguments (_obj (ffi:c-pointer NIL))
		(noChanges (ffi:c-ptr ffi:int)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxWindow_DoPhase
	(:name "wxWindow_DoPhase")
	(:arguments (_obj (ffi:c-pointer NIL))
		(phase ffi:int))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxWindow_SetSizeConstraint
	(:name "wxWindow_SetSizeConstraint")
	(:arguments (_obj (ffi:c-pointer NIL))
		(x ffi:int)
		(y ffi:int)
		(w ffi:int)
		(h ffi:int))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxWindow_MoveConstraint
	(:name "wxWindow_MoveConstraint")
	(:arguments (_obj (ffi:c-pointer NIL))
		(x ffi:int)
		(y ffi:int))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxWindow_GetSizeConstraint
	(:name "wxWindow_GetSizeConstraint")
	(:arguments (_obj (ffi:c-pointer NIL))
		(w (ffi:c-ptr ffi:int))
		(h (ffi:c-ptr ffi:int)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxWindow_GetClientSizeConstraint
	(:name "wxWindow_GetClientSizeConstraint")
	(:arguments (_obj (ffi:c-pointer NIL))
		(w (ffi:c-ptr ffi:int))
		(h (ffi:c-ptr ffi:int)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxWindow_GetPositionConstraint
	(:name "wxWindow_GetPositionConstraint")
	(:arguments (_obj (ffi:c-pointer NIL))
		(x (ffi:c-ptr ffi:int))
		(y (ffi:c-ptr ffi:int)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxWindow_SetSizer
	(:name "wxWindow_SetSizer")
	(:arguments (_obj (ffi:c-pointer NIL))
		(sizer (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxWindow_GetSizer
	(:name "wxWindow_GetSizer")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type (ffi:c-pointer NIL))
	(:library +library-name+))

(ffi:def-call-out wxWindow_GetHandle
	(:name "wxWindow_GetHandle")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type (ffi:c-pointer NIL))
	(:library +library-name+))

(ffi:def-call-out wxWindow_SetScrollbar
	(:name "wxWindow_SetScrollbar")
	(:arguments (_obj (ffi:c-pointer NIL))
		(orient ffi:int)
		(pos ffi:int)
		(thumbVisible ffi:int)
		(range ffi:int)
		(refresh ffi:int))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxWindow_Reparent
	(:name "wxWindow_Reparent")
	(:arguments (_obj (ffi:c-pointer NIL))
		(_par (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxWindow_GetAdjustedBestSize
	(:name "wxWindow_GetAdjustedBestSize")
	(:arguments (_obj (ffi:c-pointer NIL))
		(_w (ffi:c-pointer NIL))
		(_h (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxWindow_Freeze
	(:name "wxWindow_Freeze")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxWindow_Thaw
	(:name "wxWindow_Thaw")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

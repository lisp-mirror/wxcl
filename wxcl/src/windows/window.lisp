;;;window.lisp
;;;License  : wxWindows License 3.1
;;;Author(s) : Surendra Singhi (surendra@asu.edu) 
;;;Copyright (C) 2005 Surendra Singhi 
;;;See the file LICENSE for information on usage and redistribution.
;;;
;;; $Header$
;;;

(in-package :wxcl-windows)

(defclass window (object) ; evt-handler)
  ()
  (:documentation "The base class for all wxCL widgets."))

(defmethod show ((obj Window))
  "Makes the window visible."
  (wxWindow_Show (object-pointer obj)))

(defmethod hide ((obj Window))
  "Hides the window."
  (wxWindow_Hide (object-pointer obj)))

(defmethod set-size ((obj Window) (sz size))
  "Sets the size of the window."
  (wxWindow_SetSize (object-pointer obj)
		    -1
		    -1
		    (size-height sz)
		    (size-width sz)
		    +size-use-existing+))

(defmethod set-size ((obj window) (rc rect))
  "Sets the size and position of the window."
  (wxWindow_SetSize (object-pointer obj)
		    (point-x (rect-position rc))
		    (point-y (rect-position rc))
		    (size-height (rect-size rc))
		    (size-width (rect-size rc))
		    +size-use-existing+))

(defmethod set-position ((obj Window) (pos point))
  "Sets the position of the window."
  (wxWindow_SetSize (object-pointer obj)
		    (point-x pos)
		    (point-y pos)
		    -1
		    -1
		    +size-use-existing+))


; (defmethod ((obj window)) wxWindow_Create
;     (:name "wxWindow_Create")
;   (:arguments (_prt (ffi:c-pointer NIL))
; 	      (_id ffi:int)
; 	      (_x ffi:int)
; 	      (_y ffi:int)
; 	      (_w ffi:int)
; 	      (_h ffi:int)
; 	      (_stl ffi:int))
;   (:return-type (ffi:c-pointer wxWindow))
;   (:library +library-name+))

(defmethod close-window ((obj window) force)
  (= 1 (wxWindow_Close (object-pointer obj) (if force 1 0))))

(defmethod destroy ((obj window))
  (= 1 (wxWindow_Destroy (object-pointer obj))))

(defmethod clear ((obj window))
  (wxWindow_Clear (object-pointer obj)))

(defmethod fit ((obj window))
  (wxWindow_Fit (object-pointer obj)))

(defmethod destroy-children ((obj window))
  (= 1 (wxWindow_DestroyChildren (object-pointer obj))))

(defmethod being-deleted-p ((obj window))
  (= 1 (wxWindow_IsBeingDeleted (object-pointer obj))))

(defmethod (setf label)(str (obj window))
  (wxWindow_SetLabel (object-pointer obj) str))

(defmethod label ((obj window))
  (wxWindow_GetLabel (object-pointer obj)))

(defmethod (setf name) (str (obj window))
  (wxWindow_SetName (object-pointer obj) str))

(defmethod name ((obj window))
  (wxWindow_GetName (object-pointer obj)))

(defmethod (setf id) (id (obj window))
  (wxWindow_SetId (object-pointer obj) id))

(defmethod id ((obj window))
  (wxWindow_GetId (object-pointer obj)))


(defmethod move ((obj window) (pos point))
  (wxWindow_Move (object-pointer obj) (point-x pos) (point-y pos)))

(defmethod raise ((obj window))
  (wxWindow_Raise (object-pointer obj)))

(defmethod lower ((obj window))
  (wxWindow_Lower (object-pointer obj)))

(defmethod (setf client-size) ((sz size) (obj window))
  (wxWindow_SetClientSize (object-pointer obj) (size-width sz) (size-height sz)))

(defmethod position ((obj window))
  (let (x y)
    (multiple-value-setq (x y) (wxWindow_GetPosition (object-pointer obj)))
    (make-point x y)))

(defmethod size ((obj window))
  (let (h w)
    (multiple-value-setq (w h) (wxWindow_GetSize (object-pointer obj)))
    (make-size w h)))

(defmethod rect ((obj window))
  (let (h w x y)
    (multiple-value-setq (x y w h) (wxWindow_GetRect (object-pointer obj)))
    (make-rect x y w h)))

(defmethod client-size ((obj window))
  (let (h w)
    (multiple-value-setq (w h) (wxWindow_GetClientSize (object-pointer obj)))
    (make-size w h)))

(defmethod best-size ((obj window))
  (let (h w)
    (multiple-value-setq (w h) (wxWindow_GetBestSize (object-pointer obj)))
    (make-size w h)))

(defmethod centre ((obj window) direction)
  (wxWindow_Center (object-pointer obj) direction))

(defmethod centre-on-parent ((obj window) direction) 
  (wxWindow_CenterOnParent (object-pointer obj) direction))

; (defmethod ((obj window)) wxWindow_SetSizeHints
;     (:name "wxWindow_SetSizeHints")
;   (:arguments (_obj (ffi:c-pointer wxWindow))
; 	      (minW ffi:int)
; 	      (minH ffi:int)
; 	      (maxW ffi:int)
; 	      (maxH ffi:int)
; 	      (incW ffi:int)
; 	      (incH ffi:int))
;   (:return-type NIL)
;   (:library +library-name+))

(defmethod min-width ((obj window))
  (wxWindow_GetMinWidth (object-pointer obj)))

(defmethod min-height ((obj window))
    (wxWindow_GetMinHeight (object-pointer obj)))

(defmethod max-width ((obj window))
  (wxWindow_GetMaxWidth (object-pointer obj)))

(defmethod max-height ((obj window))
  (wxWindow_GetMaxHeight (object-pointer obj)))

(defmethod enable ((obj window))
  (= 1 (wxWindow_Enable (object-pointer obj))))

(defmethod disable ((obj window))
  (= 1 (wxWindow_Disable (object-pointer obj))))

(defmethod shown-p ((obj window))
  (= 1 (wxWindow_IsShown (object-pointer obj))))

(defmethod enabled-p ((obj window))
  (= 1 (wxWindow_IsEnabled (object-pointer obj))))

(defmethod (setf style-flag) (flag (obj window))
  (wxWindow_SetWindowStyleFlag (object-pointer obj) flag))

(defmethod style-flag ((obj window))
  (wxWindow_GetWindowStyleFlag (object-pointer obj)))

(defmethod has-flag-p ((obj window) flag)
  (= 1 (wxWindow_HasFlag (object-pointer obj) flag)))

(defmethod (setf extra-style) (style (obj window))
  (wxWindow_SetExtraStyle (object-pointer obj) style))

(defmethod make-modal ((obj window) modal)
  (wxWindow_MakeModal (object-pointer obj) (if modal 1 0)))

(defmethod set-focus ((obj window))
  (wxWindow_SetFocus (object-pointer obj)))

(defmethod find-focus ((obj window))
  (wxWindow_FindFocus (object-pointer obj)))

; (defmethod ((obj window)) wxWindow_GetChildren
;     (:name "wxWindow_GetChildren")
;   (:arguments (_obj (ffi:c-pointer wxWindow))
; 	      (_res (ffi:c-array-ptr (ffi:c-pointer wxWindow)))
; 	      (_cnt ffi:int))
;   (:return-type ffi:int)
;   (:library +library-name+))

(defmethod parent ((obj window))
  (make-wx-instance 'window (wxWindow_GetParent (object-pointer obj))))

(defmethod top-level-p ((obj window))
  (= 1 (wxWindow_IsTopLevel (object-pointer obj))))

(defmethod find-window ((obj window) name)
  (make-wx-instance 'window (wxWindow_FindWindow (object-pointer obj) name)))

(defmethod add-child ((obj window) child)
  (wxWindow_AddChild (object-pointer obj) (object-pointer child)))

(defmethod remove-child ((obj window) child)
  (wxWindow_RemoveChild (object-pointer obj) (object-pointer child)))

(defmethod event-handler ((obj window))
  (make-wx-instance 'evt-handler
                    (wxWindow_GetEventHandler (object-pointer obj))))

(defmethod push-evt-handler ((obj window) handler)
  (wxWindow_PushEventHandler (object-pointer obj) (object-pointer handler)))

(defmethod pop-evt-handler ((obj window) &optional (delete nil))
  (make-wx-instance 'evt-handler
                    (wxWindow_PopEventHandler (object-pointer obj)
                                              (if delete 1 0))))

(defmethod (setf validator) (vld (obj window))
  (wxWindow_SetValidator (object-pointer obj) (object-pointer vld)))

(defmethod validator ((obj window)) 
  (make-wx-instance 'validator (wxWindow_GetValidator (object-pointer obj))))

; (defmethod ((obj window)) wxWindow_SetClientData
;     (:name "wxWindow_SetClientData")
;   (:arguments (_obj (ffi:c-pointer wxWindow))
; 	      (data (ffi:c-pointer NIL)))
;   (:return-type NIL)
;   (:library +library-name+))

; (defmethod ((obj window)) wxWindow_GetClientData
;     (:name "wxWindow_GetClientData")
;   (:arguments (_obj (ffi:c-pointer wxWindow)))
;   (:return-type (ffi:c-pointer NIL))
;   (:library +library-name+))

(defmethod validate-p ((obj window))
  (= 1 (wxWindow_Validate (object-pointer obj))))

(defmethod transfer-data-to-window ((obj window)) 
  (= 1 (wxWindow_TransferDataToWindow (object-pointer obj))))

(defmethod transfer-data-from-window ((obj window)) 
  (= 1 (wxWindow_TransferDataFromWindow (object-pointer obj))))

(defmethod init-dialog ((obj window))
  (wxWindow_InitDialog (object-pointer obj)))

(defmethod (setf accelerator-table) (tbl (obj window))
  (wxWindow_SetAcceleratorTable (object-pointer obj) (object-pointer tbl)))

(defmethod convert-pixels-to-dialog ((obj window))
  (let (x y)
    (multiple-value-setq (x y) (wxWindow_ConvertPixelsToDialog (object-pointer obj)))
    (make-point x y)))

(defmethod convert-dialog-to-pixels ((obj window)) 
  (let (x y)
    (multiple-value-setq (x y) (wxWindow_ConvertDialogToPixels (object-pointer obj)))
    (make-point x y)))

(defmethod warp-pointer ((obj window) x y)
  (wxWindow_WarpPointer (object-pointer obj) x y))

(defmethod capture-mouse ((obj window))
  (wxWindow_CaptureMouse (object-pointer obj)))

(defmethod release-mouse ((obj window))
  (wxWindow_ReleaseMouse (object-pointer obj)))

(defmethod refresh ((obj window) &optional (erase-background t))
  (wxWindow_Refresh (object-pointer obj) (if erase-background 1 0)))

; (defmethod ((obj window)) wxWindow_RefreshRect
;     (:name "wxWindow_RefreshRect")
;   (:arguments (_obj (ffi:c-pointer wxWindow))
; 	      (eraseBackground ffi:int)
; 	      (x ffi:int)
; 	      (y ffi:int)
; 	      (w ffi:int)
; 	      (h ffi:int))
;   (:return-type NIL)
;   (:library +library-name+))

; (defmethod ((obj window)) wxWindow_PrepareDC
;     (:name "wxWindow_PrepareDC")
;   (:arguments (_obj (ffi:c-pointer wxWindow))
; 	      (dc (ffi:c-pointer NIL)))
;   (:return-type NIL)
;   (:library +library-name+))

(defmethod update-region ((obj window))
  (make-wx-instance 'region (wxWindow_GetUpdateRegion (object-pointer obj))))

; (defmethod exposed-p ((obj window))
;     (wxWindow_IsExposed (object-pointer obj))
;   (:arguments (_obj (ffi:c-pointer wxWindow))
; 	      (x ffi:int)
; 	      (y ffi:int)
; 	      (w ffi:int)
; 	      (h ffi:int))
;   (:return-type ffi:int)
;   (:library +library-name+))

(defmethod (setf background-colour) (colour (obj window))
  (= 1 (wxWindow_SetBackgroundColour (object-pointer obj) (object-pointer colour))))

(defmethod (setf foreground-colour) (colour (obj window))
  (= 1 (wxWindow_SetForegroundColour (object-pointer obj) (object-pointer colour))))

(defmethod background-colour ((obj window))
  (make-wx-instance 'colour (wxWindow_GetBackgroundColour (object-pointer obj))))

(defmethod foreground-colour ((obj window))
  (make-wx-instance 'colour (wxWindow_GetForegroundColour (object-pointer obj))))

(defmethod (setf cursor) (cursor (obj window))
  (= 1 (wxWindow_SetCursor (object-pointer obj) (object-pointer cursor))))

(defmethod cursor ((obj window))
  (make-wx-instance 'cursor (wxWindow_GetCursor (object-pointer obj))))

(defmethod (setf font) (font (obj window))
  (= 1 (wxWindow_SetFont (object-pointer obj) (object-pointer font))))

(defmethod font ((obj window))
  (make-wx-instance 'font (wxWindow_GetFont (object-pointer obj))))

(defmethod (setf caret) (caret (obj window))
  (wxWindow_SetCaret (object-pointer obj) (object-pointer caret)))

(defmethod caret ((obj window))
  (make-wx-instance 'caret (wxWindow_GetCaret (object-pointer obj))))

(defmethod char-height ((obj window))
  (wxWindow_GetCharHeight (object-pointer obj)))

(defmethod char-width ((obj window))
  (wxWindow_GetCharWidth (object-pointer obj)))

; (defmethod ((obj window)) wxWindow_GetTextExtent
;     (:name "wxWindow_GetTextExtent")
;   (:arguments (_obj (ffi:c-pointer wxWindow))
; 	      (string ffi:c-string)
; 	      (x (ffi:c-ptr ffi:int))
; 	      (y (ffi:c-ptr ffi:int))
; 	      (descent (ffi:c-ptr ffi:int))
; 	      (externalLeading (ffi:c-ptr ffi:int))
; 	      (theFont (ffi:c-pointer NIL)))
;   (:return-type NIL)
;   (:library +library-name+))

; (defmethod ((obj window)) wxWindow_ScreenToClient
;     (:name "wxWindow_ScreenToClient")
;   (:arguments (_obj (ffi:c-pointer wxWindow))
; 	      (x (ffi:c-ptr ffi:int))
; 	      (y (ffi:c-ptr ffi:int)))
;   (:return-type NIL)
;   (:library +library-name+))

(defmethod update-window-ui ((obj window))
  (wxWindow_UpdateWindowUI (object-pointer obj)))

; (defmethod ((obj window)) wxWindow_PopupMenu
;     (:name "wxWindow_PopupMenu")
;   (:arguments (_obj (ffi:c-pointer wxWindow))
; 	      (menu (ffi:c-pointer NIL))
; 	      (x ffi:int)
; 	      (y ffi:int))
;   (:return-type ffi:int)
;   (:library +library-name+))

(defmethod set-scroll-pos ((obj window) orient pos &optional (refresh t))
  (wxWindow_SetScrollPos (object-pointer obj) orient pos (if refresh 1 0)))

(defmethod scroll-pos ((obj window) orient )
  (wxWindow_GetScrollPos (object-pointer obj) orient))

(defmethod scroll-thumb ((obj window) orient)
  (wxWindow_GetScrollThumb (object-pointer obj) orient))

(defmethod scroll-range ((obj window) orient)
  (wxWindow_GetScrollRange (object-pointer obj) orient))

; (defmethod ((obj window)) wxWindow_ScrollWindow
;     (:name "wxWindow_ScrollWindow")
;   (:arguments (_obj (ffi:c-pointer wxWindow))
; 	      (dx ffi:int)
; 	      (dy ffi:int))
;   (:return-type NIL)
;   (:library +library-name+))

; (defmethod ((obj window)) wxWindow_ScrollWindowRect
;     (:name "wxWindow_ScrollWindowRect")
;   (:arguments (_obj (ffi:c-pointer wxWindow))
; 	      (dx ffi:int)
; 	      (dy ffi:int)
; 	      (x ffi:int)
; 	      (y ffi:int)
; 	      (w ffi:int)
; 	      (h ffi:int))
;   (:return-type NIL)
;   (:library +library-name+))

(defmethod (setf tool-tip) (tool-tip (obj window))
  (wxWindow_SetToolTip (object-pointer obj) tool-tip))

(defmethod tool-tip ((obj window))
  (wxWindow_GetToolTip (object-pointer obj)))

; (defmethod ((obj window)) wxWindow_SetDropTarget
;     (:name "wxWindow_SetDropTarget")
;   (:arguments (_obj (ffi:c-pointer wxWindow))
; 	      (dropTarget (ffi:c-pointer NIL)))
;   (:return-type NIL)
;   (:library +library-name+))

; (defmethod ((obj window)) wxWindow_GetDropTarget
;     (:name "wxWindow_GetDropTarget")
;   (:arguments (_obj (ffi:c-pointer wxWindow)))
;   (:return-type (ffi:c-pointer NIL))
;   (:library +library-name+))

; (defmethod ((obj window)) wxWindow_SetConstraints
;     (:name "wxWindow_SetConstraints")
;   (:arguments (_obj (ffi:c-pointer wxWindow))
; 	      (constraints (ffi:c-pointer NIL)))
;   (:return-type NIL)
;   (:library +library-name+))

; (defmethod ((obj window)) wxWindow_GetConstraints
;     (:name "wxWindow_GetConstraints")
;   (:arguments (_obj (ffi:c-pointer wxWindow)))
;   (:return-type (ffi:c-pointer NIL))
;   (:library +library-name+))

(defmethod (setf auto-layout) (auto-layout (obj window))
  (wxWindow_SetAutoLayout (object-pointer obj) (if auto-layout 1 0)))

(defmethod auto-layout ((obj window))
  (= 1 (wxWindow_GetAutoLayout (object-pointer obj))))

(defmethod layout ((obj window))
  (wxWindow_Layout (object-pointer obj)))

; (defmethod ((obj window)) wxWindow_UnsetConstraints
;     (:name "wxWindow_UnsetConstraints")
;   (:arguments (_obj (ffi:c-pointer wxWindow))
; 	      (c (ffi:c-pointer NIL)))
;   (:return-type NIL)
;   (:library +library-name+))

; (defmethod ((obj window)) wxWindow_GetConstraintsInvolvedIn
;     (:name "wxWindow_GetConstraintsInvolvedIn")
;   (:arguments (_obj (ffi:c-pointer wxWindow)))
;   (:return-type (ffi:c-pointer NIL))
;   (:library +library-name+))

; (defmethod ((obj window)) wxWindow_AddConstraintReference
;     (:name "wxWindow_AddConstraintReference")
;   (:arguments (_obj (ffi:c-pointer wxWindow))
; 	      (otherWin (ffi:c-pointer NIL)))
;   (:return-type NIL)
;   (:library +library-name+))

; (defmethod ((obj window)) wxWindow_RemoveConstraintReference
;     (:name "wxWindow_RemoveConstraintReference")
;   (:arguments (_obj (ffi:c-pointer wxWindow))
; 	      (otherWin (ffi:c-pointer NIL)))
;   (:return-type NIL)
;   (:library +library-name+))

; (defmethod ((obj window)) wxWindow_DeleteRelatedConstraints
;     (:name "wxWindow_DeleteRelatedConstraints")
;   (:arguments (_obj (ffi:c-pointer wxWindow)))
;   (:return-type NIL)
;   (:library +library-name+))

; (defmethod ((obj window)) wxWindow_ResetConstraints
;     (:name "wxWindow_ResetConstraints")
;   (:arguments (_obj (ffi:c-pointer wxWindow)))
;   (:return-type NIL)
;   (:library +library-name+))

; (defmethod ((obj window)) wxWindow_SetConstraintSizes
;     (:name "wxWindow_SetConstraintSizes")
;   (:arguments (_obj (ffi:c-pointer wxWindow))
; 	      (recurse ffi:int))
;   (:return-type NIL)
;   (:library +library-name+))

; (defmethod ((obj window)) wxWindow_LayoutPhase1
;     (:name "wxWindow_LayoutPhase1")
;   (:arguments (_obj (ffi:c-pointer wxWindow))
; 	      (noChanges (ffi:c-ptr ffi:int)))
;   (:return-type ffi:int)
;   (:library +library-name+))

; (defmethod ((obj window)) wxWindow_LayoutPhase2
;     (:name "wxWindow_LayoutPhase2")
;   (:arguments (_obj (ffi:c-pointer wxWindow))
; 	      (noChanges (ffi:c-ptr ffi:int)))
;   (:return-type ffi:int)
;   (:library +library-name+))

; (defmethod ((obj window)) wxWindow_DoPhase
;     (:name "wxWindow_DoPhase")
;   (:arguments (_obj (ffi:c-pointer wxWindow))
; 	      (phase ffi:int))
;   (:return-type ffi:int)
;   (:library +library-name+))

; (defmethod ((obj window)) wxWindow_SetSizeConstraint
;     (:name "wxWindow_SetSizeConstraint")
;   (:arguments (_obj (ffi:c-pointer wxWindow))
; 	      (x ffi:int)
; 	      (y ffi:int)
; 	      (w ffi:int)
; 	      (h ffi:int))
;   (:return-type NIL)
;   (:library +library-name+))

; (defmethod ((obj window)) wxWindow_MoveConstraint
;     (:name "wxWindow_MoveConstraint")
;   (:arguments (_obj (ffi:c-pointer wxWindow))
; 	      (x ffi:int)
; 	      (y ffi:int))
;   (:return-type NIL)
;   (:library +library-name+))

; (defmethod ((obj window)) wxWindow_GetSizeConstraint
;     (:name "wxWindow_GetSizeConstraint")
;   (:arguments (_obj (ffi:c-pointer wxWindow))
; 	      (w (ffi:c-ptr ffi:int))
; 	      (h (ffi:c-ptr ffi:int)))
;   (:return-type NIL)
;   (:library +library-name+))

; (defmethod ((obj window)) wxWindow_GetClientSizeConstraint
;     (:name "wxWindow_GetClientSizeConstraint")
;   (:arguments (_obj (ffi:c-pointer wxWindow))
; 	      (w (ffi:c-ptr ffi:int))
; 	      (h (ffi:c-ptr ffi:int)))
;   (:return-type NIL)
;   (:library +library-name+))

; (defmethod ((obj window)) wxWindow_GetPositionConstraint
;     (:name "wxWindow_GetPositionConstraint")
;   (:arguments (_obj (ffi:c-pointer wxWindow))
; 	      (x (ffi:c-ptr ffi:int))
; 	      (y (ffi:c-ptr ffi:int)))
;   (:return-type NIL)
;   (:library +library-name+))

; (defmethod ((obj window)) wxWindow_SetSizer
;     (:name "wxWindow_SetSizer")
;   (:arguments (_obj (ffi:c-pointer wxWindow))
; 	      (sizer (ffi:c-pointer NIL)))
;   (:return-type NIL)
;   (:library +library-name+))

; (defmethod ((obj window)) wxWindow_GetSizer
;     (:name "wxWindow_GetSizer")
;   (:arguments (_obj (ffi:c-pointer wxWindow)))
;   (:return-type (ffi:c-pointer NIL))
;   (:library +library-name+))

; (defmethod ((obj window)) wxWindow_GetHandle
;     (:name "wxWindow_GetHandle")
;   (:arguments (_obj (ffi:c-pointer wxWindow)))
;   (:return-type (ffi:c-pointer NIL))
;   (:library +library-name+))

; (defmethod ((obj window)) wxWindow_SetScrollbar
;     (:name "wxWindow_SetScrollbar")
;   (:arguments (_obj (ffi:c-pointer wxWindow))
; 	      (orient ffi:int)
; 	      (pos ffi:int)
; 	      (thumbVisible ffi:int)
; 	      (range ffi:int)
; 	      (refresh ffi:int))
;   (:return-type NIL)
;   (:library +library-name+))

; (defmethod reparent ((obj window) par)
;   "Reparents the window, i.e the window will be removed from its current parent\
;  window (e.g. a non-standard toolbar in a wxFrame) and then re-inserted into another.\
;  Available on Windows and GTK."
;   (= 1 (wxWindow_Reparent (object-pointer obj) (object-pointer par))))

; (defmethod ((obj window)) wxWindow_GetAdjustedBestSize
;     (:name "wxWindow_GetAdjustedBestSize")
;   (:arguments (_obj (ffi:c-pointer wxWindow))
; 	      (_w (ffi:c-pointer NIL))
; 	      (_h (ffi:c-pointer NIL)))
;   (:return-type NIL)
;   (:library +library-name+))

; (defmethod freeze ((obj window))
;   (wxWindow_Freeze (object-pointer obj)))

; (defmethod thaw ((obj window))
;   (wxWindow_Thaw (object-pointer obj)))


; (defmethod ((obj window)) wxWindow_ConvertPixelsToDialogEx
;     (:name "wxWindow_ConvertPixelsToDialogEx")
;   (:arguments (_obj (ffi:c-pointer NIL))
; 	      (x ffi:int)
; 	      (y ffi:int)
; 	      (_x (ffi:c-ptr ffi:int))
; 	      (_y (ffi:c-ptr ffi:int)))
;   (:library +library-name+))

; (defmethod ((obj window)) wxWindow_ConvertDialogToPixelsEx
;     (:name "wxWindow_ConvertDialogToPixelsEx")
;   (:arguments (_obj (ffi:c-pointer NIL))
; 	      (x ffi:int)
; 	      (y ffi:int)
; 	      (_x (ffi:c-ptr ffi:int))
; 	      (_y (ffi:c-ptr ffi:int)))
;   (:library +library-name+))

; (defmethod ((obj window)) wxWindow_SetClientObject
;     (:name "wxWindow_SetClientObject")
;   (:arguments (_obj (ffi:c-pointer NIL))
; 	      (obj (ffi:c-pointer NIL)))
;   (:library +library-name+))

; (defmethod ((obj window)) wxWindow_SetVirtualSize
;     (:name "wxWindow_SetVirtualSize")
;   (:arguments (_obj (ffi:c-pointer NIL))
; 	      (w ffi:int)
; 	      (h ffi:int))
;   (:library +library-name+))

; (defmethod ((obj window)) wxWindow_GetVirtualSize
;     (:name "wxWindow_GetVirtualSize")
;   (:arguments (_obj (ffi:c-pointer NIL))
; 	      (w (ffi:c-ptr ffi:int))
; 	      (h (ffi:c-ptr ffi:int)))
;   (:library +library-name+))

; (defmethod ((obj window)) wxWindow_FitInside
;     (:name "wxWindow_FitInside")
;   (:arguments (_obj (ffi:c-pointer NIL)))
;   (:library +library-name+))

; (defmethod ((obj window)) wxWindow_ClientToScreen
;     (:name "wxWindow_ClientToScreen")
;   (:arguments (self (ffi:c-pointer wxWindow))
; 	      (x ffi:int)
; 	      (y ffi:int)
; 	      (sx (ffi:c-ptr ffi:int))
; 	      (sy (ffi:c-ptr ffi:int)))
;   (:library +library-name+))

; (defmethod ((obj window)) wxWindow_ScreenToClient2
;     (:name "wxWindow_ScreenToClient2")
;   (:arguments (self (ffi:c-pointer wxWindow))
; 	      (x ffi:int)
; 	      (y ffi:int)
; 	      (cx (ffi:c-ptr ffi:int))
; 	      (cy (ffi:c-ptr ffi:int)))
;   (:library +library-name+))

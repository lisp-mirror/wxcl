;;;tool-bar.lisp
;;;License  : wxWindows License 3.1
;;;Author(s) : Surendra Singhi (surendra@asu.edu) 
;;;Copyright (C) 2005 Surendra Singhi 
;;;See the file LICENSE for information on usage and redistribution.
;;;
;;; $Header$
;;;

(in-package :wxcl-windows)

(defconstant +tb-3d-buttons+ 16)
(defconstant +tb-flat+ 32)
(defconstant +tb-dockable+ 64)
(defconstant +tb-vertical+ 8)
(defconstant +tb-horizontal+ 4)

(defun make-tool-bar (parent id &key (pos default-position) (size default-size) (style +tb-horizontal+))
  (make-wx-instance 'tool-bar
		    (wxToolBar_Create (object-pointer parent) id (point-x pos) (point-y pos)
				      (size-width size) (size-height size) style)))

(defmethod delete-object ((obj tool-bar))
  (wxToolBar_Delete (object-pointer obj))
  (invalidate-wx-instance obj))

(defmethod add-control ((obj tool-bar) (ctrl wxcl-controls:control))
    (= 1 (wxToolBar_AddControl (object-pointer obj) (object-pointer ctrl))))

(defmethod add-separator ((obj tool-bar))
  (wxToolBar_AddSeparator (object-pointer obj)))

(defmethod add-tool ((obj tool-bar) id (bmp wxcl-gdi:bitmap) &key (short-help "") (long-help ""))
  (wxToolBar_AddTool (object-pointer obj) id (object-pointer bmp) short-help long-help))

(defmethod add-tool-ex ((obj tool-bar) id (bmp wxcl-gdi:bitmap) &key (bmp2 wxcl-gdi:+null-bitmap+)
                        (toggle 0) (x -1)(y -1)(data nil) (short-help "") (long-help ""))
  (wxToolBar_AddToolEx (object-pointer obj) id (object-pointer bmp) (object-pointer bmp2) toggle
                       x y data short-help long-help))

(defmethod delete-tool ((obj tool-bar) id)
  "Removes the specified tool from the toolbar and deletes it. If you don't want\
 to delete the tool, but just to remove it from the toolbar (to possibly add it\
 back later), you may use RemoveTool instead." 
    (= 1 (wxToolBar_DeleteTool (object-pointer id))))

(defmethod delete-tool-by-pos ((obj tool-bar) pos)
  (= 1 (wxToolBar_DeleteToolByPos (object-pointer obj) pos)))

(defmethod enable-tool ((obj tool-bar) id enable)
  (wxToolBar_EnableTool (object-pointer obj) id (if enable 1 0)))

(defmethod tool-size ((obj tool-bar))
  (let (x y)
    (multiple-value-setq (x y) (wxToolBar_GetToolSize (object-pointer obj)))
    (make-instance 'size :width x :height y)))

(defmethod tool-bitmap-size ((obj tool-bar))
  (let (x y)
    (multiple-value-setq (x y) (wxToolBar_GetToolBitmapSize (object-pointer obj)))
    (make-instance 'size :width x :height y)))

(defmethod margins ((obj tool-bar))
  (let (x y)
    (multiple-value-setq (x y) (wxToolBar_GetMargins (object-pointer obj)))
    (make-instance 'size :height x :width y)))

(defmethod tool-client-data ((obj tool-bar) id)
 (make-wx-instance 'object
		   (wxToolBar_GetToolClientData (object-pointer obj) id)))

(defmethod tool-enabled ((obj tool-bar))
  (= 1 (wxToolBar_GetToolEnabled (object-pointer obj))))

(defmethod tool-long-help ((obj tool-bar) id)
  (wxToolBar_GetToolLongHelp  (object-pointer obj) id))

(defmethod tool-packing ((obj tool-bar))
  (wxToolBar_GetToolPacking (object-pointer obj)))

(defmethod tool-short-help ((obj tool-bar) id)
  (wxToolBar_GetToolShortHelp (object-pointer obj) id))

(defmethod tool-state ((obj tool-bar) id)
  (= 1 (wxToolBar_GetToolState (object-pointer obj) id)))

(defmethod insert-control ((obj tool-bar) pos (ctrl wxcl-controls:control))
  (wxToolBar_InsertControl (object-pointer obj) pos (object-pointer ctrl)))

(defmethod insert-separator ((obj tool-bar) pos)
    (wxToolBar_InsertSeparator (object-pointer obj) pos))

; (defmethod wxToolBar_InsertTool
;     (:name "wxToolBar_InsertTool")
;   (:arguments (_obj (ffi:c-pointer NIL))
; 	      (pos ffi:int)
; 	      (id ffi:int)
; 	      (bmp1 (ffi:c-pointer NIL))
; 	      (bmp2 (ffi:c-pointer NIL))
; 	      (tgl ffi:int)
; 	      (dat (ffi:c-pointer NIL))
; 	      (shelp (ffi:c-pointer NIL))
; 	      (lhelp (ffi:c-pointer NIL)))
;   (:return-type NIL)
;   (:library +library-name+))

(defmethod realize ((obj tool-bar))
    (= 1 (wxToolBar_Realize (object-pointer obj))))

(defmethod remove-tool ((obj tool-bar) id)
  (wxToolBar_RemoveTool (object-pointer obj) id))

(defmethod (setf margins) (sz (obj tool-bar))
  (wxToolBar_SetMargins (object-pointer obj) (size-width x) (size-height y)))

(defmethod (setf tool-bitmap-size) (sz (obj tool-bar))
  (wxToolBar_SetToolBitmapSize (object-pointer obj) (size-width sz) (size-height sz)))

(defmethod (setf tool-client-data) (client-data (obj tool-bar) id)
  (wxToolBar_SetToolClientData (object-pointer obj) id (object-pointer client-data)))

(defmethod (setf tool-long-help) (str (obj tool-bar) id)
  (wxToolBar_SetToolLongHelp (object-pointer obj) id str))

(defmethod (setf tool-packing) (packing (obj tool-bar))
  (wxToolBar_SetToolPacking (object-pointer obj) packing))

(defmethod (setf tool-short-help) (str (obj tool-bar) id)
    (wxToolBar_SetToolShortHelp (object-pointer obj) id str))

(defmethod (setf tool-separation) (separation (obj tool-bar))
    (wxToolBar_SetToolSeparation (object-pointer obj) separation))

(defmethod toggle-tool ((obj tool-bar) id toggle)
    (wxToolBar_ToggleTool (object-pointer obj) id (if toggle 1 0)))

; (defmethod wxToolBar_AddTool2
;     (:name "wxToolBar_AddTool2")
;   (:arguments (_obj (ffi:c-pointer NIL))
; 	      (toolId ffi:int)
; 	      (label ffi:c-string)
; 	      (bmp (ffi:c-pointer NIL))
; 	      (bmpDisabled (ffi:c-pointer NIL))
; 	      (itemKind ffi:int)
; 	      (shortHelp ffi:c-string)
; 	      (longHelp ffi:c-string))
;   (:library +library-name+))

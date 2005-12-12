;;;text-control.lisp
;;;License  : wxWindows License 3.1
;;;Author(s) : Surendra Singhi (surendra@asu.edu) 
;;;Copyright (C) 2005 Surendra Singhi 
;;;See the file LICENSE for information on usage and redistribution.
;;;
;;; $Header$
;;;

(in-package :wxcl-controls)

(defconstant +te-readonly+ 16)
(defconstant +te-multiline+ 32)
(defconstant +te-process-tab+ 64)
(defconstant +te-rich+ 128)
(defconstant +te-no-vscroll+ 256)
(defconstant +te-wordwrap+ 1)
(defconstant +te-auto-scroll+ 512)
(defconstant +te-rich2+ 32768)

(defun make-text-control (parent &key (text "") (id -1) (pos +default-position+) (size +default-size+) (style 0))
  (make-wx-instance 'text-control
                    (wxTextCtrl_Create (object-pointer parent) id text
                                       (point-x pos) (point-y pos) (size-width size) (size-height size) style)))

(defmethod value ((obj text-control))
  (wxTextCtrl_GetValue (object-pointer obj)))

(defmethod (setf value) (val (obj text-control))
  (wxTextCtrl_SetValue (object-pointer obj) val))

(defmethod line-length ((obj text-control) line)
  (wxTextCtrl_GetLineLength (object-pointer obj) line))

(defmethod line-text ((obj text-control) line)
  (wxTextCtrl_GetLineText (object-pointer obj) line))

(defmethod number-of-lines ((obj text-control))
  (wxTextCtrl_GetNumberOfLines (object-pointer obj)))

(defmethod modified-p ((obj text-control))
  (= 1 (wxTextCtrl_IsModified (object-pointer obj))))

(defmethod editable-p ((obj text-control))
  (= 1 (wxTextCtrl_IsEditable (object-pointer obj))))

(defmethod selection ((obj text-control))
  (wxTextCtrl_GetSelection (object-pointer obj)))

(defmethod clear ((obj text-control))
  (wxTextCtrl_Clear (object-pointer obj)))

(defmethod replace-text ((obj text-control) from to value)
  (wxTextCtrl_Replace (object-pointer obj) from to value))

(defmethod remove-text ((obj text-control) from to)
  (wxTextCtrl_Remove (object-pointer obj) from to))

(defmethod load-file ((obj text-control) filename)
  (= 1 (wxTextCtrl_LoadFile (object-pointer obj) filename)))

(defmethod save-file ((obj text-control) filename)
  (= 1 (wxTextCtrl_SaveFile (object-pointer obj) filename)))

(defmethod discard-edits ((obj text-control))
  (wxTextCtrl_DiscardEdits (object-pointer obj)))

(defmethod write-text ((obj text-control) text)
  (wxTextCtrl_WriteText (object-pointer obj) text))

(defmethod append-text ((obj text-control) text)
  (wxTextCtrl_AppendText (object-pointer obj) text))

(defmethod xy-to-position ((obj text-control) x y)
  (wxTextCtrl_XYToPosition (object-pointer obj) x y))

(defmethod position-to-xy ((obj text-control) pos)
  (wxTextCtrl_PositionToXY (object-pointer obj) pos))

(defmethod show-position ((obj text-control) pos)
  (wxTextCtrl_ShowPosition (object-pointer obj) pos))

(defmethod copy ((obj text-control))
  (wxTextCtrl_Copy (object-pointer obj)))

(defmethod cut ((obj text-control))
  (wxTextCtrl_Cut (object-pointer obj)))

(defmethod paste ((obj text-control))
  (wxTextCtrl_Paste (object-pointer obj)))

(defmethod can-copy-p ((obj text-control))
  (= 1 (wxTextCtrl_CanCopy (object-pointer obj))))

(defmethod can-cut-p ((obj text-control))
  (= 1 (wxTextCtrl_CanCut (object-pointer obj))))

(defmethod can-paste-p ((obj text-control))
  (= 1 (wxTextCtrl_CanPaste (object-pointer obj))))

(defmethod undo ((obj text-control))
  (wxTextCtrl_Undo (object-pointer obj)))

(defmethod redo ((obj text-control))
    (wxTextCtrl_Redo (object-pointer obj)))

(defmethod can-undo-p ((obj text-control))
  (= 1 (wxTextCtrl_CanUndo (object-pointer obj))))

(defmethod can-redo-p ((obj text-control))
  (= 1 (wxTextCtrl_CanRedo (object-pointer obj))))

(defmethod (setf insertion-point) (pos (obj text-control))
  (wxTextCtrl_SetInsertionPoint (object-pointer obj) pos))

(defmethod set-insertion-point-end ((obj text-control))
  (wxTextCtrl_SetInsertionPointEnd (object-pointer obj)))

(defmethod insertion-point ((obj text-control))
  (wxTextCtrl_GetInsertionPoint (object-pointer obj)))

(defmethod last-position ((obj text-control))
  (wxTextCtrl_GetLastPosition (object-pointer obj)))

(defmethod set-selection ((obj text-control) from to)
  (wxTextCtrl_SetSelection (object-pointer obj) from to))

(defmethod (setf editable) (editable (obj text-control))
  (wxTextCtrl_SetEditable (object-pointer obj) (if editable 1 0)))

; (defmethod EmulateKeyPress ((obj text-control))
;     (wxTextCtrl_EmulateKeyPress (object-pointer obj))
;   (:arguments (_obj (ffi:c-pointer NIL))
; 	      (keyevent (ffi:c-pointer NIL)))
;   (:return-type ffi:int)
;   (:library +library-name+))

(defmethod default-style ((obj text-control))
  (make-wx-instance 'wxcl-structures:text-attr (wxTextCtrl_GetDefaultStyle (object-pointer obj))))

(defmethod get-style ((obj text-control) pos style)
  (= 1 (wxTextCtrl_GetStyle (object-pointer obj) pos (object-pointer style))))

(defmethod text-in-range ((obj text-control) from to)
  (wxTextCtrl_GetRange (object-pointer obj) from to))

(defmethod string-selection ((obj text-control))
  (wxTextCtrl_GetStringSelection (object-pointer obj)))

(defmethod multiline-p ((obj text-control))
  (= 1 (wxTextCtrl_IsMultiLine (object-pointer obj))))

(defmethod singleline-p ((obj text-control))
  (= 1 (wxTextCtrl_IsSingleLine (object-pointer obj))))

(defmethod (setf default-style) (style (obj text-control))
  (= 1 (wxTextCtrl_SetDefaultStyle (object-pointer obj)(object-pointer style))))

(defmethod (setf max-length) (len (obj text-control))
  (wxTextCtrl_SetMaxLength (object-pointer obj) len))

(defmethod (setf style) (style (obj text-control) start end)
  (= 1 (wxTextCtrl_SetStyle (object-pointer obj) start end (object-pointer style))))

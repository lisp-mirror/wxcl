;;;text-attr.lisp
;;;License  : wxWindows License 3.1
;;;Author(s) : Surendra Singhi (surendra@asu.edu) 
;;;Copyright (C) 2005 Surendra Singhi 
;;;See the file LICENSE for information on usage and redistribution.
;;;
;;; $Header$
;;;

(in-package :wxcl)

(defun make-text-attr-empty ()
  (make-wx-instance 'text-attr (wxTextAttr_CreateDefault)))

(defun make-text-attr (text-colour background-colour font)
  (make-wx-instance 'text-attr (wxTextAttr_Create (object-pointer text-colour)
                                                  (object-pointer background-colour)
                                                  (object-pointer font))))

(defmethod delete-object ((obj text-attr))
  (wxTextAttr_Delete (object-pointer obj))
  (invalidate-wx-instance obj))

(defmethod background-colour ((obj text-attr))
  (make-wx-instance 'colour (wxTextAttr_GetBackgroundColour (object-pointer obj))))

(defmethod font ((obj text-attr))
  (make-wx-instance 'font (wxTextAttr_GetFont (object-pointer obj))))

(defmethod text-colour ((obj text-attr))
  (make-wx-instance 'colour (wxTextAttr_GetTextColour (object-pointer obj))))

(defmethod has-background-colour-p ((obj text-attr))
  (= 1 (wxTextAttr_HasBackgroundColour (object-pointer obj))))

(defmethod has-font-p ((obj text-attr))
  (= 1 (wxTextAttr_HasFont (object-pointer obj))))

(defmethod has-text-colour-p ((obj text-attr))
  (= 1 (wxTextAttr_HasTextColour (object-pointer obj))))

(defmethod default-p ((obj text-attr))
  (= 1 (wxTextAttr_IsDefault (object-pointer obj))))

(defmethod (setf text-colour) (col (obj text-attr))
  (wxTextAttr_SetTextColour (object-pointer obj) (object-pointer col)))

(defmethod (setf background-colour) (col (obj text-attr))
  (wxTextAttr_SetBackgroundColour (object-pointer obj) (object-pointer col)))

(defmethod (setf font) (font (obj text-attr))
  (wxTextAttr_SetFont (object-pointer obj) (object-pointer font)))

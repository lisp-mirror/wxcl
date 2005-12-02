;;;wxColourDialog.lisp
;;;License  : wxWindows License 3.1
;;;Author(s) : Surendra Singhi (surendra@asu.edu) 
;;;Copyright (C) 2005 Surendra Singhi 
;;;See the file LICENSE for information on usage and redistribution.
;;;
;;; $Header$
;;;

; (defpackage :wxColourDialog
;     (:use :common-lisp :ffi :wxCL :wxWindow :wxDialog :wxColourData :wxColour)
;   (:export :wxColourDialog_Create
; 	   :wxColourDialog_GetColourData
; 	   :wxcl-get-colour
; 	   :wxcl-with-colout-dialog))

(in-package :wxcl-dialogs)

(ffi:default-foreign-language :stdc)

(ffi:def-call-out wxColourDialog_Create
    (:name "wxColourDialog_Create")
  (:arguments (_prt (ffi:c-pointer NIL))
	      (col (ffi:c-pointer NIL)))
  (:return-type (ffi:c-pointer NIL))
  (:library +library-name+))

(ffi:def-call-out wxColourDialog_GetColourData
    (:name "wxColourDialog_GetColourData")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (col (ffi:c-pointer NIL)))
  (:return-type NIL)
  (:library +library-name+))

(defmacro with-colour-dialog ((dialog parent &optional (colour-data nil)) &body body)
  `(let (,dialog) 
    (unwind-protect
	 (progn
	   (setf ,dialog (wxColourDialog_Create ,parent ,colour-data))
	   ,@body)
      (wxWindow_destroy ,dialog))))

;;;wxColourDialog.lisp
;;;License   : BSD-style
;;;Author(s) : Surendra Singhi (surendra@asu.edu) 
;;;Copyright (C) 2005 Surendra Singhi 
;;;See the file LICENSE for information on usage and redistribution.
;;;
;;; $Header$
;;;

(defpackage :wxColourDialog
    (:use :common-lisp :ffi :wxCL :wxWindow :wxDialog :wxColourData)
  (:export :wxColourDialog_Create
	   :wxColourDialog_GetColourData
	   :wxcl-get-colour
	   :wxcl-with-colout-dialog))

(in-package :wxColourDialog)

(defconstant wxID_OK 5100)
(defconstant wxID_CANCEL 5101)

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

(defmacro with-colour-dialog ((dialog parent &optional (colour nil)) &body body)
  `(let (,dialog) 
    (unwind-protect
	 (progn
	   (setf ,dialog (wxColourDialog_Create ,parent ,colour))
	   ,@body)
      (wxWindow_destroy ,dialog))))

(defun wxcl-get-colour (parent &optional (colour nil))
  (with-colour-dialog (dialog parent colour)
    (when (= (wxDialog_ShowModal dialog) wxID_OK)
      (let ((colour (wxColourData_Create)))
      	(wxColourDialog_GetColourData dialog colour)
	colour))))

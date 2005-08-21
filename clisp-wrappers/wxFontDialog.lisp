;;;wxFontDialog.lisp
;;;License  : wxWindows License 3.1
;;;Author(s) : Surendra Singhi (surendra@asu.edu) 
;;;Copyright (C) 2005 Surendra Singhi 
;;;See the file LICENSE for information on usage and redistribution.
;;;
;;; $Header$
;;;

(defpackage :wxFontDialog
    (:use :common-lisp :ffi :WxCL :wxWindow :wxDialog :wxFontData)
  (:export :wxFontDialog_Create
	   :wxFontDialog_GetFontData
	   :wxcl-get-font
	   :wxcl-with-font-dialog))

(in-package :wxFontDialog)

(defconstant wxID_OK 5100)
(defconstant wxID_CANCEL 5101)

(ffi:default-foreign-language :stdc)

(ffi:def-call-out wxFontDialog_Create
    (:name "wxFontDialog_Create")
  (:arguments (_prt (ffi:c-pointer NIL))
	      (fnt (ffi:c-pointer NIL)))
  (:return-type (ffi:c-pointer NIL))
  (:library +library-name+))

(ffi:def-call-out wxFontDialog_GetFontData
    (:name "wxFontDialog_GetFontData")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (_ref (ffi:c-pointer NIL)))
  (:return-type NIL)
  (:library +library-name+))


(defmacro with-font-dialog ((dialog parent &optional (font nil)) &body body)
  `(let (,dialog) 
    (unwind-protect
	 (progn
	   (setf ,dialog (wxFontDialog_Create ,parent ,font))
	   ,@body)
      (wxWindow_destroy ,dialog))))

(defun wxcl-get-font (parent &optional (font nil))
  (with-font-dialog (dialog parent font)
    (when (= (wxDialog_ShowModal dialog) wxID_OK)
      (let ((font (wxFontData_Create)))
      	(wxFontDialog_GetFontData dialog font)
	font))))

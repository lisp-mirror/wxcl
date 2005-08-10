;;;wxColourDialog.lisp
;;;License   : BSD-style
;;;Author(s) : Surendra Singhi (surendra@asu.edu) 
;;;Copyright (C) 2005 Surendra Singhi 
;;;See the file LICENSE for information on usage and redistribution.
;;;
;;; $Header$
;;;

(defpackage :wxColourDialog
  (:use :common-lisp :ffi :wxCL)
  (:export
	:wxColourDialog_Create
	:wxColourDialog_GetColourData))

(in-package :wxColourDlg)

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

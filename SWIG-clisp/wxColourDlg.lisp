;;;wxColourDlg.lisp
;;;License  : wxWindows License 3.1
;;;Author(s) : Surendra Singhi (surendra@asu.edu) 
;;;Copyright (C) 2005 Surendra Singhi 
;;;See the file LICENSE for information on usage and redistribution.
;;;
;;; $Header$
;;;
;; This is an automatically generated file. 
;;Make changes as you feel are necessary (but remember if you try to regenerate this file, your changes will be lost). 

(defpackage :wxColourDlg
  (:use :common-lisp :ffi)
  (:export
	:wxColourDialog_Create
	:wxColourDialog_GetColourData))

(in-package :wxColourDlg)

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

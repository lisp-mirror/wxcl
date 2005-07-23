;;;wxMessageDialog.lisp
;;;License   : BSD-style
;;;Author(s) : Surendra Singhi (surendra@asu.edu) 
;;;Copyright (C) 2005 Surendra Singhi 
;;;See the file LICENSE for information on usage and redistribution.
;;;
;;; $Header$
;;;
;; This is an automatically generated file. 
;;Make changes as you feel are necessary (but remember if you try to regenerate this file, your changes will be lost). 

(defpackage "wxMessageDialog"
  (:use :common-lisp :ffi)
	:wxMessageDialog_Create
	:wxMessageDialog_Delete
	:wxMessageDialog_ShowModal)

(in-package :wxMessageDialog)

(ffi:def-call-out wxMessageDialog_Create
	(:name "wxMessageDialog_Create")
	(:arguments (_prt (ffi:c-pointer NIL))
		(_msg (ffi:c-pointer NIL))
		(_cap (ffi:c-pointer NIL))
		(_stl ffi:int))
	(:return-type (ffi:c-pointer NIL))
	(:library +library-name+))

(ffi:def-call-out wxMessageDialog_Delete
	(:name "wxMessageDialog_Delete")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxMessageDialog_ShowModal
	(:name "wxMessageDialog_ShowModal")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

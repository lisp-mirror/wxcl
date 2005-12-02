;;;wxProgressDialog.lisp
;;;License  : wxWindows License 3.1
;;;Author(s) : Surendra Singhi (surendra@asu.edu) 
;;;Copyright (C) 2005 Surendra Singhi 
;;;See the file LICENSE for information on usage and redistribution.
;;;
;;; $Header$
;;;

; (defpackage :wxProgressDialog
;     (:use :common-lisp :ffi :wxCL :wxWindow :wxDialog)
;     (:export :wxProgressDialog_Create
; 	:wxProgressDialog_Update
; 	:wxProgressDialog_UpdateWithMessage
; 	:wxProgressDialog_Resume))

(in-package :wxcl-dialogs)

(ffi:default-foreign-language :stdc)

(ffi:def-c-type wxProgressDialog NIL)

(ffi:def-call-out wxProgressDialog_Create
	(:name "wxProgressDialog_Create")
	(:arguments (title ffi:c-string)
		(message ffi:c-string)
		(max ffi:int)
		(parent (ffi:c-pointer NIL))
		(style ffi:int))
	(:return-type (ffi:c-pointer wxProgressDialog))
	(:library +library-name+))

(ffi:def-call-out wxProgressDialog_Update
	(:name "wxProgressDialog_Update")
	(:arguments (obj (ffi:c-pointer wxProgressDialog))
		(value ffi:int))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxProgressDialog_UpdateWithMessage
	(:name "wxProgressDialog_UpdateWithMessage")
	(:arguments (obj (ffi:c-pointer wxProgressDialog))
		(value ffi:int)
		(message ffi:c-string))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxProgressDialog_Resume
	(:name "wxProgressDialog_Resume")
	(:arguments (obj (ffi:c-pointer wxProgressDialog)))
	(:library +library-name+))


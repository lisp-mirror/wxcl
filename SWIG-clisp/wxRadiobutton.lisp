;;;wxRadiobutton.lisp
;;;License  : wxWindows License 3.1
;;;Author(s) : Surendra Singhi (surendra@asu.edu) 
;;;Copyright (C) 2005 Surendra Singhi 
;;;See the file LICENSE for information on usage and redistribution.
;;;
;;; $Header$
;;;
;; This is an automatically generated file. 
;;Make changes as you feel are necessary (but remember if you try to regenerate this file, your changes will be lost). 

(defpackage :wxRadiobutton
  (:use :common-lisp :ffi)
  (:export
	:wxRadioButton_Create
	:wxRadioButton_SetValue
	:wxRadioButton_GetValue))

(in-package :wxRadiobutton)

(ffi:def-call-out wxRadioButton_Create
	(:name "wxRadioButton_Create")
	(:arguments (_prt (ffi:c-pointer NIL))
		(_id ffi:int)
		(_txt ffi:c-string)
		(_lft ffi:int)
		(_top ffi:int)
		(_wdt ffi:int)
		(_hgt ffi:int)
		(_stl ffi:int))
	(:return-type (ffi:c-pointer NIL))
	(:library +library-name+))

(ffi:def-call-out wxRadioButton_SetValue
	(:name "wxRadioButton_SetValue")
	(:arguments (_obj (ffi:c-pointer NIL))
		(value ffi:int))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxRadioButton_GetValue
	(:name "wxRadioButton_GetValue")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

;;;wxDialog.lisp
;;;License  : GNU General Public License (GPL)
;;;Author(s) : Surendra Singhi (surendra@asu.edu) 
;;;Copyright (C) 2005 Surendra Singhi 
;;;See the file LICENSE for information on usage and redistribution.
;;;
;;; $Header$
;;;
;; This is an automatically generated file. 
;;Make changes as you feel are necessary (but remember if you try to regenerate this file, your changes will be lost). 

(defpackage :wxDialog
  (:use :common-lisp :ffi)
  (:export
	:wxDialog_Create
	:wxDialog_IsModal
	:wxDialog_ShowModal
	:wxDialog_EndModal
	:wxDialog_SetReturnCode
	:wxDialog_GetReturnCode))

(in-package :wxDialog)

(ffi:def-call-out wxDialog_Create
	(:name "wxDialog_Create")
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

(ffi:def-call-out wxDialog_IsModal
	(:name "wxDialog_IsModal")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxDialog_ShowModal
	(:name "wxDialog_ShowModal")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxDialog_EndModal
	(:name "wxDialog_EndModal")
	(:arguments (_obj (ffi:c-pointer NIL))
		(retCode ffi:int))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxDialog_SetReturnCode
	(:name "wxDialog_SetReturnCode")
	(:arguments (_obj (ffi:c-pointer NIL))
		(returnCode ffi:int))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxDialog_GetReturnCode
	(:name "wxDialog_GetReturnCode")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

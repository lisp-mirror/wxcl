;;;wxStaticLine.lisp
;;;License  : GNU General Public License (GPL)
;;;Author(s) : Surendra Singhi (surendra@asu.edu) 
;;;Copyright (C) 2005 Surendra Singhi 
;;;See the file LICENSE for information on usage and redistribution.
;;;
;;; $Header$
;;;
;; This is an automatically generated file. 
;;Make changes as you feel are necessary (but remember if you try to regenerate this file, your changes will be lost). 

(defpackage :wxStaticLine
  (:use :common-lisp :ffi)
  (:export
	:wxStaticLine_Create
	:wxStaticLine_IsVertical
	:wxStaticLine_GetDefaultSize))

(in-package :wxStaticLine)

(ffi:def-call-out wxStaticLine_Create
	(:name "wxStaticLine_Create")
	(:arguments (_prt (ffi:c-pointer NIL))
		(_id ffi:int)
		(_lft ffi:int)
		(_top ffi:int)
		(_wdt ffi:int)
		(_hgt ffi:int)
		(_stl ffi:int))
	(:return-type (ffi:c-pointer NIL))
	(:library +library-name+))

(ffi:def-call-out wxStaticLine_IsVertical
	(:name "wxStaticLine_IsVertical")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxStaticLine_GetDefaultSize
	(:name "wxStaticLine_GetDefaultSize")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

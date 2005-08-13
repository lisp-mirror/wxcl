;;;wxStaticBox.lisp
;;;License   : BSD-style
;;;Author(s) : Surendra Singhi (surendra@asu.edu) 
;;;Copyright (C) 2005 Surendra Singhi 
;;;See the file LICENSE for information on usage and redistribution.
;;;
;;; $Header$
;;;

(defpackage :wxStaticBox
  (:use :common-lisp :ffi :wxCL)
  (:export
	:wxStaticBox_Create))

(in-package :wxStaticBox)

(ffi:default-foreign-language :stdc)

(ffi:def-call-out wxStaticBox_Create
	(:name "wxStaticBox_Create")
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

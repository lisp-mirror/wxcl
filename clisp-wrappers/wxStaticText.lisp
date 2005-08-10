;;;wxStaticText.lisp
;;;License   : BSD-style
;;;Author(s) : Surendra Singhi (surendra@asu.edu) 
;;;Copyright (C) 2005 Surendra Singhi 
;;;See the file LICENSE for information on usage and redistribution.
;;;
;;; $Header$
;;;

(defpackage :wxStaticText
  (:use :common-lisp :ffi)
  (:export
	:wxStaticText_Create))

(in-package :wxStaticText)

(ffi:def-c-type wxFileDialog nil)

(ffi:def-call-out wxStaticText_Create
	(:name "wxStaticText_Create")
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

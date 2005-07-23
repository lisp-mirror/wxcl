;;;wxSystemSettings.lisp
;;;License   : BSD-style
;;;Author(s) : Surendra Singhi (surendra@asu.edu) 
;;;Copyright (C) 2005 Surendra Singhi 
;;;See the file LICENSE for information on usage and redistribution.
;;;
;;; $Header$
;;;
;; This is an automatically generated file. 
;;Make changes as you feel are necessary (but remember if you try to regenerate this file, your changes will be lost). 

(defpackage "wxSystemSettings"
  (:use :common-lisp :ffi)
	:wxSystemSettings_GetSystemColour
	:wxSystemSettings_GetSystemFont
	:wxSystemSettings_GetSystemMetric)

(in-package :wxSystemSettings)

(ffi:def-call-out wxSystemSettings_GetSystemColour
	(:name "wxSystemSettings_GetSystemColour")
	(:arguments (index ffi:int)
		(_ref (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxSystemSettings_GetSystemFont
	(:name "wxSystemSettings_GetSystemFont")
	(:arguments (index ffi:int)
		(_ref (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxSystemSettings_GetSystemMetric
	(:name "wxSystemSettings_GetSystemMetric")
	(:arguments (index ffi:int))
	(:return-type ffi:int)
	(:library +library-name+))

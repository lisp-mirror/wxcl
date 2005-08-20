;;;wxSystemSettings.lisp
;;;License  : GNU General Public License (GPL)
;;;Author(s) : Surendra Singhi (surendra@asu.edu) 
;;;Copyright (C) 2005 Surendra Singhi 
;;;See the file LICENSE for information on usage and redistribution.
;;;
;;; $Header$
;;;

(defpackage :wxSystemSettings
  (:use :common-lisp :ffi :wxCL)
  (:export
	:wxSystemSettings_GetSystemColour
	:wxSystemSettings_GetSystemFont
	:wxcSystemSettingsGetColour
	:wxSystemSettings_GetSystemMetric))

(in-package :wxSystemSettings)

(ffi:default-foreign-language :stdc)

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

(ffi:def-call-out wxcSystemSettingsGetColour
    (:name "wxcSystemSettingsGetColour")
  (:arguments (systemColour ffi:int))
  (:return-type (ffi:c-pointer NIL))
  (:library +library-name+))

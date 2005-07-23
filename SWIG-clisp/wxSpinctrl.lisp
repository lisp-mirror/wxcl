;;;wxSpinctrl.lisp
;;;License   : BSD-style
;;;Author(s) : Surendra Singhi (surendra@asu.edu) 
;;;Copyright (C) 2005 Surendra Singhi 
;;;See the file LICENSE for information on usage and redistribution.
;;;
;;; $Header$
;;;
;; This is an automatically generated file. 
;;Make changes as you feel are necessary (but remember if you try to regenerate this file, your changes will be lost). 

(defpackage :wxSpinctrl
  (:use :common-lisp :ffi)
  (:export
	:wxSpinCtrl_Create
	:wxSpinCtrl_SetValue
	:wxSpinCtrl_GetValue
	:wxSpinCtrl_SetRange
	:wxSpinCtrl_GetMin
	:wxSpinCtrl_GetMax
	:wxSpinButton_Create
	:wxSpinButton_GetValue
	:wxSpinButton_GetMin
	:wxSpinButton_GetMax
	:wxSpinButton_SetValue
	:wxSpinButton_SetRange))

(in-package :wxSpinctrl)

(ffi:def-call-out wxSpinCtrl_Create
	(:name "wxSpinCtrl_Create")
	(:arguments (_prt (ffi:c-pointer NIL))
		(_id ffi:int)
		(_txt ffi:c-string)
		(_lft ffi:int)
		(_top ffi:int)
		(_wdt ffi:int)
		(_hgt ffi:int)
		(_stl ffi:long)
		(_min ffi:int)
		(_max ffi:int)
		(_init ffi:int))
	(:return-type (ffi:c-pointer NIL))
	(:library +library-name+))

(ffi:def-call-out wxSpinCtrl_SetValue
	(:name "wxSpinCtrl_SetValue")
	(:arguments (_obj (ffi:c-pointer NIL))
		(val ffi:int))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxSpinCtrl_GetValue
	(:name "wxSpinCtrl_GetValue")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxSpinCtrl_SetRange
	(:name "wxSpinCtrl_SetRange")
	(:arguments (_obj (ffi:c-pointer NIL))
		(min_val ffi:int)
		(max_val ffi:int))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxSpinCtrl_GetMin
	(:name "wxSpinCtrl_GetMin")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxSpinCtrl_GetMax
	(:name "wxSpinCtrl_GetMax")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxSpinButton_Create
	(:name "wxSpinButton_Create")
	(:arguments (_prt (ffi:c-pointer NIL))
		(_id ffi:int)
		(_lft ffi:int)
		(_top ffi:int)
		(_wdt ffi:int)
		(_hgt ffi:int)
		(_stl ffi:long))
	(:return-type (ffi:c-pointer NIL))
	(:library +library-name+))

(ffi:def-call-out wxSpinButton_GetValue
	(:name "wxSpinButton_GetValue")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxSpinButton_GetMin
	(:name "wxSpinButton_GetMin")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxSpinButton_GetMax
	(:name "wxSpinButton_GetMax")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxSpinButton_SetValue
	(:name "wxSpinButton_SetValue")
	(:arguments (_obj (ffi:c-pointer NIL))
		(val ffi:int))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxSpinButton_SetRange
	(:name "wxSpinButton_SetRange")
	(:arguments (_obj (ffi:c-pointer NIL))
		(minVal ffi:int)
		(maxVal ffi:int))
	(:return-type NIL)
	(:library +library-name+))

;;;wxCaret.lisp
;;;License   : BSD-style
;;;Author(s) : Surendra Singhi (surendra@asu.edu) 
;;;Copyright (C) 2005 Surendra Singhi 
;;;See the file LICENSE for information on usage and redistribution.
;;;
;;; $Header$
;;;
;; This is an automatically generated file. 
;;Make changes as you feel are necessary (but remember if you try to regenerate this file, your changes will be lost). 

(defpackage "wxCaret"
  (:use :common-lisp :ffi)
	:wxCaret_Create
	:wxCaret_IsOk
	:wxCaret_IsVisible
	:wxCaret_GetPosition
	:wxCaret_GetSize
	:wxCaret_GetWindow
	:wxCaret_SetSize
	:wxCaret_Move
	:wxCaret_Show
	:wxCaret_Hide
	:wxCaret_GetBlinkTime
	:wxCaret_SetBlinkTime)

(in-package :wxCaret)

(ffi:def-call-out wxCaret_Create
	(:name "wxCaret_Create")
	(:arguments (_wnd (ffi:c-pointer NIL))
		(_wth ffi:int)
		(_hgt ffi:int))
	(:return-type (ffi:c-pointer NIL))
	(:library +library-name+))

(ffi:def-call-out wxCaret_IsOk
	(:name "wxCaret_IsOk")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxCaret_IsVisible
	(:name "wxCaret_IsVisible")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxCaret_GetPosition
	(:name "wxCaret_GetPosition")
	(:arguments (_obj (ffi:c-pointer NIL))
		(x (ffi:c-pointer NIL))
		(y (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxCaret_GetSize
	(:name "wxCaret_GetSize")
	(:arguments (_obj (ffi:c-pointer NIL))
		(width (ffi:c-pointer NIL))
		(height (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxCaret_GetWindow
	(:name "wxCaret_GetWindow")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type (ffi:c-pointer NIL))
	(:library +library-name+))

(ffi:def-call-out wxCaret_SetSize
	(:name "wxCaret_SetSize")
	(:arguments (_obj (ffi:c-pointer NIL))
		(width ffi:int)
		(height ffi:int))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxCaret_Move
	(:name "wxCaret_Move")
	(:arguments (_obj (ffi:c-pointer NIL))
		(x ffi:int)
		(y ffi:int))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxCaret_Show
	(:name "wxCaret_Show")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxCaret_Hide
	(:name "wxCaret_Hide")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxCaret_GetBlinkTime
	(:name "wxCaret_GetBlinkTime")
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxCaret_SetBlinkTime
	(:name "wxCaret_SetBlinkTime")
	(:arguments (milliseconds ffi:int))
	(:return-type NIL)
	(:library +library-name+))

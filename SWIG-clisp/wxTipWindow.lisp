;; This is an automatically generated file. 
;;Make changes as you feel are necessary (but remember if you try to regenerate this file, your changes will be lost). 

(defpackage :wxTipWindow
  (:use :common-lisp :ffi)
  (:export
	:wxTipWindow_Create
	:wxTipWindow_SetTipWindowPtr
	:wxTipWindow_SetBoundingRect
	:wxTipWindow_Close))

(in-package :wxTipWindow)

(ffi:def-call-out wxTipWindow_Create
	(:name "wxTipWindow_Create")
	(:arguments (parent (ffi:c-pointer NIL))
		(text (ffi:c-pointer NIL))
		(maxLength ffi:int))
	(:return-type (ffi:c-pointer NIL))
	(:library +library-name+))

(ffi:def-call-out wxTipWindow_SetTipWindowPtr
	(:name "wxTipWindow_SetTipWindowPtr")
	(:arguments (_obj (ffi:c-pointer NIL))
		(windowPtr (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxTipWindow_SetBoundingRect
	(:name "wxTipWindow_SetBoundingRect")
	(:arguments (_obj (ffi:c-pointer NIL))
		(x ffi:int)
		(y ffi:int)
		(w ffi:int)
		(h ffi:int))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxTipWindow_Close
	(:name "wxTipWindow_Close")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

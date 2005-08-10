;;;wxTipWindow.lisp
;;;License   : BSD-style
;;;Author(s) : Surendra Singhi (surendra@asu.edu) 
;;;Copyright (C) 2005 Surendra Singhi 
;;;See the file LICENSE for information on usage and redistribution.
;;;
;;; $Header$
;;;

(defpackage :wxTipWindow
  (:use :common-lisp :ffi)
  (:export
	:wxTipWindow_Create
	:wxTipWindow_SetTipWindowPtr
	:wxTipWindow_SetBoundingRect
	:wxTipWindow_Close))

(in-package :wxTipWindow)

(ffi:default-foreign-language :stdc)

(ffi:def-call-out wxTipWindow_Create
	(:name "wxTipWindow_Create")
	(:arguments (parent (ffi:c-pointer NIL))
		(text ffi:c-string)
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

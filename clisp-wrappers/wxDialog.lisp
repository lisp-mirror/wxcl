;;;wxDialog.lisp
;;;License   : BSD-style
;;;Author(s) : Surendra Singhi (surendra@asu.edu) 
;;;Copyright (C) 2005 Surendra Singhi 
;;;See the file LICENSE for information on usage and redistribution.
;;;
;;; $Header$
;;;
;; This is an automatically generated file. 
;;Make changes as you feel are necessary (but remember if you try to regenerate this file, your changes will be lost). 

(defpackage :wxDialog
  (:use :common-lisp :ffi :wxCL :wxwindow)
  (:export
	:wxDialog_Create
	:wxDialog_IsModal
	:wxDialog_ShowModal
	:wxDialog_EndModal
	:wxDialog_SetReturnCode
	:wxDialog_GetReturnCode
	:wxCAPTION
	:wxRESIZE_BORDER
	:wxSTAY_ON_TOP
	:wxDIALOG_MODAL
	:wxDIALOG_MODELESS
	))

(in-package :wxDialog)

(ffi:def-c-type wxDialog nil)

(defconstant wxDIALOG_MODAL 32)
(defconstant wxDIALOG_MODELESS 0)

(defconstant wxCAPTION 536870912)
(defconstant wxRESIZE_BORDER 64)
(defconstant wxSTAY_ON_TOP 32768)

(ffi:default-foreign-language :stdc)
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
	(:return-type wxDialog :NONE)
	(:library +library-name+))

(ffi:def-call-out wxDialog_IsModal
	(:name "wxDialog_IsModal")
	(:arguments (_obj (ffi:c-pointer wxDialog)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxDialog_ShowModal
	(:name "wxDialog_ShowModal")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxDialog_EndModal
	(:name "wxDialog_EndModal")
	(:arguments (_obj (ffi:c-pointer wxDialog))
		(retCode ffi:int))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxDialog_SetReturnCode
	(:name "wxDialog_SetReturnCode")
	(:arguments (_obj (ffi:c-pointer wxDialog))
		(returnCode ffi:int))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxDialog_GetReturnCode
	(:name "wxDialog_GetReturnCode")
	(:arguments (_obj (ffi:c-pointer wxDialog)))
	(:return-type ffi:int)
	(:library +library-name+))

(defmacro with-dialog ((dialog parent &key (id -1) (title "") (left -1) (top -1)
			       (width -1) (height -1) style) &body body)
  `(let (,dialog) 
    (unwind-protect
	 (progn
	   (setf ,dialog (wxDialog_Create ,parent ,id ,title ,left ,top ,width ,height ,style))
	   ,@body)
	 (wxWindow_destroy ,dialog))))

;;;wxPanel.lisp
;;;License  : GNU General Public License (GPL)
;;;Author(s) : Surendra Singhi (surendra@asu.edu) 
;;;Copyright (C) 2005 Surendra Singhi 
;;;See the file LICENSE for information on usage and redistribution.
;;;
;;; $Header$
;;;
;; This is an automatically generated file. 
;;Make changes as you feel are necessary (but remember if you try to regenerate this file, your changes will be lost). 

(defpackage :wxPanel
  (:use :common-lisp :ffi)
  (:export
	:wxPanel_Create
	:wxPanel_InitDialog
	:wxPanel_GetDefaultItem
	:wxPanel_SetDefaultItem))

(in-package :wxPanel)

(ffi:def-call-out wxPanel_Create
	(:name "wxPanel_Create")
	(:arguments (_prt (ffi:c-pointer NIL))
		(_id ffi:int)
		(_lft ffi:int)
		(_top ffi:int)
		(_wdt ffi:int)
		(_hgt ffi:int)
		(_stl ffi:int))
	(:return-type (ffi:c-pointer NIL))
	(:library +library-name+))

(ffi:def-call-out wxPanel_InitDialog
	(:name "wxPanel_InitDialog")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxPanel_GetDefaultItem
	(:name "wxPanel_GetDefaultItem")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type (ffi:c-pointer NIL))
	(:library +library-name+))

(ffi:def-call-out wxPanel_SetDefaultItem
	(:name "wxPanel_SetDefaultItem")
	(:arguments (_obj (ffi:c-pointer NIL))
		(btn (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

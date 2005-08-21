;;;wxChoice.lisp
;;;License  : wxWindows License 3.1
;;;Author(s) : Surendra Singhi (surendra@asu.edu) 
;;;Copyright (C) 2005 Surendra Singhi 
;;;See the file LICENSE for information on usage and redistribution.
;;;
;;; $Header$
;;;
;; This is an automatically generated file. 
;;Make changes as you feel are necessary (but remember if you try to regenerate this file, your changes will be lost). 

(defpackage :wxChoice
  (:use :common-lisp :ffi)
  (:export
	:wxChoice_Create
	:wxChoice_Append
	:wxChoice_Delete
	:wxChoice_Clear
	:wxChoice_GetCount
	:wxChoice_GetSelection
	:wxChoice_SetSelection
	:wxChoice_FindString
	:wxChoice_GetString
	:wxChoice_SetString))

(in-package :wxChoice)

(ffi:def-call-out wxChoice_Create
	(:name "wxChoice_Create")
	(:arguments (_prt (ffi:c-pointer NIL))
		(_id ffi:int)
		(_lft ffi:int)
		(_top ffi:int)
		(_wdt ffi:int)
		(_hgt ffi:int)
		(_n ffi:int)
		(_str (ffi:c-pointer NIL))
		(_stl ffi:int))
	(:return-type (ffi:c-pointer NIL))
	(:library +library-name+))

(ffi:def-call-out wxChoice_Append
	(:name "wxChoice_Append")
	(:arguments (_obj (ffi:c-pointer NIL))
		(item ffi:c-string))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxChoice_Delete
	(:name "wxChoice_Delete")
	(:arguments (_obj (ffi:c-pointer NIL))
		(n ffi:int))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxChoice_Clear
	(:name "wxChoice_Clear")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxChoice_GetCount
	(:name "wxChoice_GetCount")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxChoice_GetSelection
	(:name "wxChoice_GetSelection")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxChoice_SetSelection
	(:name "wxChoice_SetSelection")
	(:arguments (_obj (ffi:c-pointer NIL))
		(n ffi:int))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxChoice_FindString
	(:name "wxChoice_FindString")
	(:arguments (_obj (ffi:c-pointer NIL))
		(s ffi:c-string))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxChoice_GetString
	(:name "wxChoice_GetString")
	(:arguments (_obj (ffi:c-pointer NIL))
		(n ffi:int)
		(_buf (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxChoice_SetString
	(:name "wxChoice_SetString")
	(:arguments (_obj (ffi:c-pointer NIL))
		(n ffi:int)
		(s ffi:c-string))
	(:return-type NIL)
	(:library +library-name+))

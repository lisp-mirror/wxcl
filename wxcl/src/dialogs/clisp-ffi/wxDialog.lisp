;;;wxDialog.lisp
;;;License  : wxWindows License 3.1
;;;Author(s) : Surendra Singhi (surendra@asu.edu) 
;;;Copyright (C) 2005 Surendra Singhi 
;;;See the file LICENSE for information on usage and redistribution.
;;;
;;; $Header$
;;;
;; This is an automatically generated file. 
;;Make changes as you feel are necessary (but remember if you try to regenerate this file, your changes will be lost). 

(in-package :wxcl-dialogs)

(ffi:def-c-type wxDialog nil)
    
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
	(:return-type (ffi:c-pointer wxDialog))
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


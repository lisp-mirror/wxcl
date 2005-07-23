;;;wxValidator.lisp
;;;License   : BSD-style
;;;Author(s) : Surendra Singhi (surendra@asu.edu) 
;;;Copyright (C) 2005 Surendra Singhi 
;;;See the file LICENSE for information on usage and redistribution.
;;;
;;; $Header$
;;;
;; This is an automatically generated file. 
;;Make changes as you feel are necessary (but remember if you try to regenerate this file, your changes will be lost). 

(defpackage "wxValidator"
  (:use :common-lisp :ffi)
	:wxValidator_Create
	:wxValidator_Delete
	:wxValidator_Validate
	:wxValidator_TransferToWindow
	:wxValidator_TransferFromWindow
	:wxValidator_GetWindow
	:wxValidator_SetWindow
	:wxValidator_IsSilent
	:wxValidator_SetBellOnError
	:wxTextValidator_Create
	:wxTextValidator_GetStyle
	:wxTextValidator_SetStyle
	:wxTextValidator_SetIncludeList
	:wxTextValidator_GetIncludeList
	:wxTextValidator_SetExcludeList
	:wxTextValidator_GetExcludeList
	:wxTextValidator_OnChar
	:ELJTextValidator_Create)

(in-package :wxValidator)

(ffi:def-call-out wxValidator_Create
	(:name "wxValidator_Create")
	(:return-type (ffi:c-pointer NIL))
	(:library +library-name+))

(ffi:def-call-out wxValidator_Delete
	(:name "wxValidator_Delete")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxValidator_Validate
	(:name "wxValidator_Validate")
	(:arguments (_obj (ffi:c-pointer NIL))
		(parent (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxValidator_TransferToWindow
	(:name "wxValidator_TransferToWindow")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxValidator_TransferFromWindow
	(:name "wxValidator_TransferFromWindow")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxValidator_GetWindow
	(:name "wxValidator_GetWindow")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type (ffi:c-pointer NIL))
	(:library +library-name+))

(ffi:def-call-out wxValidator_SetWindow
	(:name "wxValidator_SetWindow")
	(:arguments (_obj (ffi:c-pointer NIL))
		(win (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxValidator_IsSilent
	(:name "wxValidator_IsSilent")
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxValidator_SetBellOnError
	(:name "wxValidator_SetBellOnError")
	(:arguments (doIt ffi:int))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxTextValidator_Create
	(:name "wxTextValidator_Create")
	(:arguments (style ffi:int)
		(val (ffi:c-pointer NIL)))
	(:return-type (ffi:c-pointer NIL))
	(:library +library-name+))

(ffi:def-call-out wxTextValidator_GetStyle
	(:name "wxTextValidator_GetStyle")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxTextValidator_SetStyle
	(:name "wxTextValidator_SetStyle")
	(:arguments (_obj (ffi:c-pointer NIL))
		(style ffi:int))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxTextValidator_SetIncludeList
	(:name "wxTextValidator_SetIncludeList")
	(:arguments (_obj (ffi:c-pointer NIL))
		(list (ffi:c-pointer NIL))
		(count ffi:int))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxTextValidator_GetIncludeList
	(:name "wxTextValidator_GetIncludeList")
	(:arguments (_obj (ffi:c-pointer NIL))
		(_ref (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxTextValidator_SetExcludeList
	(:name "wxTextValidator_SetExcludeList")
	(:arguments (_obj (ffi:c-pointer NIL))
		(list (ffi:c-pointer NIL))
		(count ffi:int))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxTextValidator_GetExcludeList
	(:name "wxTextValidator_GetExcludeList")
	(:arguments (_obj (ffi:c-pointer NIL))
		(_ref (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxTextValidator_OnChar
	(:name "wxTextValidator_OnChar")
	(:arguments (_obj (ffi:c-pointer NIL))
		(event (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out ELJTextValidator_Create
	(:name "ELJTextValidator_Create")
	(:arguments (_obj (ffi:c-pointer NIL))
		(_fnc (ffi:c-pointer NIL))
		(_txt (ffi:c-pointer NIL))
		(_stl ffi:long))
	(:return-type (ffi:c-pointer NIL))
	(:library +library-name+))

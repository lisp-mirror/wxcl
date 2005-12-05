;;;wxFindReplaceDialog.lisp
;;;License  : wxWindows License 3.1
;;;Author(s) : Surendra Singhi (surendra@asu.edu) 
;;;Copyright (C) 2005 Surendra Singhi 
;;;See the file LICENSE for information on usage and redistribution.
;;;
;;; $Header$
;;;

; (defpackage :wxFindReplaceDialog
;   (:use :common-lisp :ffi :wxCL)
;   (:export
; 	:wxFindReplaceData_CreateDefault
; 	:wxFindReplaceData_Create
; 	:wxFindReplaceData_Delete
; 	:wxFindReplaceData_GetFindString
; 	:wxFindReplaceData_GetReplaceString
; 	:wxFindReplaceData_GetFlags
; 	:wxFindReplaceData_SetFlags
; 	:wxFindReplaceData_SetFindString
; 	:wxFindReplaceData_SetReplaceString
))

(in-package :wxcl-structures)

(default-foreign-language :stdc)

(def-call-out wxFindReplaceData_Create
	(:name "wxFindReplaceData_Create")
	(:arguments (flags ffi:int))
	(:return-type (c-pointer NIL))
	(:library +library-name+))

(def-call-out wxFindReplaceData_Delete
	(:name "wxFindReplaceData_Delete")
	(:arguments (_obj (c-pointer NIL)))
	(:library +library-name+))

(def-call-out wxFindReplaceData_GetFindString
	(:name "wxFindReplaceData_GetFindString")
	(:arguments (_obj (c-pointer NIL))
		(_ref (c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(def-call-out wxFindReplaceData_GetReplaceString
	(:name "wxFindReplaceData_GetReplaceString")
	(:arguments (_obj (c-pointer NIL))
		(_ref (c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(def-call-out wxFindReplaceData_GetFlags
	(:name "wxFindReplaceData_GetFlags")
	(:arguments (_obj (c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(def-call-out wxFindReplaceData_SetFlags
	(:name "wxFindReplaceData_SetFlags")
	(:arguments (_obj (c-pointer NIL))
		(flags ffi:int))
	(:library +library-name+))

(def-call-out wxFindReplaceData_SetFindString
	(:name "wxFindReplaceData_SetFindString")
	(:arguments (_obj (c-pointer NIL))
		(str (c-pointer NIL)))
	(:library +library-name+))

(def-call-out wxFindReplaceData_SetReplaceString
	(:name "wxFindReplaceData_SetReplaceString")
	(:arguments (_obj (c-pointer NIL))
		(str (c-pointer NIL)))
	(:library +library-name+))

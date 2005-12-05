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
; 	:wxFindDialogEvent_GetFlags
; 	:wxFindDialogEvent_GetFindString
; 	:wxFindDialogEvent_GetReplaceString
; 	:wxFindReplaceDialog_Create
; 	:wxFindReplaceDialog_GetData
; 	:wxFindReplaceDialog_SetData
; 	:expEVT_COMMAND_FIND
; 	:expEVT_COMMAND_FIND_NEXT
; 	:expEVT_COMMAND_FIND_REPLACE
; 	:expEVT_COMMAND_FIND_REPLACE_ALL
; 	:expEVT_COMMAND_FIND_CLOSE))

(in-package :wxcl-events)

(def-call-out wxFindDialogEvent_GetFlags
	(:name "wxFindDialogEvent_GetFlags")
	(:arguments (_obj (c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(def-call-out wxFindDialogEvent_GetFindString
	(:name "wxFindDialogEvent_GetFindString")
	(:arguments (_obj (c-pointer NIL))
		(_ref (c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(def-call-out wxFindDialogEvent_GetReplaceString
	(:name "wxFindDialogEvent_GetReplaceString")
	(:arguments (_obj (c-pointer NIL))
		(_ref (c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(def-call-out expEVT_COMMAND_FIND
	(:name "expEVT_COMMAND_FIND")
	(:return-type ffi:int)
	(:library +library-name+))

(def-call-out expEVT_COMMAND_FIND_NEXT
	(:name "expEVT_COMMAND_FIND_NEXT")
	(:return-type ffi:int)
	(:library +library-name+))

(def-call-out expEVT_COMMAND_FIND_REPLACE
	(:name "expEVT_COMMAND_FIND_REPLACE")
	(:return-type ffi:int)
	(:library +library-name+))

(def-call-out expEVT_COMMAND_FIND_REPLACE_ALL
	(:name "expEVT_COMMAND_FIND_REPLACE_ALL")
	(:return-type ffi:int)
	(:library +library-name+))

(def-call-out expEVT_COMMAND_FIND_CLOSE
	(:name "expEVT_COMMAND_FIND_CLOSE")
	(:return-type ffi:int)
	(:library +library-name+))

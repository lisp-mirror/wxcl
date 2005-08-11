;;;wxFindReplaceDialog.lisp
;;;License   : BSD-style
;;;Author(s) : Surendra Singhi (surendra@asu.edu) 
;;;Copyright (C) 2005 Surendra Singhi 
;;;See the file LICENSE for information on usage and redistribution.
;;;
;;; $Header$
;;;

(defpackage :wxFindReplaceDialog
  (:use :common-lisp :ffi :wxCL)
  (:export
	:wxFindReplaceData_CreateDefault
	:wxFindReplaceData_Create
	:wxFindReplaceData_Delete
	:wxFindReplaceData_GetFindString
	:wxFindReplaceData_GetReplaceString
	:wxFindReplaceData_GetFlags
	:wxFindReplaceData_SetFlags
	:wxFindReplaceData_SetFindString
	:wxFindReplaceData_SetReplaceString
	:wxFindDialogEvent_GetFlags
	:wxFindDialogEvent_GetFindString
	:wxFindDialogEvent_GetReplaceString
	:wxFindReplaceDialog_Create
	:wxFindReplaceDialog_GetData
	:wxFindReplaceDialog_SetData
	:expEVT_COMMAND_FIND
	:expEVT_COMMAND_FIND_NEXT
	:expEVT_COMMAND_FIND_REPLACE
	:expEVT_COMMAND_FIND_REPLACE_ALL
	:expEVT_COMMAND_FIND_CLOSE))

(in-package :wxFindReplaceDialog)

(default-foreign-language :stdc)

(def-call-out wxFindReplaceData_CreateDefault
	(:name "wxFindReplaceData_CreateDefault")
	(:return-type (c-pointer NIL))
	(:library +library-name+))

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

(def-call-out wxFindReplaceDialog_Create
	(:name "wxFindReplaceDialog_Create")
	(:arguments (parent (c-pointer NIL))
		(data (c-pointer NIL))
		(title (c-pointer NIL))
		(style ffi:int))
	(:return-type (c-pointer NIL))
	(:library +library-name+))

(def-call-out wxFindReplaceDialog_GetData
	(:name "wxFindReplaceDialog_GetData")
	(:arguments (_obj (c-pointer NIL)))
	(:return-type (c-pointer NIL))
	(:library +library-name+))

(def-call-out wxFindReplaceDialog_SetData
	(:name "wxFindReplaceDialog_SetData")
	(:arguments (_obj (c-pointer NIL))
		(data (c-pointer NIL)))
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

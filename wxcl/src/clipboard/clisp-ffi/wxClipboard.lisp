;;;wxClipboard.lisp
;;;License  : wxWindows License 3.1
;;;Author(s) : Surendra Singhi (surendra@asu.edu) 
;;;Copyright (C) 2005 Surendra Singhi 
;;;See the file LICENSE for information on usage and redistribution.
;;;
;;; $Header$
;;;

(defpackage :wxClipboard
  (:use :common-lisp :ffi :wxCL)
  (:export
	:wxClipboard_Create
	:wxClipboard_Delete
	:wxClipboard_Open
	:wxClipboard_Close
	:wxClipboard_IsOpened
	:wxClipboard_SetData
	:wxClipboard_AddData
	:wxClipboard_IsSupported
	:wxClipboard_GetData
	:wxClipboard_Clear
	:wxClipboard_Flush
	:wxClipboard_UsePrimarySelection))

(in-package :wxClipboard)

(ffi:default-foreign-language :stdc)

(ffi:def-call-out wxClipboard_Create
	(:name "wxClipboard_Create")
	(:return-type (ffi:c-pointer NIL))
	(:library +library-name+))

(ffi:def-call-out wxClipboard_Delete
	(:name "wxClipboard_Delete")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxClipboard_Open
	(:name "wxClipboard_Open")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxClipboard_Close
	(:name "wxClipboard_Close")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxClipboard_IsOpened
	(:name "wxClipboard_IsOpened")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxClipboard_SetData
	(:name "wxClipboard_SetData")
	(:arguments (_obj (ffi:c-pointer NIL))
		(data (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxClipboard_AddData
	(:name "wxClipboard_AddData")
	(:arguments (_obj (ffi:c-pointer NIL))
		(data (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxClipboard_IsSupported
	(:name "wxClipboard_IsSupported")
	(:arguments (_obj (ffi:c-pointer NIL))
		(format (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxClipboard_GetData
	(:name "wxClipboard_GetData")
	(:arguments (_obj (ffi:c-pointer NIL))
		(data (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxClipboard_Clear
	(:name "wxClipboard_Clear")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxClipboard_Flush
	(:name "wxClipboard_Flush")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxClipboard_UsePrimarySelection
	(:name "wxClipboard_UsePrimarySelection")
	(:arguments (_obj (ffi:c-pointer NIL))
		(primary ffi:int))
	(:return-type NIL)
	(:library +library-name+))

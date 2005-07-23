;;;wxDataFormat.lisp
;;;License   : BSD-style
;;;Author(s) : Surendra Singhi (surendra@asu.edu) 
;;;Copyright (C) 2005 Surendra Singhi 
;;;See the file LICENSE for information on usage and redistribution.
;;;
;;; $Header$
;;;
;; This is an automatically generated file. 
;;Make changes as you feel are necessary (but remember if you try to regenerate this file, your changes will be lost). 

(defpackage "wxDataFormat"
  (:use :common-lisp :ffi)
	:wxDataFormat_CreateFromId
	:wxDataFormat_CreateFromType
	:wxDataFormat_Delete
	:wxDataFormat_IsEqual
	:wxDataFormat_GetId
	:wxDataFormat_GetType
	:wxDataFormat_SetId
	:wxDataFormat_SetType)

(in-package :wxDataFormat)

(ffi:def-call-out wxDataFormat_CreateFromId
	(:name "wxDataFormat_CreateFromId")
	(:arguments (name (ffi:c-pointer NIL)))
	(:return-type (ffi:c-pointer NIL))
	(:library +library-name+))

(ffi:def-call-out wxDataFormat_CreateFromType
	(:name "wxDataFormat_CreateFromType")
	(:arguments (typ ffi:int))
	(:return-type (ffi:c-pointer NIL))
	(:library +library-name+))

(ffi:def-call-out wxDataFormat_Delete
	(:name "wxDataFormat_Delete")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxDataFormat_IsEqual
	(:name "wxDataFormat_IsEqual")
	(:arguments (_obj (ffi:c-pointer NIL))
		(other (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxDataFormat_GetId
	(:name "wxDataFormat_GetId")
	(:arguments (_obj (ffi:c-pointer NIL))
		(_buf (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxDataFormat_GetType
	(:name "wxDataFormat_GetType")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxDataFormat_SetId
	(:name "wxDataFormat_SetId")
	(:arguments (_obj (ffi:c-pointer NIL))
		(id (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxDataFormat_SetType
	(:name "wxDataFormat_SetType")
	(:arguments (_obj (ffi:c-pointer NIL))
		(typ ffi:int))
	(:return-type NIL)
	(:library +library-name+))

;;;wxMime.lisp
;;;License   : BSD-style
;;;Author(s) : Surendra Singhi (surendra@asu.edu) 
;;;Copyright (C) 2005 Surendra Singhi 
;;;See the file LICENSE for information on usage and redistribution.
;;;
;;; $Header$
;;;
;; This is an automatically generated file. 
;;Make changes as you feel are necessary (but remember if you try to regenerate this file, your changes will be lost). 

(defpackage "wxMime"
  (:use :common-lisp :ffi)
	:wxMimeTypesManager_Create
	:wxMimeTypesManager_GetFileTypeFromExtension
	:wxMimeTypesManager_GetFileTypeFromMimeType
	:wxMimeTypesManager_ReadMailcap
	:wxMimeTypesManager_ReadMimeTypes
	:wxMimeTypesManager_EnumAllFileTypes
	:wxMimeTypesManager_AddFallbacks
	:wxMimeTypesManager_IsOfType
	:wxFileType_GetMimeType
	:wxFileType_GetMimeTypes
	:wxFileType_GetExtensions
	:wxFileType_GetIcon
	:wxFileType_GetDescription
	:wxFileType_GetOpenCommand
	:wxFileType_GetPrintCommand
	:wxFileType_ExpandCommand
	:wxFileType_Delete
	:wxMessageParameters_Create
	:wxMessageParameters_Delete)

(in-package :wxMime)

(ffi:def-call-out wxMimeTypesManager_Create
	(:name "wxMimeTypesManager_Create")
	(:return-type (ffi:c-pointer NIL))
	(:library +library-name+))

(ffi:def-call-out wxMimeTypesManager_GetFileTypeFromExtension
	(:name "wxMimeTypesManager_GetFileTypeFromExtension")
	(:arguments (_obj (ffi:c-pointer NIL))
		(_ext (ffi:c-pointer NIL)))
	(:return-type (ffi:c-pointer NIL))
	(:library +library-name+))

(ffi:def-call-out wxMimeTypesManager_GetFileTypeFromMimeType
	(:name "wxMimeTypesManager_GetFileTypeFromMimeType")
	(:arguments (_obj (ffi:c-pointer NIL))
		(_name (ffi:c-pointer NIL)))
	(:return-type (ffi:c-pointer NIL))
	(:library +library-name+))

(ffi:def-call-out wxMimeTypesManager_ReadMailcap
	(:name "wxMimeTypesManager_ReadMailcap")
	(:arguments (_obj (ffi:c-pointer NIL))
		(_file (ffi:c-pointer NIL))
		(_fb ffi:int))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxMimeTypesManager_ReadMimeTypes
	(:name "wxMimeTypesManager_ReadMimeTypes")
	(:arguments (_obj (ffi:c-pointer NIL))
		(_file (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxMimeTypesManager_EnumAllFileTypes
	(:name "wxMimeTypesManager_EnumAllFileTypes")
	(:arguments (_obj (ffi:c-pointer NIL))
		(_lst (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxMimeTypesManager_AddFallbacks
	(:name "wxMimeTypesManager_AddFallbacks")
	(:arguments (_obj (ffi:c-pointer NIL))
		(_types (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxMimeTypesManager_IsOfType
	(:name "wxMimeTypesManager_IsOfType")
	(:arguments (_obj (ffi:c-pointer NIL))
		(_type (ffi:c-pointer NIL))
		(_wildcard (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxFileType_GetMimeType
	(:name "wxFileType_GetMimeType")
	(:arguments (_obj (ffi:c-pointer NIL))
		(_buf (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxFileType_GetMimeTypes
	(:name "wxFileType_GetMimeTypes")
	(:arguments (_obj (ffi:c-pointer NIL))
		(_lst (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxFileType_GetExtensions
	(:name "wxFileType_GetExtensions")
	(:arguments (_obj (ffi:c-pointer NIL))
		(_lst (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxFileType_GetIcon
	(:name "wxFileType_GetIcon")
	(:arguments (_obj (ffi:c-pointer NIL))
		(icon (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxFileType_GetDescription
	(:name "wxFileType_GetDescription")
	(:arguments (_obj (ffi:c-pointer NIL))
		(_buf (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxFileType_GetOpenCommand
	(:name "wxFileType_GetOpenCommand")
	(:arguments (_obj (ffi:c-pointer NIL))
		(_buf (ffi:c-pointer NIL))
		(_params (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxFileType_GetPrintCommand
	(:name "wxFileType_GetPrintCommand")
	(:arguments (_obj (ffi:c-pointer NIL))
		(_buf (ffi:c-pointer NIL))
		(_params (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxFileType_ExpandCommand
	(:name "wxFileType_ExpandCommand")
	(:arguments (_obj (ffi:c-pointer NIL))
		(_cmd (ffi:c-pointer NIL))
		(_params (ffi:c-pointer NIL))
		(_buf (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxFileType_Delete
	(:name "wxFileType_Delete")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxMessageParameters_Create
	(:name "wxMessageParameters_Create")
	(:arguments (_file (ffi:c-pointer NIL))
		(_type (ffi:c-pointer NIL))
		(_object (ffi:c-pointer NIL))
		(_func (ffi:c-pointer NIL)))
	(:return-type (ffi:c-pointer NIL))
	(:library +library-name+))

(ffi:def-call-out wxMessageParameters_Delete
	(:name "wxMessageParameters_Delete")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

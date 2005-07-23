;;;wxConfigBase.lisp
;;;License   : BSD-style
;;;Author(s) : Surendra Singhi (surendra@asu.edu) 
;;;Copyright (C) 2005 Surendra Singhi 
;;;See the file LICENSE for information on usage and redistribution.
;;;
;;; $Header$
;;;
;; This is an automatically generated file. 
;;Make changes as you feel are necessary (but remember if you try to regenerate this file, your changes will be lost). 

(defpackage :wxConfigBase
  (:use :common-lisp :ffi)
  (:export
	:wxConfigBase_Create
	:wxConfigBase_Delete
	:wxConfigBase_SetPath
	:wxConfigBase_GetPath
	:wxConfigBase_GetFirstGroup
	:wxConfigBase_GetNextGroup
	:wxConfigBase_GetFirstEntry
	:wxConfigBase_GetNextEntry
	:wxConfigBase_GetNumberOfEntries
	:wxConfigBase_GetNumberOfGroups
	:wxConfigBase_HasGroup
	:wxConfigBase_HasEntry
	:wxConfigBase_Exists
	:wxConfigBase_GetEntryType
	:wxConfigBase_ReadString
	:wxConfigBase_ReadInteger
	:wxConfigBase_ReadDouble
	:wxConfigBase_ReadBool
	:wxConfigBase_WriteString
	:wxConfigBase_WriteInteger
	:wxConfigBase_WriteDouble
	:wxConfigBase_WriteBool
	:wxConfigBase_Flush
	:wxConfigBase_RenameEntry
	:wxConfigBase_RenameGroup
	:wxConfigBase_DeleteEntry
	:wxConfigBase_DeleteGroup
	:wxConfigBase_DeleteAll
	:wxConfigBase_IsExpandingEnvVars
	:wxConfigBase_SetExpandEnvVars
	:wxConfigBase_SetRecordDefaults
	:wxConfigBase_IsRecordingDefaults
	:wxConfigBase_ExpandEnvVars
	:wxConfigBase_GetAppName
	:wxConfigBase_GetVendorName
	:wxConfigBase_SetAppName
	:wxConfigBase_SetVendorName
	:wxConfigBase_SetStyle
	:wxConfigBase_GetStyle))

(in-package :wxConfigBase)

(ffi:def-call-out wxConfigBase_Create
	(:name "wxConfigBase_Create")
	(:return-type (ffi:c-pointer NIL))
	(:library +library-name+))

(ffi:def-call-out wxConfigBase_Delete
	(:name "wxConfigBase_Delete")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxConfigBase_SetPath
	(:name "wxConfigBase_SetPath")
	(:arguments (_obj (ffi:c-pointer NIL))
		(strPath (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxConfigBase_GetPath
	(:name "wxConfigBase_GetPath")
	(:arguments (_obj (ffi:c-pointer NIL))
		(_buf (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxConfigBase_GetFirstGroup
	(:name "wxConfigBase_GetFirstGroup")
	(:arguments (_obj (ffi:c-pointer wxConfigBase))
		(lIndex (ffi:c-ptr ffi:long)))
	(:return-type (ffi:c-pointer wxString))
	(:library +library-name+))

(ffi:def-call-out wxConfigBase_GetNextGroup
	(:name "wxConfigBase_GetNextGroup")
	(:arguments (_obj (ffi:c-pointer wxConfigBase))
		(lIndex (ffi:c-ptr ffi:long)))
	(:return-type (ffi:c-pointer wxString))
	(:library +library-name+))

(ffi:def-call-out wxConfigBase_GetFirstEntry
	(:name "wxConfigBase_GetFirstEntry")
	(:arguments (_obj (ffi:c-pointer wxConfigBase))
		(lIndex (ffi:c-ptr ffi:long)))
	(:return-type (ffi:c-pointer wxString))
	(:library +library-name+))

(ffi:def-call-out wxConfigBase_GetNextEntry
	(:name "wxConfigBase_GetNextEntry")
	(:arguments (_obj (ffi:c-pointer wxConfigBase))
		(lIndex (ffi:c-ptr ffi:long)))
	(:return-type (ffi:c-pointer wxString))
	(:library +library-name+))

(ffi:def-call-out wxConfigBase_GetNumberOfEntries
	(:name "wxConfigBase_GetNumberOfEntries")
	(:arguments (_obj (ffi:c-pointer NIL))
		(bRecursive ffi:int))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxConfigBase_GetNumberOfGroups
	(:name "wxConfigBase_GetNumberOfGroups")
	(:arguments (_obj (ffi:c-pointer NIL))
		(bRecursive ffi:int))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxConfigBase_HasGroup
	(:name "wxConfigBase_HasGroup")
	(:arguments (_obj (ffi:c-pointer NIL))
		(strName (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxConfigBase_HasEntry
	(:name "wxConfigBase_HasEntry")
	(:arguments (_obj (ffi:c-pointer NIL))
		(strName (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxConfigBase_Exists
	(:name "wxConfigBase_Exists")
	(:arguments (_obj (ffi:c-pointer NIL))
		(strName (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxConfigBase_GetEntryType
	(:name "wxConfigBase_GetEntryType")
	(:arguments (_obj (ffi:c-pointer NIL))
		(name (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxConfigBase_ReadString
	(:name "wxConfigBase_ReadString")
	(:arguments (_obj (ffi:c-pointer wxConfigBase))
		(key (ffi:c-pointer NIL))
		(defVal (ffi:c-pointer NIL)))
	(:return-type (ffi:c-pointer wxString))
	(:library +library-name+))

(ffi:def-call-out wxConfigBase_ReadInteger
	(:name "wxConfigBase_ReadInteger")
	(:arguments (_obj (ffi:c-pointer NIL))
		(key (ffi:c-pointer NIL))
		(defVal ffi:int))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxConfigBase_ReadDouble
	(:name "wxConfigBase_ReadDouble")
	(:arguments (_obj (ffi:c-pointer NIL))
		(key (ffi:c-pointer NIL))
		(defVal DOUBLE-FLOAT))
	(:return-type DOUBLE-FLOAT)
	(:library +library-name+))

(ffi:def-call-out wxConfigBase_ReadBool
	(:name "wxConfigBase_ReadBool")
	(:arguments (_obj (ffi:c-pointer NIL))
		(key (ffi:c-pointer NIL))
		(defVal ffi:int))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxConfigBase_WriteString
	(:name "wxConfigBase_WriteString")
	(:arguments (_obj (ffi:c-pointer NIL))
		(key (ffi:c-pointer NIL))
		(value (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxConfigBase_WriteInteger
	(:name "wxConfigBase_WriteInteger")
	(:arguments (_obj (ffi:c-pointer NIL))
		(key (ffi:c-pointer NIL))
		(value ffi:int))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxConfigBase_WriteDouble
	(:name "wxConfigBase_WriteDouble")
	(:arguments (_obj (ffi:c-pointer NIL))
		(key (ffi:c-pointer NIL))
		(value DOUBLE-FLOAT))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxConfigBase_WriteBool
	(:name "wxConfigBase_WriteBool")
	(:arguments (_obj (ffi:c-pointer NIL))
		(key (ffi:c-pointer NIL))
		(value ffi:int))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxConfigBase_Flush
	(:name "wxConfigBase_Flush")
	(:arguments (_obj (ffi:c-pointer NIL))
		(bCurrentOnly ffi:int))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxConfigBase_RenameEntry
	(:name "wxConfigBase_RenameEntry")
	(:arguments (_obj (ffi:c-pointer NIL))
		(oldName (ffi:c-pointer NIL))
		(newName (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxConfigBase_RenameGroup
	(:name "wxConfigBase_RenameGroup")
	(:arguments (_obj (ffi:c-pointer NIL))
		(oldName (ffi:c-pointer NIL))
		(newName (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxConfigBase_DeleteEntry
	(:name "wxConfigBase_DeleteEntry")
	(:arguments (_obj (ffi:c-pointer NIL))
		(key (ffi:c-pointer NIL))
		(bDeleteGroupIfEmpty ffi:int))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxConfigBase_DeleteGroup
	(:name "wxConfigBase_DeleteGroup")
	(:arguments (_obj (ffi:c-pointer NIL))
		(key (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxConfigBase_DeleteAll
	(:name "wxConfigBase_DeleteAll")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxConfigBase_IsExpandingEnvVars
	(:name "wxConfigBase_IsExpandingEnvVars")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxConfigBase_SetExpandEnvVars
	(:name "wxConfigBase_SetExpandEnvVars")
	(:arguments (_obj (ffi:c-pointer NIL))
		(bDoIt ffi:int))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxConfigBase_SetRecordDefaults
	(:name "wxConfigBase_SetRecordDefaults")
	(:arguments (_obj (ffi:c-pointer NIL))
		(bDoIt ffi:int))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxConfigBase_IsRecordingDefaults
	(:name "wxConfigBase_IsRecordingDefaults")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxConfigBase_ExpandEnvVars
	(:name "wxConfigBase_ExpandEnvVars")
	(:arguments (_obj (ffi:c-pointer NIL))
		(str (ffi:c-pointer NIL))
		(_buf (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxConfigBase_GetAppName
	(:name "wxConfigBase_GetAppName")
	(:arguments (_obj (ffi:c-pointer NIL))
		(_buf (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxConfigBase_GetVendorName
	(:name "wxConfigBase_GetVendorName")
	(:arguments (_obj (ffi:c-pointer NIL))
		(_buf (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxConfigBase_SetAppName
	(:name "wxConfigBase_SetAppName")
	(:arguments (_obj (ffi:c-pointer NIL))
		(appName (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxConfigBase_SetVendorName
	(:name "wxConfigBase_SetVendorName")
	(:arguments (_obj (ffi:c-pointer NIL))
		(vendorName (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxConfigBase_SetStyle
	(:name "wxConfigBase_SetStyle")
	(:arguments (_obj (ffi:c-pointer NIL))
		(style ffi:int))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxConfigBase_GetStyle
	(:name "wxConfigBase_GetStyle")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

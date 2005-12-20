;;;wxConfigBase.lisp
;;;License  : wxWindows License 3.1
;;;Author(s) : Surendra Singhi (surendra@asu.edu) 
;;;Copyright (C) 2005 Surendra Singhi 
;;;See the file LICENSE for information on usage and redistribution.
;;;
;;; $Header$
;;;

(in-package :wxcl-misc)

(defcfun ("wxConfigBase_Create" wxConfigBase_Create) :pointer)

(defcfun ("wxConfigBase_Delete" wxConfigBase_Delete) :void
  (_obj :pointer))

(defcfun ("wxConfigBase_SetPath" wxConfigBase_SetPath) :void
  (_obj :pointer)
  (strPath :pointer))

(defcfun ("wxConfigBase_GetPath" wxConfigBase_GetPath) :int
  (_obj :pointer)
  (_buf :pointer))

(defcfun ("wxConfigBase_GetFirstGroup" wxConfigBase_GetFirstGroup) :pointer
  (_obj :pointer)
  (lIndex :pointer))

(defcfun ("wxConfigBase_GetNextGroup" wxConfigBase_GetNextGroup) :pointer
  (_obj :pointer)
  (lIndex :pointer))

(defcfun ("wxConfigBase_GetFirstEntry" wxConfigBase_GetFirstEntry) :pointer
  (_obj :pointer)
  (lIndex :pointer))

(defcfun ("wxConfigBase_GetNextEntry" wxConfigBase_GetNextEntry) :pointer
  (_obj :pointer)
  (lIndex :pointer))

(defcfun ("wxConfigBase_GetNumberOfEntries" wxConfigBase_GetNumberOfEntries) :int
  (_obj :pointer)
  (bRecursive :int))

(defcfun ("wxConfigBase_GetNumberOfGroups" wxConfigBase_GetNumberOfGroups) :int
  (_obj :pointer)
  (bRecursive :int))

(defcfun ("wxConfigBase_HasGroup" wxConfigBase_HasGroup) :int
  (_obj :pointer)
  (strName :pointer))

(defcfun ("wxConfigBase_HasEntry" wxConfigBase_HasEntry) :int
  (_obj :pointer)
  (strName :pointer))

(defcfun ("wxConfigBase_Exists" wxConfigBase_Exists) :int
  (_obj :pointer)
  (strName :pointer))

(defcfun ("wxConfigBase_GetEntryType" wxConfigBase_GetEntryType) :int
  (_obj :pointer)
  (name :pointer))

(defcfun ("wxConfigBase_ReadString" wxConfigBase_ReadString) :pointer
  (_obj :pointer)
  (key :pointer)
  (defVal :pointer))

(defcfun ("wxConfigBase_ReadInteger" wxConfigBase_ReadInteger) :int
  (_obj :pointer)
  (key :pointer)
  (defVal :int))

(defcfun ("wxConfigBase_ReadDouble" wxConfigBase_ReadDouble) :double
  (_obj :pointer)
  (key :pointer)
  (defVal :double))

(defcfun ("wxConfigBase_ReadBool" wxConfigBase_ReadBool) :int
  (_obj :pointer)
  (key :pointer)
  (defVal :int))

(defcfun ("wxConfigBase_WriteString" wxConfigBase_WriteString) :int
  (_obj :pointer)
  (key :pointer)
  (value :pointer))

(defcfun ("wxConfigBase_WriteInteger" wxConfigBase_WriteInteger) :int
  (_obj :pointer)
  (key :pointer)
  (value :int))

(defcfun ("wxConfigBase_WriteDouble" wxConfigBase_WriteDouble) :int
  (_obj :pointer)
  (key :pointer)
  (value :double))

(defcfun ("wxConfigBase_WriteBool" wxConfigBase_WriteBool) :int
  (_obj :pointer)
  (key :pointer)
  (value :int))

(defcfun ("wxConfigBase_Flush" wxConfigBase_Flush) :int
  (_obj :pointer)
  (bCurrentOnly :int))

(defcfun ("wxConfigBase_RenameEntry" wxConfigBase_RenameEntry) :int
  (_obj :pointer)
  (oldName :pointer)
  (newName :pointer))

(defcfun ("wxConfigBase_RenameGroup" wxConfigBase_RenameGroup) :int
  (_obj :pointer)
  (oldName :pointer)
  (newName :pointer))

(defcfun ("wxConfigBase_DeleteEntry" wxConfigBase_DeleteEntry) :int
  (_obj :pointer)
  (key :pointer)
  (bDeleteGroupIfEmpty :int))

(defcfun ("wxConfigBase_DeleteGroup" wxConfigBase_DeleteGroup) :int
  (_obj :pointer)
  (key :pointer))

(defcfun ("wxConfigBase_DeleteAll" wxConfigBase_DeleteAll) :int
  (_obj :pointer))

(defcfun ("wxConfigBase_IsExpandingEnvVars" wxConfigBase_IsExpandingEnvVars) :int
  (_obj :pointer))

(defcfun ("wxConfigBase_SetExpandEnvVars" wxConfigBase_SetExpandEnvVars) :void
  (_obj :pointer)
  (bDoIt :int))

(defcfun ("wxConfigBase_SetRecordDefaults" wxConfigBase_SetRecordDefaults) :void
  (_obj :pointer)
  (bDoIt :int))

(defcfun ("wxConfigBase_IsRecordingDefaults" wxConfigBase_IsRecordingDefaults) :int
  (_obj :pointer))

(defcfun ("wxConfigBase_ExpandEnvVars" wxConfigBase_ExpandEnvVars) :int
  (_obj :pointer)
  (str :pointer)
  (_buf :pointer))

(defcfun ("wxConfigBase_GetAppName" wxConfigBase_GetAppName) :int
  (_obj :pointer)
  (_buf :pointer))

(defcfun ("wxConfigBase_GetVendorName" wxConfigBase_GetVendorName) :int
  (_obj :pointer)
  (_buf :pointer))

(defcfun ("wxConfigBase_SetAppName" wxConfigBase_SetAppName) :void
  (_obj :pointer)
  (appName :pointer))

(defcfun ("wxConfigBase_SetVendorName" wxConfigBase_SetVendorName) :void
  (_obj :pointer)
  (vendorName :pointer))

(defcfun ("wxConfigBase_SetStyle" wxConfigBase_SetStyle) :void
  (_obj :pointer)
  (style :int))

(defcfun ("wxConfigBase_GetStyle" wxConfigBase_GetStyle) :int
  (_obj :pointer))

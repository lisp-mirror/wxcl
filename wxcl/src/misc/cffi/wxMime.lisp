;;;wxMime.lisp
;;;License  : wxWindows License 3.1
;;;Author(s) : Surendra Singhi (surendra@asu.edu) 
;;;Copyright (C) 2005 Surendra Singhi 
;;;See the file LICENSE for information on usage and redistribution.
;;;
;;; $Header$
;;;

(in-package :wxcl-misc)

(defcfun ("wxMimeTypesManager_Create" wxMimeTypesManager_Create) :pointer)

(defcfun ("wxMimeTypesManager_GetFileTypeFromExtension" wxMimeTypesManager_GetFileTypeFromExtension) :pointer
  (_obj :pointer)
  (_ext :pointer))

(defcfun ("wxMimeTypesManager_GetFileTypeFromMimeType" wxMimeTypesManager_GetFileTypeFromMimeType) :pointer
  (_obj :pointer)
  (_name :pointer))

(defcfun ("wxMimeTypesManager_ReadMailcap" wxMimeTypesManager_ReadMailcap) :int
  (_obj :pointer)
  (_file :pointer)
  (_fb :int))

(defcfun ("wxMimeTypesManager_ReadMimeTypes" wxMimeTypesManager_ReadMimeTypes) :int
  (_obj :pointer)
  (_file :pointer))

(defcfun ("wxMimeTypesManager_EnumAllFileTypes" wxMimeTypesManager_EnumAllFileTypes) :int
  (_obj :pointer)
  (_lst :pointer))

(defcfun ("wxMimeTypesManager_AddFallbacks" wxMimeTypesManager_AddFallbacks) :void
  (_obj :pointer)
  (_types :pointer))

(defcfun ("wxMimeTypesManager_IsOfType" wxMimeTypesManager_IsOfType) :int
  (_obj :pointer)
  (_type :pointer)
  (_wildcard :pointer))

(defcfun ("wxFileType_GetMimeType" wxFileType_GetMimeType) :int
  (_obj :pointer)
  (_buf :pointer))

(defcfun ("wxFileType_GetMimeTypes" wxFileType_GetMimeTypes) :int
  (_obj :pointer)
  (_lst :pointer))

(defcfun ("wxFileType_GetExtensions" wxFileType_GetExtensions) :int
  (_obj :pointer)
  (_lst :pointer))

(defcfun ("wxFileType_GetIcon" wxFileType_GetIcon) :int
  (_obj :pointer)
  (icon :pointer))

(defcfun ("wxFileType_GetDescription" wxFileType_GetDescription) :int
  (_obj :pointer)
  (_buf :pointer))

(defcfun ("wxFileType_GetOpenCommand" wxFileType_GetOpenCommand) :int
  (_obj :pointer)
  (_buf :pointer)
  (_params :pointer))

(defcfun ("wxFileType_GetPrintCommand" wxFileType_GetPrintCommand) :int
  (_obj :pointer)
  (_buf :pointer)
  (_params :pointer))

(defcfun ("wxFileType_ExpandCommand" wxFileType_ExpandCommand) :int
  (_obj :pointer)
  (_cmd :pointer)
  (_params :pointer)
  (_buf :pointer))

(defcfun ("wxFileType_Delete" wxFileType_Delete) :void
  (_obj :pointer))

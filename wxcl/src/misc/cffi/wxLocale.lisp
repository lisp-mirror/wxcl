;;;wxLocale.lisp
;;;License  : wxWindows License 3.1
;;;Author(s) : Surendra Singhi (surendra@asu.edu) 
;;;Copyright (C) 2005 Surendra Singhi 
;;;See the file LICENSE for information on usage and redistribution.
;;;
;;; $Header$
;;;

(in-package :wxcl-misc)

(defcfun ("wxLocale_Create" wxLocale_Create) :pointer
  (_lang :int)
  (_flags :int))

(defcfun ("wxLocale_Delete" wxLocale_Delete) :void
  (_obj :pointer))

(defcfun ("wxLocale_IsOk" wxLocale_IsOk) :int
  (_obj :pointer))

(defcfun ("wxLocale_GetLocale" wxLocale_GetLocale) :pointer
  (_obj :pointer))

(defcfun ("wxLocale_AddCatalogLookupPathPrefix" wxLocale_AddCatalogLookupPathPrefix) :void
  (_obj :pointer)
  (prefix :pointer))

(defcfun ("wxLocale_AddCatalog" wxLocale_AddCatalog) :int
  (_obj :pointer)
  (szDomain :pointer))

(defcfun ("wxLocale_IsLoaded" wxLocale_IsLoaded) :int
  (_obj :pointer)
  (szDomain :pointer))

(defcfun ("wxLocale_GetString" wxLocale_GetString) :pointer
  (_obj :pointer)
  (szOrigString :pointer)
  (szDomain :pointer))

(defcfun ("wxLocale_GetName" wxLocale_GetName) :int
  (_obj :pointer)
  (_ref :pointer))

(defcfun ("wxGetELJLocale" wxGetELJLocale) :pointer)

(defcfun ("wxGetELJTranslation" wxGetELJTranslation) :pointer
  (sz :pointer))

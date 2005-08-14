;;;wxLocale.lisp
;;;License  : GNU General Public License (GPL)
;;;Author(s) : Surendra Singhi (surendra@asu.edu) 
;;;Copyright (C) 2005 Surendra Singhi 
;;;See the file LICENSE for information on usage and redistribution.
;;;
;;; $Header$
;;;
;; This is an automatically generated file. 
;;Make changes as you feel are necessary (but remember if you try to regenerate this file, your changes will be lost). 

(defpackage :wxLocale
  (:use :common-lisp :ffi)
  (:export
	:wxLocale_Create
	:wxLocale_Delete
	:wxLocale_IsOk
	:wxLocale_GetLocale
	:wxLocale_AddCatalogLookupPathPrefix
	:wxLocale_AddCatalog
	:wxLocale_IsLoaded
	:wxLocale_GetString
	:wxLocale_GetName
	:wxGetELJLocale
	:wxGetELJTranslation))

(in-package :wxLocale)

(ffi:def-call-out wxLocale_Create
	(:name "wxLocale_Create")
	(:arguments (_lang ffi:int)
		(_flags ffi:int))
	(:return-type (ffi:c-pointer NIL))
	(:library +library-name+))

(ffi:def-call-out wxLocale_Delete
	(:name "wxLocale_Delete")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxLocale_IsOk
	(:name "wxLocale_IsOk")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxLocale_GetLocale
	(:name "wxLocale_GetLocale")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type (ffi:c-pointer NIL))
	(:library +library-name+))

(ffi:def-call-out wxLocale_AddCatalogLookupPathPrefix
	(:name "wxLocale_AddCatalogLookupPathPrefix")
	(:arguments (_obj (ffi:c-pointer NIL))
		(prefix (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxLocale_AddCatalog
	(:name "wxLocale_AddCatalog")
	(:arguments (_obj (ffi:c-pointer NIL))
		(szDomain (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxLocale_IsLoaded
	(:name "wxLocale_IsLoaded")
	(:arguments (_obj (ffi:c-pointer NIL))
		(szDomain (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxLocale_GetString
	(:name "wxLocale_GetString")
	(:arguments (_obj (ffi:c-pointer NIL))
		(szOrigString (ffi:c-pointer NIL))
		(szDomain (ffi:c-pointer NIL)))
	(:return-type (ffi:c-pointer NIL))
	(:library +library-name+))

(ffi:def-call-out wxLocale_GetName
	(:name "wxLocale_GetName")
	(:arguments (_obj (ffi:c-pointer NIL))
		(_ref (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxGetELJLocale
	(:name "wxGetELJLocale")
	(:return-type (ffi:c-pointer NIL))
	(:library +library-name+))

(ffi:def-call-out wxGetELJTranslation
	(:name "wxGetELJTranslation")
	(:arguments (sz (ffi:c-pointer NIL)))
	(:return-type (ffi:c-pointer NIL))
	(:library +library-name+))

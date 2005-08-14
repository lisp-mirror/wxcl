;;;wxContextHelp.lisp
;;;License  : GNU General Public License (GPL)
;;;Author(s) : Surendra Singhi (surendra@asu.edu) 
;;;Copyright (C) 2005 Surendra Singhi 
;;;See the file LICENSE for information on usage and redistribution.
;;;
;;; $Header$
;;;
;; This is an automatically generated file. 
;;Make changes as you feel are necessary (but remember if you try to regenerate this file, your changes will be lost). 

(defpackage :wxContextHelp
  (:use :common-lisp :ffi)
  (:export
	:wxContextHelp_Create
	:wxContextHelp_Delete
	:wxContextHelp_BeginContextHelp
	:wxContextHelp_EndContextHelp
	:wxContextHelpButton_Create
	:wxHelpProvider_Get
	:wxHelpProvider_Set
	:wxHelpProvider_GetHelp
	:wxHelpProvider_ShowHelp
	:wxHelpProvider_AddHelp
	:wxHelpProvider_AddHelpById
	:wxHelpProvider_RemoveHelp
	:wxHelpProvider_Delete
	:wxSimpleHelpProvider_Create
	:wxHelpControllerHelpProvider_Create
	:wxHelpControllerHelpProvider_SetHelpController
	:wxHelpControllerHelpProvider_GetHelpController))

(in-package :wxContextHelp)

(default-foreign-language :stdc)

(def-call-out wxContextHelp_Create
	(:name "wxContextHelp_Create")
	(:arguments (win (c-pointer NIL))
		(beginHelp ffi:int))
	(:return-type (c-pointer NIL))
	(:library +library-name+))

(def-call-out wxContextHelp_Delete
	(:name "wxContextHelp_Delete")
	(:arguments (_obj (c-pointer NIL)))
	(:library +library-name+))

(def-call-out wxContextHelp_BeginContextHelp
	(:name "wxContextHelp_BeginContextHelp")
	(:arguments (_obj (c-pointer NIL))
		(win (c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(def-call-out wxContextHelp_EndContextHelp
	(:name "wxContextHelp_EndContextHelp")
	(:arguments (_obj (c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(def-call-out wxContextHelpButton_Create
	(:name "wxContextHelpButton_Create")
	(:arguments (parent (c-pointer NIL))
		(id ffi:int)
		(x ffi:int)
		(y ffi:int)
		(w ffi:int)
		(h ffi:int)
		(style ffi:long))
	(:return-type (c-pointer NIL))
	(:library +library-name+))

(def-call-out wxHelpProvider_Get
	(:name "wxHelpProvider_Get")
	(:return-type (c-pointer NIL))
	(:library +library-name+))

(def-call-out wxHelpProvider_Set
	(:name "wxHelpProvider_Set")
	(:arguments (helpProvider (c-pointer NIL)))
	(:return-type (c-pointer NIL))
	(:library +library-name+))

(def-call-out wxHelpProvider_GetHelp
	(:name "wxHelpProvider_GetHelp")
	(:arguments (_obj (c-pointer NIL))
		(window (c-pointer NIL))
		(_ref (c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(def-call-out wxHelpProvider_ShowHelp
	(:name "wxHelpProvider_ShowHelp")
	(:arguments (_obj (c-pointer NIL))
		(window (c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(def-call-out wxHelpProvider_AddHelp
	(:name "wxHelpProvider_AddHelp")
	(:arguments (_obj (c-pointer NIL))
		(window (c-pointer NIL))
		(text (c-pointer NIL)))
	(:library +library-name+))

(def-call-out wxHelpProvider_AddHelpById
	(:name "wxHelpProvider_AddHelpById")
	(:arguments (_obj (c-pointer NIL))
		(id ffi:int)
		(text (c-pointer NIL)))
	(:library +library-name+))

(def-call-out wxHelpProvider_RemoveHelp
	(:name "wxHelpProvider_RemoveHelp")
	(:arguments (_obj (c-pointer NIL))
		(window (c-pointer NIL)))
	(:library +library-name+))

(def-call-out wxHelpProvider_Delete
	(:name "wxHelpProvider_Delete")
	(:arguments (_obj (c-pointer NIL)))
	(:library +library-name+))

(def-call-out wxSimpleHelpProvider_Create
	(:name "wxSimpleHelpProvider_Create")
	(:return-type (c-pointer NIL))
	(:library +library-name+))

(def-call-out wxHelpControllerHelpProvider_Create
	(:name "wxHelpControllerHelpProvider_Create")
	(:arguments (ctr (c-pointer NIL)))
	(:return-type (c-pointer NIL))
	(:library +library-name+))

(def-call-out wxHelpControllerHelpProvider_SetHelpController
	(:name "wxHelpControllerHelpProvider_SetHelpController")
	(:arguments (_obj (c-pointer NIL))
		(hc (c-pointer NIL)))
	(:library +library-name+))

(def-call-out wxHelpControllerHelpProvider_GetHelpController
	(:name "wxHelpControllerHelpProvider_GetHelpController")
	(:arguments (_obj (c-pointer NIL)))
	(:return-type (c-pointer NIL))
	(:library +library-name+))

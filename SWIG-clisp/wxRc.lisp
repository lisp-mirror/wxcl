;;;wxRC.lisp
;;;License   : BSD-style
;;;Author(s) : Surendra Singhi (surendra@asu.edu) 
;;;Copyright (C) 2005 Surendra Singhi 
;;;See the file LICENSE for information on usage and redistribution.
;;;
;;; $Header$
;;;
;; This is an automatically generated file. 
;;Make changes as you feel are necessary (but remember if you try to regenerate this file, your changes will be lost). 

(defpackage :wxRC
  (:use :common-lisp :ffi)
  (:export
	:wxXmlResource_Create
	:wxXmlResource_CreateFromFile
	:wxXmlResource_Delete
	:wxXmlResource_Load
	:wxXmlResource_InitAllHandlers
	:wxXmlResource_AddHandler
	:wxXmlResource_InsertHandler
	:wxXmlResource_ClearHandlers
	:wxXmlResource_AddSubclassFactory
	:wxXmlResource_LoadMenu
	:wxXmlResource_LoadMenuBar
	:wxXmlResource_LoadToolBar
	:wxXmlResource_LoadDialog
	:wxXmlResource_LoadPanel
	:wxXmlResource_LoadFrame
	:wxXmlResource_LoadObject
	:wxXmlResource_InitializeObject
	:wxXmlResource_LoadBitmap
	:wxXmlResource_LoadIcon
	:wxXmlResource_AttachUnknownControl
	:wxXmlResource_GetXRCID
	:wxXmlResource_GetVersion
	:wxXmlResource_CompareVersion
	:wxXmlResource_Get
	:wxXmlResource_Set
	:wxXmlResource_GetFlags
	:wxXmlResource_SetFlags))

(in-package :wxRC)

(default-foreign-language :stdc)

(def-call-out wxXmlResource_Create
	(:name "wxXmlResource_Create")
	(:arguments (_obj (c-pointer NIL))
		(flags ffi:int))
	(:return-type (c-pointer NIL))
	(:library +library-name+))

(def-call-out wxXmlResource_CreateFromFile
	(:name "wxXmlResource_CreateFromFile")
	(:arguments (_obj (c-pointer NIL))
		(filemask (c-pointer NIL))
		(flags ffi:int))
	(:return-type (c-pointer NIL))
	(:library +library-name+))

(def-call-out wxXmlResource_Delete
	(:name "wxXmlResource_Delete")
	(:arguments (_obj (c-pointer NIL)))
	(:library +library-name+))

(def-call-out wxXmlResource_Load
	(:name "wxXmlResource_Load")
	(:arguments (_obj (c-pointer NIL))
		(filemask (c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(def-call-out wxXmlResource_InitAllHandlers
	(:name "wxXmlResource_InitAllHandlers")
	(:arguments (_obj (c-pointer NIL)))
	(:library +library-name+))

(def-call-out wxXmlResource_AddHandler
	(:name "wxXmlResource_AddHandler")
	(:arguments (_obj (c-pointer NIL))
		(handler (c-pointer NIL)))
	(:library +library-name+))

(def-call-out wxXmlResource_InsertHandler
	(:name "wxXmlResource_InsertHandler")
	(:arguments (_obj (c-pointer NIL))
		(handler (c-pointer NIL)))
	(:library +library-name+))

(def-call-out wxXmlResource_ClearHandlers
	(:name "wxXmlResource_ClearHandlers")
	(:arguments (_obj (c-pointer NIL)))
	(:library +library-name+))

(def-call-out wxXmlResource_AddSubclassFactory
	(:name "wxXmlResource_AddSubclassFactory")
	(:arguments (_obj (c-pointer NIL))
		(factory (c-pointer NIL)))
	(:library +library-name+))

(def-call-out wxXmlResource_LoadMenu
	(:name "wxXmlResource_LoadMenu")
	(:arguments (_obj (c-pointer NIL))
		(name (c-pointer NIL)))
	(:return-type (c-pointer NIL))
	(:library +library-name+))

(def-call-out wxXmlResource_LoadMenuBar
	(:name "wxXmlResource_LoadMenuBar")
	(:arguments (_obj (c-pointer NIL))
		(parent (c-pointer NIL))
		(name (c-pointer NIL)))
	(:return-type (c-pointer NIL))
	(:library +library-name+))

(def-call-out wxXmlResource_LoadToolBar
	(:name "wxXmlResource_LoadToolBar")
	(:arguments (_obj (c-pointer NIL))
		(parent (c-pointer NIL))
		(name (c-pointer NIL)))
	(:return-type (c-pointer NIL))
	(:library +library-name+))

(def-call-out wxXmlResource_LoadDialog
	(:name "wxXmlResource_LoadDialog")
	(:arguments (_obj (c-pointer NIL))
		(parent (c-pointer NIL))
		(name (c-pointer NIL)))
	(:return-type (c-pointer NIL))
	(:library +library-name+))

(def-call-out wxXmlResource_LoadPanel
	(:name "wxXmlResource_LoadPanel")
	(:arguments (_obj (c-pointer NIL))
		(parent (c-pointer NIL))
		(name (c-pointer NIL)))
	(:return-type (c-pointer NIL))
	(:library +library-name+))

(def-call-out wxXmlResource_LoadFrame
	(:name "wxXmlResource_LoadFrame")
	(:arguments (_obj (c-pointer NIL))
		(parent (c-pointer NIL))
		(name (c-pointer NIL)))
	(:return-type (c-pointer NIL))
	(:library +library-name+))

(def-call-out wxXmlResource_LoadObject
	(:name "wxXmlResource_LoadObject")
	(:arguments (_obj (c-pointer NIL))
		(parent (c-pointer NIL))
		(name (c-pointer NIL))
		(classname (c-pointer NIL)))
	(:return-type (c-pointer NIL))
	(:library +library-name+))

(def-call-out wxXmlResource_InitializeObject
	(:name "wxXmlResource_InitializeObject")
	(:arguments (_obj (c-pointer NIL))
		(_inst (c-pointer NIL))
		(parent (c-pointer NIL))
		(name (c-pointer NIL))
		(classname (c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(def-call-out wxXmlResource_LoadBitmap
	(:name "wxXmlResource_LoadBitmap")
	(:arguments (_obj (c-pointer NIL))
		(name (c-pointer NIL))
		(_ref (c-pointer NIL)))
	(:library +library-name+))

(def-call-out wxXmlResource_LoadIcon
	(:name "wxXmlResource_LoadIcon")
	(:arguments (_obj (c-pointer NIL))
		(name (c-pointer NIL))
		(_ref (c-pointer NIL)))
	(:library +library-name+))

(def-call-out wxXmlResource_AttachUnknownControl
	(:name "wxXmlResource_AttachUnknownControl")
	(:arguments (_obj (c-pointer NIL))
		(name (c-pointer NIL))
		(control (c-pointer NIL))
		(parent (c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(def-call-out wxXmlResource_GetXRCID
	(:name "wxXmlResource_GetXRCID")
	(:arguments (str_id (c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(def-call-out wxXmlResource_GetVersion
	(:name "wxXmlResource_GetVersion")
	(:arguments (_obj (c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(def-call-out wxXmlResource_CompareVersion
	(:name "wxXmlResource_CompareVersion")
	(:arguments (_obj (c-pointer NIL))
		(major ffi:int)
		(minor ffi:int)
		(release ffi:int)
		(revision ffi:int))
	(:return-type ffi:int)
	(:library +library-name+))

(def-call-out wxXmlResource_Get
	(:name "wxXmlResource_Get")
	(:return-type (c-pointer NIL))
	(:library +library-name+))

(def-call-out wxXmlResource_Set
	(:name "wxXmlResource_Set")
	(:arguments (res (c-pointer NIL)))
	(:return-type (c-pointer NIL))
	(:library +library-name+))

(def-call-out wxXmlResource_GetFlags
	(:name "wxXmlResource_GetFlags")
	(:arguments (_obj (c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(def-call-out wxXmlResource_SetFlags
	(:name "wxXmlResource_SetFlags")
	(:arguments (_obj (c-pointer NIL))
		(flags ffi:int))
	(:library +library-name+))

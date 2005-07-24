;;;wxBitmap.lisp
;;;License   : BSD-style
;;;Author(s) : Surendra Singhi (surendra@asu.edu) 
;;;Copyright (C) 2005 Surendra Singhi 
;;;See the file LICENSE for information on usage and redistribution.
;;;
;;; $Header$
;;;

(defpackage :wxBitmap
    (:use :common-lisp :ffi :wxCL)
  (:export :wxBitmap_Create
	   :wxBitmap_CreateFromXPM
	   :wxBitmap_CreateEmpty
	   :wxBitmap_CreateLoad
	   :wxBitmap_CreateDefault
	   :wxBitmap_Delete
	   :wxBitmap_GetSubBitmap
	   :wxBitmap_LoadFile
	   :wxBitmap_SaveFile
	   :wxBitmap_GetMask
	   :wxBitmap_SetMask
	   :wxBitmap_AddHandler
	   :wxBitmap_InsertHandler
	   :wxBitmap_RemoveHandler
	   :wxBitmap_FindHandlerByName
	   :wxBitmap_FindHandlerByExtension
	   :wxBitmap_FindHandlerByType
	   :wxBitmap_InitStandardHandlers
	   :wxBitmap_CleanUpHandlers
	   :wxBitmap_Ok
	   :wxBitmap_GetWidth
	   :wxBitmap_GetHeight
	   :wxBitmap_GetDepth
	   :wxBitmap_SetWidth
	   :wxBitmap_SetHeight
	   :wxBitmap_SetDepth
	   :wxStaticBitmap_Create
	   :wxStaticBitmap_SetIcon
	   :wxStaticBitmap_SetBitmap
	   :wxStaticBitmap_GetIcon
	   :wxStaticBitmap_GetBitmap
	   :wxStaticBitmap_Delete))

(in-package :wxBitmap)

(ffi:default-foreign-language :stdc)

(ffi:def-call-out wxBitmap_Create
    (:name "wxBitmap_Create")
  (:arguments (_data (ffi:c-pointer NIL))
	      (_type ffi:int)
	      (_width ffi:int)
	      (_height ffi:int)
	      (_depth ffi:int))
  (:return-type (ffi:c-pointer NIL))
  (:library +library-name+))

(ffi:def-call-out wxBitmap_CreateFromXPM
    (:name "wxBitmap_CreateFromXPM")
  (:arguments (_data (ffi:c-pointer NIL)))
  (:return-type (ffi:c-pointer NIL))
  (:library +library-name+))

(ffi:def-call-out wxBitmap_CreateEmpty
    (:name "wxBitmap_CreateEmpty")
  (:arguments (_width ffi:int)
	      (_height ffi:int)
	      (_depth ffi:int))
  (:return-type (ffi:c-pointer NIL))
  (:library +library-name+))

(ffi:def-call-out wxBitmap_CreateLoad
    (:name "wxBitmap_CreateLoad")
  (:arguments (name ffi:c-string)
	      (type ffi:int))
  (:return-type (ffi:c-pointer NIL))
  (:library +library-name+))

(ffi:def-call-out wxBitmap_CreateDefault
    (:name "wxBitmap_CreateDefault")
  (:return-type (ffi:c-pointer NIL))
  (:library +library-name+))

(ffi:def-call-out wxBitmap_Delete
    (:name "wxBitmap_Delete")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxBitmap_GetSubBitmap
    (:name "wxBitmap_GetSubBitmap")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (x ffi:int)
	      (y ffi:int)
	      (w ffi:int)
	      (h ffi:int)
	      (bitmap (ffi:c-pointer NIL)))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxBitmap_LoadFile
    (:name "wxBitmap_LoadFile")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (name ffi:c-string)
	      (type ffi:int))
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out wxBitmap_SaveFile
    (:name "wxBitmap_SaveFile")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (name ffi:c-string)
	      (type ffi:int)
	      (cmap (ffi:c-pointer NIL)))
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out wxBitmap_GetMask
    (:name "wxBitmap_GetMask")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type (ffi:c-pointer NIL))
  (:library +library-name+))

(ffi:def-call-out wxBitmap_SetMask
    (:name "wxBitmap_SetMask")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (mask (ffi:c-pointer NIL)))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxBitmap_AddHandler
    (:name "wxBitmap_AddHandler")
  (:arguments (handler (ffi:c-pointer NIL)))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxBitmap_InsertHandler
    (:name "wxBitmap_InsertHandler")
  (:arguments (handler (ffi:c-pointer NIL)))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxBitmap_RemoveHandler
    (:name "wxBitmap_RemoveHandler")
  (:arguments (name ffi:c-string))
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out wxBitmap_FindHandlerByName
    (:name "wxBitmap_FindHandlerByName")
  (:arguments (name ffi:c-string))
  (:return-type (ffi:c-pointer NIL))
  (:library +library-name+))

(ffi:def-call-out wxBitmap_FindHandlerByExtension
    (:name "wxBitmap_FindHandlerByExtension")
  (:arguments (extension (ffi:c-pointer NIL))
	      (type ffi:int))
  (:return-type (ffi:c-pointer NIL))
  (:library +library-name+))

(ffi:def-call-out wxBitmap_FindHandlerByType
    (:name "wxBitmap_FindHandlerByType")
  (:arguments (type ffi:int))
  (:return-type (ffi:c-pointer NIL))
  (:library +library-name+))

(ffi:def-call-out wxBitmap_InitStandardHandlers
    (:name "wxBitmap_InitStandardHandlers")
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxBitmap_CleanUpHandlers
    (:name "wxBitmap_CleanUpHandlers")
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxBitmap_Ok
    (:name "wxBitmap_Ok")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out wxBitmap_GetWidth
    (:name "wxBitmap_GetWidth")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out wxBitmap_GetHeight
    (:name "wxBitmap_GetHeight")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out wxBitmap_GetDepth
    (:name "wxBitmap_GetDepth")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out wxBitmap_SetWidth
    (:name "wxBitmap_SetWidth")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (w ffi:int))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxBitmap_SetHeight
    (:name "wxBitmap_SetHeight")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (h ffi:int))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxBitmap_SetDepth
    (:name "wxBitmap_SetDepth")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (d ffi:int))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxStaticBitmap_Create
    (:name "wxStaticBitmap_Create")
  (:arguments (_prt (ffi:c-pointer NIL))
	      (_id ffi:int)
	      (bitmap (ffi:c-pointer NIL))
	      (_lft ffi:int)
	      (_top ffi:int)
	      (_wdt ffi:int)
	      (_hgt ffi:int)
	      (_stl ffi:int))
  (:return-type (ffi:c-pointer NIL))
  (:library +library-name+))

(ffi:def-call-out wxStaticBitmap_SetIcon
    (:name "wxStaticBitmap_SetIcon")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (icon (ffi:c-pointer NIL)))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxStaticBitmap_SetBitmap
    (:name "wxStaticBitmap_SetBitmap")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (bitmap (ffi:c-pointer NIL)))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxStaticBitmap_GetIcon
    (:name "wxStaticBitmap_GetIcon")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (_ref (ffi:c-pointer NIL)))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxStaticBitmap_GetBitmap
    (:name "wxStaticBitmap_GetBitmap")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (_ref (ffi:c-pointer NIL)))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxStaticBitmap_Delete
    (:name "wxStaticBitmap_Delete")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type NIL)
  (:library +library-name+))

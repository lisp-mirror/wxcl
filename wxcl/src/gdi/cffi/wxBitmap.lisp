;;;wxBitmap.lisp
;;;License  : GNU General Public License (GPL)
;;;Author(s) : Surendra Singhi (surendra@asu.edu) 
;;;Copyright (C) 2005 Surendra Singhi 
;;;See the file LICENSE for information on usage and redistribution.
;;;
;;; $Header$
;;;
(in-package :wxcl-dialogs)

(defcvar ("wxNull_Bitmap" wxNull_Bitmap)
 :pointer)

(defcfun ("wxBitmap_Create" wxBitmap_Create) :pointer
  (_data :pointer)
  (_type :int)
  (_width :int)
  (_height :int)
  (_depth :int))

(defcfun ("wxBitmap_CreateFromXPM" wxBitmap_CreateFromXPM) :pointer
  (_data :pointer))

(defcfun ("wxBitmap_CreateEmpty" wxBitmap_CreateEmpty) :pointer
  (_width :int)
  (_height :int)
  (_depth :int))

(defcfun ("wxBitmap_CreateLoad" wxBitmap_CreateLoad) :pointer
  (name :pointer)
  (type :int))

(defcfun ("wxBitmap_CreateDefault" wxBitmap_CreateDefault) :pointer)

(defcfun ("wxBitmap_Delete" wxBitmap_Delete) :void
  (_obj :pointer))

(defcfun ("wxBitmap_GetSubBitmap" wxBitmap_GetSubBitmap) :pointer
  (_obj :pointer)
  (x :int)
  (y :int)
  (w :int)
  (h :int))

(defcfun ("wxBitmap_LoadFile" wxBitmap_LoadFile) :int
  (_obj :pointer)
  (name :pointer)
  (type :int))

(defcfun ("wxBitmap_SaveFile" wxBitmap_SaveFile) :int
  (_obj :pointer)
  (name :pointer)
  (type :int)
  (cmap :pointer))

(defcfun ("wxBitmap_GetMask" wxBitmap_GetMask) :pointer
  (_obj :pointer))

(defcfun ("wxBitmap_SetMask" wxBitmap_SetMask) :void
  (_obj :pointer)
  (mask :pointer))

(defcfun ("wxBitmap_AddHandler" wxBitmap_AddHandler) :void
  (handler :pointer))

(defcfun ("wxBitmap_InsertHandler" wxBitmap_InsertHandler) :void
  (handler :pointer))

(defcfun ("wxBitmap_RemoveHandler" wxBitmap_RemoveHandler) :int
  (name :pointer))

(defcfun ("wxBitmap_FindHandlerByName" wxBitmap_FindHandlerByName) :pointer
  (name :pointer))

(defcfun ("wxBitmap_FindHandlerByExtension" wxBitmap_FindHandlerByExtension) :pointer
  (extension :pointer)
  (type :int))

(defcfun ("wxBitmap_FindHandlerByType" wxBitmap_FindHandlerByType) :pointer
  (type :int))

(defcfun ("wxBitmap_InitStandardHandlers" wxBitmap_InitStandardHandlers) :void)

(defcfun ("wxBitmap_CleanUpHandlers" wxBitmap_CleanUpHandlers) :void)

(defcfun ("wxBitmap_Ok" wxBitmap_Ok) :int
  (_obj :pointer))

(defcfun ("wxBitmap_GetWidth" wxBitmap_GetWidth) :int
  (_obj :pointer))

(defcfun ("wxBitmap_GetHeight" wxBitmap_GetHeight) :int
  (_obj :pointer))

(defcfun ("wxBitmap_GetDepth" wxBitmap_GetDepth) :int
  (_obj :pointer))

(defcfun ("wxBitmap_SetWidth" wxBitmap_SetWidth) :void
  (_obj :pointer)
  (w :int))

(defcfun ("wxBitmap_SetHeight" wxBitmap_SetHeight) :void
  (_obj :pointer)
  (h :int))

(defcfun ("wxBitmap_SetDepth" wxBitmap_SetDepth) :void
  (_obj :pointer)
  (d :int))

(defcfun ("wxStaticBitmap_Create" wxStaticBitmap_Create) :pointer
  (_prt :pointer)
  (_id :int)
  (bitmap :pointer)
  (_lft :int)
  (_top :int)
  (_wdt :int)
  (_hgt :int)
  (_stl :int))

(defcfun ("wxStaticBitmap_SetIcon" wxStaticBitmap_SetIcon) :void
  (_obj :pointer)
  (icon :pointer))

(defcfun ("wxStaticBitmap_SetBitmap" wxStaticBitmap_SetBitmap) :void
  (_obj :pointer)
  (bitmap :pointer))

(defcfun ("wxStaticBitmap_GetIcon" wxStaticBitmap_GetIcon) :pointer
  (_obj :pointer))

(defcfun ("wxStaticBitmap_GetBitmap" wxStaticBitmap_GetBitmap) :pointer
  (_obj :pointer))

(defcfun ("wxStaticBitmap_Delete" wxStaticBitmap_Delete) :void
  (_obj :pointer))

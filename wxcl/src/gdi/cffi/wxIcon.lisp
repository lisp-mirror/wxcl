;;;wxIcon.lisp
;;;License  : GNU General Public License (GPL)
;;;Author(s) : Surendra Singhi (surendra@asu.edu) 
;;;Copyright (C) 2005 Surendra Singhi 
;;;See the file LICENSE for information on usage and redistribution.
;;;
;;; $Header$
;;;

(in-package :wxcl-gdi)

(defcfun ("wxIcon_CreateDefault" wxIcon_CreateDefault) :pointer)

(defcfun ("wxIcon_Delete" wxIcon_Delete) :void
  (_obj :pointer))

(defcfun ("wxIcon_FromRaw" wxIcon_FromRaw) :pointer
  (data :pointer)
  (width :int)
  (height :int))

(defcfun ("wxIcon_FromXPM" wxIcon_FromXPM) :pointer
  (data :pointer))

(defcfun ("wxIcon_CreateLoad" wxIcon_CreateLoad) :pointer
  (name :pointer)
  (type :long)
  (width :int)
  (height :int))

(defcfun ("wxIcon_Load" wxIcon_Load) :int
  (_obj :pointer)
  (name :pointer)
  (type :long)
  (width :int)
  (height :int))

(defcfun ("wxIcon_CopyFromBitmap" wxIcon_CopyFromBitmap) :void
  (_obj :pointer)
  (bmp :pointer))

(defcfun ("wxIcon_Ok" wxIcon_Ok) :int
  (_obj :pointer))

(defcfun ("wxIcon_GetDepth" wxIcon_GetDepth) :int
  (_obj :pointer))

(defcfun ("wxIcon_GetWidth" wxIcon_GetWidth) :int
  (_obj :pointer))

(defcfun ("wxIcon_GetHeight" wxIcon_GetHeight) :int
  (_obj :pointer))

(defcfun ("wxIcon_Assign" wxIcon_Assign) :void
  (_obj :pointer)
  (other :pointer))

(defcfun ("wxIcon_IsEqual" wxIcon_IsEqual) :int
  (_obj :pointer)
  (other :pointer))

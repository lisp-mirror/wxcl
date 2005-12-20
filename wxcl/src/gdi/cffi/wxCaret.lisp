;;;wxCaret.lisp
;;;License  : GNU General Public License (GPL)
;;;Author(s) : Surendra Singhi (surendra@asu.edu) 
;;;Copyright (C) 2005 Surendra Singhi 
;;;See the file LICENSE for information on usage and redistribution.
;;;
;;; $Header$
;;;

(in-package :wxcl-gdi)

(defcfun ("wxCaret_Create" wxCaret_Create) :pointer
  (_wnd :pointer)
  (_wth :int)
  (_hgt :int))

(defcfun ("wxCaret_IsOk" wxCaret_IsOk) :int
  (_obj :pointer))

(defcfun ("wxCaret_IsVisible" wxCaret_IsVisible) :int
  (_obj :pointer))

(defcfun ("wxCaret_GetPosition" wxCaret_GetPosition) :void
  (_obj :pointer)
  (x :pointer)
  (y :pointer))

(defcfun ("wxCaret_GetSize" wxCaret_GetSize) :void
  (_obj :pointer)
  (width :pointer)
  (height :pointer))

(defcfun ("wxCaret_GetWindow" wxCaret_GetWindow) :pointer
  (_obj :pointer))

(defcfun ("wxCaret_SetSize" wxCaret_SetSize) :void
  (_obj :pointer)
  (width :int)
  (height :int))

(defcfun ("wxCaret_Move" wxCaret_Move) :void
  (_obj :pointer)
  (x :int)
  (y :int))

(defcfun ("wxCaret_Show" wxCaret_Show) :void
  (_obj :pointer))

(defcfun ("wxCaret_Hide" wxCaret_Hide) :void
  (_obj :pointer))

(defcfun ("wxCaret_GetBlinkTime" wxCaret_GetBlinkTime) :int)

(defcfun ("wxCaret_SetBlinkTime" wxCaret_SetBlinkTime) :void
  (milliseconds :int))

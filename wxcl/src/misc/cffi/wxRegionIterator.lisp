;;;wxRegionIterator.lisp
;;;License  : wxWindows License 3.1
;;;Author(s) : Surendra Singhi (surendra@asu.edu) 
;;;Copyright (C) 2005 Surendra Singhi 
;;;See the file LICENSE for information on usage and redistribution.
;;;
;;; $Header$
;;;

(in-package :wxcl-misc)

(defcfun ("wxRegionIterator_Create" wxRegionIterator_Create) :pointer)

(defcfun ("wxRegionIterator_CreateFromRegion" wxRegionIterator_CreateFromRegion) :pointer
  (region :pointer))

(defcfun ("wxRegionIterator_Delete" wxRegionIterator_Delete) :void
  (_obj :pointer))

(defcfun ("wxRegionIterator_Reset" wxRegionIterator_Reset) :void
  (_obj :pointer))

(defcfun ("wxRegionIterator_ResetToRegion" wxRegionIterator_ResetToRegion) :void
  (_obj :pointer)
  (region :pointer))

(defcfun ("wxRegionIterator_HaveRects" wxRegionIterator_HaveRects) :int
  (_obj :pointer))

(defcfun ("wxRegionIterator_Next" wxRegionIterator_Next) :void
  (_obj :pointer))

(defcfun ("wxRegionIterator_GetX" wxRegionIterator_GetX) :int
  (_obj :pointer))

(defcfun ("wxRegionIterator_GetY" wxRegionIterator_GetY) :int
  (_obj :pointer))

(defcfun ("wxRegionIterator_GetWidth" wxRegionIterator_GetWidth) :int
  (_obj :pointer))

(defcfun ("wxRegionIterator_GetHeight" wxRegionIterator_GetHeight) :int
  (_obj :pointer))

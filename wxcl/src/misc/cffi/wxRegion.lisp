;;;wxRegion.lisp
;;;License  : wxWindows License 3.1
;;;Author(s) : Surendra Singhi (surendra@asu.edu) 
;;;Copyright (C) 2005 Surendra Singhi 
;;;See the file LICENSE for information on usage and redistribution.
;;;
;;; $Header$
;;;

(in-package :wxcl-misc)

(defcfun ("wxRegion_CreateDefault" wxRegion_CreateDefault) :pointer)

(defcfun ("wxRegion_CreateFromRect" wxRegion_CreateFromRect) :pointer
  (x :int)
  (y :int)
  (w :int)
  (h :int))

(defcfun ("wxRegion_Delete" wxRegion_Delete) :void
  (_obj :pointer))

(defcfun ("wxRegion_Assign" wxRegion_Assign) :void
  (_obj :pointer)
  (region :pointer))

(defcfun ("wxRegion_Clear" wxRegion_Clear) :void
  (_obj :pointer))

(defcfun ("wxRegion_UnionRect" wxRegion_UnionRect) :int
  (_obj :pointer)
  (x :int)
  (y :int)
  (width :int)
  (height :int))

(defcfun ("wxRegion_UnionRegion" wxRegion_UnionRegion) :int
  (_obj :pointer)
  (region :pointer))

(defcfun ("wxRegion_IntersectRect" wxRegion_IntersectRect) :int
  (_obj :pointer)
  (x :int)
  (y :int)
  (width :int)
  (height :int))

(defcfun ("wxRegion_IntersectRegion" wxRegion_IntersectRegion) :int
  (_obj :pointer)
  (region :pointer))

(defcfun ("wxRegion_SubtractRect" wxRegion_SubtractRect) :int
  (_obj :pointer)
  (x :int)
  (y :int)
  (width :int)
  (height :int))

(defcfun ("wxRegion_SubtractRegion" wxRegion_SubtractRegion) :int
  (_obj :pointer)
  (region :pointer))

(defcfun ("wxRegion_XorRect" wxRegion_XorRect) :int
  (_obj :pointer)
  (x :int)
  (y :int)
  (width :int)
  (height :int))

(defcfun ("wxRegion_XorRegion" wxRegion_XorRegion) :int
  (_obj :pointer)
  (region :pointer))

(defcfun ("wxRegion_GetBox" wxRegion_GetBox) :void
  (_obj :pointer)
  (x :pointer)
  (y :pointer)
  (w :pointer)
  (h :pointer))

(defcfun ("wxRegion_Empty" wxRegion_Empty) :int
  (_obj :pointer))

(defcfun ("wxRegion_ContainsPoint" wxRegion_ContainsPoint) :int
  (_obj :pointer)
  (x :int)
  (y :int))

(defcfun ("wxRegion_ContainsRect" wxRegion_ContainsRect) :int
  (_obj :pointer)
  (x :int)
  (y :int)
  (width :int)
  (height :int))

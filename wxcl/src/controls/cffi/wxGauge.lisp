;;;wxGauge.lisp
;;;License  : GNU General Public License (GPL)
;;;Author(s) : Surendra Singhi (surendra@asu.edu) 
;;;Copyright (C) 2005 Surendra Singhi 
;;;See the file LICENSE for information on usage and redistribution.
;;;
;;; $Header$
;;;
(in-package :wxcl-controls)

(defcfun ("wxGauge_Create" wxGauge_Create) :pointer
  (_prt :pointer)
  (_id :int)
  (_rng :int)
  (_lft :int)
  (_top :int)
  (_wdt :int)
  (_hgt :int)
  (_stl :int))

(defcfun ("wxGauge_SetShadowWidth" wxGauge_SetShadowWidth) :void
  (_obj :pointer)
  (w :int))

(defcfun ("wxGauge_SetBezelFace" wxGauge_SetBezelFace) :void
  (_obj :pointer)
  (w :int))

(defcfun ("wxGauge_SetRange" wxGauge_SetRange) :void
  (_obj :pointer)
  (r :int))

(defcfun ("wxGauge_SetValue" wxGauge_SetValue) :void
  (_obj :pointer)
  (pos :int))

(defcfun ("wxGauge_GetShadowWidth" wxGauge_GetShadowWidth) :int
  (_obj :pointer))

(defcfun ("wxGauge_GetBezelFace" wxGauge_GetBezelFace) :int
  (_obj :pointer))

(defcfun ("wxGauge_GetRange" wxGauge_GetRange) :int
  (_obj :pointer))

(defcfun ("wxGauge_GetValue" wxGauge_GetValue) :int
  (_obj :pointer))

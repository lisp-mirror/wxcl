;;;wxSystemSettings.lisp
;;;License  : wxWindows License 3.1
;;;Author(s) : Surendra Singhi (surendra@asu.edu) 
;;;Copyright (C) 2005 Surendra Singhi 
;;;See the file LICENSE for information on usage and redistribution.
;;;
;;; $Header$
;;;

(in-package :wxcl-misc)

(defcfun ("wxSystemSettings_GetColour" wxSystemSettings_GetColour) :pointer
  (index :int))

(defcfun ("wxSystemSettings_GetFont" wxSystemSettings_GetFont) :pointer
  (index :int)
  (_ref :pointer))

(defcfun ("wxSystemSettings_GetMetric" wxSystemSettings_GetMetric) :int
  (index :int))

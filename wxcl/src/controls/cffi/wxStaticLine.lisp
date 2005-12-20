;;;wxStaticLine.lisp
;;;License  : GNU General Public License (GPL)
;;;Author(s) : Surendra Singhi (surendra@asu.edu) 
;;;Copyright (C) 2005 Surendra Singhi 
;;;See the file LICENSE for information on usage and redistribution.
;;;
;;; $Header$
;;;
(in-package :wxcl-controls)

(defcfun ("wxStaticLine_Create" wxStaticLine_Create) :pointer
  (_prt :pointer)
  (_id :int)
  (_lft :int)
  (_top :int)
  (_wdt :int)
  (_hgt :int)
  (_stl :int))

(defcfun ("wxStaticLine_IsVertical" wxStaticLine_IsVertical) :int
  (_obj :pointer))

(defcfun ("wxStaticLine_GetDefaultSize" wxStaticLine_GetDefaultSize) :int
  (_obj :pointer))

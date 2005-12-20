;;;wxMask.lisp
;;;License  : GNU General Public License (GPL)
;;;Author(s) : Surendra Singhi (surendra@asu.edu) 
;;;Copyright (C) 2005 Surendra Singhi 
;;;See the file LICENSE for information on usage and redistribution.
;;;
;;; $Header$
;;;

(in-package :wxcl-gdi)

(defcfun ("wxMask_Create" wxMask_Create) :pointer
  (bitmap :pointer))

(defcfun ("wxMask_CreateColoured" wxMask_CreateColoured) :pointer
  (bitmap :pointer)
  (colour :pointer))

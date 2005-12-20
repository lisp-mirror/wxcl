;;;wxControl.lisp
;;;License  : GNU General Public License (GPL)
;;;Author(s) : Surendra Singhi (surendra@asu.edu) 
;;;Copyright (C) 2005 Surendra Singhi 
;;;See the file LICENSE for information on usage and redistribution.
;;;
;;; $Header$
;;;
(in-package :wxcl-controls)

(defcfun ("wxControl_SetLabel" wxControl_SetLabel) :void
  (_obj :pointer)
  (text :string))

(defcfun ("wxControl_GetLabel" wxControl_GetLabel) :lisp-string
  (_obj :pointer))

(defcfun ("wxControl_Command" wxControl_Command) :void
  (_obj :pointer)
  (event :pointer))


;;;wxCheckBox.lisp
;;;License  : GNU General Public License (GPL)
;;;Author(s) : Surendra Singhi (surendra@asu.edu) 
;;;Copyright (C) 2005 Surendra Singhi 
;;;See the file LICENSE for information on usage and redistribution.
;;;
;;; $Header$
;;;
(in-package :wxcl-controls)

(defcfun ("wxCheckBox_Create" wxCheckBox_Create) :pointer
  (_prt :pointer)
  (_id :int)
  (_txt :string)
  (_lft :int)
  (_top :int)
  (_wdt :int)
  (_hgt :int)
  (_stl :int))

(defcfun ("wxCheckBox_SetValue" wxCheckBox_SetValue) :void
  (_obj :pointer)
  (value :int))

(defcfun ("wxCheckBox_GetValue" wxCheckBox_GetValue) :int
  (_obj :pointer))

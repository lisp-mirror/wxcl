;;;wxRadioButton.lisp
;;;License  : GNU General Public License (GPL)
;;;Author(s) : Surendra Singhi (surendra@asu.edu) 
;;;Copyright (C) 2005 Surendra Singhi 
;;;See the file LICENSE for information on usage and redistribution.
;;;
;;; $Header$
;;;
(in-package :wxcl-controls)

(defcfun ("wxRadioButton_Create" wxRadioButton_Create) :pointer
  (_prt :pointer)
  (_id :int)
  (_txt :string)
  (_lft :int)
  (_top :int)
  (_wdt :int)
  (_hgt :int)
  (_stl :int))

(defcfun ("wxRadioButton_SetValue" wxRadioButton_SetValue) :void
  (_obj :pointer)
  (value :int))

(defcfun ("wxRadioButton_GetValue" wxRadioButton_GetValue) :int
  (_obj :pointer))

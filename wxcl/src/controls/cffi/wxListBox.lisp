;;;wxListBox.lisp
;;;License  : GNU General Public License (GPL)
;;;Author(s) : Surendra Singhi (surendra@asu.edu) 
;;;Copyright (C) 2005 Surendra Singhi 
;;;See the file LICENSE for information on usage and redistribution.
;;;
;;; $Header$
;;;
(in-package :wxcl-controls)

(defcfun ("wxListBox_Create" wxListBox_Create) :pointer
  (_prt :pointer)
  (_id :int)
  (_lft :int)
  (_top :int)
  (_wdt :int)
  (_hgt :int)
  (_n :int)
  (_choices :pointer)
  (_stl :int))

(defcfun ("wxListBox_Deselect" wxListBox_Deselect) :void
  (_obj :pointer)
  (n :int))

(defcfun ("wxListBox_Set" wxListBox_Set) :void
  (_obj :pointer)
  (n :int)
  (_choices :pointer))

(defcfun ("wxListBox_IsSelected" wxListBox_IsSelected) :int
  (_obj :pointer)
  (n :int))

(defcfun ("wxListBox_GetSelections" wxListBox_GetSelections) :int
  (_obj :pointer))

(defcfun ("wxListBox_InsertItems" wxListBox_InsertItems) :void
  (_obj :pointer)
  (items :pointer)
  (pos :int)
  (count :int))

(defcfun ("wxListBox_SetFirstItem" wxListBox_SetFirstItem) :void
  (_obj :pointer)
  (n :int))

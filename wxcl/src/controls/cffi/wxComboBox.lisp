;;;wxComboBox.lisp
;;;License  : GNU General Public License (GPL)
;;;Author(s) : Surendra Singhi (surendra@asu.edu) 
;;;Copyright (C) 2005 Surendra Singhi 
;;;See the file LICENSE for information on usage and redistribution.
;;;
;;; $Header$
;;;
(in-package :wxcl-controls)

(defcfun ("wxComboBox_Create" wxComboBox_Create) :pointer
  (_prt :pointer)
  (_id :int)
  (_txt :string)
  (_lft :int)
  (_top :int)
  (_wdt :int)
  (_hgt :int)
  (_n :int)
  (_str :pointer)
  (_stl :int))

(defcfun ("wxComboBox_Copy" wxComboBox_Copy) :void
  (_obj :pointer))

(defcfun ("wxComboBox_Cut" wxComboBox_Cut) :void
  (_obj :pointer))

(defcfun ("wxComboBox_Paste" wxComboBox_Paste) :void
  (_obj :pointer))

(defcfun ("wxComboBox_SetInsertionPoint" wxComboBox_SetInsertionPoint) :void
  (_obj :pointer)
  (pos :int))

(defcfun ("wxComboBox_SetInsertionPointEnd" wxComboBox_SetInsertionPointEnd) :void
  (_obj :pointer))

(defcfun ("wxComboBox_GetInsertionPoint" wxComboBox_GetInsertionPoint) :int
  (_obj :pointer))

(defcfun ("wxComboBox_GetLastPosition" wxComboBox_GetLastPosition) :int
  (_obj :pointer))

(defcfun ("wxComboBox_Replace" wxComboBox_Replace) :void
  (_obj :pointer)
  (from :int)
  (to :int)
  (value :string))

(defcfun ("wxComboBox_Remove" wxComboBox_Remove) :void
  (_obj :pointer)
  (from :int)
  (to :int))

(defcfun ("wxComboBox_SetTextSelection" wxComboBox_SetTextSelection) :void
  (_obj :pointer)
  (from :int)
  (to :int))

(defcfun ("wxComboBox_SetEditable" wxComboBox_SetEditable) :void
  (_obj :pointer)
  (editable :int))

(defcfun ("wxComboBox_GetValue" wxComboBox_GetValue) :int
  (_obj :pointer)
  (_buf :pointer))

(defcfun ("wxComboBox_SetValue" wxComboBox_SetValue) :void
  (_obj :pointer)
  (_buf :string))

(defcfun ("wxComboBox_SetSelection" wxComboBox_SetSelection) :void
  (_obj :pointer)
  (from :long)
  (to :long))

(defcfun ("wxComboBox_Undo" wxComboBox_Undo) :void
  (_obj :pointer))

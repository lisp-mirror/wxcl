;;;wxRadioBox.lisp
;;;License  : GNU General Public License (GPL)
;;;Author(s) : Surendra Singhi (surendra@asu.edu) 
;;;Copyright (C) 2005 Surendra Singhi 
;;;See the file LICENSE for information on usage and redistribution.
;;;
;;; $Header$
;;;
(in-package :wxcl-controls)

(defcfun ("wxRadioBox_Create" wxRadioBox_Create) :pointer
  (_prt :pointer)
  (_id :int)
  (_txt :string)
  (_lft :int)
  (_top :int)
  (_wdt :int)
  (_hgt :int)
  (_n :int)
  (_str :pointer)
  (_dim :int)
  (_stl :int))

(defcfun ("wxRadioBox_FindString" wxRadioBox_FindString) :int
  (_obj :pointer)
  (s :pointer))

(defcfun ("wxRadioBox_SetSelection" wxRadioBox_SetSelection) :void
  (_obj :pointer)
  (_n :int))

(defcfun ("wxRadioBox_GetSelection" wxRadioBox_GetSelection) :int
  (_obj :pointer))

(defcfun ("wxRadioBox_SetItemLabel" wxRadioBox_SetItemLabel) :void
  (_obj :pointer)
  (item :int)
  (label :pointer))

(defcfun ("wxRadioBox_SetItemBitmap" wxRadioBox_SetItemBitmap) :void
  (_obj :pointer)
  (item :int)
  (bitmap :pointer))

(defcfun ("wxRadioBox_GetItemLabel" wxRadioBox_GetItemLabel) :lisp-string
  (_obj :pointer)
  (item :int))

(defcfun ("wxRadioBox_EnableItem" wxRadioBox_EnableItem) :void
  (_obj :pointer)
  (item :int)
  (enable :int))

(defcfun ("wxRadioBox_ShowItem" wxRadioBox_ShowItem) :void
  (_obj :pointer)
  (item :int)
  (show :int))

(defcfun ("wxRadioBox_GetStringSelection" wxRadioBox_GetStringSelection) :lisp-string
  (_obj :pointer))

(defcfun ("wxRadioBox_SetStringSelection" wxRadioBox_SetStringSelection) :void
  (_obj :pointer)
  (s :pointer))

(defcfun ("wxRadioBox_Number" wxRadioBox_Number) :int
  (_obj :pointer))

(defcfun ("wxRadioBox_GetNumberOfRowsOrCols" wxRadioBox_GetNumberOfRowsOrCols) :int
  (_obj :pointer))

(defcfun ("wxRadioBox_SetNumberOfRowsOrCols" wxRadioBox_SetNumberOfRowsOrCols) :void
  (_obj :pointer)
  (n :int))

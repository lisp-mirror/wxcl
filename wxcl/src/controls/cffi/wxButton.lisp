;;;wxButton.lisp
;;;License  : GNU General Public License (GPL)
;;;Author(s) : Surendra Singhi (surendra@asu.edu) 
;;;Copyright (C) 2005 Surendra Singhi 
;;;See the file LICENSE for information on usage and redistribution.
;;;
;;; $Header$
;;;

(in-package :wxcl-controls)

(defcfun ("wxButton_Create" wxButton_Create) :pointer
  (_prt :pointer)
  (_id :int)
  (_txt :string)
  (_lft :int)
  (_top :int)
  (_wdt :int)
  (_hgt :int)
  (_stl :int))

(defcfun ("wxButton_SetBackgroundColour" wxButton_SetBackgroundColour) :int
  (_obj :pointer)
  (colour :pointer))

(defcfun ("wxButton_SetDefault" wxButton_SetDefault) :void
  (_obj :pointer))

(defcfun ("wxBitmapButton_Create" wxBitmapButton_Create) :pointer
  (_prt :pointer)
  (_id :int)
  (_bmp :pointer)
  (_lft :int)
  (_top :int)
  (_wdt :int)
  (_hgt :int)
  (_stl :int))

(defcfun ("wxBitmapButton_GetBitmapLabel" wxBitmapButton_GetBitmapLabel) :void
  (_obj :pointer)
  (_ref :pointer))

(defcfun ("wxBitmapButton_GetBitmapSelected" wxBitmapButton_GetBitmapSelected) :void
  (_obj :pointer)
  (_ref :pointer))

(defcfun ("wxBitmapButton_GetBitmapFocus" wxBitmapButton_GetBitmapFocus) :void
  (_obj :pointer)
  (_ref :pointer))

(defcfun ("wxBitmapButton_GetBitmapDisabled" wxBitmapButton_GetBitmapDisabled) :void
  (_obj :pointer)
  (_ref :pointer))

(defcfun ("wxBitmapButton_SetBitmapSelected" wxBitmapButton_SetBitmapSelected) :void
  (_obj :pointer)
  (sel :pointer))

(defcfun ("wxBitmapButton_SetBitmapFocus" wxBitmapButton_SetBitmapFocus) :void
  (_obj :pointer)
  (focus :pointer))

(defcfun ("wxBitmapButton_SetBitmapDisabled" wxBitmapButton_SetBitmapDisabled) :void
  (_obj :pointer)
  (disabled :pointer))

(defcfun ("wxBitmapButton_SetBitmapLabel" wxBitmapButton_SetBitmapLabel) :void
  (_obj :pointer)
  (bitmap :pointer))

(defcfun ("wxBitmapButton_SetMargins" wxBitmapButton_SetMargins) :void
  (_obj :pointer)
  (x :int)
  (y :int))

(defcfun ("wxBitmapButton_GetMarginX" wxBitmapButton_GetMarginX) :int
  (_obj :pointer))

(defcfun ("wxBitmapButton_GetMarginY" wxBitmapButton_GetMarginY) :int
  (_obj :pointer))

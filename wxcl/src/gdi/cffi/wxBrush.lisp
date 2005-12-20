;;;wxBrush.lisp
;;;License  : GNU General Public License (GPL)
;;;Author(s) : Surendra Singhi (surendra@asu.edu) 
;;;Copyright (C) 2005 Surendra Singhi 
;;;See the file LICENSE for information on usage and redistribution.
;;;
;;; $Header$
;;;
(in-package :wxcl-dialogs)

(defcvar ("wxNull_Brush" wxNull_Brush)
 :pointer)

(defcvar ("wxBlack_Brush" wxBlack_Brush)
 :pointer)

(defcvar ("wxWhite_Brush" wxWhite_Brush)
 :pointer)

(defcvar ("wxRed_Brush" wxRed_Brush)
 :pointer)

(defcvar ("wxBlue_Brush" wxBlue_Brush)
 :pointer)

(defcvar ("wxGreen_Brush" wxGreen_Brush)
 :pointer)

(defcvar ("wxCyan_Brush" wxCyan_Brush)
 :pointer)

(defcvar ("wxLight_Grey_Brush" wxLight_Grey_Brush)
 :pointer)

(defcvar ("wxMedium_Grey_Brush" wxMedium_Grey_Brush)
 :pointer)

(defcvar ("wxTransparent_Brush" wxTransparent_Brush)
 :pointer)

(defcvar ("wxGrey_Brush" wxGrey_Brush)
 :pointer)

(defcfun ("wxBrush_CreateDefault" wxBrush_CreateDefault) :pointer)

(defcfun ("wxBrush_CreateFromBitmap" wxBrush_CreateFromBitmap) :pointer
  (bitmap :pointer))

(defcfun ("wxBrush_CreateFromColour" wxBrush_CreateFromColour) :pointer
  (col :pointer)
  (style :int))

(defcfun ("wxBrush_Delete" wxBrush_Delete) :void
  (_obj :pointer))

(defcfun ("wxBrush_SetColour" wxBrush_SetColour) :void
  (_obj :pointer)
  (col :pointer))

(defcfun ("wxBrush_SetColourName" wxBrush_SetColourName) :void
  (_obj :pointer)
  (col :string))

(defcfun ("wxBrush_SetColourSingle" wxBrush_SetColourSingle) :void
  (_obj :pointer)
  (r :char)
  (g :char)
  (b :char))

(defcfun ("wxBrush_SetStyle" wxBrush_SetStyle) :void
  (_obj :pointer)
  (style :int))

(defcfun ("wxBrush_SetStipple" wxBrush_SetStipple) :void
  (_obj :pointer)
  (stipple :pointer))

(defcfun ("wxBrush_Assign" wxBrush_Assign) :void
  (_obj :pointer)
  (brush :pointer))

(defcfun ("wxBrush_IsEqual" wxBrush_IsEqual) :int
  (_obj :pointer)
  (brush :pointer))

(defcfun ("wxBrush_GetColour" wxBrush_GetColour) :pointer
  (_obj :pointer))

(defcfun ("wxBrush_GetStyle" wxBrush_GetStyle) :int
  (_obj :pointer))

(defcfun ("wxBrush_GetStipple" wxBrush_GetStipple) :pointer
  (_obj :pointer))

(defcfun ("wxBrush_Ok" wxBrush_Ok) :int
  (_obj :pointer))

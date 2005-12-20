;;;wxPen.lisp
;;;License  : GNU General Public License (GPL)
;;;Author(s) : Surendra Singhi (surendra@asu.edu) 
;;;Copyright (C) 2005 Surendra Singhi 
;;;See the file LICENSE for information on usage and redistribution.
;;;
;;; $Header$
;;;

(in-package :wxcl-gdi)

(defcvar ("wxBlack_Pen" wxBlack_Pen)
 :pointer)

(defcvar ("wxBlack_Dashed_Pen" wxBlack_Dashed_Pen)
 :pointer)

(defcvar ("wxWhite_Pen" wxWhite_Pen)
 :pointer)

(defcvar ("wxRed_Pen" wxRed_Pen)
 :pointer)

(defcvar ("wxGreen_Pen" wxGreen_Pen)
 :pointer)

(defcvar ("wxCyan_Pen" wxCyan_Pen)
 :pointer)

(defcvar ("wxLight_Grey_Pen" wxLight_Grey_Pen)
 :pointer)

(defcvar ("wxMedium_Grey_Pen" wxMedium_Grey_Pen)
 :pointer)

(defcvar ("wxTransparent_Pen" wxTransparent_Pen)
 :pointer)

(defcvar ("wxGrey_Pen" wxGrey_Pen)
 :pointer)

(defcfun ("wxPen_CreateDefault" wxPen_CreateDefault) :pointer)

(defcfun ("wxPen_CreateFromColour" wxPen_CreateFromColour) :pointer
  (col :pointer)
  (width :int)
  (style :int))

(defcfun ("wxPen_CreateFromBitmap" wxPen_CreateFromBitmap) :pointer
  (stipple :pointer)
  (width :int))

(defcfun ("wxPen_Delete" wxPen_Delete) :void
  (_obj :pointer))

(defcfun ("wxPen_Assign" wxPen_Assign) :void
  (_obj :pointer)
  (pen :pointer))

(defcfun ("wxPen_IsEqual" wxPen_IsEqual) :int
  (_obj :pointer)
  (pen :pointer))

(defcfun ("wxPen_Ok" wxPen_Ok) :int
  (_obj :pointer))

(defcfun ("wxPen_SetColour" wxPen_SetColour) :void
  (_obj :pointer)
  (col :pointer))

(defcfun ("wxPen_SetColourName" wxPen_SetColourName) :void
  (_obj :pointer)
  (col :string))

(defcfun ("wxPen_SetColourSingle" wxPen_SetColourSingle) :void
  (_obj :pointer)
  (r :char)
  (g :char)
  (b :char))

(defcfun ("wxPen_SetWidth" wxPen_SetWidth) :void
  (_obj :pointer)
  (width :int))

(defcfun ("wxPen_SetStyle" wxPen_SetStyle) :void
  (_obj :pointer)
  (style :int))

(defcfun ("wxPen_SetStipple" wxPen_SetStipple) :void
  (_obj :pointer)
  (stipple :pointer))

(defcfun ("wxPen_SetDashes" wxPen_SetDashes) :void
  (_obj :pointer)
  (nb_dashes :int)
  (dash :pointer))

(defcfun ("wxPen_SetJoin" wxPen_SetJoin) :void
  (_obj :pointer)
  (join :int))

(defcfun ("wxPen_SetCap" wxPen_SetCap) :void
  (_obj :pointer)
  (cap :int))

(defcfun ("wxPen_GetColour" wxPen_GetColour) :pointer
  (_obj :pointer))

(defcfun ("wxPen_GetWidth" wxPen_GetWidth) :int
  (_obj :pointer))

(defcfun ("wxPen_GetStyle" wxPen_GetStyle) :int
  (_obj :pointer))

(defcfun ("wxPen_GetJoin" wxPen_GetJoin) :int
  (_obj :pointer))

(defcfun ("wxPen_GetCap" wxPen_GetCap) :int
  (_obj :pointer))

(defcfun ("wxPen_GetDashes" wxPen_GetDashes) :int
  (_obj :pointer)
  (ptr :pointer))

(defcfun ("wxPen_GetStipple" wxPen_GetStipple) :pointer
  (_obj :pointer))

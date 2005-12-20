;;;wxColour.lisp
;;;License  : GNU General Public License (GPL)
;;;Author(s) : Surendra Singhi (surendra@asu.edu) 
;;;Copyright (C) 2005 Surendra Singhi 
;;;See the file LICENSE for information on usage and redistribution.
;;;
;;; $Header$
;;;

(in-package :wxcl-gdi)

(defcvar ("wxNull_Colour" wxNull_Colour)
 :pointer)

(defcvar ("wxBlack" wxBlack)
 :pointer)

(defcvar ("wxWhite" wxWhite)
 :pointer)

(defcvar ("wxRed" wxRed)
 :pointer)

(defcvar ("wxBlue" wxBlue)
 :pointer)

(defcvar ("wxGreen" wxGreen)
 :pointer)

(defcvar ("wxCyan" wxCyan)
 :pointer)

(defcvar ("wxLight_Grey" wxLight_Grey)
 :pointer)

(defcfun ("wxColour_CreateEmpty" wxColour_CreateEmpty) :pointer)

(defcfun ("wxColour_CreateRGB" wxColour_CreateRGB) :pointer
  (_red :char)
  (_green :char)
  (_blue :char))

(defcfun ("wxColour_CreateByName" wxColour_CreateByName) :pointer
  (_name :string))

(defcfun ("wxColour_Delete" wxColour_Delete) :void
  (_obj :pointer))

(defcfun ("wxColour_Set" wxColour_Set) :void
  (_obj :pointer)
  (_red :char)
  (_green :char)
  (_blue :char))

(defcfun ("wxColour_Ok" wxColour_Ok) :int
  (_obj :pointer))

(defcfun ("wxColour_Red" wxColour_Red) :char
  (_obj :pointer))

(defcfun ("wxColour_Green" wxColour_Green) :char
  (_obj :pointer))

(defcfun ("wxColour_Blue" wxColour_Blue) :char
  (_obj :pointer))

(defcfun ("wxColour_GetPixel" wxColour_GetPixel) :int
  (_obj :pointer))

(defcfun ("wxColour_Copy" wxColour_Copy) :pointer
  (_obj :pointer))

(defcfun ("wxColour_SetByName" wxColour_SetByName) :void
  (_obj :pointer)
  (_name :string))

(defcfun ("wxColour_ValidName" wxColour_ValidName) :int
  (_name :string))

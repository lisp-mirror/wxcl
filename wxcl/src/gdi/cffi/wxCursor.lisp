;;;wxCursor.lisp
;;;License  : GNU General Public License (GPL)
;;;Author(s) : Surendra Singhi (surendra@asu.edu) 
;;;Copyright (C) 2005 Surendra Singhi 
;;;See the file LICENSE for information on usage and redistribution.
;;;
;;; $Header$
;;;

(in-package :wxcl-gdi)

(defcvar ("wxStandard_Cursor" wxStandard_Cursor)
 :pointer)

(defcvar ("wxHourglass_Cursor" wxHourglass_Cursor)
 :pointer)

(defcvar ("wxCross_Cursor" wxCross_Cursor)
 :pointer)

(defcfun ("Cursor_CreateFromStock" Cursor_CreateFromStock) :pointer
  (_id :int))

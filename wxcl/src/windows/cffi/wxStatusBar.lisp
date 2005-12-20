;;;wxStatusBar.lisp
;;;License  : wxWindows License 3.1
;;;Author(s) : Surendra Singhi (surendra@asu.edu) 
;;;Copyright (C) 2005 Surendra Singhi 
;;;See the file LICENSE for information on usage and redistribution.
;;;
;;; $Header$
;;;

(in-package :wxcl-windows)

(defcfun ("wxStatusBar_Create" wxStatusBar_Create) :pointer
  (_prt :pointer)
  (_id :int)
  (_stl :int))

(defcfun ("wxStatusBar_SetFieldsCount" wxStatusBar_SetFieldsCount) :void
  (_obj :pointer)
  (number :int)
  (widths :int))

(defcfun ("wxStatusBar_GetFieldsCount" wxStatusBar_GetFieldsCount) :int
  (_obj :pointer))

(defcfun ("wxStatusBar_SetStatusText" wxStatusBar_SetStatusText) :void
  (_obj :pointer)
  (text :pointer)
  (number :int))

(defcfun ("wxStatusBar_GetStatusText" wxStatusBar_GetStatusText) :lisp-string
  (_obj :pointer)
  (number :int))

(defcfun ("wxStatusBar_SetStatusWidths" wxStatusBar_SetStatusWidths) :void
  (_obj :pointer)
  (n :int)
  (widths :int))

(defcfun ("wxStatusBar_SetMinHeight" wxStatusBar_SetMinHeight) :void
  (_obj :pointer)
  (height :int))

(defcfun ("wxStatusBar_GetBorderX" wxStatusBar_GetBorderX) :int
  (_obj :pointer))

(defcfun ("wxStatusBar_GetBorderY" wxStatusBar_GetBorderY) :int
  (_obj :pointer))

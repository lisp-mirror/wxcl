;;;wxPanel.lisp
;;;License  : wxWindows License 3.1
;;;Author(s) : Surendra Singhi (surendra@asu.edu) 
;;;Copyright (C) 2005 Surendra Singhi 
;;;See the file LICENSE for information on usage and redistribution.
;;;
;;; $Header$
;;;

(in-package :wxcl-windows)

(defcfun ("wxPanel_Create" wxPanel_Create) :pointer
  (_prt :pointer)
  (_id :int)
  (_lft :int)
  (_top :int)
  (_wdt :int)
  (_hgt :int)
  (_stl :int))

(defcfun ("wxPanel_InitDialog" wxPanel_InitDialog) :void
  (_obj :pointer))

(defcfun ("wxPanel_GetDefaultItem" wxPanel_GetDefaultItem) :pointer
  (_obj :pointer))

(defcfun ("wxPanel_SetDefaultItem" wxPanel_SetDefaultItem) :void
  (_obj :pointer)
  (btn :pointer))

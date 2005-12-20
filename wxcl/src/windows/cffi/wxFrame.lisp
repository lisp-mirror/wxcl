;;;wxFrame.lisp
;;;License  : wxWindows License 3.1
;;;Author(s) : Surendra Singhi (surendra@asu.edu) 
;;;Copyright (C) 2005 Surendra Singhi 
;;;See the file LICENSE for information on usage and redistribution.
;;;
;;; $Header$
;;;

(in-package :wxcl-windows)

(defcfun ("wxFrame_Create" wxFrame_Create) :pointer
  (_prt :pointer)
  (_id :int)
  (_txt :string)
  (_lft :int)
  (_top :int)
  (_wdt :int)
  (_hgt :int)
  (_stl :int))

(defcfun ("wxFrame_CreateStatusBar" wxFrame_CreateStatusBar) :pointer
  (_obj :pointer)
  (number :int)
  (style :int))

(defcfun ("wxFrame_Maximize" wxFrame_Maximize) :void
  (_obj :pointer))

(defcfun ("wxFrame_Restore" wxFrame_Restore) :void
  (_obj :pointer))

(defcfun ("wxFrame_Iconize" wxFrame_Iconize) :void
  (_obj :pointer))

(defcfun ("wxFrame_IsMaximized" wxFrame_IsMaximized) :int
  (_obj :pointer))

(defcfun ("wxFrame_IsIconized" wxFrame_IsIconized) :int
  (_obj :pointer))

(defcfun ("wxFrame_GetIcon" wxFrame_GetIcon) :pointer
  (_obj :pointer))

(defcfun ("wxFrame_SetIcon" wxFrame_SetIcon) :void
  (_obj :pointer)
  (_icon :pointer))

(defcfun ("wxFrame_GetClientAreaOrigin_left" wxFrame_GetClientAreaOrigin_left) :int
  (_obj :pointer))

(defcfun ("wxFrame_GetClientAreaOrigin_top" wxFrame_GetClientAreaOrigin_top) :int
  (_obj :pointer))

(defcfun ("wxFrame_SetMenuBar" wxFrame_SetMenuBar) :void
  (_obj :pointer)
  (menubar :pointer))

(defcfun ("wxFrame_GetMenuBar" wxFrame_GetMenuBar) :pointer
  (_obj :pointer))

(defcfun ("wxFrame_GetStatusBar" wxFrame_GetStatusBar) :pointer
  (_obj :pointer))

(defcfun ("wxFrame_SetStatusBar" wxFrame_SetStatusBar) :void
  (_obj :pointer)
  (statBar :pointer))

(defcfun ("wxFrame_SetStatusText" wxFrame_SetStatusText) :void
  (_obj :pointer)
  (_txt :string)
  (_number :int))

(defcfun ("wxFrame_SetStatusWidths" wxFrame_SetStatusWidths) :void
  (_obj :pointer)
  (_n :int)
  (_widths_field :pointer))

(defcfun ("wxFrame_CreateToolBar" wxFrame_CreateToolBar) :pointer
  (_obj :pointer)
  (style :long))

(defcfun ("wxFrame_GetToolBar" wxFrame_GetToolBar) :pointer
  (_obj :pointer))

(defcfun ("wxFrame_SetToolBar" wxFrame_SetToolBar) :void
  (_obj :pointer)
  (_toolbar :pointer))

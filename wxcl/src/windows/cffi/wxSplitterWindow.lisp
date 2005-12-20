;;;wxSplitterWindow.lisp
;;;License  : wxWindows License 3.1
;;;Author(s) : Surendra Singhi (surendra@asu.edu) 
;;;Copyright (C) 2005 Surendra Singhi 
;;;See the file LICENSE for information on usage and redistribution.
;;;
;;; $Header$
;;;

(in-package :wxcl-windows)

(defcfun ("wxSplitterWindow_Create" wxSplitterWindow_Create) :pointer
  (_prt :pointer)
  (_id :int)
  (_lft :int)
  (_top :int)
  (_wdt :int)
  (_hgt :int)
  (_stl :int))

(defcfun ("wxSplitterWindow_GetWindow1" wxSplitterWindow_GetWindow1) :pointer
  (_obj :pointer))

(defcfun ("wxSplitterWindow_GetWindow2" wxSplitterWindow_GetWindow2) :pointer
  (_obj :pointer))

(defcfun ("wxSplitterWindow_SetSplitMode" wxSplitterWindow_SetSplitMode) :void
  (_obj :pointer)
  (mode :int))

(defcfun ("wxSplitterWindow_GetSplitMode" wxSplitterWindow_GetSplitMode) :int
  (_obj :pointer))

(defcfun ("wxSplitterWindow_Initialize" wxSplitterWindow_Initialize) :void
  (_obj :pointer)
  (window :pointer))

(defcfun ("wxSplitterWindow_SplitVertically" wxSplitterWindow_SplitVertically) :int
  (_obj :pointer)
  (window1 :pointer)
  (window2 :pointer)
  (sashPosition :int))

(defcfun ("wxSplitterWindow_SplitHorizontally" wxSplitterWindow_SplitHorizontally) :int
  (_obj :pointer)
  (window1 :pointer)
  (window2 :pointer)
  (sashPosition :int))

(defcfun ("wxSplitterWindow_Unsplit" wxSplitterWindow_Unsplit) :int
  (_obj :pointer)
  (toRemove :pointer))

(defcfun ("wxSplitterWindow_ReplaceWindow" wxSplitterWindow_ReplaceWindow) :int
  (_obj :pointer)
  (winOld :pointer)
  (winNew :pointer))

(defcfun ("wxSplitterWindow_IsSplit" wxSplitterWindow_IsSplit) :int
  (_obj :pointer))

(defcfun ("wxSplitterWindow_SetSashSize" wxSplitterWindow_SetSashSize) :void
  (_obj :pointer)
  (width :int))

(defcfun ("wxSplitterWindow_SetBorderSize" wxSplitterWindow_SetBorderSize) :void
  (_obj :pointer)
  (width :int))

(defcfun ("wxSplitterWindow_GetSashSize" wxSplitterWindow_GetSashSize) :int
  (_obj :pointer))

(defcfun ("wxSplitterWindow_GetSashGravity" wxSplitterWindow_GetSashGravity) :double
  (_obj :pointer))

(defcfun ("wxSplitterWindow_SetSashGravity" wxSplitterWindow_SetSashGravity) :void
  (_obj :pointer)
  (gravity :double))

(defcfun ("wxSplitterWindow_GetBorderSize" wxSplitterWindow_GetBorderSize) :int
  (_obj :pointer))

(defcfun ("wxSplitterWindow_SetSashPosition" wxSplitterWindow_SetSashPosition) :void
  (_obj :pointer)
  (position :int)
  (redraw :int))

(defcfun ("wxSplitterWindow_GetSashPosition" wxSplitterWindow_GetSashPosition) :int
  (_obj :pointer))

(defcfun ("wxSplitterWindow_SetMinimumPaneSize" wxSplitterWindow_SetMinimumPaneSize) :void
  (_obj :pointer)
  (min :int))

(defcfun ("wxSplitterWindow_GetMinimumPaneSize" wxSplitterWindow_GetMinimumPaneSize) :int
  (_obj :pointer))

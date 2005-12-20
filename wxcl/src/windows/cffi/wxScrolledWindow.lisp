;;;wxScrolledWindow.lisp
;;;License  : wxWindows License 3.1
;;;Author(s) : Surendra Singhi (surendra@asu.edu) 
;;;Copyright (C) 2005 Surendra Singhi 
;;;See the file LICENSE for information on usage and redistribution.
;;;
;;; $Header$
;;;

(in-package :wxcl-windows)

(defcfun ("wxScrolledWindow_Create" wxScrolledWindow_Create) :pointer
  (_prt :pointer)
  (_id :int)
  (_lft :int)
  (_top :int)
  (_wdt :int)
  (_hgt :int)
  (_stl :int))

(defcfun ("wxScrolledWindow_SetTargetWindow" wxScrolledWindow_SetTargetWindow) :void
  (_obj :pointer)
  (target :pointer))

(defcfun ("wxScrolledWindow_GetTargetWindow" wxScrolledWindow_GetTargetWindow) :pointer
  (_obj :pointer))

(defcfun ("wxScrolledWindow_SetScrollbars" wxScrolledWindow_SetScrollbars) :void
  (_obj :pointer)
  (pixelsPerUnitX :int)
  (pixelsPerUnitY :int)
  (noUnitsX :int)
  (noUnitsY :int)
  (xPos :int)
  (yPos :int)
  (noRefresh :int))

(defcfun ("wxScrolledWindow_Scroll" wxScrolledWindow_Scroll) :void
  (_obj :pointer)
  (x_pos :int)
  (y_pos :int))

(defcfun ("wxScrolledWindow_GetScrollPageSize" wxScrolledWindow_GetScrollPageSize) :int
  (_obj :pointer)
  (orient :int))

(defcfun ("wxScrolledWindow_SetScrollPageSize" wxScrolledWindow_SetScrollPageSize) :void
  (_obj :pointer)
  (orient :int)
  (pageSize :int))

(defcfun ("wxScrolledWindow_GetScrollPixelsPerUnit" wxScrolledWindow_GetScrollPixelsPerUnit) :void
  (_obj :pointer)
  (x_unit :pointer)
  (y_unit :pointer))

(defcfun ("wxScrolledWindow_EnableScrolling" wxScrolledWindow_EnableScrolling) :void
  (_obj :pointer)
  (x_scrolling :int)
  (y_scrolling :int))

(defcfun ("wxScrolledWindow_GetViewStart" wxScrolledWindow_GetViewStart) :void
  (_obj :pointer)
  (x :pointer)
  (y :pointer))

(defcfun ("wxScrolledWindow_GetVirtualSize" wxScrolledWindow_GetVirtualSize) :void
  (_obj :pointer)
  (x :pointer)
  (y :pointer))

(defcfun ("wxScrolledWindow_SetScale" wxScrolledWindow_SetScale) :void
  (_obj :pointer)
  (xs :double)
  (ys :double))

(defcfun ("wxScrolledWindow_GetScaleX" wxScrolledWindow_GetScaleX) :double
  (_obj :pointer))

(defcfun ("wxScrolledWindow_GetScaleY" wxScrolledWindow_GetScaleY) :double
  (_obj :pointer))

(defcfun ("wxScrolledWindow_CalcScrolledPosition" wxScrolledWindow_CalcScrolledPosition) :void
  (_obj :pointer)
  (x :int)
  (y :int)
  (xx :pointer)
  (yy :pointer))

(defcfun ("wxScrolledWindow_CalcUnscrolledPosition" wxScrolledWindow_CalcUnscrolledPosition) :void
  (_obj :pointer)
  (x :int)
  (y :int)
  (xx :pointer)
  (yy :pointer))

(defcfun ("wxScrolledWindow_AdjustScrollbars" wxScrolledWindow_AdjustScrollbars) :void
  (_obj :pointer))

(defcfun ("wxScrolledWindow_OnDraw" wxScrolledWindow_OnDraw) :void
  (_obj :pointer)
  (dc :pointer))

;;;wxScrollBar.lisp
;;;License  : wxWindows License 3.1
;;;Author(s) : Surendra Singhi (surendra@asu.edu) 
;;;Copyright (C) 2005 Surendra Singhi 
;;;See the file LICENSE for information on usage and redistribution.
;;;
;;; $Header$
;;;

(in-package :wxcl-windows)

(defcfun ("wxScrollBar_Create" wxScrollBar_Create) :pointer
  (_prt :pointer)
  (_id :int)
  (_lft :int)
  (_top :int)
  (_wdt :int)
  (_hgt :int)
  (_stl :int))

(defcfun ("wxScrollBar_GetThumbPosition" wxScrollBar_GetThumbPosition) :int
  (_obj :pointer))

(defcfun ("wxScrollBar_GetThumbSize" wxScrollBar_GetThumbSize) :int
  (_obj :pointer))

(defcfun ("wxScrollBar_GetPageSize" wxScrollBar_GetPageSize) :int
  (_obj :pointer))

(defcfun ("wxScrollBar_GetRange" wxScrollBar_GetRange) :int
  (_obj :pointer))

(defcfun ("wxScrollBar_SetThumbPosition" wxScrollBar_SetThumbPosition) :void
  (_obj :pointer)
  (viewStart :int))

(defcfun ("wxScrollBar_SetScrollbar" wxScrollBar_SetScrollbar) :void
  (_obj :pointer)
  (position :int)
  (thumbSize :int)
  (range :int)
  (pageSize :int)
  (refresh :int))

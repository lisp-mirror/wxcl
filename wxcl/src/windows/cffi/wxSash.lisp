;;;wxSash.lisp
;;;License  : wxWindows License 3.1
;;;Author(s) : Surendra Singhi (surendra@asu.edu) 
;;;Copyright (C) 2005 Surendra Singhi 
;;;See the file LICENSE for information on usage and redistribution.
;;;
;;; $Header$
;;;

(in-package :wxcl-windows)

(defcfun ("wxSashWindow_Create" wxSashWindow_Create) :pointer
  (_par :pointer)
  (_id :int)
  (_x :int)
  (_y :int)
  (_w :int)
  (_h :int)
  (_stl :int))

(defcfun ("wxSashWindow_SetSashVisible" wxSashWindow_SetSashVisible) :void
  (_obj :pointer)
  (edge :int)
  (sash :int))

(defcfun ("wxSashWindow_GetSashVisible" wxSashWindow_GetSashVisible) :int
  (_obj :pointer)
  (edge :int))

(defcfun ("wxSashWindow_SetSashBorder" wxSashWindow_SetSashBorder) :void
  (_obj :pointer)
  (edge :int)
  (border :int))

(defcfun ("wxSashWindow_HasBorder" wxSashWindow_HasBorder) :int
  (_obj :pointer)
  (edge :int))

(defcfun ("wxSashWindow_GetEdgeMargin" wxSashWindow_GetEdgeMargin) :int
  (_obj :pointer)
  (edge :int))

(defcfun ("wxSashWindow_SetDefaultBorderSize" wxSashWindow_SetDefaultBorderSize) :void
  (_obj :pointer)
  (width :int))

(defcfun ("wxSashWindow_GetDefaultBorderSize" wxSashWindow_GetDefaultBorderSize) :int
  (_obj :pointer))

(defcfun ("wxSashWindow_SetExtraBorderSize" wxSashWindow_SetExtraBorderSize) :void
  (_obj :pointer)
  (width :int))

(defcfun ("wxSashWindow_GetExtraBorderSize" wxSashWindow_GetExtraBorderSize) :int
  (_obj :pointer))

(defcfun ("wxSashWindow_SetMinimumSizeX" wxSashWindow_SetMinimumSizeX) :void
  (_obj :pointer)
  (min :int))

(defcfun ("wxSashWindow_SetMinimumSizeY" wxSashWindow_SetMinimumSizeY) :void
  (_obj :pointer)
  (min :int))

(defcfun ("wxSashWindow_GetMinimumSizeX" wxSashWindow_GetMinimumSizeX) :int
  (_obj :pointer))

(defcfun ("wxSashWindow_GetMinimumSizeY" wxSashWindow_GetMinimumSizeY) :int
  (_obj :pointer))

(defcfun ("wxSashWindow_SetMaximumSizeX" wxSashWindow_SetMaximumSizeX) :void
  (_obj :pointer)
  (max :int))

(defcfun ("wxSashWindow_SetMaximumSizeY" wxSashWindow_SetMaximumSizeY) :void
  (_obj :pointer)
  (max :int))

(defcfun ("wxSashWindow_GetMaximumSizeX" wxSashWindow_GetMaximumSizeX) :int
  (_obj :pointer))

(defcfun ("wxSashWindow_GetMaximumSizeY" wxSashWindow_GetMaximumSizeY) :int
  (_obj :pointer))

(defcfun ("wxSashEvent_Create" wxSashEvent_Create) :pointer
  (id :int)
  (edge :int))

(defcfun ("wxSashEvent_SetEdge" wxSashEvent_SetEdge) :void
  (_obj :pointer)
  (edge :int))

(defcfun ("wxSashEvent_GetEdge" wxSashEvent_GetEdge) :int
  (_obj :pointer))

(defcfun ("wxSashEvent_SetDragRect" wxSashEvent_SetDragRect) :void
  (_obj :pointer)
  (x :int)
  (y :int)
  (w :int)
  (h :int))

(defcfun ("wxSashEvent_GetDragRect" wxSashEvent_GetDragRect) :void
  (_obj :pointer)
  (x :pointer)
  (y :pointer)
  (w :pointer)
  (h :pointer))

(defcfun ("wxSashEvent_SetDragStatus" wxSashEvent_SetDragStatus) :void
  (_obj :pointer)
  (status :int))

(defcfun ("wxSashEvent_GetDragStatus" wxSashEvent_GetDragStatus) :int
  (_obj :pointer))

(defcfun ("wxSashLayoutWindow_Create" wxSashLayoutWindow_Create) :pointer
  (_par :pointer)
  (_id :int)
  (_x :int)
  (_y :int)
  (_w :int)
  (_h :int)
  (_stl :int))

(defcfun ("wxSashLayoutWindow_GetAlignment" wxSashLayoutWindow_GetAlignment) :int
  (_obj :pointer))

(defcfun ("wxSashLayoutWindow_GetOrientation" wxSashLayoutWindow_GetOrientation) :int
  (_obj :pointer))

(defcfun ("wxSashLayoutWindow_SetAlignment" wxSashLayoutWindow_SetAlignment) :void
  (_obj :pointer)
  (align :int))

(defcfun ("wxSashLayoutWindow_SetOrientation" wxSashLayoutWindow_SetOrientation) :void
  (_obj :pointer)
  (orient :int))

(defcfun ("wxSashLayoutWindow_SetDefaultSize" wxSashLayoutWindow_SetDefaultSize) :void
  (_obj :pointer)
  (w :int)
  (h :int))

(defcfun ("wxQueryLayoutInfoEvent_Create" wxQueryLayoutInfoEvent_Create) :pointer
  (id :int))

(defcfun ("wxQueryLayoutInfoEvent_SetRequestedLength" wxQueryLayoutInfoEvent_SetRequestedLength) :void
  (_obj :pointer)
  (length :int))

(defcfun ("wxQueryLayoutInfoEvent_GetRequestedLength" wxQueryLayoutInfoEvent_GetRequestedLength) :int
  (_obj :pointer))

(defcfun ("wxQueryLayoutInfoEvent_SetFlags" wxQueryLayoutInfoEvent_SetFlags) :void
  (_obj :pointer)
  (flags :int))

(defcfun ("wxQueryLayoutInfoEvent_GetFlags" wxQueryLayoutInfoEvent_GetFlags) :int
  (_obj :pointer))

(defcfun ("wxQueryLayoutInfoEvent_SetSize" wxQueryLayoutInfoEvent_SetSize) :void
  (_obj :pointer)
  (w :int)
  (h :int))

(defcfun ("wxQueryLayoutInfoEvent_GetSize" wxQueryLayoutInfoEvent_GetSize) :void
  (_obj :pointer)
  (w :pointer)
  (h :pointer))

(defcfun ("wxQueryLayoutInfoEvent_SetOrientation" wxQueryLayoutInfoEvent_SetOrientation) :void
  (_obj :pointer)
  (orient :int))

(defcfun ("wxQueryLayoutInfoEvent_GetOrientation" wxQueryLayoutInfoEvent_GetOrientation) :int
  (_obj :pointer))

(defcfun ("wxQueryLayoutInfoEvent_SetAlignment" wxQueryLayoutInfoEvent_SetAlignment) :void
  (_obj :pointer)
  (align :int))

(defcfun ("wxQueryLayoutInfoEvent_GetAlignment" wxQueryLayoutInfoEvent_GetAlignment) :int
  (_obj :pointer))

(defcfun ("wxCalculateLayoutEvent_Create" wxCalculateLayoutEvent_Create) :pointer
  (id :int))

(defcfun ("wxCalculateLayoutEvent_SetFlags" wxCalculateLayoutEvent_SetFlags) :void
  (_obj :pointer)
  (flags :int))

(defcfun ("wxCalculateLayoutEvent_GetFlags" wxCalculateLayoutEvent_GetFlags) :int
  (_obj :pointer))

(defcfun ("wxCalculateLayoutEvent_SetRect" wxCalculateLayoutEvent_SetRect) :void
  (_obj :pointer)
  (x :int)
  (y :int)
  (w :int)
  (h :int))

(defcfun ("wxCalculateLayoutEvent_GetRect" wxCalculateLayoutEvent_GetRect) :void
  (_obj :pointer)
  (x :pointer)
  (y :pointer)
  (w :pointer)
  (h :pointer))

(defcfun ("wxLayoutAlgorithm_Create" wxLayoutAlgorithm_Create) :pointer)

(defcfun ("wxLayoutAlgorithm_Delete" wxLayoutAlgorithm_Delete) :void
  (_obj :pointer))

(defcfun ("wxLayoutAlgorithm_LayoutMDIFrame" wxLayoutAlgorithm_LayoutMDIFrame) :int
  (_obj :pointer)
  (frame :pointer)
  (x :int)
  (y :int)
  (w :int)
  (h :int)
  (use :int))

(defcfun ("wxLayoutAlgorithm_LayoutFrame" wxLayoutAlgorithm_LayoutFrame) :int
  (_obj :pointer)
  (frame :pointer)
  (mainWindow :pointer))

(defcfun ("wxLayoutAlgorithm_LayoutWindow" wxLayoutAlgorithm_LayoutWindow) :int
  (_obj :pointer)
  (frame :pointer)
  (mainWindow :pointer))

;;;wxSash.lisp
;;;License  : wxWindows License 3.1
;;;Author(s) : Surendra Singhi (surendra@asu.edu) 
;;;Copyright (C) 2005 Surendra Singhi 
;;;See the file LICENSE for information on usage and redistribution.
;;;
;;; $Header$
;;;
;; This is an automatically generated file. 
;;Make changes as you feel are necessary (but remember if you try to regenerate this file, your changes will be lost). 

(defpackage :wxSash
  (:use :common-lisp :ffi)
  (:export
	:wxSashWindow_Create
	:wxSashWindow_SetSashVisible
	:wxSashWindow_GetSashVisible
	:wxSashWindow_SetSashBorder
	:wxSashWindow_HasBorder
	:wxSashWindow_GetEdgeMargin
	:wxSashWindow_SetDefaultBorderSize
	:wxSashWindow_GetDefaultBorderSize
	:wxSashWindow_SetExtraBorderSize
	:wxSashWindow_GetExtraBorderSize
	:wxSashWindow_SetMinimumSizeX
	:wxSashWindow_SetMinimumSizeY
	:wxSashWindow_GetMinimumSizeX
	:wxSashWindow_GetMinimumSizeY
	:wxSashWindow_SetMaximumSizeX
	:wxSashWindow_SetMaximumSizeY
	:wxSashWindow_GetMaximumSizeX
	:wxSashWindow_GetMaximumSizeY
	:wxSashEvent_Create
	:wxSashEvent_SetEdge
	:wxSashEvent_GetEdge
	:wxSashEvent_SetDragRect
	:wxSashEvent_GetDragRect
	:wxSashEvent_SetDragStatus
	:wxSashEvent_GetDragStatus
	:wxSashLayoutWindow_Create
	:wxSashLayoutWindow_GetAlignment
	:wxSashLayoutWindow_GetOrientation
	:wxSashLayoutWindow_SetAlignment
	:wxSashLayoutWindow_SetOrientation
	:wxSashLayoutWindow_SetDefaultSize
	:wxQueryLayoutInfoEvent_Create
	:wxQueryLayoutInfoEvent_SetRequestedLength
	:wxQueryLayoutInfoEvent_GetRequestedLength
	:wxQueryLayoutInfoEvent_SetFlags
	:wxQueryLayoutInfoEvent_GetFlags
	:wxQueryLayoutInfoEvent_SetSize
	:wxQueryLayoutInfoEvent_GetSize
	:wxQueryLayoutInfoEvent_SetOrientation
	:wxQueryLayoutInfoEvent_GetOrientation
	:wxQueryLayoutInfoEvent_SetAlignment
	:wxQueryLayoutInfoEvent_GetAlignment
	:wxCalculateLayoutEvent_Create
	:wxCalculateLayoutEvent_SetFlags
	:wxCalculateLayoutEvent_GetFlags
	:wxCalculateLayoutEvent_SetRect
	:wxCalculateLayoutEvent_GetRect
	:wxLayoutAlgorithm_Create
	:wxLayoutAlgorithm_Delete
	:wxLayoutAlgorithm_LayoutMDIFrame
	:wxLayoutAlgorithm_LayoutFrame
	:wxLayoutAlgorithm_LayoutWindow))

(in-package :wxSash)

(ffi:def-call-out wxSashWindow_Create
	(:name "wxSashWindow_Create")
	(:arguments (_par (ffi:c-pointer NIL))
		(_id ffi:int)
		(_x ffi:int)
		(_y ffi:int)
		(_w ffi:int)
		(_h ffi:int)
		(_stl ffi:int))
	(:return-type (ffi:c-pointer NIL))
	(:library +library-name+))

(ffi:def-call-out wxSashWindow_SetSashVisible
	(:name "wxSashWindow_SetSashVisible")
	(:arguments (_obj (ffi:c-pointer NIL))
		(edge ffi:int)
		(sash ffi:int))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxSashWindow_GetSashVisible
	(:name "wxSashWindow_GetSashVisible")
	(:arguments (_obj (ffi:c-pointer NIL))
		(edge ffi:int))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxSashWindow_SetSashBorder
	(:name "wxSashWindow_SetSashBorder")
	(:arguments (_obj (ffi:c-pointer NIL))
		(edge ffi:int)
		(border ffi:int))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxSashWindow_HasBorder
	(:name "wxSashWindow_HasBorder")
	(:arguments (_obj (ffi:c-pointer NIL))
		(edge ffi:int))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxSashWindow_GetEdgeMargin
	(:name "wxSashWindow_GetEdgeMargin")
	(:arguments (_obj (ffi:c-pointer NIL))
		(edge ffi:int))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxSashWindow_SetDefaultBorderSize
	(:name "wxSashWindow_SetDefaultBorderSize")
	(:arguments (_obj (ffi:c-pointer NIL))
		(width ffi:int))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxSashWindow_GetDefaultBorderSize
	(:name "wxSashWindow_GetDefaultBorderSize")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxSashWindow_SetExtraBorderSize
	(:name "wxSashWindow_SetExtraBorderSize")
	(:arguments (_obj (ffi:c-pointer NIL))
		(width ffi:int))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxSashWindow_GetExtraBorderSize
	(:name "wxSashWindow_GetExtraBorderSize")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxSashWindow_SetMinimumSizeX
	(:name "wxSashWindow_SetMinimumSizeX")
	(:arguments (_obj (ffi:c-pointer NIL))
		(min ffi:int))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxSashWindow_SetMinimumSizeY
	(:name "wxSashWindow_SetMinimumSizeY")
	(:arguments (_obj (ffi:c-pointer NIL))
		(min ffi:int))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxSashWindow_GetMinimumSizeX
	(:name "wxSashWindow_GetMinimumSizeX")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxSashWindow_GetMinimumSizeY
	(:name "wxSashWindow_GetMinimumSizeY")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxSashWindow_SetMaximumSizeX
	(:name "wxSashWindow_SetMaximumSizeX")
	(:arguments (_obj (ffi:c-pointer NIL))
		(max ffi:int))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxSashWindow_SetMaximumSizeY
	(:name "wxSashWindow_SetMaximumSizeY")
	(:arguments (_obj (ffi:c-pointer NIL))
		(max ffi:int))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxSashWindow_GetMaximumSizeX
	(:name "wxSashWindow_GetMaximumSizeX")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxSashWindow_GetMaximumSizeY
	(:name "wxSashWindow_GetMaximumSizeY")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxSashEvent_Create
	(:name "wxSashEvent_Create")
	(:arguments (id ffi:int)
		(edge ffi:int))
	(:return-type (ffi:c-pointer NIL))
	(:library +library-name+))

(ffi:def-call-out wxSashEvent_SetEdge
	(:name "wxSashEvent_SetEdge")
	(:arguments (_obj (ffi:c-pointer NIL))
		(edge ffi:int))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxSashEvent_GetEdge
	(:name "wxSashEvent_GetEdge")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxSashEvent_SetDragRect
	(:name "wxSashEvent_SetDragRect")
	(:arguments (_obj (ffi:c-pointer NIL))
		(x ffi:int)
		(y ffi:int)
		(w ffi:int)
		(h ffi:int))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxSashEvent_GetDragRect
	(:name "wxSashEvent_GetDragRect")
	(:arguments (_obj (ffi:c-pointer NIL))
		(x (ffi:c-pointer NIL))
		(y (ffi:c-pointer NIL))
		(w (ffi:c-pointer NIL))
		(h (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxSashEvent_SetDragStatus
	(:name "wxSashEvent_SetDragStatus")
	(:arguments (_obj (ffi:c-pointer NIL))
		(status ffi:int))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxSashEvent_GetDragStatus
	(:name "wxSashEvent_GetDragStatus")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxSashLayoutWindow_Create
	(:name "wxSashLayoutWindow_Create")
	(:arguments (_par (ffi:c-pointer NIL))
		(_id ffi:int)
		(_x ffi:int)
		(_y ffi:int)
		(_w ffi:int)
		(_h ffi:int)
		(_stl ffi:int))
	(:return-type (ffi:c-pointer NIL))
	(:library +library-name+))

(ffi:def-call-out wxSashLayoutWindow_GetAlignment
	(:name "wxSashLayoutWindow_GetAlignment")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxSashLayoutWindow_GetOrientation
	(:name "wxSashLayoutWindow_GetOrientation")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxSashLayoutWindow_SetAlignment
	(:name "wxSashLayoutWindow_SetAlignment")
	(:arguments (_obj (ffi:c-pointer NIL))
		(align ffi:int))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxSashLayoutWindow_SetOrientation
	(:name "wxSashLayoutWindow_SetOrientation")
	(:arguments (_obj (ffi:c-pointer NIL))
		(orient ffi:int))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxSashLayoutWindow_SetDefaultSize
	(:name "wxSashLayoutWindow_SetDefaultSize")
	(:arguments (_obj (ffi:c-pointer NIL))
		(w ffi:int)
		(h ffi:int))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxQueryLayoutInfoEvent_Create
	(:name "wxQueryLayoutInfoEvent_Create")
	(:arguments (id ffi:int))
	(:return-type (ffi:c-pointer NIL))
	(:library +library-name+))

(ffi:def-call-out wxQueryLayoutInfoEvent_SetRequestedLength
	(:name "wxQueryLayoutInfoEvent_SetRequestedLength")
	(:arguments (_obj (ffi:c-pointer NIL))
		(length ffi:int))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxQueryLayoutInfoEvent_GetRequestedLength
	(:name "wxQueryLayoutInfoEvent_GetRequestedLength")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxQueryLayoutInfoEvent_SetFlags
	(:name "wxQueryLayoutInfoEvent_SetFlags")
	(:arguments (_obj (ffi:c-pointer NIL))
		(flags ffi:int))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxQueryLayoutInfoEvent_GetFlags
	(:name "wxQueryLayoutInfoEvent_GetFlags")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxQueryLayoutInfoEvent_SetSize
	(:name "wxQueryLayoutInfoEvent_SetSize")
	(:arguments (_obj (ffi:c-pointer NIL))
		(w ffi:int)
		(h ffi:int))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxQueryLayoutInfoEvent_GetSize
	(:name "wxQueryLayoutInfoEvent_GetSize")
	(:arguments (_obj (ffi:c-pointer NIL))
		(w (ffi:c-pointer NIL))
		(h (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxQueryLayoutInfoEvent_SetOrientation
	(:name "wxQueryLayoutInfoEvent_SetOrientation")
	(:arguments (_obj (ffi:c-pointer NIL))
		(orient ffi:int))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxQueryLayoutInfoEvent_GetOrientation
	(:name "wxQueryLayoutInfoEvent_GetOrientation")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxQueryLayoutInfoEvent_SetAlignment
	(:name "wxQueryLayoutInfoEvent_SetAlignment")
	(:arguments (_obj (ffi:c-pointer NIL))
		(align ffi:int))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxQueryLayoutInfoEvent_GetAlignment
	(:name "wxQueryLayoutInfoEvent_GetAlignment")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxCalculateLayoutEvent_Create
	(:name "wxCalculateLayoutEvent_Create")
	(:arguments (id ffi:int))
	(:return-type (ffi:c-pointer NIL))
	(:library +library-name+))

(ffi:def-call-out wxCalculateLayoutEvent_SetFlags
	(:name "wxCalculateLayoutEvent_SetFlags")
	(:arguments (_obj (ffi:c-pointer NIL))
		(flags ffi:int))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxCalculateLayoutEvent_GetFlags
	(:name "wxCalculateLayoutEvent_GetFlags")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxCalculateLayoutEvent_SetRect
	(:name "wxCalculateLayoutEvent_SetRect")
	(:arguments (_obj (ffi:c-pointer NIL))
		(x ffi:int)
		(y ffi:int)
		(w ffi:int)
		(h ffi:int))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxCalculateLayoutEvent_GetRect
	(:name "wxCalculateLayoutEvent_GetRect")
	(:arguments (_obj (ffi:c-pointer NIL))
		(x (ffi:c-pointer NIL))
		(y (ffi:c-pointer NIL))
		(w (ffi:c-pointer NIL))
		(h (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxLayoutAlgorithm_Create
	(:name "wxLayoutAlgorithm_Create")
	(:return-type (ffi:c-pointer NIL))
	(:library +library-name+))

(ffi:def-call-out wxLayoutAlgorithm_Delete
	(:name "wxLayoutAlgorithm_Delete")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxLayoutAlgorithm_LayoutMDIFrame
	(:name "wxLayoutAlgorithm_LayoutMDIFrame")
	(:arguments (_obj (ffi:c-pointer NIL))
		(frame (ffi:c-pointer NIL))
		(x ffi:int)
		(y ffi:int)
		(w ffi:int)
		(h ffi:int)
		(use ffi:int))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxLayoutAlgorithm_LayoutFrame
	(:name "wxLayoutAlgorithm_LayoutFrame")
	(:arguments (_obj (ffi:c-pointer NIL))
		(frame (ffi:c-pointer NIL))
		(mainWindow (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxLayoutAlgorithm_LayoutWindow
	(:name "wxLayoutAlgorithm_LayoutWindow")
	(:arguments (_obj (ffi:c-pointer NIL))
		(frame (ffi:c-pointer NIL))
		(mainWindow (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

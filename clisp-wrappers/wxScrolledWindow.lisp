;;;wxScrolledWindow.lisp
;;;License  : GNU General Public License (GPL)
;;;Author(s) : Surendra Singhi (surendra@asu.edu) 
;;;Copyright (C) 2005 Surendra Singhi 
;;;See the file LICENSE for information on usage and redistribution.
;;;
;;; $Header$
;;;

(defpackage :wxScrolledWindow
    (:use :common-lisp :ffi :wxCL)
  (:export :wxScrolledWindow_Create
	   :wxScrolledWindow_SetTargetWindow
	   :wxScrolledWindow_GetTargetWindow
	   :wxScrolledWindow_SetScrollbars
	   :wxScrolledWindow_Scroll
	   :wxScrolledWindow_GetScrollPageSize
	   :wxScrolledWindow_SetScrollPageSize
	   :wxScrolledWindow_GetScrollPixelsPerUnit
	   :wxScrolledWindow_EnableScrolling
	   :wxScrolledWindow_GetViewStart
	   :wxScrolledWindow_ViewStart
	   :wxScrolledWindow_GetVirtualSize
	   :wxScrolledWindow_SetScale
	   :wxScrolledWindow_GetScaleX
	   :wxScrolledWindow_GetScaleY
	   :wxScrolledWindow_SetScrollRate
	   :wxScrolledWindow_CalcScrolledPosition
	   :wxScrolledWindow_CalcUnscrolledPosition
	   :wxScrolledWindow_AdjustScrollbars
	   :wxScrolledWindow_OnDraw
	   :wxScrolledWindow_PrepareDC))

(in-package :wxScrolledWindow)

(ffi:default-foreign-language :stdc)

(ffi:def-call-out wxScrolledWindow_Create
    (:name "wxScrolledWindow_Create")
  (:arguments (_prt (ffi:c-pointer NIL))
	      (_id ffi:int)
	      (_lft ffi:int)
	      (_top ffi:int)
	      (_wdt ffi:int)
	      (_hgt ffi:int)
	      (_stl ffi:int))
  (:return-type (ffi:c-pointer NIL))
  (:library +library-name+))

(ffi:def-call-out wxScrolledWindow_SetTargetWindow
    (:name "wxScrolledWindow_SetTargetWindow")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (target (ffi:c-pointer NIL)))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxScrolledWindow_GetTargetWindow
    (:name "wxScrolledWindow_GetTargetWindow")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type (ffi:c-pointer NIL))
  (:library +library-name+))

(ffi:def-call-out wxScrolledWindow_SetScrollbars
    (:name "wxScrolledWindow_SetScrollbars")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (pixelsPerUnitX ffi:int)
	      (pixelsPerUnitY ffi:int)
	      (noUnitsX ffi:int)
	      (noUnitsY ffi:int)
	      (xPos ffi:int)
	      (yPos ffi:int)
	      (noRefresh ffi:int))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxScrolledWindow_Scroll
    (:name "wxScrolledWindow_Scroll")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (x_pos ffi:int)
	      (y_pos ffi:int))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxScrolledWindow_GetScrollPageSize
    (:name "wxScrolledWindow_GetScrollPageSize")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (orient ffi:int))
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out wxScrolledWindow_SetScrollPageSize
    (:name "wxScrolledWindow_SetScrollPageSize")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (orient ffi:int)
	      (pageSize ffi:int))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxScrolledWindow_GetScrollPixelsPerUnit
    (:name "wxScrolledWindow_GetScrollPixelsPerUnit")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (x_unit (ffi:c-pointer NIL))
	      (y_unit (ffi:c-pointer NIL)))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxScrolledWindow_EnableScrolling
    (:name "wxScrolledWindow_EnableScrolling")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (x_scrolling ffi:int)
	      (y_scrolling ffi:int))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxScrolledWindow_GetViewStart
    (:name "wxScrolledWindow_GetViewStart")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (x (ffi:c-pointer NIL))
	      (y (ffi:c-pointer NIL)))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxScrolledWindow_ViewStart
    (:name "wxScrolledWindow_ViewStart")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (x (ffi:c-pointer NIL))
	      (y (ffi:c-pointer NIL)))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxScrolledWindow_GetVirtualSize
    (:name "wxScrolledWindow_GetVirtualSize")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (x (ffi:c-pointer NIL))
	      (y (ffi:c-pointer NIL)))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxScrolledWindow_SetScale
    (:name "wxScrolledWindow_SetScale")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (xs DOUBLE-FLOAT)
	      (ys DOUBLE-FLOAT))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxScrolledWindow_GetScaleX
    (:name "wxScrolledWindow_GetScaleX")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type DOUBLE-FLOAT)
  (:library +library-name+))

(ffi:def-call-out wxScrolledWindow_GetScaleY
    (:name "wxScrolledWindow_GetScaleY")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type DOUBLE-FLOAT)
  (:library +library-name+))

(ffi:def-call-out wxScrolledWindow_CalcScrolledPosition
    (:name "wxScrolledWindow_CalcScrolledPosition")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (x ffi:int)
	      (y ffi:int)
	      (xx (ffi:c-pointer NIL))
	      (yy (ffi:c-pointer NIL)))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxScrolledWindow_CalcUnscrolledPosition
    (:name "wxScrolledWindow_CalcUnscrolledPosition")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (x ffi:int)
	      (y ffi:int)
	      (xx (ffi:c-pointer NIL))
	      (yy (ffi:c-pointer NIL)))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxScrolledWindow_AdjustScrollbars
    (:name "wxScrolledWindow_AdjustScrollbars")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxScrolledWindow_OnDraw
    (:name "wxScrolledWindow_OnDraw")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (dc (ffi:c-pointer NIL)))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxScrolledWindow_PrepareDC
    (:name "wxScrolledWindow_PrepareDC")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (dc (ffi:c-pointer NIL)))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxScrolledWindow_SetScrollRate
    (:name "wxScrolledWindow_SetScrollRate")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (xstep ffi:int)
	      (ystep ffi:int))
  (:library +library-name+))

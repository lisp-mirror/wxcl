;;;wxRegion.lisp
;;;License  : GNU General Public License (GPL)
;;;Author(s) : Surendra Singhi (surendra@asu.edu) 
;;;Copyright (C) 2005 Surendra Singhi 
;;;See the file LICENSE for information on usage and redistribution.
;;;
;;; $Header$
;;;

(defpackage :wxRegion
  (:use :common-lisp :ffi :WxCL)
  (:export
	:wxRegion_CreateDefault
	:wxRegion_CreateFromRect
	:wxRegion_Delete
	:wxRegion_Assign
	:wxRegion_Clear
	:wxRegion_UnionRect
	:wxRegion_UnionRegion
	:wxRegion_IntersectRect
	:wxRegion_IntersectRegion
	:wxRegion_SubtractRect
	:wxRegion_SubtractRegion
	:wxRegion_XorRect
	:wxRegion_XorRegion
	:wxRegion_GetBox
	:wxRegion_Empty
	:wxRegion_ContainsPoint
	:wxRegion_ContainsRect))

(in-package :wxRegion)

(ffi:default-foreign-language :stdc)

(ffi:def-call-out wxRegion_CreateDefault
	(:name "wxRegion_CreateDefault")
	(:return-type (ffi:c-pointer NIL))
	(:library +library-name+))

(ffi:def-call-out wxRegion_CreateFromRect
	(:name "wxRegion_CreateFromRect")
	(:arguments (x ffi:int)
		(y ffi:int)
		(w ffi:int)
		(h ffi:int))
	(:return-type (ffi:c-pointer NIL))
	(:library +library-name+))

(ffi:def-call-out wxRegion_Delete
	(:name "wxRegion_Delete")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxRegion_Assign
	(:name "wxRegion_Assign")
	(:arguments (_obj (ffi:c-pointer NIL))
		(region (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxRegion_Clear
	(:name "wxRegion_Clear")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxRegion_UnionRect
	(:name "wxRegion_UnionRect")
	(:arguments (_obj (ffi:c-pointer NIL))
		(x ffi:int)
		(y ffi:int)
		(width ffi:int)
		(height ffi:int))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxRegion_UnionRegion
	(:name "wxRegion_UnionRegion")
	(:arguments (_obj (ffi:c-pointer NIL))
		(region (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxRegion_IntersectRect
	(:name "wxRegion_IntersectRect")
	(:arguments (_obj (ffi:c-pointer NIL))
		(x ffi:int)
		(y ffi:int)
		(width ffi:int)
		(height ffi:int))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxRegion_IntersectRegion
	(:name "wxRegion_IntersectRegion")
	(:arguments (_obj (ffi:c-pointer NIL))
		(region (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxRegion_SubtractRect
	(:name "wxRegion_SubtractRect")
	(:arguments (_obj (ffi:c-pointer NIL))
		(x ffi:int)
		(y ffi:int)
		(width ffi:int)
		(height ffi:int))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxRegion_SubtractRegion
	(:name "wxRegion_SubtractRegion")
	(:arguments (_obj (ffi:c-pointer NIL))
		(region (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxRegion_XorRect
	(:name "wxRegion_XorRect")
	(:arguments (_obj (ffi:c-pointer NIL))
		(x ffi:int)
		(y ffi:int)
		(width ffi:int)
		(height ffi:int))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxRegion_XorRegion
	(:name "wxRegion_XorRegion")
	(:arguments (_obj (ffi:c-pointer NIL))
		(region (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxRegion_GetBox
	(:name "wxRegion_GetBox")
	(:arguments (_obj (ffi:c-pointer NIL))
		(x (ffi:c-pointer NIL))
		(y (ffi:c-pointer NIL))
		(w (ffi:c-pointer NIL))
		(h (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxRegion_Empty
	(:name "wxRegion_Empty")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxRegion_ContainsPoint
	(:name "wxRegion_ContainsPoint")
	(:arguments (_obj (ffi:c-pointer NIL))
		(x ffi:int)
		(y ffi:int))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxRegion_ContainsRect
	(:name "wxRegion_ContainsRect")
	(:arguments (_obj (ffi:c-pointer NIL))
		(x ffi:int)
		(y ffi:int)
		(width ffi:int)
		(height ffi:int))
	(:return-type ffi:int)
	(:library +library-name+))

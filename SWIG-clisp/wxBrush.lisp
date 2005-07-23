;;;wxBrush.lisp
;;;License   : BSD-style
;;;Author(s) : Surendra Singhi (surendra@asu.edu) 
;;;Copyright (C) 2005 Surendra Singhi 
;;;See the file LICENSE for information on usage and redistribution.
;;;
;;; $Header$
;;;
;; This is an automatically generated file. 
;;Make changes as you feel are necessary (but remember if you try to regenerate this file, your changes will be lost). 

(defpackage "wxBrush"
  (:use :common-lisp :ffi)
	:wxBrush_CreateDefault
	:wxBrush_CreateFromBitmap
	:wxBrush_CreateFromColour
	:wxBrush_CreateFromStock
	:wxBrush_Delete
	:wxBrush_SetColour
	:wxBrush_SetColourSingle
	:wxBrush_SetStyle
	:wxBrush_SetStipple
	:wxBrush_Assign
	:wxBrush_IsEqual
	:wxBrush_GetColour
	:wxBrush_GetStyle
	:wxBrush_GetStipple
	:wxBrush_Ok)

(in-package :wxBrush)

(ffi:def-call-out wxBrush_CreateDefault
	(:name "wxBrush_CreateDefault")
	(:return-type (ffi:c-pointer NIL))
	(:library +library-name+))

(ffi:def-call-out wxBrush_CreateFromBitmap
	(:name "wxBrush_CreateFromBitmap")
	(:arguments (bitmap (ffi:c-pointer NIL)))
	(:return-type (ffi:c-pointer NIL))
	(:library +library-name+))

(ffi:def-call-out wxBrush_CreateFromColour
	(:name "wxBrush_CreateFromColour")
	(:arguments (col (ffi:c-pointer NIL))
		(style ffi:int))
	(:return-type (ffi:c-pointer NIL))
	(:library +library-name+))

(ffi:def-call-out wxBrush_CreateFromStock
	(:name "wxBrush_CreateFromStock")
	(:arguments (id ffi:int))
	(:return-type (ffi:c-pointer NIL))
	(:library +library-name+))

(ffi:def-call-out wxBrush_Delete
	(:name "wxBrush_Delete")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxBrush_SetColour
	(:name "wxBrush_SetColour")
	(:arguments (_obj (ffi:c-pointer NIL))
		(col (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxBrush_SetColourSingle
	(:name "wxBrush_SetColourSingle")
	(:arguments (_obj (ffi:c-pointer NIL))
		(r character)
		(g character)
		(b character))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxBrush_SetStyle
	(:name "wxBrush_SetStyle")
	(:arguments (_obj (ffi:c-pointer NIL))
		(style ffi:int))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxBrush_SetStipple
	(:name "wxBrush_SetStipple")
	(:arguments (_obj (ffi:c-pointer NIL))
		(stipple (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxBrush_Assign
	(:name "wxBrush_Assign")
	(:arguments (_obj (ffi:c-pointer NIL))
		(brush (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxBrush_IsEqual
	(:name "wxBrush_IsEqual")
	(:arguments (_obj (ffi:c-pointer NIL))
		(brush (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxBrush_GetColour
	(:name "wxBrush_GetColour")
	(:arguments (_obj (ffi:c-pointer NIL))
		(_ref (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxBrush_GetStyle
	(:name "wxBrush_GetStyle")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxBrush_GetStipple
	(:name "wxBrush_GetStipple")
	(:arguments (_obj (ffi:c-pointer NIL))
		(_ref (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxBrush_Ok
	(:name "wxBrush_Ok")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

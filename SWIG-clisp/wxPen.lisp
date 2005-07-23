;;;wxPen.lisp
;;;License   : BSD-style
;;;Author(s) : Surendra Singhi (surendra@asu.edu) 
;;;Copyright (C) 2005 Surendra Singhi 
;;;See the file LICENSE for information on usage and redistribution.
;;;
;;; $Header$
;;;
;; This is an automatically generated file. 
;;Make changes as you feel are necessary (but remember if you try to regenerate this file, your changes will be lost). 

(defpackage "wxPen"
  (:use :common-lisp :ffi)
	:wxPen_CreateDefault
	:wxPen_CreateFromColour
	:wxPen_CreateFromBitmap
	:wxPen_CreateFromStock
	:wxPen_Delete
	:wxPen_Assign
	:wxPen_IsEqual
	:wxPen_Ok
	:wxPen_SetColour
	:wxPen_SetColourSingle
	:wxPen_SetWidth
	:wxPen_SetStyle
	:wxPen_SetStipple
	:wxPen_SetDashes
	:wxPen_SetJoin
	:wxPen_SetCap
	:wxPen_GetColour
	:wxPen_GetWidth
	:wxPen_GetStyle
	:wxPen_GetJoin
	:wxPen_GetCap
	:wxPen_GetDashes
	:wxPen_GetStipple)

(in-package :wxPen)

(ffi:def-call-out wxPen_CreateDefault
	(:name "wxPen_CreateDefault")
	(:return-type (ffi:c-pointer NIL))
	(:library +library-name+))

(ffi:def-call-out wxPen_CreateFromColour
	(:name "wxPen_CreateFromColour")
	(:arguments (col (ffi:c-pointer NIL))
		(width ffi:int)
		(style ffi:int))
	(:return-type (ffi:c-pointer NIL))
	(:library +library-name+))

(ffi:def-call-out wxPen_CreateFromBitmap
	(:name "wxPen_CreateFromBitmap")
	(:arguments (stipple (ffi:c-pointer NIL))
		(width ffi:int))
	(:return-type (ffi:c-pointer NIL))
	(:library +library-name+))

(ffi:def-call-out wxPen_CreateFromStock
	(:name "wxPen_CreateFromStock")
	(:arguments (id ffi:int))
	(:return-type (ffi:c-pointer NIL))
	(:library +library-name+))

(ffi:def-call-out wxPen_Delete
	(:name "wxPen_Delete")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxPen_Assign
	(:name "wxPen_Assign")
	(:arguments (_obj (ffi:c-pointer NIL))
		(pen (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxPen_IsEqual
	(:name "wxPen_IsEqual")
	(:arguments (_obj (ffi:c-pointer NIL))
		(pen (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxPen_Ok
	(:name "wxPen_Ok")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxPen_SetColour
	(:name "wxPen_SetColour")
	(:arguments (_obj (ffi:c-pointer NIL))
		(col (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxPen_SetColourSingle
	(:name "wxPen_SetColourSingle")
	(:arguments (_obj (ffi:c-pointer NIL))
		(r character)
		(g character)
		(b character))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxPen_SetWidth
	(:name "wxPen_SetWidth")
	(:arguments (_obj (ffi:c-pointer NIL))
		(width ffi:int))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxPen_SetStyle
	(:name "wxPen_SetStyle")
	(:arguments (_obj (ffi:c-pointer NIL))
		(style ffi:int))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxPen_SetStipple
	(:name "wxPen_SetStipple")
	(:arguments (_obj (ffi:c-pointer NIL))
		(stipple (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxPen_SetDashes
	(:name "wxPen_SetDashes")
	(:arguments (_obj (ffi:c-pointer NIL))
		(nb_dashes ffi:int)
		(dash (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxPen_SetJoin
	(:name "wxPen_SetJoin")
	(:arguments (_obj (ffi:c-pointer NIL))
		(join ffi:int))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxPen_SetCap
	(:name "wxPen_SetCap")
	(:arguments (_obj (ffi:c-pointer NIL))
		(cap ffi:int))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxPen_GetColour
	(:name "wxPen_GetColour")
	(:arguments (_obj (ffi:c-pointer NIL))
		(_ref (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxPen_GetWidth
	(:name "wxPen_GetWidth")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxPen_GetStyle
	(:name "wxPen_GetStyle")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxPen_GetJoin
	(:name "wxPen_GetJoin")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxPen_GetCap
	(:name "wxPen_GetCap")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxPen_GetDashes
	(:name "wxPen_GetDashes")
	(:arguments (_obj (ffi:c-pointer NIL))
		(ptr (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxPen_GetStipple
	(:name "wxPen_GetStipple")
	(:arguments (_obj (ffi:c-pointer NIL))
		(_ref (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

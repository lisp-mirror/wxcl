;;;wxBrush.lisp
;;;License  : wxWindows License 3.1
;;;Author(s) : Surendra Singhi (surendra@asu.edu) 
;;;Copyright (C) 2005 Surendra Singhi 
;;;See the file LICENSE for information on usage and redistribution.
;;;
;;; $Header$
;;;
;; This is an automatically generated file. 
;;Make changes as you feel are necessary (but remember if you try to regenerate this file, your changes will be lost). 

(in-package :wxcl-gdi)

(ffi:default-foreign-language :stdc)

(ffi:def-c-var wxNull_Brush
    (:name "wxNull_Brush")
  (:type (ffi:c-ptr (ffi:c-pointer nil)))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var wxBlack_Brush
    (:name "wxBlack_Brush")
  (:type (ffi:c-ptr (ffi:c-pointer nil)))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var wxWhite_Brush
    (:name "wxWhite_Brush")
  (:type (ffi:c-ptr (ffi:c-pointer nil)))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var wxRed_Brush
    (:name "wxRed_Brush")
  (:type (ffi:c-ptr (ffi:c-pointer nil)))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var wxBlue_Brush
    (:name "wxBlue_Brush")
  (:type (ffi:c-ptr (ffi:c-pointer nil)))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var wxGreen_Brush
    (:name "wxGreen_Brush")
  (:type (ffi:c-ptr (ffi:c-pointer nil)))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var wxCyan_Brush
    (:name "wxCyan_Brush")
  (:type (ffi:c-ptr (ffi:c-pointer nil)))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var wxLight_Grey_Brush
    (:name "wxLight_Grey_Brush")
  (:type (ffi:c-ptr (ffi:c-pointer nil)))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var wxMedium_Grey_Brush
    (:name "wxMedium_Grey_Brush")
  (:type (ffi:c-ptr (ffi:c-pointer nil)))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var wxTransparent_Brush
    (:name "wxTransparent_Brush")
  (:type (ffi:c-ptr (ffi:c-pointer nil)))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var wxGrey_Brush
    (:name "wxGrey_Brush")
  (:type (ffi:c-ptr (ffi:c-pointer nil)))
  (:read-only t)
  (:library +library-name+))

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

(ffi:def-call-out wxBrush_SetColourName
    (:name "wxBrush_SetColourName")
  (:arguments (_obj (ffi:c-pointer NIL))
              (col ffi:c-string)))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxBrush_SetColourRGB
    (:name "wxBrush_SetColourSingle")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (r uint8)
	      (g uint8)
	      (b uint8))
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
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type (ffi:c-pointer NIL))
  (:library +library-name+))

(ffi:def-call-out wxBrush_GetStyle
    (:name "wxBrush_GetStyle")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out wxBrush_GetStipple
    (:name "wxBrush_GetStipple")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type (ffi:c-pointer NIL))
  (:library +library-name+))

(ffi:def-call-out wxBrush_Ok
    (:name "wxBrush_Ok")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type ffi:int)
  (:library +library-name+))

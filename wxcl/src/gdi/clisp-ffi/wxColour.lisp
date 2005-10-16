;;;wxColour.lisp
;;;License  : wxWindows License 3.1
;;;Author(s) : Surendra Singhi (surendra@asu.edu) 
;;;Copyright (C) 2005 Surendra Singhi 
;;;See the file LICENSE for information on usage and redistribution.
;;;
;;; $Header$
;;;

(in-package :wxcl-gdi)

(ffi:default-foreign-language :stdc)

(ffi:def-c-var wxNull_Colour
    (:name "wxNull_Colour")
  (:type (ffi:c-ptr (ffi:c-pointer nil)))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var wxBlack
    (:name "wxBlack")
  (:type (ffi:c-ptr (ffi:c-pointer nil)))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var wxWhite
    (:name "wxWhite")
  (:type (ffi:c-ptr (ffi:c-pointer nil)))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var wxRed
    (:name "wxRed")
  (:type (ffi:c-ptr (ffi:c-pointer nil)))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var wxBlue
    (:name "wxBlue")
  (:type (ffi:c-ptr (ffi:c-pointer nil)))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var wxGreen
    (:name "wxGreen")
  (:type (ffi:c-ptr (ffi:c-pointer nil)))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var wxCyan
    (:name "wxCyan")
  (:type (ffi:c-ptr (ffi:c-pointer nil)))
  (:read-only t)
  (:library +library-name+))

(ffi:def-c-var wxLight_Grey
    (:name "wxLight_Grey")
  (:type (ffi:c-ptr (ffi:c-pointer nil)))
  (:read-only t)
  (:library +library-name+))

(ffi:def-call-out wxColour_CreateEmpty
    (:name "wxColour_CreateEmpty")
  (:return-type (ffi:c-pointer NIL))
  (:library +library-name+))

(ffi:def-call-out wxColour_CreateRGB
    (:name "wxColour_CreateRGB")
  (:arguments (_red uint8)
	      (_green uint8)
	      (_blue uint8))
  (:return-type (ffi:c-pointer NIL))
  (:library +library-name+))

(ffi:def-call-out wxColour_CreateByName
    (:name "wxColour_CreateByName")
  (:arguments (_name ffi:c-string))
  (:return-type (ffi:c-pointer NIL))
  (:library +library-name+))

(ffi:def-call-out wxColour_Delete
    (:name "wxColour_Delete")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxColour_Set
    (:name "wxColour_Set")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (_red uint8)
	      (_green uint8)
	      (_blue uint8))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxColour_Ok
    (:name "wxColour_Ok")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out wxColour_Red
    (:name "wxColour_Red")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type ffi:uint8)
  (:library +library-name+))

(ffi:def-call-out wxColour_Green
    (:name "wxColour_Green")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type ffi:uint8)
  (:library +library-name+))

(ffi:def-call-out wxColour_Blue
    (:name "wxColour_Blue")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type ffi:uint8)
  (:library +library-name+))

(ffi:def-call-out wxColour_GetPixel
    (:name "wxColour_GetPixel")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out wxColour_Copy
    (:name "wxColour_Copy")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type (ffi:c-pointer NIL))
  (:library +library-name+))

(ffi:def-call-out wxColour_SetByName
    (:name "wxColour_SetByName")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (_name ffi:c-string))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxColour_ValidName
    (:name "wxColour_ValidName")
  (:arguments (_name ffi:c-string))
  (:return-type ffi:int)
  (:library +library-name+))

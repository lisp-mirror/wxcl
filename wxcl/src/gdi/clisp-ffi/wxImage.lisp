;;;wxImage.lisp
;;;License  : wxWindows License 3.1
;;;Author(s) : Surendra Singhi (surendra@asu.edu) 
;;;Copyright (C) 2005 Surendra Singhi 
;;;See the file LICENSE for information on usage and redistribution.
;;;
;;; $Header$
;;;

; (defpackage :wxImage
;     (:use :common-lisp :ffi :wxCL)
;   (:export :with-image-file
; 	   :wxImage_CreateDefault
; 	   :wxImage_CreateSized
; 	   :wxImage_CreateFromData
; 	   :wxImage_CreateFromFile
; 	   :wxImage_CreateFromBitmap
; 	   :wxImage_ConvertToBitmap
; 	   :wxImage_Initialize
; 	   :wxImage_InitializeFromData
; 	   :wxImage_Destroy
; 	   :wxImage_GetSubImage
; 	   :wxImage_Paste
; 	   :wxImage_Scale
; 	   :wxImage_Rescale
; 	   :wxImage_Rotate
; 	   :wxImage_Rotate90
; 	   :wxImage_Mirror
; 	   :wxImage_Replace
; 	   :wxImage_SetRGB
; 	   :wxImage_GetRed
; 	   :wxImage_GetGreen
; 	   :wxImage_GetBlue
; 	   :wxImage_CanRead
; 	   :wxImage_LoadFile
; 	   :wxImage_SaveFile
; 	   :wxImage_Ok
; 	   :wxImage_GetWidth
; 	   :wxImage_GetHeight
; 	   :wxImage_GetData
; 	   :wxImage_SetData
; 	   :wxImage_SetDataAndSize
; 	   :wxImage_SetMaskColour
; 	   :wxImage_GetMaskRed
; 	   :wxImage_GetMaskGreen
; 	   :wxImage_GetMaskBlue
; 	   :wxImage_SetMask
; 	   :wxImage_HasMask
; 	   :wxImage_CountColours))

(in-package :wxcl-gdi)

(ffi:default-foreign-language :stdc)

(ffi:def-call-out wxImage_CreateDefault
    (:name "wxImage_CreateDefault")
  (:return-type (ffi:c-pointer NIL))
  (:library +library-name+))

(ffi:def-call-out wxImage_CreateSized
    (:name "wxImage_CreateSized")
  (:arguments (width ffi:int)
	      (height ffi:int))
  (:return-type (ffi:c-pointer NIL))
  (:library +library-name+))

(ffi:def-call-out wxImage_CreateFromData
    (:name "wxImage_CreateFromData")
  (:arguments (width ffi:int)
	      (height ffi:int)
	      (data (ffi:c-pointer NIL)))
  (:return-type (ffi:c-pointer NIL))
  (:library +library-name+))

(ffi:def-call-out wxImage_CreateFromFile
    (:name "wxImage_CreateFromFile")
  (:arguments (name ffi:c-string))
  (:return-type (ffi:c-pointer NIL) :NONE)
  (:library +library-name+))

(ffi:def-call-out wxImage_CreateFromBitmap
    (:name "wxImage_CreateFromBitmap")
  (:arguments (bitmap (ffi:c-pointer NIL)))
  (:return-type (ffi:c-pointer NIL))
  (:library +library-name+))

(ffi:def-call-out wxImage_ConvertToBitmap
    (:name "wxImage_ConvertToBitmap")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (bitmap (ffi:c-pointer NIL)))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxImage_Initialize
    (:name "wxImage_Initialize")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (width ffi:int)
	      (height ffi:int))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxImage_InitializeFromData
    (:name "wxImage_InitializeFromData")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (width ffi:int)
	      (height ffi:int)
	      (data (ffi:c-pointer NIL)))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxImage_Destroy
    (:name "wxImage_Destroy")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:library +library-name+))

(ffi:def-call-out wxImage_GetSubImage
    (:name "wxImage_GetSubImage")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (x ffi:int)
	      (y ffi:int)
	      (w ffi:int)
	      (h ffi:int)
	      (image (ffi:c-pointer NIL)))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxImage_Paste
    (:name "wxImage_Paste")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (image (ffi:c-pointer NIL))
	      (x ffi:int)
	      (y ffi:int))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxImage_Scale
    (:name "wxImage_Scale")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (width ffi:int)
	      (height ffi:int)
	      (image (ffi:c-pointer NIL)))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxImage_Rescale
    (:name "wxImage_Rescale")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (width ffi:int)
	      (height ffi:int))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxImage_Rotate
    (:name "wxImage_Rotate")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (angle DOUBLE-FLOAT)
	      (c_x ffi:int)
	      (c_y ffi:int)
	      (interpolating ffi:int)
	      (offset_after_rotation (ffi:c-pointer NIL))
	      (image (ffi:c-pointer NIL)))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxImage_Rotate90
    (:name "wxImage_Rotate90")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (clockwise ffi:int)
	      (image (ffi:c-pointer NIL)))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxImage_Mirror
    (:name "wxImage_Mirror")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (horizontally ffi:int)
	      (image (ffi:c-pointer NIL)))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxImage_Replace
    (:name "wxImage_Replace")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (r1 character)
	      (g1 character)
	      (b1 character)
	      (r2 character)
	      (g2 character)
	      (b2 character))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxImage_SetRGB
    (:name "wxImage_SetRGB")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (x ffi:int)
	      (y ffi:int)
	      (r character)
	      (g character)
	      (b character))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxImage_GetRed
    (:name "wxImage_GetRed")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (x ffi:int)
	      (y ffi:int))
  (:return-type character)
  (:library +library-name+))

(ffi:def-call-out wxImage_GetGreen
    (:name "wxImage_GetGreen")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (x ffi:int)
	      (y ffi:int))
  (:return-type character)
  (:library +library-name+))

(ffi:def-call-out wxImage_GetBlue
    (:name "wxImage_GetBlue")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (x ffi:int)
	      (y ffi:int))
  (:return-type character)
  (:library +library-name+))

(ffi:def-call-out wxImage_CanRead
    (:name "wxImage_CanRead")
  (:arguments (name (ffi:c-pointer NIL)))
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out wxImage_LoadFile
    (:name "wxImage_LoadFile")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (name ffi:c-string)
	      (type ffi:int))
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out wxImage_SaveFile
    (:name "wxImage_SaveFile")
  (:arguments (_obj ffi:c-string)
	      (name (ffi:c-pointer NIL))
	      (type ffi:int))
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out wxImage_Ok
    (:name "wxImage_Ok")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out wxImage_GetWidth
    (:name "wxImage_GetWidth")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out wxImage_GetHeight
    (:name "wxImage_GetHeight")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out wxImage_GetData
    (:name "wxImage_GetData")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type (ffi:c-pointer NIL))
  (:library +library-name+))

(ffi:def-call-out wxImage_SetData
    (:name "wxImage_SetData")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (data (ffi:c-pointer NIL)))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxImage_SetDataAndSize
    (:name "wxImage_SetDataAndSize")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (data ffi:c-string)
	      (new_width ffi:int)
	      (new_height ffi:int))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxImage_SetMaskColour
    (:name "wxImage_SetMaskColour")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (r character)
	      (g character)
	      (b character))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxImage_GetMaskRed
    (:name "wxImage_GetMaskRed")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type character)
  (:library +library-name+))

(ffi:def-call-out wxImage_GetMaskGreen
    (:name "wxImage_GetMaskGreen")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type character)
  (:library +library-name+))

(ffi:def-call-out wxImage_GetMaskBlue
    (:name "wxImage_GetMaskBlue")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type character)
  (:library +library-name+))

(ffi:def-call-out wxImage_SetMask
    (:name "wxImage_SetMask")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (mask ffi:int))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxImage_HasMask
    (:name "wxImage_HasMask")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out wxImage_CountColours
    (:name "wxImage_CountColours")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (stopafter ffi:int))
  (:return-type ffi:int)
  (:library +library-name+))


;;;macros and other utility functions

(defmacro with-image-file ((image pathname) &body body)
  `(let (,image)
    (unwind-protect
	 (progn
	   (setf ,image (wxImage_CreateFromFile ,pathname))
	   ,@body)
      (wximage_destroy ,image))))

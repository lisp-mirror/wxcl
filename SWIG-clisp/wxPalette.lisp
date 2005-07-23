;;;wxPalette.lisp
;;;License   : BSD-style
;;;Author(s) : Surendra Singhi (surendra@asu.edu) 
;;;Copyright (C) 2005 Surendra Singhi 
;;;See the file LICENSE for information on usage and redistribution.
;;;
;;; $Header$
;;;
;; This is an automatically generated file. 
;;Make changes as you feel are necessary (but remember if you try to regenerate this file, your changes will be lost). 

(defpackage "wxPalette"
  (:use :common-lisp :ffi)
	:wxPalette_CreateDefault
	:wxPalette_CreateRGB
	:wxPalette_Delete
	:wxPalette_GetPixel
	:wxPalette_GetRGB
	:wxPalette_Ok
	:wxPalette_Assign
	:wxPalette_IsEqual)

(in-package :wxPalette)

(ffi:def-call-out wxPalette_CreateDefault
	(:name "wxPalette_CreateDefault")
	(:return-type (ffi:c-pointer NIL))
	(:library +library-name+))

(ffi:def-call-out wxPalette_CreateRGB
	(:name "wxPalette_CreateRGB")
	(:arguments (n ffi:int)
		(red (ffi:c-pointer NIL))
		(green (ffi:c-pointer NIL))
		(blue (ffi:c-pointer NIL)))
	(:return-type (ffi:c-pointer NIL))
	(:library +library-name+))

(ffi:def-call-out wxPalette_Delete
	(:name "wxPalette_Delete")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxPalette_GetPixel
	(:name "wxPalette_GetPixel")
	(:arguments (_obj (ffi:c-pointer NIL))
		(red character)
		(green character)
		(blue character))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxPalette_GetRGB
	(:name "wxPalette_GetRGB")
	(:arguments (_obj (ffi:c-pointer NIL))
		(pixel ffi:int)
		(red (ffi:c-pointer NIL))
		(green (ffi:c-pointer NIL))
		(blue (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxPalette_Ok
	(:name "wxPalette_Ok")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxPalette_Assign
	(:name "wxPalette_Assign")
	(:arguments (_obj (ffi:c-pointer NIL))
		(palette (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxPalette_IsEqual
	(:name "wxPalette_IsEqual")
	(:arguments (_obj (ffi:c-pointer NIL))
		(palette (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

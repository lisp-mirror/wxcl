;;;wxColour.lisp
;;;License  : GNU General Public License (GPL)
;;;Author(s) : Surendra Singhi (surendra@asu.edu) 
;;;Copyright (C) 2005 Surendra Singhi 
;;;See the file LICENSE for information on usage and redistribution.
;;;
;;; $Header$
;;;
;; This is an automatically generated file. 
;;Make changes as you feel are necessary (but remember if you try to regenerate this file, your changes will be lost). 

(defpackage :wxColour
  (:use :common-lisp :ffi)
  (:export
	:wxColour_CreateEmpty
	:wxColour_CreateRGB
	:wxColour_CreateByName
	:wxColour_CreateFromStock
	:wxColour_Delete
	:wxColour_Set
	:wxColour_Assign
	:wxColour_Ok
	:wxColour_Red
	:wxColour_Green
	:wxColour_Blue
	:wxColour_GetPixel
	:wxColour_Copy
	:wxColour_SetByName
	:wxColour_ValidName))

(in-package :wxColour)

(ffi:default-foreign-language :stdc)

(ffi:def-call-out wxColour_CreateEmpty
	(:name "wxColour_CreateEmpty")
	(:return-type (ffi:c-pointer NIL))
	(:library +library-name+))

(ffi:def-call-out wxColour_CreateRGB
	(:name "wxColour_CreateRGB")
	(:arguments (_red character)
		    (_green character)
		    (_blue character))
	(:return-type (ffi:c-pointer NIL))
	(:library +library-name+))

(ffi:def-call-out wxColour_CreateByName
	(:name "wxColour_CreateByName")
	(:arguments (_name (ffi:c-pointer NIL)))
	(:return-type (ffi:c-pointer NIL))
	(:library +library-name+))

(ffi:def-call-out wxColour_CreateFromStock
	(:name "wxColour_CreateFromStock")
	(:arguments (_id ffi:int))
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
		(_red character)
		(_green character)
		(_blue character))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxColour_Assign
	(:name "wxColour_Assign")
	(:arguments (_obj (ffi:c-pointer NIL))
		(other (ffi:c-pointer NIL)))
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
	(:return-type character)
	(:library +library-name+))

(ffi:def-call-out wxColour_Green
	(:name "wxColour_Green")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type character)
	(:library +library-name+))

(ffi:def-call-out wxColour_Blue
	(:name "wxColour_Blue")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type character)
	(:library +library-name+))

(ffi:def-call-out wxColour_GetPixel
	(:name "wxColour_GetPixel")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxColour_Copy
	(:name "wxColour_Copy")
	(:arguments (_obj (ffi:c-pointer NIL))
		(_other (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxColour_SetByName
	(:name "wxColour_SetByName")
	(:arguments (_obj (ffi:c-pointer NIL))
		(_name (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxColour_ValidName
	(:name "wxColour_ValidName")
	(:arguments (_name (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

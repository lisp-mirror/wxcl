;;;wxColourData.lisp
;;;License  : GNU General Public License (GPL)
;;;Author(s) : Surendra Singhi (surendra@asu.edu) 
;;;Copyright (C) 2005 Surendra Singhi 
;;;See the file LICENSE for information on usage and redistribution.
;;;
;;; $Header$
;;;

(defpackage :wxColourData
  (:use :common-lisp :ffi :wxCL)
  (:export
	:wxColourData_Create
	:wxColourData_Delete
	:wxColourData_SetChooseFull
	:wxColourData_GetChooseFull
	:wxColourData_SetColour
	:wxColourData_GetColour
	:wxColourData_SetCustomColour
	:wxColourData_GetCustomColour))

(in-package :wxColourData)

(ffi:default-foreign-language :stdc)

(ffi:def-call-out wxColourData_Create
	(:name "wxColourData_Create")
	(:return-type (ffi:c-pointer NIL))
	(:library +library-name+))

(ffi:def-call-out wxColourData_Delete
	(:name "wxColourData_Delete")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxColourData_SetChooseFull
	(:name "wxColourData_SetChooseFull")
	(:arguments (_obj (ffi:c-pointer NIL))
		(flag ffi:int))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxColourData_GetChooseFull
	(:name "wxColourData_GetChooseFull")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxColourData_SetColour
	(:name "wxColourData_SetColour")
	(:arguments (_obj (ffi:c-pointer NIL))
		(colour (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxColourData_GetColour
	(:name "wxColourData_GetColour")
	(:arguments (_obj (ffi:c-pointer NIL))
		(_ref (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxColourData_SetCustomColour
	(:name "wxColourData_SetCustomColour")
	(:arguments (_obj (ffi:c-pointer NIL))
		(i ffi:int)
		(colour (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxColourData_GetCustomColour
	(:name "wxColourData_GetCustomColour")
	(:arguments (_obj (ffi:c-pointer NIL))
		(i ffi:int)
		(_ref (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

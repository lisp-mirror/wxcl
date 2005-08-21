;;;wxDcsvg.lisp
;;;License  : wxWindows License 3.1
;;;Author(s) : Surendra Singhi (surendra@asu.edu) 
;;;Copyright (C) 2005 Surendra Singhi 
;;;See the file LICENSE for information on usage and redistribution.
;;;
;;; $Header$
;;;
;; This is an automatically generated file. 
;;Make changes as you feel are necessary (but remember if you try to regenerate this file, your changes will be lost). 

(defpackage :wxDcsvg
  (:use :common-lisp :ffi)
  (:export
	:wxSVGFileDC_Create
	:wxSVGFileDC_CreateWithSize
	:wxSVGFileDC_CreateWithSizeAndResolution
	:wxSVGFileDC_Delete
	:wxSVGFileDC_ComputeScaleAndOrigin))

(in-package :wxDcsvg)

(ffi:def-call-out wxSVGFileDC_Create
	(:name "wxSVGFileDC_Create")
	(:arguments (a_filename (ffi:c-pointer NIL)))
	(:return-type (ffi:c-pointer NIL))
	(:library +library-name+))

(ffi:def-call-out wxSVGFileDC_CreateWithSize
	(:name "wxSVGFileDC_CreateWithSize")
	(:arguments (a_filename (ffi:c-pointer NIL))
		(a_width ffi:int)
		(a_height ffi:int))
	(:return-type (ffi:c-pointer NIL))
	(:library +library-name+))

(ffi:def-call-out wxSVGFileDC_CreateWithSizeAndResolution
	(:name "wxSVGFileDC_CreateWithSizeAndResolution")
	(:arguments (a_filename (ffi:c-pointer NIL))
		(a_width ffi:int)
		(a_height ffi:int)
		(a_dpi SINGLE-FLOAT))
	(:return-type (ffi:c-pointer NIL))
	(:library +library-name+))

(ffi:def-call-out wxSVGFileDC_Delete
	(:name "wxSVGFileDC_Delete")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxSVGFileDC_ComputeScaleAndOrigin
	(:name "wxSVGFileDC_ComputeScaleAndOrigin")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

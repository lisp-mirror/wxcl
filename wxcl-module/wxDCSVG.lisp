;;;wxDcsvg.lisp
;;;License  : GNU General Public License (GPL)
;;;Author(s) : Surendra Singhi (surendra@asu.edu) 
;;;Copyright (C) 2005 Surendra Singhi 
;;;See the file LICENSE for information on usage and redistribution.
;;;
;;; $Header$
;;;
; (defpackage :wxDcsvg
;   (:use :common-lisp :ffi :wxCL)
;   (:export
; 	:wxSVGFileDC_Create
; 	:wxSVGFileDC_CreateWithSize
; 	:wxSVGFileDC_CreateWithSizeAndResolution
; 	:wxSVGFileDC_Delete
; 	:wxSVGFileDC_ComputeScaleAndOrigin))

; (in-package :wxDcsvg)

; (ffi:default-foreign-language :stdc)

(ffi:c-lines "#include <wxc.h>~%")

; ; (ffi:def-call-out wxSVGFileDC_Create
; ; 	(:name "wxSVGFileDC_Create")
; ; 	(:arguments (a_filename (ffi:c-pointer NIL)))
; ; 	(:return-type (ffi:c-pointer NIL))
; ; 	) ;; (:library +library-name+))

; (ffi:def-call-out wxSVGFileDC_CreateWithSize
; 	(:name "wxSVGFileDC_CreateWithSize")
; 	(:arguments (a_filename (ffi:c-pointer NIL))
; 		(a_width ffi:int)
; 		(a_height ffi:int))
; 	(:return-type (ffi:c-pointer NIL))
; 	) ;; (:library +library-name+))

; (ffi:def-call-out wxSVGFileDC_CreateWithSizeAndResolution
; 	(:name "wxSVGFileDC_CreateWithSizeAndResolution")
; 	(:arguments (a_filename (ffi:c-pointer NIL))
; 		(a_width ffi:int)
; 		(a_height ffi:int)
; 		(a_dpi SINGLE-FLOAT))
; 	(:return-type (ffi:c-pointer NIL))
; 	) ;; (:library +library-name+))

; (ffi:def-call-out wxSVGFileDC_Delete
; 	(:name "wxSVGFileDC_Delete")
; 	(:arguments (_obj (ffi:c-pointer NIL)))
; 	(:return-type NIL)
; 	) ;; (:library +library-name+))

; (ffi:def-call-out wxSVGFileDC_ComputeScaleAndOrigin
; 	(:name "wxSVGFileDC_ComputeScaleAndOrigin")
; 	(:arguments (_obj (ffi:c-pointer NIL)))
; 	(:return-type NIL)
; 	) ;; (:library +library-name+))

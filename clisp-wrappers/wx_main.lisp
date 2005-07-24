;;;wx_main.lisp
;;;License   : BSD-style
;;;Author(s) : Surendra Singhi (surendra@asu.edu) 
;;;Copyright (C) 2005 Surendra Singhi 
;;;See the file LICENSE for information on usage and redistribution.
;;;
;;; $Header$
;;;

(defpackage :wx_main
    (:use :common-lisp :ffi :wxCL)
  (:export :ELJApp_InitializeC
					;:ELJApp_initialize
	   ))

(in-package :wx_main)

(ffi:default-foreign-language :stdc)

(FFI:DEF-C-TYPE wxClosure NIL)


; (def-c-var APPTerminating (:type ffi:int)
; 	(:library +library-name+))

(ffi:def-call-out ELJApp_InitializeC
    (:name "ELJApp_InitializeC")
  (:arguments (closure (ffi:c-pointer wxClosure))
	      (_argc ffi:int)
	      (_argv (ffi:c-pointer ffi:c-string)))
  (:return-type NIL)
  (:library +library-name+))

; (ffi:def-call-out ELJApp_initialize
; 	(:name "ELJApp_initialize")
; 	(:arguments (_obj (ffi:c-pointer NIL))
; 		(_func AppInitFunc)
; 		(_cmd ffi:c-string)
; 		(_inst (ffi:c-pointer NIL)))
; 	(:return-type NIL)
; 	(:library +library-name+))

;;;wx_main.lisp
;;;License   : BSD-style
;;;Author(s) : Surendra Singhi (surendra@asu.edu) 
;;;Copyright (C) 2005 Surendra Singhi 
;;;See the file LICENSE for information on usage and redistribution.
;;;
;;; $Header$
;;;

(defpackage :wx_main
    (:use :common-lisp :ffi :wxCL :wx_wrapper)
  (:export :ELJApp_InitializeC
	   :wxClosure
	   :ClosureFun
	   :wxClosure_Create
	   :with-wxcl
					;:ELJApp_initialize
	   ))

(in-package :wx_main)

(ffi:default-foreign-language :stdc)

(FFI:DEF-C-TYPE wxClosure NIL)

(FFI:DEF-C-TYPE
    ClosureFun (ffi:c-function (:arguments (_fun (ffi:c-pointer wxClosure))
					   (_data (ffi:c-pointer NIL))
					   (_evt (ffi:c-pointer NIL)))
			       (:return-type NIL)))

(ffi:def-call-out wxClosure_Create (:name "wxClosure_Create")
  (:arguments (fun ClosureFun)
	      (data (ffi:c-pointer NIL)))
  (:return-type (ffi:c-pointer wxClosure))
  (:library +library-name+))


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


;;;macros and other utility functions

(defmacro with-wxcl (&body body)
  (let ((closure-fun (gensym))
	(closure (gensym))
	(fun (gensym))
	(data (gensym))
	(evt (gensym)))
    `(flet ((,closure-fun (,fun ,data ,evt)
	     (unwind-protect
		  (progn ,@body)
	       (ELJApp_ExitMainLoop))))
      (setf ,closure (wxClosure_Create #',closure-fun nil))
      (Eljapp_initializeC ,closure 0 nil)
      )))


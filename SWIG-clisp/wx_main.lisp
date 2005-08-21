;;;wx_main.lisp
;;;License  : wxWindows License 3.1
;;;Author(s) : Surendra Singhi (surendra@asu.edu) 
;;;Copyright (C) 2005 Surendra Singhi 
;;;See the file LICENSE for information on usage and redistribution.
;;;
;;; $Header$
;;;
;;This is an automatically generated file. 
;;Make changes as you feel are necessary (but remember if you try to regenerate this file, your changes will be lost). 

(defpackage :wx_main
  (:use :common-lisp :ffi)
  (:export
	:ELJApp_InitializeC
	:ELJApp_initialize))

(in-package :wx_main)

(def-c-var APPTerminating (:type ffi:int)
	(:library +library-name+))

(ffi:def-call-out ELJApp_InitializeC
	(:name "ELJApp_InitializeC")
	(:arguments (closure (ffi:c-pointer wxClosure))
		(_argc ffi:int)
		(_argv (ffi:c-pointer ffi:c-string)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out ELJApp_initialize
	(:name "ELJApp_initialize")
	(:arguments (_obj (ffi:c-pointer NIL))
		(_func AppInitFunc)
		(_cmd ffi:c-string)
		(_inst (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

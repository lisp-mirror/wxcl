;;;wxControl.lisp
;;;License  : GNU General Public License (GPL)
;;;Author(s) : Surendra Singhi (surendra@asu.edu) 
;;;Copyright (C) 2005 Surendra Singhi 
;;;See the file LICENSE for information on usage and redistribution.
;;;
;;; $Header$
;;;
;; This is an automatically generated file. 
;;Make changes as you feel are necessary (but remember if you try to regenerate this file, your changes will be lost). 

(defpackage :wxControl
  (:use :common-lisp :ffi :wxCL)
  (:export
	:wxControl_SetLabel
	:wxControl_GetLabel
	:wxControl_Command))

(in-package :wxControl)

(ffi:default-foreign-language :stdc)

(ffi:c-lines "#include <wxc.h>~%")

(ffi:def-call-out wxControl_SetLabel
	(:name "wxControl_SetLabel")
	(:arguments (_obj (ffi:c-pointer NIL))
		(text ffi:c-string))
	(:return-type NIL)
	) ;; (:library +library-name+))

(ffi:def-call-out wxControl_GetLabel
	(:name "wxControl_GetLabel")
	(:arguments (_obj (ffi:c-pointer NIL))
		(_buf (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	) ;; (:library +library-name+))

(ffi:def-call-out wxControl_Command
	(:name "wxControl_Command")
	(:arguments (_obj (ffi:c-pointer NIL))
		(event (ffi:c-pointer NIL)))
	(:return-type NIL)
	) ;; (:library +library-name+))

;;;wxMask.lisp
;;;License  : GNU General Public License (GPL)
;;;Author(s) : Surendra Singhi (surendra@asu.edu) 
;;;Copyright (C) 2005 Surendra Singhi 
;;;See the file LICENSE for information on usage and redistribution.
;;;
;;; $Header$
;;;

(defpackage :wxMask
  (:use :common-lisp :ffi :wxCL)
  (:export
	:wxMask_Create
	:wxMask_CreateColoured))

(in-package :wxMask)

(ffi:default-foreign-language :stdc)

(ffi:c-lines "#include <wxc.h>~%")

(ffi:def-call-out wxMask_Create
	(:name "wxMask_Create")
	(:arguments (bitmap (ffi:c-pointer NIL)))
	(:return-type (ffi:c-pointer NIL))
	) ;; (:library +library-name+))

(ffi:def-call-out wxMask_CreateColoured
	(:name "wxMask_CreateColoured")
	(:arguments (bitmap (ffi:c-pointer NIL))
		(colour (ffi:c-pointer NIL)))
	(:return-type (ffi:c-pointer NIL))
	) ;; (:library +library-name+))

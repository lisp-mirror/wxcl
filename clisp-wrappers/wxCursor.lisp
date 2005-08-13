;;;wxCursor.lisp
;;;License   : BSD-style
;;;Author(s) : Surendra Singhi (surendra@asu.edu) 
;;;Copyright (C) 2005 Surendra Singhi 
;;;See the file LICENSE for information on usage and redistribution.
;;;
;;; $Header$
;;;

(defpackage :wxCursor
  (:use :common-lisp :ffi :wxCL)
  (:export :Cursor_CreateFromStock))

(in-package :wxCursor)

(ffi:default-foreign-language :stdc)

(ffi:def-call-out Cursor_CreateFromStock
	(:name "Cursor_CreateFromStock")
	(:arguments (_id ffi:int))
	(:return-type (ffi:c-pointer NIL))
	(:library +library-name+))

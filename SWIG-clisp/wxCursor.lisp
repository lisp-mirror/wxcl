;;;wxCursor.lisp
;;;License   : BSD-style
;;;Author(s) : Surendra Singhi (surendra@asu.edu) 
;;;Copyright (C) 2005 Surendra Singhi 
;;;See the file LICENSE for information on usage and redistribution.
;;;
;;; $Header$
;;;
;; This is an automatically generated file. 
;;Make changes as you feel are necessary (but remember if you try to regenerate this file, your changes will be lost). 

(defpackage :wxCursor
  (:use :common-lisp :ffi)
  (:export
	:Cursor_CreateFromStock))

(in-package :wxCursor)

(ffi:def-call-out Cursor_CreateFromStock
	(:name "Cursor_CreateFromStock")
	(:arguments (_id ffi:int))
	(:return-type (ffi:c-pointer NIL))
	(:library +library-name+))

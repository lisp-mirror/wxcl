;;;wxWave.lisp
;;;License  : GNU General Public License (GPL)
;;;Author(s) : Surendra Singhi (surendra@asu.edu) 
;;;Copyright (C) 2005 Surendra Singhi 
;;;See the file LICENSE for information on usage and redistribution.
;;;
;;; $Header$
;;;
;; This is an automatically generated file. 
;;Make changes as you feel are necessary (but remember if you try to regenerate this file, your changes will be lost). 

(defpackage :wxWave
  (:use :common-lisp :ffi)
  (:export
	:wxWave_Create
	:wxWave_Delete
	:wxWave_IsOk
	:wxWave_Play))

(in-package :wxWave)

(default-foreign-language :stdc)

(ffi:def-call-out wxWave_Create
	(:name "wxWave_Create")
	(:arguments (fileName (ffi:c-pointer wxString))
		(isResource bool))
	(:return-type (ffi:c-pointer NIL))
	(:library +library-name+))

(ffi:def-call-out wxWave_Delete
	(:name "wxWave_Delete")
	(:arguments (self (ffi:c-pointer NIL)))
	(:library +library-name+))

(ffi:def-call-out wxWave_IsOk
	(:name "wxWave_IsOk")
	(:arguments (self (ffi:c-pointer NIL)))
	(:return-type bool)
	(:library +library-name+))

(ffi:def-call-out wxWave_Play
	(:name "wxWave_Play")
	(:arguments (self (ffi:c-pointer NIL))
		(async bool)
		(looped bool))
	(:return-type bool)
	(:library +library-name+))

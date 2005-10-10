;;;wxWave.lisp
;;;License  : wxWindows License 3.1
;;;Author(s) : Surendra Singhi (surendra@asu.edu) 
;;;Copyright (C) 2005 Surendra Singhi 
;;;See the file LICENSE for information on usage and redistribution.
;;;
;;; $Header$
;;;

(defpackage :wxWave
    (:use :common-lisp :ffi :wxCL)
  (:export :wxWave_Create
	   :wxWave_Delete
	   :wxWave_IsOk
	   :wxWave_Play))

(in-package :wxWave)

(default-foreign-language :stdc)

(ffi:def-call-out wxWave_Create
    (:name "wxWave_Create")
  (:arguments (fileName ffi:c-string)
	      (isResource ffi:int))
  (:return-type (ffi:c-pointer NIL))
  (:library +library-name+))

(ffi:def-call-out wxWave_Delete
    (:name "wxWave_Delete")
  (:arguments (self (ffi:c-pointer NIL)))
  (:library +library-name+))

(ffi:def-call-out wxWave_IsOk
    (:name "wxWave_IsOk")
  (:arguments (self (ffi:c-pointer NIL)))
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out wxWave_Play
    (:name "wxWave_Play")
  (:arguments (self (ffi:c-pointer NIL))
	      (async ffi:int)
	      (looped ffi:int))
  (:return-type ffi:int)
  (:library +library-name+))

;;;wxSingleInstanceChecker.lisp
;;;License  : wxWindows License 3.1
;;;Author(s) : Surendra Singhi (surendra@asu.edu) 
;;;Copyright (C) 2005 Surendra Singhi 
;;;See the file LICENSE for information on usage and redistribution.
;;;
;;; $Header$
;;;

(defpackage :wxSingleInstanceChecker
  (:use :common-lisp :ffi :wxCL)
  (:export
	:wxSingleInstanceChecker_CreateDefault
	:wxSingleInstanceChecker_Create
	:wxSingleInstanceChecker_IsAnotherRunning
	:wxSingleInstanceChecker_Delete))

(in-package :wxSingleInstanceChecker)

(default-foreign-language :stdc)

(def-call-out wxSingleInstanceChecker_CreateDefault
	(:name "wxSingleInstanceChecker_CreateDefault")
	(:return-type (c-pointer NIL))
	(:library +library-name+))

(def-call-out wxSingleInstanceChecker_Create
	(:name "wxSingleInstanceChecker_Create")
	(:arguments (_obj (c-pointer NIL))
		(name (c-pointer NIL))
		(path (c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(def-call-out wxSingleInstanceChecker_IsAnotherRunning
	(:name "wxSingleInstanceChecker_IsAnotherRunning")
	(:arguments (_obj (c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(def-call-out wxSingleInstanceChecker_Delete
	(:name "wxSingleInstanceChecker_Delete")
	(:arguments (_obj (c-pointer NIL)))
	(:library +library-name+))

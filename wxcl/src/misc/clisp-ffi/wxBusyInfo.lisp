;;;wxBusyInfo.lisp
;;;License  : wxWindows License 3.1
;;;Author(s) : Surendra Singhi (surendra@asu.edu) 
;;;Copyright (C) 2005 Surendra Singhi 
;;;See the file LICENSE for information on usage and redistribution.
;;;
;;; $Header$
;;;
;; This is an automatically generated file. 
;;Make changes as you feel are necessary (but remember if you try to regenerate this file, your changes will be lost). 

(defpackage :wxBusyInfo
  (:use :common-lisp :ffi :wxCL)
  (:export
	:wxBusyInfo_Create
	:wxBusyInfo_Delete
	:wxBusyCursor_Create
	:wxBusyCursor_CreateWithCursor
	:wxBusyCursor_Delete))

(in-package :wxBusyInfo)

(ffi:default-foreign-language :stdc)

(ffi:def-call-out wxBusyInfo_Create
	(:name "wxBusyInfo_Create")
	(:arguments (_txt (ffi:c-pointer NIL)))
	(:return-type (ffi:c-pointer NIL))
	(:library +library-name+))

(ffi:def-call-out wxBusyInfo_Delete
	(:name "wxBusyInfo_Delete")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxBusyCursor_Create
	(:name "wxBusyCursor_Create")
	(:return-type (ffi:c-pointer NIL))
	(:library +library-name+))

(ffi:def-call-out wxBusyCursor_CreateWithCursor
	(:name "wxBusyCursor_CreateWithCursor")
	(:arguments (_cur (ffi:c-pointer NIL)))
	(:return-type (ffi:c-pointer NIL))
	(:library +library-name+))

(ffi:def-call-out wxBusyCursor_Delete
	(:name "wxBusyCursor_Delete")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

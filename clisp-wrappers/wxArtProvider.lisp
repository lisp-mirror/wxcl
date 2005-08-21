;;;wxArtProvider.lisp
;;;License  : wxWindows License 3.1
;;;Author(s) : Surendra Singhi (surendra@asu.edu) 
;;;Copyright (C) 2005 Surendra Singhi 
;;;See the file LICENSE for information on usage and redistribution.
;;;
;;; $Header$
;;;

(defpackage :wxArtProvider
  (:use :common-lisp :ffi :wxCL)
  (:export
	:ELJArtProv_Create
	:ELJArtProv_Release
	:PushProvider
	:PopProvider
	:RemoveProvider))

(in-package :wxArtProvider)

(ffi:default-foreign-language :stdc)

(ffi:def-call-out ELJArtProv_Create
	(:name "ELJArtProv_Create")
	(:arguments (_obj (ffi:c-pointer NIL))
		(_clb (ffi:c-pointer NIL)))
	(:return-type (ffi:c-pointer NIL))
	(:library +library-name+))

(ffi:def-call-out ELJArtProv_Release
	(:name "ELJArtProv_Release")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out PushProvider
	(:name "PushProvider")
	(:arguments (provider (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out PopProvider
	(:name "PopProvider")
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out RemoveProvider
	(:name "RemoveProvider")
	(:arguments (provider (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

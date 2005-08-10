;; This is an automatically generated file. 
;;Make changes as you feel are necessary (but remember if you try to regenerate this file, your changes will be lost). 

(defpackage :wxArtProvider
  (:use :common-lisp :ffi)
  (:export
	:ELJArtProv_Create
	:ELJArtProv_Release
	:PushProvider
	:PopProvider
	:RemoveProvider))

(in-package :wxArtProvider)

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

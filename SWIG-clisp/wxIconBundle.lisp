;;;wxIconBundle.lisp
;;;License  : wxWindows License 3.1
;;;Author(s) : Surendra Singhi (surendra@asu.edu) 
;;;Copyright (C) 2005 Surendra Singhi 
;;;See the file LICENSE for information on usage and redistribution.
;;;
;;; $Header$
;;;
;; This is an automatically generated file. 
;;Make changes as you feel are necessary (but remember if you try to regenerate this file, your changes will be lost). 

(defpackage :wxIconBundle
  (:use :common-lisp :ffi)
  (:export
	:wxIconBundle_CreateDefault
	:wxIconBundle_CreateFromFile
	:wxIconBundle_CreateFromIcon
	:wxIconBundle_Assign
	:wxIconBundle_Delete
	:wxIconBundle_AddIconFromFile
	:wxIconBundle_AddIcon
	:wxIconBundle_GetIcon))

(in-package :wxIconBundle)

(default-foreign-language :stdc)

(def-call-out wxIconBundle_CreateDefault
	(:name "wxIconBundle_CreateDefault")
	(:return-type (c-pointer NIL))
	(:library +library-name+))

(def-call-out wxIconBundle_CreateFromFile
	(:name "wxIconBundle_CreateFromFile")
	(:arguments (file (c-pointer NIL))
		(type ffi:int))
	(:return-type (c-pointer NIL))
	(:library +library-name+))

(def-call-out wxIconBundle_CreateFromIcon
	(:name "wxIconBundle_CreateFromIcon")
	(:arguments (icon (c-pointer NIL)))
	(:return-type (c-pointer NIL))
	(:library +library-name+))

(def-call-out wxIconBundle_Assign
	(:name "wxIconBundle_Assign")
	(:arguments (_obj (c-pointer NIL))
		(_ref (c-pointer NIL)))
	(:library +library-name+))

(def-call-out wxIconBundle_Delete
	(:name "wxIconBundle_Delete")
	(:arguments (_obj (c-pointer NIL)))
	(:library +library-name+))

(def-call-out wxIconBundle_AddIconFromFile
	(:name "wxIconBundle_AddIconFromFile")
	(:arguments (_obj (c-pointer NIL))
		(file (c-pointer NIL))
		(type ffi:int))
	(:library +library-name+))

(def-call-out wxIconBundle_AddIcon
	(:name "wxIconBundle_AddIcon")
	(:arguments (_obj (c-pointer NIL))
		(icon (c-pointer NIL)))
	(:library +library-name+))

(def-call-out wxIconBundle_GetIcon
	(:name "wxIconBundle_GetIcon")
	(:arguments (_obj (c-pointer NIL))
		(w ffi:int)
		(h ffi:int)
		(_ref (c-pointer NIL)))
	(:library +library-name+))

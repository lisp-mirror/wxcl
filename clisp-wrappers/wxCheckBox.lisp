;;;wxCheckBox.lisp
;;;License   : BSD-style
;;;Author(s) : Surendra Singhi (surendra@asu.edu) 
;;;Copyright (C) 2005 Surendra Singhi 
;;;See the file LICENSE for information on usage and redistribution.
;;;
;;; $Header$
;;;
;; This is an automatically generated file. 
;;Make changes as you feel are necessary (but remember if you try to regenerate this file, your changes will be lost). 

(defpackage :wxCheckBox
    (:use :common-lisp :ffi :wxCL)
  (:export :wxCheckBox_Create
	   :wxCheckBox_SetValue
	   :wxCheckBox_GetValue
	   :wxcl-create-check-box))

(in-package :wxCheckbox)

(ffi:default-foreign-language :stdc)

(ffi:def-call-out wxCheckBox_Create
    (:name "wxCheckBox_Create")
  (:arguments (_prt (ffi:c-pointer NIL))
	      (_id ffi:int)
	      (_txt ffi:c-string)
	      (_lft ffi:int)
	      (_top ffi:int)
	      (_wdt ffi:int)
	      (_hgt ffi:int)
	      (_stl ffi:int))
  (:return-type (ffi:c-pointer NIL))
  (:library +library-name+))

(defmacro wxcl-create-check-box (frame label &key (id -1) (left -1) (top -1) (width -1)(height -1)
				       (style 0))
  "Creates a check box."
  `(wxCheckBox_Create ,frame ,id ,label ,left ,top ,width ,height ,style))
    
(ffi:def-call-out wxCheckBox_SetValue
    (:name "wxCheckBox_SetValue")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (value ffi:int))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxCheckBox_GetValue
    (:name "wxCheckBox_GetValue")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type ffi:int)
  (:library +library-name+))

;;;wxChecklistbox.lisp
;;;License   : BSD-style
;;;Author(s) : Surendra Singhi (surendra@asu.edu) 
;;;Copyright (C) 2005 Surendra Singhi 
;;;See the file LICENSE for information on usage and redistribution.
;;;
;;; $Header$
;;;
;; This is an automatically generated file. 
;;Make changes as you feel are necessary (but remember if you try to regenerate this file, your changes will be lost). 

(defpackage :wxCheckListBox
  (:use :common-lisp :ffi :wxCL)
  (:export
	:wxCheckListBox_Create
	:wxCheckListBox_Check
	:wxCheckListBox_IsChecked
	:wxcl-create-check-list-box))

(in-package :wxCheckListBox)

(ffi:default-foreign-language :stdc)

(ffi:def-call-out wxCheckListBox_Create
	(:name "wxCheckListBox_Create")
	(:arguments (_prt (ffi:c-pointer NIL))
		(_id ffi:int)
		(_lft ffi:int)
		(_top ffi:int)
		(_wdt ffi:int)
		(_hgt ffi:int)
		(_n ffi:int)
		(_choices (ffi:c-array-ptr ffi:c-string))
		(_stl ffi:int))
	(:return-type (ffi:c-pointer NIL))
	(:library +library-name+))

(defmacro wxcl-create-check-list-box (frame choices &key (id -1) (left -1) (top -1) (width -1)(height -1)
					    (style 0))
  "Creates a list box containing 'n' checkable choices."
  (let ((len (gensym)))
    `(let ((,len (length ,choices)))
      (wxCheckListBox_Create ,frame ,id  ,left ,top ,width ,height ,len ,choices ,style))))


(ffi:def-call-out wxCheckListBox_Check
	(:name "wxCheckListBox_Check")
	(:arguments (_obj (ffi:c-pointer NIL))
		(item ffi:int)
		(check ffi:int))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxCheckListBox_IsChecked
	(:name "wxCheckListBox_IsChecked")
	(:arguments (_obj (ffi:c-pointer NIL))
		(item ffi:int))
	(:return-type ffi:int)
	(:library +library-name+))

;;;wxChecklistbox.lisp
;;;License  : wxWindows License 3.1
;;;Author(s) : Surendra Singhi (surendra@asu.edu), Jack Unrue (jdunrue@gmail.com)
;;;Copyright (C) 2005 Surendra Singhi, Jack D. Unrue
;;;See the file LICENSE for information on usage and redistribution.
;;;
;;; $Header$
;;;
;; This is an automatically generated file. 
;;Make changes as you feel are necessary (but remember if you try to regenerate this file, your changes will be lost). 

(in-package :wxcl-controls)

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

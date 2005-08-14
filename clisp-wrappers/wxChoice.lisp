;;;wxChoice.lisp
;;;License  : GNU General Public License (GPL)
;;;Author(s) : Surendra Singhi (surendra@asu.edu) 
;;;Copyright (C) 2005 Surendra Singhi 
;;;See the file LICENSE for information on usage and redistribution.
;;;
;;; $Header$
;;;

(defpackage :wxChoice
  (:use :common-lisp :ffi :wxCL)
  (:export
	:wxChoice_Create
	:wxChoice_Append
	:wxChoice_Delete
	:wxChoice_Clear
	:wxChoice_GetCount
	:wxChoice_GetSelection
	:wxChoice_SetSelection
	:wxChoice_FindString
	:wxChoice_GetString
	:wxChoice_SetString
	:wxcl-create-choice))

(in-package :wxChoice)

(ffi:default-foreign-language :stdc)

(ffi:def-call-out wxChoice_Create
	(:name "wxChoice_Create")
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

(defmacro wxcl-create-choice (frame choices &key (id -1) (left -1) (top -1) (width -1)(height -1)
				      (style 0))
  "Creates a choice box containing 'n' choices."
  (let ((len (gensym)))
    `(let ((,len (length ,choices)))
      (wxChoice_Create ,frame ,id  ,left ,top ,width ,height ,len ,choices ,style))))


(ffi:def-call-out wxChoice_Append
	(:name "wxChoice_Append")
	(:arguments (_obj (ffi:c-pointer NIL))
		(item ffi:c-string))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxChoice_Delete
	(:name "wxChoice_Delete")
	(:arguments (_obj (ffi:c-pointer NIL))
		(n ffi:int))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxChoice_Clear
	(:name "wxChoice_Clear")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxChoice_GetCount
	(:name "wxChoice_GetCount")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxChoice_GetSelection
	(:name "wxChoice_GetSelection")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxChoice_SetSelection
	(:name "wxChoice_SetSelection")
	(:arguments (_obj (ffi:c-pointer NIL))
		(n ffi:int))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxChoice_FindString
	(:name "wxChoice_FindString")
	(:arguments (_obj (ffi:c-pointer NIL))
		(s ffi:c-string))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxChoice_GetString
	(:name "wxChoice_GetString")
	(:arguments (_obj (ffi:c-pointer NIL))
		(n ffi:int)
		(_buf (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxChoice_SetString
	(:name "wxChoice_SetString")
	(:arguments (_obj (ffi:c-pointer NIL))
		(n ffi:int)
		(s ffi:c-string))
	(:return-type NIL)
	(:library +library-name+))

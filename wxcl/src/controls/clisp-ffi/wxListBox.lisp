;;;wxListBox.lisp
;;;License  : wxWindows License 3.1
;;;Author(s) : Surendra Singhi (surendra@asu.edu) 
;;;Copyright (C) 2005 Surendra Singhi 
;;;See the file LICENSE for information on usage and redistribution.
;;;
;;; $Header$
;;;

(in-package :wxcl-controls)

(ffi:default-foreign-language :stdc)

(ffi:def-call-out wxListBox_Create
    (:name "wxListBox_Create")
  (:arguments (_prt (ffi:c-pointer NIL))
	      (_id ffi:int)
	      (_lft ffi:int)
	      (_top ffi:int)
	      (_wdt ffi:int)
	      (_hgt ffi:int)
	      (_n ffi:int)
	      (_str (ffi:c-array-ptr ffi:c-string))
	      (_stl ffi:int))
  (:return-type (ffi:c-pointer NIL))
  (:library +library-name+))

(defmacro wxcl-create-list-box (frame choices &key (id -1) (left -1) (top -1) (width -1)(height -1)
				      (style 0))
  "Creates a list box containing 'n' choices."
  (let ((len (gensym)))
    `(let ((,len (length ,choices)))
      (wxListBox_Create ,frame ,id  ,left ,top ,width ,height ,len ,choices ,style))))

(ffi:def-call-out wxListBox_Deselect
    (:name "wxListBox_Deselect")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (n ffi:int))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxListBox_Set
    (:name "wxListBox_Set")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (n ffi:int)
	      (s (ffi:c-array-ptr ffi:c-string)))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxListBox_IsSelected
    (:name "wxListBox_IsSelected")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (n ffi:int))
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out wxListBox_GetSelections
    (:name "wxListBox_GetSelections")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type (ffi:c-array-ptr ffi:int) :malloc-free)
  (:library +library-name+))

(ffi:def-call-out wxListBox_InsertItems
    (:name "wxListBox_InsertItems")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (items (ffi:c-pointer NIL))
	      (pos ffi:int)
	      (count ffi:int))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxListBox_SetFirstItem
    (:name "wxListBox_SetFirstItem")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (n ffi:int))
  (:return-type NIL)
  (:library +library-name+))

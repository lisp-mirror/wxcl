;;;wxListBox.lisp
;;;License  : wxWindows License 3.1
;;;Author(s) : Surendra Singhi (surendra@asu.edu) 
;;;Copyright (C) 2005 Surendra Singhi 
;;;See the file LICENSE for information on usage and redistribution.
;;;
;;; $Header$
;;;

(defpackage :wxListBox
    (:use :common-lisp :ffi :wxCL)
  (:export :wxListBox_Create
	   :wxListBox_Clear
	   :wxListBox_Delete
	   :wxListBox_GetCount
	   :wxListBox_GetString
	   :wxListBox_SetString
	   :wxListBox_FindString
	   :wxListBox_IsSelected
	   :wxListBox_SetSelection
	   :wxListBox_GetSelection
	   :wxListBox_GetSelections
	   :wxListBox_Append
	   :wxListBox_AppendData
	   :wxListBox_InsertItems
	   :wxListBox_SetFirstItem
	   :wxListBox_SetClientData
	   :wxListBox_GetClientData
	   :wxListBox_SetStringSelection
	   :wxcl-create-list-box
	   :wxLB_SORT
	   :wxLB_SINGLE
	   :wxLB_MULTIPLE
	   :wxLB_EXTENDED
	   :wxLB_OWNERDRAW
	   :wxLB_NEEDED_SB
	   :wxLB_ALWAYS_SB))

(in-package :wxListbox)

(ffi:default-foreign-language :stdc)

(defconstant wxLB_SORT 16)
(defconstant wxLB_SINGLE 32)
(defconstant wxLB_MULTIPLE 64)
(defconstant wxLB_EXTENDED 128)
(defconstant wxLB_OWNERDRAW 256)
(defconstant wxLB_NEEDED_SB 512)
(defconstant wxLB_ALWAYS_SB 1024)

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



(ffi:def-call-out wxListBox_Clear
    (:name "wxListBox_Clear")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxListBox_Delete
    (:name "wxListBox_Delete")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (n ffi:int))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxListBox_GetCount
    (:name "wxListBox_GetCount")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out wxListBox_GetString
    (:name "wxListBox_GetString")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (n ffi:int)
	      (_buf (ffi:c-pointer NIL)))
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out wxListBox_SetString
    (:name "wxListBox_SetString")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (n ffi:int)
	      (s ffi:c-string))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxListBox_FindString
    (:name "wxListBox_FindString")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (s ffi:c-string))
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out wxListBox_IsSelected
    (:name "wxListBox_IsSelected")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (n ffi:int))
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out wxListBox_SetSelection
    (:name "wxListBox_SetSelection")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (n ffi:int)
	      (select ffi:int))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxListBox_GetSelection
    (:name "wxListBox_GetSelection")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out wxListBox_GetSelections
    (:name "wxListBox_GetSelections")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (aSelections (ffi:c-ptr ffi:int))
	      (allocated ffi:int))
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out wxListBox_Append
    (:name "wxListBox_Append")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (item ffi:c-string))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxListBox_AppendData
    (:name "wxListBox_AppendData")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (item ffi:c-string)
	      (_data (ffi:c-pointer NIL)))
  (:return-type NIL)
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

(ffi:def-call-out wxListBox_SetClientData
    (:name "wxListBox_SetClientData")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (n ffi:int)
	      (clientData (ffi:c-pointer NIL)))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxListBox_GetClientData
    (:name "wxListBox_GetClientData")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (n ffi:int))
  (:return-type (ffi:c-pointer NIL))
  (:library +library-name+))

(ffi:def-call-out wxListBox_SetStringSelection
    (:name "wxListBox_SetStringSelection")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (str ffi:c-string)
	      (sel ffi:int))
  (:return-type NIL)
  (:library +library-name+))

;;;wxCombobox.lisp
;;;License  : GNU General Public License (GPL)
;;;Author(s) : Surendra Singhi (surendra@asu.edu) 
;;;Copyright (C) 2005 Surendra Singhi 
;;;See the file LICENSE for information on usage and redistribution.
;;;
;;; $Header$
;;;

(defpackage :wxComboBox
  (:use :common-lisp :ffi :wxCL)
  (:export
	:wxComboBox_Create
	:wxComboBox_Copy
	:wxComboBox_Cut
	:wxComboBox_Paste
	:wxComboBox_SetInsertionPoint
	:wxComboBox_SetInsertionPointEnd
	:wxComboBox_GetInsertionPoint
	:wxComboBox_GetLastPosition
	:wxComboBox_Replace
	:wxComboBox_Remove
	:wxComboBox_SetTextSelection
	:wxComboBox_SetEditable
	:wxComboBox_GetStringSelection
	:wxComboBox_GetValue
	:wxComboBox_Append
	:wxComboBox_AppendData
	:wxComboBox_Delete
	:wxComboBox_Clear
	:wxComboBox_GetCount
	:wxComboBox_GetSelection
	:wxComboBox_SetSelection
	:wxComboBox_FindString
	:wxComboBox_GetString
	:wxComboBox_SetString
	:wxComboBox_SetClientData
	:wxComboBox_GetClientData
	:wxcl-create-combo-box
	:wxCB_SIMPLE
	:wxCB_SORT
	:wxCB_READONLY
	:wxCB_DROPDOWN))

(in-package :wxComboBox)

(ffi:default-foreign-language :stdc)

(ffi:c-lines "#include <wxc.h>~%")

(defconstant wxCB_SIMPLE 4)
(defconstant wxCB_SORT 8)
(defconstant wxCB_READONLY 16)
(defconstant wxCB_DROPDOWN 32)

(ffi:def-call-out wxComboBox_Create
	(:name "wxComboBox_Create")
	(:arguments (_prt (ffi:c-pointer NIL))
		(_id ffi:int)
		(_txt ffi:c-string)
		(_lft ffi:int)
		(_top ffi:int)
		(_wdt ffi:int)
		(_hgt ffi:int)
		(_n ffi:int)
		(_str (ffi:c-array-ptr ffi:c-string))
		(_stl ffi:int))
	(:return-type (ffi:c-pointer NIL))
	) ;; (:library +library-name+))

(defmacro wxcl-create-combo-box (frame choices &key (id -1) (left -1) (top -1) (width -1)(height -1)
				      (value "") (style 0))
  "Creates a combo box containing 'n' choices."
  (let ((len (gensym)))
    `(let ((,len (length ,choices)))
      (wxComboBox_Create ,frame ,id ,value ,left ,top ,width ,height ,len ,choices ,style))))


(ffi:def-call-out wxComboBox_Copy
	(:name "wxComboBox_Copy")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type NIL)
	) ;; (:library +library-name+))

(ffi:def-call-out wxComboBox_Cut
	(:name "wxComboBox_Cut")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type NIL)
	) ;; (:library +library-name+))

(ffi:def-call-out wxComboBox_Paste
	(:name "wxComboBox_Paste")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type NIL)
	) ;; (:library +library-name+))

(ffi:def-call-out wxComboBox_SetInsertionPoint
	(:name "wxComboBox_SetInsertionPoint")
	(:arguments (_obj (ffi:c-pointer NIL))
		(pos ffi:int))
	(:return-type NIL)
	) ;; (:library +library-name+))

(ffi:def-call-out wxComboBox_SetInsertionPointEnd
	(:name "wxComboBox_SetInsertionPointEnd")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type NIL)
	) ;; (:library +library-name+))

(ffi:def-call-out wxComboBox_GetInsertionPoint
	(:name "wxComboBox_GetInsertionPoint")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	) ;; (:library +library-name+))

(ffi:def-call-out wxComboBox_GetLastPosition
	(:name "wxComboBox_GetLastPosition")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	) ;; (:library +library-name+))

(ffi:def-call-out wxComboBox_Replace
	(:name "wxComboBox_Replace")
	(:arguments (_obj (ffi:c-pointer NIL))
		(from ffi:int)
		(to ffi:int)
		(value ffi:c-string))
	(:return-type NIL)
	) ;; (:library +library-name+))

(ffi:def-call-out wxComboBox_Remove
	(:name "wxComboBox_Remove")
	(:arguments (_obj (ffi:c-pointer NIL))
		(from ffi:int)
		(to ffi:int))
	(:return-type NIL)
	) ;; (:library +library-name+))

(ffi:def-call-out wxComboBox_SetTextSelection
	(:name "wxComboBox_SetTextSelection")
	(:arguments (_obj (ffi:c-pointer NIL))
		(from ffi:int)
		(to ffi:int))
	(:return-type NIL)
	) ;; (:library +library-name+))

(ffi:def-call-out wxComboBox_SetEditable
	(:name "wxComboBox_SetEditable")
	(:arguments (_obj (ffi:c-pointer NIL))
		(editable ffi:int))
	(:return-type NIL)
	) ;; (:library +library-name+))

(ffi:def-call-out wxComboBox_GetStringSelection
	(:name "wxComboBox_GetStringSelection")
	(:arguments (_obj (ffi:c-pointer NIL))
		(_buf (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	) ;; (:library +library-name+))

(ffi:def-call-out wxComboBox_GetValue
	(:name "wxComboBox_GetValue")
	(:arguments (_obj (ffi:c-pointer NIL))
		(_buf (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	) ;; (:library +library-name+))

(ffi:def-call-out wxComboBox_Append
	(:name "wxComboBox_Append")
	(:arguments (_obj (ffi:c-pointer NIL))
		(item ffi:c-string))
	(:return-type NIL)
	) ;; (:library +library-name+))

(ffi:def-call-out wxComboBox_AppendData
	(:name "wxComboBox_AppendData")
	(:arguments (_obj (ffi:c-pointer NIL))
		(item ffi:c-string)
		(d (ffi:c-pointer NIL)))
	(:return-type NIL)
	) ;; (:library +library-name+))

(ffi:def-call-out wxComboBox_Delete
	(:name "wxComboBox_Delete")
	(:arguments (_obj (ffi:c-pointer NIL))
		(n ffi:int))
	(:return-type NIL)
	) ;; (:library +library-name+))

(ffi:def-call-out wxComboBox_Clear
	(:name "wxComboBox_Clear")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type NIL)
	) ;; (:library +library-name+))

(ffi:def-call-out wxComboBox_GetCount
	(:name "wxComboBox_GetCount")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	) ;; (:library +library-name+))

(ffi:def-call-out wxComboBox_GetSelection
	(:name "wxComboBox_GetSelection")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	) ;; (:library +library-name+))

(ffi:def-call-out wxComboBox_SetSelection
	(:name "wxComboBox_SetSelection")
	(:arguments (_obj (ffi:c-pointer NIL))
		(n ffi:int))
	(:return-type NIL)
	) ;; (:library +library-name+))

(ffi:def-call-out wxComboBox_FindString
	(:name "wxComboBox_FindString")
	(:arguments (_obj (ffi:c-pointer NIL))
		(s ffi:c-string))
	(:return-type ffi:int)
	) ;; (:library +library-name+))

(ffi:def-call-out wxComboBox_GetString
	(:name "wxComboBox_GetString")
	(:arguments (_obj (ffi:c-pointer NIL))
		(n ffi:int)
		(_buf (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	) ;; (:library +library-name+))

(ffi:def-call-out wxComboBox_SetString
	(:name "wxComboBox_SetString")
	(:arguments (_obj (ffi:c-pointer NIL))
		(n ffi:int)
		(s ffi:c-string))
	(:return-type NIL)
    (:library +library-name+))

(ffi:def-call-out wxComboBox_SetClientData
	(:name "wxComboBox_SetClientData")
	(:arguments (_obj (ffi:c-pointer NIL))
		(n ffi:int)
		(clientData (ffi:c-pointer NIL)))
	(:return-type NIL)
	) ;; (:library +library-name+))

(ffi:def-call-out wxComboBox_GetClientData
	(:name "wxComboBox_GetClientData")
	(:arguments (_obj (ffi:c-pointer NIL))
		(n ffi:int))
	(:return-type (ffi:c-pointer NIL))
	) ;; (:library +library-name+))

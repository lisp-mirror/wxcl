;;;wxRadioBox.lisp
;;;License   : BSD-style
;;;Author(s) : Surendra Singhi (surendra@asu.edu) 
;;;Copyright (C) 2005 Surendra Singhi 
;;;See the file LICENSE for information on usage and redistribution.
;;;
;;; $Header$
;;;
;; This is an automatically generated file. 
;;Make changes as you feel are necessary (but remember if you try to regenerate this file, your changes will be lost). 

(defpackage :wxRadioBox
  (:use :common-lisp :ffi :wxCL)
  (:export
	:wxRadioBox_Create
	:wxRadioBox_FindString
	:wxRadioBox_SetSelection
	:wxRadioBox_GetSelection
	:wxRadioBox_SetItemLabel
	:wxRadioBox_SetItemBitmap
	:wxRadioBox_GetItemLabel
	:wxRadioBox_EnableItem
	:wxRadioBox_ShowItem
	:wxRadioBox_GetStringSelection
	:wxRadioBox_SetStringSelection
	:wxRadioBox_Number
	:wxRadioBox_GetNumberOfRowsOrCols
	:wxRadioBox_SetNumberOfRowsOrCols
	:wxcl-create-radio-box
	:wxRA_SPECIFY_COLS
	:wxRA_SPECIFY_ROWS))

(in-package :wxRadiobox)

(ffi:default-foreign-language :stdc)

(defconstant wxRA_SPECIFY_COLS 4)
(defconstant wxRA_SPECIFY_ROWS 8)

(ffi:def-call-out wxRadioBox_Create
	(:name "wxRadioBox_Create")
	(:arguments (_prt (ffi:c-pointer NIL))
		(_id ffi:int)
		(_txt ffi:c-string)
		(_lft ffi:int)
		(_top ffi:int)
		(_wdt ffi:int)
		(_hgt ffi:int)
		(_n ffi:int)
		(_str (ffi:c-array-ptr ffi:c-string))
		(_dim ffi:int)
		(_stl ffi:int))
	(:return-type (ffi:c-pointer NIL))
	(:library +library-name+))

(defmacro wxcl-create-radio-box (frame label choices &key (id -1) (left -1) (top -1) (width -1) (height -1)
				       (majorDimension 0) (style wxRA_SPECIFY_COLS))
  "Creates a radio box containing radio buttons."
  (let ((len (gensym)))
    `(let ((,len (length ,choices)))
      (wxRadioBox_Create ,frame ,id ,label ,left ,top ,width ,height ,len ,choices ,majorDimension ,style))))
				 
(ffi:def-call-out wxRadioBox_FindString
	(:name "wxRadioBox_FindString")
	(:arguments (_obj (ffi:c-pointer NIL))
		(s (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxRadioBox_SetSelection
	(:name "wxRadioBox_SetSelection")
	(:arguments (_obj (ffi:c-pointer NIL))
		(_n ffi:int))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxRadioBox_GetSelection
	(:name "wxRadioBox_GetSelection")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxRadioBox_SetItemLabel
	(:name "wxRadioBox_SetItemLabel")
	(:arguments (_obj (ffi:c-pointer NIL))
		(item ffi:int)
		(label (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxRadioBox_SetItemBitmap
	(:name "wxRadioBox_SetItemBitmap")
	(:arguments (_obj (ffi:c-pointer NIL))
		(item ffi:int)
		(bitmap (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxRadioBox_GetItemLabel
	(:name "wxRadioBox_GetItemLabel")
	(:arguments (_obj (ffi:c-pointer NIL))
		(item ffi:int)
		(_buf (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxRadioBox_EnableItem
	(:name "wxRadioBox_EnableItem")
	(:arguments (_obj (ffi:c-pointer NIL))
		(item ffi:int)
		(enable ffi:int))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxRadioBox_ShowItem
	(:name "wxRadioBox_ShowItem")
	(:arguments (_obj (ffi:c-pointer NIL))
		(item ffi:int)
		(show ffi:int))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxRadioBox_GetStringSelection
	(:name "wxRadioBox_GetStringSelection")
	(:arguments (_obj (ffi:c-pointer NIL))
		(_buf (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxRadioBox_SetStringSelection
	(:name "wxRadioBox_SetStringSelection")
	(:arguments (_obj (ffi:c-pointer NIL))
		(s (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxRadioBox_Number
	(:name "wxRadioBox_Number")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxRadioBox_GetNumberOfRowsOrCols
	(:name "wxRadioBox_GetNumberOfRowsOrCols")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxRadioBox_SetNumberOfRowsOrCols
	(:name "wxRadioBox_SetNumberOfRowsOrCols")
	(:arguments (_obj (ffi:c-pointer NIL))
		(n ffi:int))
	(:return-type NIL)
	(:library +library-name+))

;;;wxMenuBar.lisp
;;;License   : BSD-style
;;;Author(s) : Surendra Singhi (surendra@asu.edu) 
;;;Copyright (C) 2005 Surendra Singhi 
;;;See the file LICENSE for information on usage and redistribution.
;;;
;;; $Header$
;;;

(defpackage :wxMenuBar
  (:use :common-lisp :ffi :wxCL)
  (:export
	:wxMenuBar_Create
	:wxMenuBar_CreateWithMenus
	:wxMenuBar_DeletePointer
	:wxMenuBar_Append
	:wxMenuBar_Insert
	:wxMenuBar_GetMenuCount
	:wxMenuBar_GetMenu
	:wxMenuBar_Replace
	:wxMenuBar_Remove
	:wxMenuBar_EnableTop
	:wxMenuBar_SetLabelTop
	:wxMenuBar_GetLabelTop
	:wxMenuBar_FindMenuItem
	:wxMenuBar_FindItem
	:wxMenuBar_FindMenu
	:wxMenuBar_EnableItem
	:wxMenuBar_Check
	:wxMenuBar_IsChecked
	:wxMenuBar_IsEnabled
	:wxMenuBar_SetItemLabel
	:wxMenuBar_GetLabel
	:wxMenuBar_SetHelpString
	:wxMenuBar_GetHelpString
	:wxMenuBar_Enable
	:wxMenuBar_SetLabel))

(in-package :wxMenuBar)
(ffi:default-foreign-language :stdc)

(def-c-type wxMenuBar NIL)

(defconstant wxMB_DOCKABLE 1)

(ffi:def-call-out wxMenuBar_Create
	(:name "wxMenuBar_Create")
	(:arguments (_style ffi:int))
	(:return-type (ffi:c-pointer wxMenuBar))
	(:library +library-name+))

(defun wxMenuBar_CreateWithMenus(menus titles &key (style 0))
  (let ((mb (wxMenuBar_Create style)))
    (dotimes (i (length menus))
      (wxMenuBar_Append mb (svref menus i) (svref titles i)))
    mb))


(ffi:def-call-out wxMenuBar_DeletePointer
	(:name "wxMenuBar_DeletePointer")
	(:arguments (_obj (ffi:c-pointer wxMenuBar)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxMenuBar_Append
	(:name "wxMenuBar_Append")
	(:arguments (_obj (ffi:c-pointer wxMenuBar))
		(menu (ffi:c-pointer NIL))
		(title ffi:c-string))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxMenuBar_Insert
	(:name "wxMenuBar_Insert")
	(:arguments (_obj (ffi:c-pointer wxMenuBar))
		(pos ffi:int)
		(menu (ffi:c-pointer NIL))
		(title ffi:c-string))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxMenuBar_GetMenuCount
	(:name "wxMenuBar_GetMenuCount")
	(:arguments (_obj (ffi:c-pointer wxMenuBar)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxMenuBar_GetMenu
	(:name "wxMenuBar_GetMenu")
	(:arguments (_obj (ffi:c-pointer wxMenuBar))
		(pos ffi:int))
	(:return-type (ffi:c-pointer NIL))
	(:library +library-name+))

(ffi:def-call-out wxMenuBar_Replace
	(:name "wxMenuBar_Replace")
	(:arguments (_obj (ffi:c-pointer wxMenuBar))
		(pos ffi:int)
		(menu (ffi:c-pointer NIL))
		(title ffi:c-string))
	(:return-type (ffi:c-pointer NIL))
	(:library +library-name+))

(ffi:def-call-out wxMenuBar_Remove
	(:name "wxMenuBar_Remove")
	(:arguments (_obj (ffi:c-pointer wxMenuBar))
		(pos ffi:int))
	(:return-type (ffi:c-pointer NIL))
	(:library +library-name+))

(ffi:def-call-out wxMenuBar_EnableTop
	(:name "wxMenuBar_EnableTop")
	(:arguments (_obj (ffi:c-pointer wxMenuBar))
		(pos ffi:int)
		(enable ffi:int))
	(:library +library-name+))

(ffi:def-call-out wxMenuBar_SetLabelTop
	(:name "wxMenuBar_SetLabelTop")
	(:arguments (_obj (ffi:c-pointer wxMenuBar))
		(pos ffi:int)
		(label ffi:c-string))
	(:library +library-name+))

(ffi:def-call-out wxMenuBar_GetLabelTop
	(:name "wxMenuBar_GetLabelTop")
	(:arguments (_obj (ffi:c-pointer wxMenuBar))
		(pos ffi:int)
		(_buf (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxMenuBar_FindMenuItem
	(:name "wxMenuBar_FindMenuItem")
	(:arguments (_obj (ffi:c-pointer wxMenuBar))
		(menuString ffi:c-string)
		(itemString ffi:c-string))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxMenuBar_FindItem
	(:name "wxMenuBar_FindItem")
	(:arguments (_obj (ffi:c-pointer wxMenuBar))
		(id ffi:int)
		(menu (ffi:c-pointer NIL)))
	(:return-type (ffi:c-pointer NIL))
	(:library +library-name+))

(ffi:def-call-out wxMenuBar_FindMenu
	(:name "wxMenuBar_FindMenu")
	(:arguments (_obj (ffi:c-pointer wxMenuBar))
		(title ffi:c-string))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxMenuBar_EnableItem
	(:name "wxMenuBar_EnableItem")
	(:arguments (_obj (ffi:c-pointer wxMenuBar))
		(id ffi:int)
		(enable ffi:int))
	(:library +library-name+))

(ffi:def-call-out wxMenuBar_Check
	(:name "wxMenuBar_Check")
	(:arguments (_obj (ffi:c-pointer wxMenuBar))
		(id ffi:int)
		(check ffi:int))
	(:library +library-name+))

(ffi:def-call-out wxMenuBar_IsChecked
	(:name "wxMenuBar_IsChecked")
	(:arguments (_obj (ffi:c-pointer wxMenuBar))
		(id ffi:int))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxMenuBar_IsEnabled
	(:name "wxMenuBar_IsEnabled")
	(:arguments (_obj (ffi:c-pointer wxMenuBar))
		(id ffi:int))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxMenuBar_SetItemLabel
	(:name "wxMenuBar_SetItemLabel")
	(:arguments (_obj (ffi:c-pointer wxMenuBar))
		(id ffi:int)
		(label ffi:c-string))
	(:library +library-name+))

(ffi:def-call-out wxMenuBar_GetLabel
	(:name "wxMenuBar_GetLabel")
	(:arguments (_obj (ffi:c-pointer wxMenuBar))
		(id ffi:int)
		(_buf (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxMenuBar_SetHelpString
	(:name "wxMenuBar_SetHelpString")
	(:arguments (_obj (ffi:c-pointer wxMenuBar))
		(id ffi:int)
		(helpString ffi:c-string))
	(:library +library-name+))

(ffi:def-call-out wxMenuBar_GetHelpString
	(:name "wxMenuBar_GetHelpString")
	(:arguments (_obj (ffi:c-pointer wxMenuBar))
		(id ffi:int)
		(_buf (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxMenuBar_Enable
	(:name "wxMenuBar_Enable")
	(:arguments (_obj (ffi:c-pointer wxMenuBar))
		(enable ffi:int))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxMenuBar_SetLabel
	(:name "wxMenuBar_SetLabel")
	(:arguments (_obj (ffi:c-pointer wxMenuBar))
		(s ffi:c-string))
	(:library +library-name+))

;;;wxMenu.lisp
;;;License   : BSD-style
;;;Author(s) : Surendra Singhi (surendra@asu.edu) 
;;;Copyright (C) 2005 Surendra Singhi 
;;;See the file LICENSE for information on usage and redistribution.
;;;
;;; $Header$
;;;
;; This is an automatically generated file. 
;;Make changes as you feel are necessary (but remember if you try to regenerate this file, your changes will be lost). 

(defpackage :wxMenu
  (:use :common-lisp :ffi)
  (:export
	:wxMenu_Create
	:wxMenu_DeletePointer
	:wxMenu_AppendSeparator
	:wxMenu_Append
	:wxMenu_AppendSub
	:wxMenu_AppendItem
	:wxMenu_Break
	:wxMenu_Insert
	:wxMenu_InsertSub
	:wxMenu_InsertItem
	:wxMenu_Prepend
	:wxMenu_PrependSub
	:wxMenu_PrependItem
	:wxMenu_RemoveByItem
	:wxMenu_RemoveById
	:wxMenu_DeleteById
	:wxMenu_DeleteByItem
	:wxMenu_DestroyById
	:wxMenu_DestroyByItem
	:wxMenu_GetMenuItemCount
	:wxMenu_GetMenuItems
	:wxMenu_FindItemByLabel
	:wxMenu_FindItem
	:wxMenu_Enable
	:wxMenu_IsEnabled
	:wxMenu_Check
	:wxMenu_IsChecked
	:wxMenu_SetLabel
	:wxMenu_GetLabel
	:wxMenu_SetHelpString
	:wxMenu_GetHelpString
	:wxMenu_SetTitle
	:wxMenu_GetTitle
	:wxMenu_SetClientData
	:wxMenu_GetClientData
	:wxMenu_SetEventHandler
	:wxMenu_SetInvokingWindow
	:wxMenu_GetInvokingWindow
	:wxMenu_GetStyle
	:wxMenu_UpdateUI
	:wxMenu_IsAttached
	:wxMenu_SetParent
	:wxMenu_GetParent
	:wxMenuItem_Create
	:wxMenuItem_Delete
	:wxMenuItem_GetMenu
	:wxMenuItem_SetId
	:wxMenuItem_GetId
	:wxMenuItem_IsSeparator
	:wxMenuItem_SetText
	:wxMenuItem_GetLabel
	:wxMenuItem_GetText
	:wxMenuItem_GetLabelFromText
	:wxMenuItem_SetCheckable
	:wxMenuItem_IsCheckable
	:wxMenuItem_IsSubMenu
	:wxMenuItem_SetSubMenu
	:wxMenuItem_GetSubMenu
	:wxMenuItem_Enable
	:wxMenuItem_IsEnabled
	:wxMenuItem_Check
	:wxMenuItem_IsChecked
	:wxMenuItem_SetHelp
	:wxMenuItem_GetHelp))

(in-package :wxMenu)

(ffi:def-call-out wxMenu_Create
	(:name "wxMenu_Create")
	(:arguments (title ffi:c-string)
		(style ffi:long))
	(:return-type (ffi:c-pointer NIL))
	(:library +library-name+))

(ffi:def-call-out wxMenu_DeletePointer
	(:name "wxMenu_DeletePointer")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxMenu_AppendSeparator
	(:name "wxMenu_AppendSeparator")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxMenu_Append
	(:name "wxMenu_Append")
	(:arguments (_obj (ffi:c-pointer NIL))
		(id ffi:int)
		(text ffi:c-string)
		(help ffi:c-string)
		(isCheckable ffi:int))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxMenu_AppendSub
	(:name "wxMenu_AppendSub")
	(:arguments (_obj (ffi:c-pointer NIL))
		(id ffi:int)
		(text ffi:c-string)
		(submenu (ffi:c-pointer NIL))
		(help ffi:c-string))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxMenu_AppendItem
	(:name "wxMenu_AppendItem")
	(:arguments (_obj (ffi:c-pointer NIL))
		(_itm (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxMenu_Break
	(:name "wxMenu_Break")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxMenu_Insert
	(:name "wxMenu_Insert")
	(:arguments (_obj (ffi:c-pointer NIL))
		(pos size_t)
		(id ffi:int)
		(text ffi:c-string)
		(help ffi:c-string)
		(isCheckable ffi:int))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxMenu_InsertSub
	(:name "wxMenu_InsertSub")
	(:arguments (_obj (ffi:c-pointer NIL))
		(pos size_t)
		(id ffi:int)
		(text ffi:c-string)
		(submenu (ffi:c-pointer NIL))
		(help ffi:c-string))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxMenu_InsertItem
	(:name "wxMenu_InsertItem")
	(:arguments (_obj (ffi:c-pointer NIL))
		(pos ffi:int)
		(_itm (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxMenu_Prepend
	(:name "wxMenu_Prepend")
	(:arguments (_obj (ffi:c-pointer NIL))
		(id ffi:int)
		(text ffi:c-string)
		(help ffi:c-string)
		(isCheckable ffi:int))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxMenu_PrependSub
	(:name "wxMenu_PrependSub")
	(:arguments (_obj (ffi:c-pointer NIL))
		(id ffi:int)
		(text ffi:c-string)
		(submenu (ffi:c-pointer NIL))
		(help ffi:c-string))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxMenu_PrependItem
	(:name "wxMenu_PrependItem")
	(:arguments (_obj (ffi:c-pointer NIL))
		(_itm (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxMenu_RemoveByItem
	(:name "wxMenu_RemoveByItem")
	(:arguments (_obj (ffi:c-pointer NIL))
		(item (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxMenu_RemoveById
	(:name "wxMenu_RemoveById")
	(:arguments (_obj (ffi:c-pointer NIL))
		(id ffi:int)
		(_itm (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxMenu_DeleteById
	(:name "wxMenu_DeleteById")
	(:arguments (_obj (ffi:c-pointer NIL))
		(id ffi:int))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxMenu_DeleteByItem
	(:name "wxMenu_DeleteByItem")
	(:arguments (_obj (ffi:c-pointer NIL))
		(_itm (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxMenu_DestroyById
	(:name "wxMenu_DestroyById")
	(:arguments (_obj (ffi:c-pointer NIL))
		(id ffi:int))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxMenu_DestroyByItem
	(:name "wxMenu_DestroyByItem")
	(:arguments (_obj (ffi:c-pointer NIL))
		(_itm (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxMenu_GetMenuItemCount
	(:name "wxMenu_GetMenuItemCount")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type size_t)
	(:library +library-name+))

(ffi:def-call-out wxMenu_GetMenuItems
	(:name "wxMenu_GetMenuItems")
	(:arguments (_obj (ffi:c-pointer NIL))
		(_lst (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxMenu_FindItemByLabel
	(:name "wxMenu_FindItemByLabel")
	(:arguments (_obj (ffi:c-pointer NIL))
		(itemString ffi:c-string))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxMenu_FindItem
	(:name "wxMenu_FindItem")
	(:arguments (_obj (ffi:c-pointer NIL))
		(id ffi:int)
		(menu (ffi:c-pointer NIL)))
	(:return-type (ffi:c-pointer NIL))
	(:library +library-name+))

(ffi:def-call-out wxMenu_Enable
	(:name "wxMenu_Enable")
	(:arguments (_obj (ffi:c-pointer NIL))
		(id ffi:int)
		(enable ffi:int))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxMenu_IsEnabled
	(:name "wxMenu_IsEnabled")
	(:arguments (_obj (ffi:c-pointer NIL))
		(id ffi:int))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxMenu_Check
	(:name "wxMenu_Check")
	(:arguments (_obj (ffi:c-pointer NIL))
		(id ffi:int)
		(check ffi:int))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxMenu_IsChecked
	(:name "wxMenu_IsChecked")
	(:arguments (_obj (ffi:c-pointer NIL))
		(id ffi:int))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxMenu_SetLabel
	(:name "wxMenu_SetLabel")
	(:arguments (_obj (ffi:c-pointer NIL))
		(id ffi:int)
		(label ffi:c-string))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxMenu_GetLabel
	(:name "wxMenu_GetLabel")
	(:arguments (_obj (ffi:c-pointer NIL))
		(id ffi:int)
		(_buf (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxMenu_SetHelpString
	(:name "wxMenu_SetHelpString")
	(:arguments (_obj (ffi:c-pointer NIL))
		(id ffi:int)
		(helpString ffi:c-string))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxMenu_GetHelpString
	(:name "wxMenu_GetHelpString")
	(:arguments (_obj (ffi:c-pointer NIL))
		(id ffi:int)
		(_buf (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxMenu_SetTitle
	(:name "wxMenu_SetTitle")
	(:arguments (_obj (ffi:c-pointer NIL))
		(title ffi:c-string))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxMenu_GetTitle
	(:name "wxMenu_GetTitle")
	(:arguments (_obj (ffi:c-pointer NIL))
		(_buf (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxMenu_SetClientData
	(:name "wxMenu_SetClientData")
	(:arguments (_obj (ffi:c-pointer NIL))
		(clientData (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxMenu_GetClientData
	(:name "wxMenu_GetClientData")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type (ffi:c-pointer NIL))
	(:library +library-name+))

(ffi:def-call-out wxMenu_SetEventHandler
	(:name "wxMenu_SetEventHandler")
	(:arguments (_obj (ffi:c-pointer NIL))
		(handler (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxMenu_SetInvokingWindow
	(:name "wxMenu_SetInvokingWindow")
	(:arguments (_obj (ffi:c-pointer NIL))
		(win (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxMenu_GetInvokingWindow
	(:name "wxMenu_GetInvokingWindow")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type (ffi:c-pointer NIL))
	(:library +library-name+))

(ffi:def-call-out wxMenu_GetStyle
	(:name "wxMenu_GetStyle")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxMenu_UpdateUI
	(:name "wxMenu_UpdateUI")
	(:arguments (_obj (ffi:c-pointer NIL))
		(source (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxMenu_IsAttached
	(:name "wxMenu_IsAttached")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxMenu_SetParent
	(:name "wxMenu_SetParent")
	(:arguments (_obj (ffi:c-pointer NIL))
		(parent (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxMenu_GetParent
	(:name "wxMenu_GetParent")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type (ffi:c-pointer NIL))
	(:library +library-name+))

(ffi:def-call-out wxMenuItem_Create
	(:name "wxMenuItem_Create")
	(:return-type (ffi:c-pointer NIL))
	(:library +library-name+))

(ffi:def-call-out wxMenuItem_Delete
	(:name "wxMenuItem_Delete")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxMenuItem_GetMenu
	(:name "wxMenuItem_GetMenu")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type (ffi:c-pointer NIL))
	(:library +library-name+))

(ffi:def-call-out wxMenuItem_SetId
	(:name "wxMenuItem_SetId")
	(:arguments (_obj (ffi:c-pointer NIL))
		(id ffi:int))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxMenuItem_GetId
	(:name "wxMenuItem_GetId")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxMenuItem_IsSeparator
	(:name "wxMenuItem_IsSeparator")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxMenuItem_SetText
	(:name "wxMenuItem_SetText")
	(:arguments (_obj (ffi:c-pointer NIL))
		(str (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxMenuItem_GetLabel
	(:name "wxMenuItem_GetLabel")
	(:arguments (_obj (ffi:c-pointer NIL))
		(_buf (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxMenuItem_GetText
	(:name "wxMenuItem_GetText")
	(:arguments (_obj (ffi:c-pointer NIL))
		(_buf (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxMenuItem_GetLabelFromText
	(:name "wxMenuItem_GetLabelFromText")
	(:arguments (text (ffi:c-pointer NIL))
		(_buf (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxMenuItem_SetCheckable
	(:name "wxMenuItem_SetCheckable")
	(:arguments (_obj (ffi:c-pointer NIL))
		(checkable ffi:int))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxMenuItem_IsCheckable
	(:name "wxMenuItem_IsCheckable")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxMenuItem_IsSubMenu
	(:name "wxMenuItem_IsSubMenu")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxMenuItem_SetSubMenu
	(:name "wxMenuItem_SetSubMenu")
	(:arguments (_obj (ffi:c-pointer NIL))
		(menu (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxMenuItem_GetSubMenu
	(:name "wxMenuItem_GetSubMenu")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type (ffi:c-pointer NIL))
	(:library +library-name+))

(ffi:def-call-out wxMenuItem_Enable
	(:name "wxMenuItem_Enable")
	(:arguments (_obj (ffi:c-pointer NIL))
		(enable ffi:int))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxMenuItem_IsEnabled
	(:name "wxMenuItem_IsEnabled")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxMenuItem_Check
	(:name "wxMenuItem_Check")
	(:arguments (_obj (ffi:c-pointer NIL))
		(check ffi:int))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxMenuItem_IsChecked
	(:name "wxMenuItem_IsChecked")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxMenuItem_SetHelp
	(:name "wxMenuItem_SetHelp")
	(:arguments (_obj (ffi:c-pointer NIL))
		(str (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxMenuItem_GetHelp
	(:name "wxMenuItem_GetHelp")
	(:arguments (_obj (ffi:c-pointer NIL))
		(_buf (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

;;;wxMenu.lisp
;;;License  : wxWindows License 3.1
;;;Author(s) : Surendra Singhi (surendra@asu.edu) 
;;;Copyright (C) 2005 Surendra Singhi 
;;;See the file LICENSE for information on usage and redistribution.
;;;
;;; $Header$
;;;

(defpackage :wxMenu
    (:use :common-lisp :ffi :wxMenuItem :wxCL)
  (:export :wxMenu_Create
	   :wxMenu_DeletePointer
	   :wxMenu_AppendSeparator
	   :wxMenu_Append
	   :wxMenu_AppendSub
	   :wxMenu_AppendItem
	   :wxMenu_AppendRadioItem
	   :wxMenu_AppendCheckItem
	   :wxMenu_Break
	   :wxMenu_GetMenuBar
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
	   :wxMenu_SetEventHandler
	   :wxMenu_SetInvokingWindow
	   :wxMenu_GetInvokingWindow
	   :wxMenu_GetStyle
	   :wxMenu_UpdateUI
	   :wxMenu_IsAttached
	   :wxMenu_SetParent
	   :wxMenu_GetParent
	   :wxCL-create-menu
	   :wxCL-append-menu-item
	   ))

(in-package :wxMenu)

(ffi:default-foreign-language :stdc)

(ffi:def-call-out wxMenu_Create
    (:name "wxMenu_Create")
  (:arguments (title ffi:c-string)
	      (style ffi:long))
  (:return-type (ffi:c-pointer NIL))
  (:library +library-name+))

(ffi:def-call-out wxMenu_DeletePointer
    (:name "wxMenu_DeletePointer")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:library +library-name+))

(ffi:def-call-out wxMenu_AppendSeparator
    (:name "wxMenu_AppendSeparator")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:library +library-name+))

(ffi:def-call-out wxMenu_Append
    (:name "wxMenu_Append")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (id ffi:int)
	      (text ffi:c-string)
	      (help ffi:c-string))
  (:library +library-name+))

(ffi:def-call-out wxMenu_AppendSub
    (:name "wxMenu_AppendSub")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (id ffi:int)
	      (text ffi:c-string)
	      (submenu (ffi:c-pointer NIL))
	      (help ffi:c-string))
  (:library +library-name+))

(ffi:def-call-out wxMenu_AppendItem
    (:name "wxMenu_AppendItem")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (_itm (ffi:c-pointer NIL)))
  (:library +library-name+))

(ffi:def-call-out wxMenu_Break
    (:name "wxMenu_Break")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:library +library-name+))

(ffi:def-call-out wxMenu_Insert
    (:name "wxMenu_Insert")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (pos ffi:uint)
	      (id ffi:int)
	      (text ffi:c-string)
	      (help ffi:c-string))
  (:library +library-name+))

(ffi:def-call-out wxMenu_InsertSub
    (:name "wxMenu_InsertSub")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (pos  ffi:uint)
	      (id ffi:int)
	      (text ffi:c-string)
	      (submenu (ffi:c-pointer NIL))
	      (help ffi:c-string))
  (:library +library-name+))

(ffi:def-call-out wxMenu_InsertItem
    (:name "wxMenu_InsertItem")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (pos ffi:uint)
	      (_itm (ffi:c-pointer NIL)))
  (:library +library-name+))

(ffi:def-call-out wxMenu_InsertRadioItem
    (:name "wxMenu_InsertRadioItem")
  (:arguments (self (ffi:c-pointer NIL))
	      (pos ffi:uint)
	      (id ffi:int)
	      (text ffi:c-string)
	      (help ffi:c-string))
  (:library +library-name+))

(ffi:def-call-out wxMenu_InsertCheckItem
    (:name "wxMenu_InsertCheckItem")
  (:arguments (self (ffi:c-pointer NIL))
	      (pos ffi:uint)
	      (id ffi:int)
	      (text ffi:c-string)
	      (help ffi:c-string))
  (:library +library-name+))

(ffi:def-call-out wxMenu_Prepend
    (:name "wxMenu_Prepend")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (id ffi:int)
	      (text ffi:c-string)
	      (help ffi:c-string)
	      (isCheckable ffi:int))
  (:library +library-name+))

(ffi:def-call-out wxMenu_PrependSub
    (:name "wxMenu_PrependSub")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (id ffi:int)
	      (text ffi:c-string)
	      (submenu (ffi:c-pointer NIL))
	      (help ffi:c-string))
  (:library +library-name+))

(ffi:def-call-out wxMenu_PrependItem
    (:name "wxMenu_PrependItem")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (_itm (ffi:c-pointer NIL)))
  (:library +library-name+))

(ffi:def-call-out wxMenu_PrependRadioItem
    (:name "wxMenu_PrependRadioItem")
  (:arguments (self (ffi:c-pointer NIL))
	      (id ffi:int)
	      (text ffi:c-string)
	      (help ffi:c-string))
  (:library +library-name+))

(ffi:def-call-out wxMenu_PrependCheckItem
    (:name "wxMenu_PrependCheckItem")
  (:arguments (self (ffi:c-pointer NIL))
	      (id ffi:int)
	      (text ffi:c-string)
	      (help ffi:c-string))
  (:library +library-name+))

(ffi:def-call-out wxMenu_RemoveByItem
    (:name "wxMenu_RemoveByItem")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (item (ffi:c-pointer NIL)))
  (:library +library-name+))

(ffi:def-call-out wxMenu_RemoveById
    (:name "wxMenu_RemoveById")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (id ffi:int))
  (:return-type (ffi:c-pointer NIL))
  (:library +library-name+))

(ffi:def-call-out wxMenu_DeleteById
    (:name "wxMenu_DeleteById")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (id ffi:int))
  (:library +library-name+))

(ffi:def-call-out wxMenu_DeleteByItem
    (:name "wxMenu_DeleteByItem")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (_itm (ffi:c-pointer NIL)))
  (:library +library-name+))

(ffi:def-call-out wxMenu_DestroyById
    (:name "wxMenu_DestroyById")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (id ffi:int))
  (:library +library-name+))

(ffi:def-call-out wxMenu_DestroyByItem
    (:name "wxMenu_DestroyByItem")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (_itm (ffi:c-pointer NIL)))
  (:library +library-name+))

(ffi:def-call-out wxMenu_GetMenuItemCount
    (:name "wxMenu_GetMenuItemCount")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type ffi:uint)
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
  (:library +library-name+))

(ffi:def-call-out wxMenu_GetLabel
    (:name "wxMenu_GetLabel")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (id ffi:int))
  (:return-type ffi:c-string :malloc-free)
  (:library +library-name+))

(ffi:def-call-out wxMenu_SetHelpString
    (:name "wxMenu_SetHelpString")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (id ffi:int)
	      (helpString ffi:c-string))
  (:library +library-name+))

(ffi:def-call-out wxMenu_GetHelpString
    (:name "wxMenu_GetHelpString")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (id ffi:int))
  (:return-type  ffi:c-string :malloc-free)
  (:library +library-name+))

(ffi:def-call-out wxMenu_SetTitle
    (:name "wxMenu_SetTitle")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (title ffi:c-string))
  (:library +library-name+))

(ffi:def-call-out wxMenu_GetTitle
    (:name "wxMenu_GetTitle")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type ffi:c-string :malloc-free)
  (:library +library-name+))

(ffi:def-call-out wxMenu_SetEventHandler
    (:name "wxMenu_SetEventHandler")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (handler (ffi:c-pointer NIL)))
  (:library +library-name+))

(ffi:def-call-out wxMenu_SetInvokingWindow
    (:name "wxMenu_SetInvokingWindow")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (win (ffi:c-pointer NIL)))
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
  (:library +library-name+))

(ffi:def-call-out wxMenu_GetParent
    (:name "wxMenu_GetParent")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type (ffi:c-pointer NIL))
  (:library +library-name+))

(ffi:def-call-out wxMenu_GetMenuBar
    (:name "wxMenu_GetMenuBar")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type (ffi:c-pointer NIL))
  (:library +library-name+))

(ffi:def-call-out wxMenu_AppendRadioItem
    (:name "wxMenu_AppendRadioItem")
  (:arguments (self (ffi:c-pointer NIL))
	      (id ffi:int)
	      (text ffi:c-string)
	      (help ffi:c-string))
  (:library +library-name+))

(ffi:def-call-out wxMenu_AppendCheckItem
    (:name "wxMenu_AppendCheckItem")
  (:arguments (self (ffi:c-pointer NIL))
	      (id ffi:int)
	      (text ffi:c-string)
	      (help ffi:c-string))
  (:library +library-name+))

(defmacro wxCL-append-menu-item (menu &key (id -1) (item "") (helpString "")
				      (kind wxITEM_NORMAL) (sub-menu nil))
  (case kind
    (wxITEM_SEPARATOR `(wxMenu_AppendSeparator ,menu))
    (wxITEM_SubMenu `(wxMenu_AppendSub ,menu ,id ,item ,sub-menu ,helpstring))
    (otherwise `(wxMenu_Append ,menu ,id ,item ,helpstring))))

(defmacro wxCL-create-menu ((&optional (title "") (style 0)) &body body)
  (let ((menu (gensym)))
    `(progn
      (let ((,menu (wxMenu_Create ,title ,style)))
	,@(mapcar (lambda (x) `(wxCL-append-menu-item ,menu ,@x)) body)
	,menu))))




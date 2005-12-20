;;;wxMenu.lisp
;;;License  : wxWindows License 3.1
;;;Author(s) : Surendra Singhi (surendra@asu.edu) 
;;;Copyright (C) 2005 Surendra Singhi 
;;;See the file LICENSE for information on usage and redistribution.
;;;
;;; $Header$
;;;

(in-package :wxcl-menus)

(defcvar ("hasDefs" hasDefs)
 :pointer)

(defcfun ("wxMenu_Create" wxMenu_Create) :pointer
  (title :string)
  (style :long))

(defcfun ("wxMenu_DeletePointer" wxMenu_DeletePointer) :void
  (_obj :pointer))

(defcfun ("wxMenu_AppendSeparator" wxMenu_AppendSeparator) :void
  (_obj :pointer))

(defcfun ("wxMenu_Append" wxMenu_Append) :void
  (_obj :pointer)
  (id :int)
  (text :string)
  (help :string))

(defcfun ("wxMenu_AppendCheckItem" wxMenu_AppendCheckItem) :void
  (_obj :pointer)
  (id :int)
  (text :string)
  (help :string))

(defcfun ("wxMenu_AppendRadioItem" wxMenu_AppendRadioItem) :void
  (self :pointer)
  (id :int)
  (text :string)
  (help :string))

(defcfun ("wxMenu_AppendSub" wxMenu_AppendSub) :void
  (_obj :pointer)
  (id :int)
  (text :string)
  (submenu :pointer)
  (help :string))

(defcfun ("wxMenu_AppendItem" wxMenu_AppendItem) :void
  (_obj :pointer)
  (_itm :pointer))

(defcfun ("wxMenu_Break" wxMenu_Break) :void
  (_obj :pointer))

(defcfun ("wxMenu_Insert" wxMenu_Insert) :void
  (_obj :pointer)
  (pos :pointer)
  (id :int)
  (text :string)
  (help :string))

(defcfun ("wxMenu_InsertSub" wxMenu_InsertSub) :void
  (_obj :pointer)
  (pos :pointer)
  (id :int)
  (text :string)
  (submenu :pointer)
  (help :string))

(defcfun ("wxMenu_InsertCheckItem" wxMenu_InsertCheckItem) :void
  (_obj :pointer)
  (pos :pointer)
  (id :int)
  (text :string)
  (help :string))

(defcfun ("wxMenu_InsertRadioItem" wxMenu_InsertRadioItem) :void
  (self :pointer)
  (pos :pointer)
  (id :int)
  (text :string)
  (help :string))

(defcfun ("wxMenu_InsertItem" wxMenu_InsertItem) :void
  (_obj :pointer)
  (pos :pointer)
  (_itm :pointer))

(defcfun ("wxMenu_Prepend" wxMenu_Prepend) :void
  (_obj :pointer)
  (id :int)
  (text :string)
  (help :string))

(defcfun ("wxMenu_PrependSub" wxMenu_PrependSub) :void
  (_obj :pointer)
  (id :int)
  (text :string)
  (submenu :pointer)
  (help :string))

(defcfun ("wxMenu_PrependItem" wxMenu_PrependItem) :void
  (_obj :pointer)
  (_itm :pointer))

(defcfun ("wxMenu_PrependCheckItem" wxMenu_PrependCheckItem) :void
  (_obj :pointer)
  (id :int)
  (text :string)
  (help :string))

(defcfun ("wxMenu_PrependRadioItem" wxMenu_PrependRadioItem) :void
  (self :pointer)
  (id :int)
  (text :string)
  (help :string))

(defcfun ("wxMenu_RemoveByItem" wxMenu_RemoveByItem) :void
  (_obj :pointer)
  (item :pointer))

(defcfun ("wxMenu_RemoveById" wxMenu_RemoveById) :pointer
  (_obj :pointer)
  (id :int))

(defcfun ("wxMenu_DeleteById" wxMenu_DeleteById) :void
  (_obj :pointer)
  (id :int))

(defcfun ("wxMenu_DeleteByItem" wxMenu_DeleteByItem) :void
  (_obj :pointer)
  (_itm :pointer))

(defcfun ("wxMenu_DestroyById" wxMenu_DestroyById) :void
  (_obj :pointer)
  (id :int))

(defcfun ("wxMenu_DestroyByItem" wxMenu_DestroyByItem) :void
  (_obj :pointer)
  (_itm :pointer))

(defcfun ("wxMenu_GetMenuItemCount" wxMenu_GetMenuItemCount) :pointer
  (_obj :pointer))

(defcfun ("wxMenu_GetMenuItems" wxMenu_GetMenuItems) :int
  (_obj :pointer)
  (_lst :pointer))

(defcfun ("wxMenu_FindItemByLabel" wxMenu_FindItemByLabel) :int
  (_obj :pointer)
  (itemString :string))

(defcfun ("wxMenu_FindItem" wxMenu_FindItem) :pointer
  (_obj :pointer)
  (id :int)
  (menu :pointer))

(defcfun ("wxMenu_Enable" wxMenu_Enable) :void
  (_obj :pointer)
  (id :int)
  (enable :int))

(defcfun ("wxMenu_IsEnabled" wxMenu_IsEnabled) :int
  (_obj :pointer)
  (id :int))

(defcfun ("wxMenu_Check" wxMenu_Check) :void
  (_obj :pointer)
  (id :int)
  (check :int))

(defcfun ("wxMenu_IsChecked" wxMenu_IsChecked) :int
  (_obj :pointer)
  (id :int))

(defcfun ("wxMenu_SetLabel" wxMenu_SetLabel) :void
  (_obj :pointer)
  (id :int)
  (label :string))

(defcfun ("wxMenu_GetLabel" wxMenu_GetLabel) :lisp-string
  (_obj :pointer)
  (id :int))

(defcfun ("wxMenu_SetHelpString" wxMenu_SetHelpString) :void
  (_obj :pointer)
  (id :int)
  (helpString :string))

(defcfun ("wxMenu_GetHelpString" wxMenu_GetHelpString) :lisp-string
  (_obj :pointer)
  (id :int))

(defcfun ("wxMenu_SetTitle" wxMenu_SetTitle) :void
  (_obj :pointer)
  (title :string))

(defcfun ("wxMenu_GetTitle" wxMenu_GetTitle) :lisp-string
  (_obj :pointer))

(defcfun ("wxMenu_SetEventHandler" wxMenu_SetEventHandler) :void
  (_obj :pointer)
  (handler :pointer))

(defcfun ("wxMenu_SetInvokingWindow" wxMenu_SetInvokingWindow) :void
  (_obj :pointer)
  (win :pointer))

(defcfun ("wxMenu_GetInvokingWindow" wxMenu_GetInvokingWindow) :pointer
  (_obj :pointer))

(defcfun ("wxMenu_GetStyle" wxMenu_GetStyle) :int
  (_obj :pointer))

(defcfun ("wxMenu_UpdateUI" wxMenu_UpdateUI) :void
  (_obj :pointer)
  (source :pointer))

(defcfun ("wxMenu_IsAttached" wxMenu_IsAttached) :int
  (_obj :pointer))

(defcfun ("wxMenu_SetParent" wxMenu_SetParent) :void
  (_obj :pointer)
  (parent :pointer))

(defcfun ("wxMenu_GetParent" wxMenu_GetParent) :pointer
  (_obj :pointer))


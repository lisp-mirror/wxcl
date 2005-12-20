;;;wxListCtrl.lisp
;;;License  : GNU General Public License (GPL)
;;;Author(s) : Surendra Singhi (surendra@asu.edu) 
;;;Copyright (C) 2005 Surendra Singhi 
;;;See the file LICENSE for information on usage and redistribution.
;;;
;;; $Header$
;;;
(in-package :wxcl-controls)

(defcstruct EiffelSort

	(obj :pointer)
	(fnc :pointer))

(defcfun ("wxListItem_Create" wxListItem_Create) :pointer)

(defcfun ("wxListItem_Delete" wxListItem_Delete) :void
  (_obj :pointer))

(defcfun ("wxListItem_Clear" wxListItem_Clear) :void
  (_obj :pointer))

(defcfun ("wxListItem_ClearAttributes" wxListItem_ClearAttributes) :void
  (_obj :pointer))

(defcfun ("wxListItem_SetMask" wxListItem_SetMask) :void
  (_obj :pointer)
  (mask :int))

(defcfun ("wxListItem_SetId" wxListItem_SetId) :void
  (_obj :pointer)
  (id :int))

(defcfun ("wxListItem_SetColumn" wxListItem_SetColumn) :void
  (_obj :pointer)
  (col :int))

(defcfun ("wxListItem_SetState" wxListItem_SetState) :void
  (_obj :pointer)
  (state :int))

(defcfun ("wxListItem_SetStateMask" wxListItem_SetStateMask) :void
  (_obj :pointer)
  (stateMask :int))

(defcfun ("wxListItem_SetText" wxListItem_SetText) :void
  (_obj :pointer)
  (text :pointer))

(defcfun ("wxListItem_SetImage" wxListItem_SetImage) :void
  (_obj :pointer)
  (image :int))

(defcfun ("wxListItem_SetData" wxListItem_SetData) :void
  (_obj :pointer)
  (data :int))

(defcfun ("wxListItem_SetDataPointer" wxListItem_SetDataPointer) :void
  (_obj :pointer)
  (data :pointer))

(defcfun ("wxListItem_SetWidth" wxListItem_SetWidth) :void
  (_obj :pointer)
  (width :int))

(defcfun ("wxListItem_SetAlign" wxListItem_SetAlign) :void
  (_obj :pointer)
  (align :int))

(defcfun ("wxListItem_SetTextColour" wxListItem_SetTextColour) :void
  (_obj :pointer)
  (colText :pointer))

(defcfun ("wxListItem_SetBackgroundColour" wxListItem_SetBackgroundColour) :void
  (_obj :pointer)
  (colBack :pointer))

(defcfun ("wxListItem_SetFont" wxListItem_SetFont) :void
  (_obj :pointer)
  (font :pointer))

(defcfun ("wxListItem_GetMask" wxListItem_GetMask) :int
  (_obj :pointer))

(defcfun ("wxListItem_GetId" wxListItem_GetId) :int
  (_obj :pointer))

(defcfun ("wxListItem_GetColumn" wxListItem_GetColumn) :int
  (_obj :pointer))

(defcfun ("wxListItem_GetState" wxListItem_GetState) :int
  (_obj :pointer))

(defcfun ("wxListItem_GetText" wxListItem_GetText) :lisp-string
  (_obj :pointer))

(defcfun ("wxListItem_GetImage" wxListItem_GetImage) :int
  (_obj :pointer))

(defcfun ("wxListItem_GetData" wxListItem_GetData) :int
  (_obj :pointer))

(defcfun ("wxListItem_GetWidth" wxListItem_GetWidth) :int
  (_obj :pointer))

(defcfun ("wxListItem_GetAlign" wxListItem_GetAlign) :int
  (_obj :pointer))

(defcfun ("wxListItem_GetAttributes" wxListItem_GetAttributes) :pointer
  (_obj :pointer))

(defcfun ("wxListItem_HasAttributes" wxListItem_HasAttributes) :int
  (_obj :pointer))

(defcfun ("wxListItem_GetTextColour" wxListItem_GetTextColour) :pointer
  (_obj :pointer))

(defcfun ("wxListItem_GetBackgroundColour" wxListItem_GetBackgroundColour) :pointer
  (_obj :pointer))

(defcfun ("wxListItem_GetFont" wxListItem_GetFont) :pointer
  (_obj :pointer))

(defcfun ("wxListCtrl_Create" wxListCtrl_Create) :pointer
  (_prt :pointer)
  (_id :int)
  (_lft :int)
  (_top :int)
  (_wdt :int)
  (_hgt :int)
  (_stl :int))

(defcfun ("wxListCtrl_SetForegroundColour" wxListCtrl_SetForegroundColour) :int
  (_obj :pointer)
  (col :pointer))

(defcfun ("wxListCtrl_SetBackgroundColour" wxListCtrl_SetBackgroundColour) :int
  (_obj :pointer)
  (col :pointer))

(defcfun ("wxListCtrl_GetColumn" wxListCtrl_GetColumn) :int
  (_obj :pointer)
  (col :int)
  (item :pointer))

(defcfun ("wxListCtrl_SetColumn" wxListCtrl_SetColumn) :int
  (_obj :pointer)
  (col :int)
  (item :pointer))

(defcfun ("wxListCtrl_GetColumnWidth" wxListCtrl_GetColumnWidth) :int
  (_obj :pointer)
  (col :int))

(defcfun ("wxListCtrl_SetColumnWidth" wxListCtrl_SetColumnWidth) :int
  (_obj :pointer)
  (col :int)
  (width :int))

(defcfun ("wxListCtrl_GetCountPerPage" wxListCtrl_GetCountPerPage) :int
  (_obj :pointer))

(defcfun ("wxListCtrl_GetEditControl" wxListCtrl_GetEditControl) :pointer
  (_obj :pointer))

(defcfun ("wxListCtrl_GetItem" wxListCtrl_GetItem) :int
  (_obj :pointer)
  (info :pointer))

(defcfun ("wxListCtrl_SetItemFromInfo" wxListCtrl_SetItemFromInfo) :int
  (_obj :pointer)
  (info :pointer))

(defcfun ("wxListCtrl_SetItem" wxListCtrl_SetItem) :int
  (_obj :pointer)
  (index :int)
  (col :int)
  (label :pointer)
  (imageId :int))

(defcfun ("wxListCtrl_GetItemState" wxListCtrl_GetItemState) :int
  (_obj :pointer)
  (item :int)
  (stateMask :int))

(defcfun ("wxListCtrl_SetItemState" wxListCtrl_SetItemState) :int
  (_obj :pointer)
  (item :int)
  (state :int)
  (stateMask :int))

(defcfun ("wxListCtrl_SetItemImage" wxListCtrl_SetItemImage) :int
  (_obj :pointer)
  (item :int)
  (image :int)
  (selImage :int))

(defcfun ("wxListCtrl_GetItemText" wxListCtrl_GetItemText) :lisp-string
  (_obj :pointer)
  (item :int))

(defcfun ("wxListCtrl_SetItemText" wxListCtrl_SetItemText) :void
  (_obj :pointer)
  (item :int)
  (str :pointer))

(defcfun ("wxListCtrl_GetItemData" wxListCtrl_GetItemData) :int
  (_obj :pointer)
  (item :int))

(defcfun ("wxListCtrl_SetItemData" wxListCtrl_SetItemData) :int
  (_obj :pointer)
  (item :int)
  (data :int))

(defcfun ("wxListCtrl_GetItemRect" wxListCtrl_GetItemRect) :int
  (_obj :pointer)
  (item :int)
  (code :int)
  (x :pointer)
  (y :pointer)
  (w :pointer)
  (h :pointer))

(defcfun ("wxListCtrl_GetItemPosition" wxListCtrl_GetItemPosition) :int
  (_obj :pointer)
  (item :int)
  (x :pointer)
  (y :pointer))

(defcfun ("wxListCtrl_SetItemPosition" wxListCtrl_SetItemPosition) :int
  (_obj :pointer)
  (item :int)
  (x :int)
  (y :int))

(defcfun ("wxListCtrl_GetItemCount" wxListCtrl_GetItemCount) :int
  (_obj :pointer))

(defcfun ("wxListCtrl_GetColumnCount" wxListCtrl_GetColumnCount) :int
  (_obj :pointer))

(defcfun ("wxListCtrl_GetItemSpacing" wxListCtrl_GetItemSpacing) :int
  (_obj :pointer)
  (isSmall :int))

(defcfun ("wxListCtrl_GetSelectedItemCount" wxListCtrl_GetSelectedItemCount) :int
  (_obj :pointer))

(defcfun ("wxListCtrl_GetTextColour" wxListCtrl_GetTextColour) :void
  (_obj :pointer)
  (colour :pointer))

(defcfun ("wxListCtrl_SetTextColour" wxListCtrl_SetTextColour) :void
  (_obj :pointer)
  (col :pointer))

(defcfun ("wxListCtrl_GetTopItem" wxListCtrl_GetTopItem) :int
  (_obj :pointer))

(defcfun ("wxListCtrl_SetSingleStyle" wxListCtrl_SetSingleStyle) :void
  (_obj :pointer)
  (style :int)
  (add :int))

(defcfun ("wxListCtrl_SetWindowStyleFlag" wxListCtrl_SetWindowStyleFlag) :void
  (_obj :pointer)
  (style :int))

(defcfun ("wxListCtrl_GetNextItem" wxListCtrl_GetNextItem) :int
  (_obj :pointer)
  (item :int)
  (geometry :int)
  (state :int))

(defcfun ("wxListCtrl_GetImageList" wxListCtrl_GetImageList) :pointer
  (_obj :pointer)
  (which :int))

(defcfun ("wxListCtrl_SetImageList" wxListCtrl_SetImageList) :void
  (_obj :pointer)
  (imageList :pointer)
  (which :int))

(defcfun ("wxListCtrl_Arrange" wxListCtrl_Arrange) :int
  (_obj :pointer)
  (flag :int))

(defcfun ("wxListCtrl_DeleteItem" wxListCtrl_DeleteItem) :int
  (_obj :pointer)
  (item :int))

(defcfun ("wxListCtrl_DeleteAllItems" wxListCtrl_DeleteAllItems) :int
  (_obj :pointer))

(defcfun ("wxListCtrl_DeleteColumn" wxListCtrl_DeleteColumn) :int
  (_obj :pointer)
  (col :int))

(defcfun ("wxListCtrl_DeleteAllColumns" wxListCtrl_DeleteAllColumns) :int
  (_obj :pointer))

(defcfun ("wxListCtrl_ClearAll" wxListCtrl_ClearAll) :void
  (_obj :pointer))

(defcfun ("wxListCtrl_EditLabel" wxListCtrl_EditLabel) :void
  (_obj :pointer)
  (item :int))

(defcfun ("wxListCtrl_EndEditLabel" wxListCtrl_EndEditLabel) :int
  (_obj :pointer)
  (cancel :int))

(defcfun ("wxListCtrl_EnsureVisible" wxListCtrl_EnsureVisible) :int
  (_obj :pointer)
  (item :int))

(defcfun ("wxListCtrl_FindItem" wxListCtrl_FindItem) :int
  (_obj :pointer)
  (start :int)
  (str :pointer)
  (partial :int))

(defcfun ("wxListCtrl_FindItemByData" wxListCtrl_FindItemByData) :int
  (_obj :pointer)
  (start :int)
  (data :int))

(defcfun ("wxListCtrl_FindItemByPosition" wxListCtrl_FindItemByPosition) :int
  (_obj :pointer)
  (start :int)
  (x :int)
  (y :int)
  (direction :int))

(defcfun ("wxListCtrl_HitTest" wxListCtrl_HitTest) :int
  (_obj :pointer)
  (x :int)
  (y :int)
  (flags :pointer))

(defcfun ("wxListCtrl_InsertItem" wxListCtrl_InsertItem) :int
  (_obj :pointer)
  (info :pointer))

(defcfun ("wxListCtrl_InsertItemWithData" wxListCtrl_InsertItemWithData) :int
  (_obj :pointer)
  (index :int)
  (label :pointer))

(defcfun ("wxListCtrl_InsertItemWithImage" wxListCtrl_InsertItemWithImage) :int
  (_obj :pointer)
  (index :int)
  (imageIndex :int))

(defcfun ("wxListCtrl_InsertItemWithLabel" wxListCtrl_InsertItemWithLabel) :int
  (_obj :pointer)
  (index :int)
  (label :pointer)
  (imageIndex :int))

(defcfun ("wxListCtrl_InsertColumnFromInfo" wxListCtrl_InsertColumnFromInfo) :int
  (_obj :pointer)
  (col :int)
  (info :pointer))

(defcfun ("wxListCtrl_InsertColumn" wxListCtrl_InsertColumn) :int
  (_obj :pointer)
  (col :int)
  (heading :pointer)
  (format :int)
  (width :int))

(defcfun ("wxListCtrl_ScrollList" wxListCtrl_ScrollList) :int
  (_obj :pointer)
  (dx :int)
  (dy :int))

(defcfun ("wxListCtrl_SortItems" wxListCtrl_SortItems) :int
  (_obj :pointer)
  (fnc :pointer)
  (obj :pointer))

(defcfun ("wxListCtrl_UpdateStyle" wxListCtrl_UpdateStyle) :void
  (_obj :pointer))

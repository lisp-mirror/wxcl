;;;wxListctrl.lisp
;;;License   : BSD-style
;;;Author(s) : Surendra Singhi (surendra@asu.edu) 
;;;Copyright (C) 2005 Surendra Singhi 
;;;See the file LICENSE for information on usage and redistribution.
;;;
;;; $Header$
;;;
;; This is an automatically generated file. 
;;Make changes as you feel are necessary (but remember if you try to regenerate this file, your changes will be lost). 

(defpackage "wxListctrl"
  (:use :common-lisp :ffi)
	:make-EiffelSort
	:EiffelSort-obj
	:EiffelSort-fnc
	:wxListItem_Create
	:wxListItem_Delete
	:wxListItem_Clear
	:wxListItem_ClearAttributes
	:wxListItem_SetMask
	:wxListItem_SetId
	:wxListItem_SetColumn
	:wxListItem_SetState
	:wxListItem_SetStateMask
	:wxListItem_SetText
	:wxListItem_SetImage
	:wxListItem_SetData
	:wxListItem_SetDataPointer
	:wxListItem_SetWidth
	:wxListItem_SetAlign
	:wxListItem_SetTextColour
	:wxListItem_SetBackgroundColour
	:wxListItem_SetFont
	:wxListItem_GetMask
	:wxListItem_GetId
	:wxListItem_GetColumn
	:wxListItem_GetState
	:wxListItem_GetText
	:wxListItem_GetImage
	:wxListItem_GetData
	:wxListItem_GetWidth
	:wxListItem_GetAlign
	:wxListItem_GetAttributes
	:wxListItem_HasAttributes
	:wxListItem_GetTextColour
	:wxListItem_GetBackgroundColour
	:wxListItem_GetFont
	:wxListCtrl_Create
	:wxListCtrl_SetForegroundColour
	:wxListCtrl_SetBackgroundColour
	:wxListCtrl_GetColumn
	:wxListCtrl_SetColumn
	:wxListCtrl_GetColumnWidth
	:wxListCtrl_SetColumnWidth
	:wxListCtrl_GetCountPerPage
	:wxListCtrl_GetEditControl
	:wxListCtrl_GetItem
	:wxListCtrl_SetItemFromInfo
	:wxListCtrl_SetItem
	:wxListCtrl_GetItemState
	:wxListCtrl_SetItemState
	:wxListCtrl_SetItemImage
	:wxListCtrl_GetItemText
	:wxListCtrl_SetItemText
	:wxListCtrl_GetItemData
	:wxListCtrl_SetItemData
	:wxListCtrl_GetItemRect
	:wxListCtrl_GetItemPosition
	:wxListCtrl_SetItemPosition
	:wxListCtrl_GetItemCount
	:wxListCtrl_GetColumnCount
	:wxListCtrl_GetItemSpacing
	:wxListCtrl_GetSelectedItemCount
	:wxListCtrl_GetTextColour
	:wxListCtrl_SetTextColour
	:wxListCtrl_GetTopItem
	:wxListCtrl_SetSingleStyle
	:wxListCtrl_SetWindowStyleFlag
	:wxListCtrl_GetNextItem
	:wxListCtrl_GetImageList
	:wxListCtrl_SetImageList
	:wxListCtrl_Arrange
	:wxListCtrl_DeleteItem
	:wxListCtrl_DeleteAllItems
	:wxListCtrl_DeleteColumn
	:wxListCtrl_DeleteAllColumns
	:wxListCtrl_ClearAll
	:wxListCtrl_EditLabel
	:wxListCtrl_EndEditLabel
	:wxListCtrl_EnsureVisible
	:wxListCtrl_FindItem
	:wxListCtrl_FindItemByData
	:wxListCtrl_FindItemByPosition
	:wxListCtrl_HitTest
	:wxListCtrl_InsertItem
	:wxListCtrl_InsertItemWithData
	:wxListCtrl_InsertItemWithImage
	:wxListCtrl_InsertItemWithLabel
	:wxListCtrl_InsertColumnFromInfo
	:wxListCtrl_InsertColumn
	:wxListCtrl_ScrollList
	:wxListCtrl_SortItems
	:wxListCtrl_UpdateStyle)

(in-package :wxListctrl)

(ffi:def-c-struct EiffelSort
	(obj :type (ffi:c-pointer NIL))
	(fnc :type EiffelSortFunc))

(ffi:def-call-out wxListItem_Create
	(:name "wxListItem_Create")
	(:return-type (ffi:c-pointer NIL))
	(:library +library-name+))

(ffi:def-call-out wxListItem_Delete
	(:name "wxListItem_Delete")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxListItem_Clear
	(:name "wxListItem_Clear")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxListItem_ClearAttributes
	(:name "wxListItem_ClearAttributes")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxListItem_SetMask
	(:name "wxListItem_SetMask")
	(:arguments (_obj (ffi:c-pointer NIL))
		(mask ffi:int))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxListItem_SetId
	(:name "wxListItem_SetId")
	(:arguments (_obj (ffi:c-pointer NIL))
		(id ffi:int))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxListItem_SetColumn
	(:name "wxListItem_SetColumn")
	(:arguments (_obj (ffi:c-pointer NIL))
		(col ffi:int))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxListItem_SetState
	(:name "wxListItem_SetState")
	(:arguments (_obj (ffi:c-pointer NIL))
		(state ffi:int))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxListItem_SetStateMask
	(:name "wxListItem_SetStateMask")
	(:arguments (_obj (ffi:c-pointer NIL))
		(stateMask ffi:int))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxListItem_SetText
	(:name "wxListItem_SetText")
	(:arguments (_obj (ffi:c-pointer NIL))
		(text (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxListItem_SetImage
	(:name "wxListItem_SetImage")
	(:arguments (_obj (ffi:c-pointer NIL))
		(image ffi:int))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxListItem_SetData
	(:name "wxListItem_SetData")
	(:arguments (_obj (ffi:c-pointer NIL))
		(data ffi:int))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxListItem_SetDataPointer
	(:name "wxListItem_SetDataPointer")
	(:arguments (_obj (ffi:c-pointer NIL))
		(data (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxListItem_SetWidth
	(:name "wxListItem_SetWidth")
	(:arguments (_obj (ffi:c-pointer NIL))
		(width ffi:int))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxListItem_SetAlign
	(:name "wxListItem_SetAlign")
	(:arguments (_obj (ffi:c-pointer NIL))
		(align ffi:int))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxListItem_SetTextColour
	(:name "wxListItem_SetTextColour")
	(:arguments (_obj (ffi:c-pointer NIL))
		(colText (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxListItem_SetBackgroundColour
	(:name "wxListItem_SetBackgroundColour")
	(:arguments (_obj (ffi:c-pointer NIL))
		(colBack (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxListItem_SetFont
	(:name "wxListItem_SetFont")
	(:arguments (_obj (ffi:c-pointer NIL))
		(font (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxListItem_GetMask
	(:name "wxListItem_GetMask")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxListItem_GetId
	(:name "wxListItem_GetId")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxListItem_GetColumn
	(:name "wxListItem_GetColumn")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxListItem_GetState
	(:name "wxListItem_GetState")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxListItem_GetText
	(:name "wxListItem_GetText")
	(:arguments (_obj (ffi:c-pointer NIL))
		(_buf (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxListItem_GetImage
	(:name "wxListItem_GetImage")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxListItem_GetData
	(:name "wxListItem_GetData")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxListItem_GetWidth
	(:name "wxListItem_GetWidth")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxListItem_GetAlign
	(:name "wxListItem_GetAlign")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxListItem_GetAttributes
	(:name "wxListItem_GetAttributes")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type (ffi:c-pointer NIL))
	(:library +library-name+))

(ffi:def-call-out wxListItem_HasAttributes
	(:name "wxListItem_HasAttributes")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxListItem_GetTextColour
	(:name "wxListItem_GetTextColour")
	(:arguments (_obj (ffi:c-pointer NIL))
		(_ref (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxListItem_GetBackgroundColour
	(:name "wxListItem_GetBackgroundColour")
	(:arguments (_obj (ffi:c-pointer NIL))
		(_ref (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxListItem_GetFont
	(:name "wxListItem_GetFont")
	(:arguments (_obj (ffi:c-pointer NIL))
		(_ref (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxListCtrl_Create
	(:name "wxListCtrl_Create")
	(:arguments (_prt (ffi:c-pointer NIL))
		(_id ffi:int)
		(_lft ffi:int)
		(_top ffi:int)
		(_wdt ffi:int)
		(_hgt ffi:int)
		(_stl ffi:int))
	(:return-type (ffi:c-pointer NIL))
	(:library +library-name+))

(ffi:def-call-out wxListCtrl_SetForegroundColour
	(:name "wxListCtrl_SetForegroundColour")
	(:arguments (_obj (ffi:c-pointer NIL))
		(col (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxListCtrl_SetBackgroundColour
	(:name "wxListCtrl_SetBackgroundColour")
	(:arguments (_obj (ffi:c-pointer NIL))
		(col (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxListCtrl_GetColumn
	(:name "wxListCtrl_GetColumn")
	(:arguments (_obj (ffi:c-pointer NIL))
		(col ffi:int)
		(item (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxListCtrl_SetColumn
	(:name "wxListCtrl_SetColumn")
	(:arguments (_obj (ffi:c-pointer NIL))
		(col ffi:int)
		(item (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxListCtrl_GetColumnWidth
	(:name "wxListCtrl_GetColumnWidth")
	(:arguments (_obj (ffi:c-pointer NIL))
		(col ffi:int))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxListCtrl_SetColumnWidth
	(:name "wxListCtrl_SetColumnWidth")
	(:arguments (_obj (ffi:c-pointer NIL))
		(col ffi:int)
		(width ffi:int))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxListCtrl_GetCountPerPage
	(:name "wxListCtrl_GetCountPerPage")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxListCtrl_GetEditControl
	(:name "wxListCtrl_GetEditControl")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type (ffi:c-pointer NIL))
	(:library +library-name+))

(ffi:def-call-out wxListCtrl_GetItem
	(:name "wxListCtrl_GetItem")
	(:arguments (_obj (ffi:c-pointer NIL))
		(info (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxListCtrl_SetItemFromInfo
	(:name "wxListCtrl_SetItemFromInfo")
	(:arguments (_obj (ffi:c-pointer NIL))
		(info (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxListCtrl_SetItem
	(:name "wxListCtrl_SetItem")
	(:arguments (_obj (ffi:c-pointer NIL))
		(index ffi:int)
		(col ffi:int)
		(label (ffi:c-pointer NIL))
		(imageId ffi:int))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxListCtrl_GetItemState
	(:name "wxListCtrl_GetItemState")
	(:arguments (_obj (ffi:c-pointer NIL))
		(item ffi:int)
		(stateMask ffi:int))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxListCtrl_SetItemState
	(:name "wxListCtrl_SetItemState")
	(:arguments (_obj (ffi:c-pointer NIL))
		(item ffi:int)
		(state ffi:int)
		(stateMask ffi:int))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxListCtrl_SetItemImage
	(:name "wxListCtrl_SetItemImage")
	(:arguments (_obj (ffi:c-pointer NIL))
		(item ffi:int)
		(image ffi:int)
		(selImage ffi:int))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxListCtrl_GetItemText
	(:name "wxListCtrl_GetItemText")
	(:arguments (_obj (ffi:c-pointer NIL))
		(item ffi:int)
		(buf (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxListCtrl_SetItemText
	(:name "wxListCtrl_SetItemText")
	(:arguments (_obj (ffi:c-pointer NIL))
		(item ffi:int)
		(str (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxListCtrl_GetItemData
	(:name "wxListCtrl_GetItemData")
	(:arguments (_obj (ffi:c-pointer NIL))
		(item ffi:int))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxListCtrl_SetItemData
	(:name "wxListCtrl_SetItemData")
	(:arguments (_obj (ffi:c-pointer NIL))
		(item ffi:int)
		(data ffi:int))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxListCtrl_GetItemRect
	(:name "wxListCtrl_GetItemRect")
	(:arguments (_obj (ffi:c-pointer NIL))
		(item ffi:int)
		(code ffi:int)
		(x (ffi:c-pointer NIL))
		(y (ffi:c-pointer NIL))
		(w (ffi:c-pointer NIL))
		(h (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxListCtrl_GetItemPosition
	(:name "wxListCtrl_GetItemPosition")
	(:arguments (_obj (ffi:c-pointer NIL))
		(item ffi:int)
		(x (ffi:c-pointer NIL))
		(y (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxListCtrl_SetItemPosition
	(:name "wxListCtrl_SetItemPosition")
	(:arguments (_obj (ffi:c-pointer NIL))
		(item ffi:int)
		(x ffi:int)
		(y ffi:int))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxListCtrl_GetItemCount
	(:name "wxListCtrl_GetItemCount")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxListCtrl_GetColumnCount
	(:name "wxListCtrl_GetColumnCount")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxListCtrl_GetItemSpacing
	(:name "wxListCtrl_GetItemSpacing")
	(:arguments (_obj (ffi:c-pointer NIL))
		(isSmall ffi:int))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxListCtrl_GetSelectedItemCount
	(:name "wxListCtrl_GetSelectedItemCount")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxListCtrl_GetTextColour
	(:name "wxListCtrl_GetTextColour")
	(:arguments (_obj (ffi:c-pointer NIL))
		(colour (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxListCtrl_SetTextColour
	(:name "wxListCtrl_SetTextColour")
	(:arguments (_obj (ffi:c-pointer NIL))
		(col (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxListCtrl_GetTopItem
	(:name "wxListCtrl_GetTopItem")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxListCtrl_SetSingleStyle
	(:name "wxListCtrl_SetSingleStyle")
	(:arguments (_obj (ffi:c-pointer NIL))
		(style ffi:int)
		(add ffi:int))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxListCtrl_SetWindowStyleFlag
	(:name "wxListCtrl_SetWindowStyleFlag")
	(:arguments (_obj (ffi:c-pointer NIL))
		(style ffi:int))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxListCtrl_GetNextItem
	(:name "wxListCtrl_GetNextItem")
	(:arguments (_obj (ffi:c-pointer NIL))
		(item ffi:int)
		(geometry ffi:int)
		(state ffi:int))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxListCtrl_GetImageList
	(:name "wxListCtrl_GetImageList")
	(:arguments (_obj (ffi:c-pointer NIL))
		(which ffi:int))
	(:return-type (ffi:c-pointer NIL))
	(:library +library-name+))

(ffi:def-call-out wxListCtrl_SetImageList
	(:name "wxListCtrl_SetImageList")
	(:arguments (_obj (ffi:c-pointer NIL))
		(imageList (ffi:c-pointer NIL))
		(which ffi:int))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxListCtrl_Arrange
	(:name "wxListCtrl_Arrange")
	(:arguments (_obj (ffi:c-pointer NIL))
		(flag ffi:int))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxListCtrl_DeleteItem
	(:name "wxListCtrl_DeleteItem")
	(:arguments (_obj (ffi:c-pointer NIL))
		(item ffi:int))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxListCtrl_DeleteAllItems
	(:name "wxListCtrl_DeleteAllItems")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxListCtrl_DeleteColumn
	(:name "wxListCtrl_DeleteColumn")
	(:arguments (_obj (ffi:c-pointer NIL))
		(col ffi:int))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxListCtrl_DeleteAllColumns
	(:name "wxListCtrl_DeleteAllColumns")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxListCtrl_ClearAll
	(:name "wxListCtrl_ClearAll")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxListCtrl_EditLabel
	(:name "wxListCtrl_EditLabel")
	(:arguments (_obj (ffi:c-pointer NIL))
		(item ffi:int))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxListCtrl_EndEditLabel
	(:name "wxListCtrl_EndEditLabel")
	(:arguments (_obj (ffi:c-pointer NIL))
		(cancel ffi:int))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxListCtrl_EnsureVisible
	(:name "wxListCtrl_EnsureVisible")
	(:arguments (_obj (ffi:c-pointer NIL))
		(item ffi:int))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxListCtrl_FindItem
	(:name "wxListCtrl_FindItem")
	(:arguments (_obj (ffi:c-pointer NIL))
		(start ffi:int)
		(str (ffi:c-pointer NIL))
		(partial ffi:int))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxListCtrl_FindItemByData
	(:name "wxListCtrl_FindItemByData")
	(:arguments (_obj (ffi:c-pointer NIL))
		(start ffi:int)
		(data ffi:int))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxListCtrl_FindItemByPosition
	(:name "wxListCtrl_FindItemByPosition")
	(:arguments (_obj (ffi:c-pointer NIL))
		(start ffi:int)
		(x ffi:int)
		(y ffi:int)
		(direction ffi:int))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxListCtrl_HitTest
	(:name "wxListCtrl_HitTest")
	(:arguments (_obj (ffi:c-pointer NIL))
		(x ffi:int)
		(y ffi:int)
		(flags (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxListCtrl_InsertItem
	(:name "wxListCtrl_InsertItem")
	(:arguments (_obj (ffi:c-pointer NIL))
		(info (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxListCtrl_InsertItemWithData
	(:name "wxListCtrl_InsertItemWithData")
	(:arguments (_obj (ffi:c-pointer NIL))
		(index ffi:int)
		(label (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxListCtrl_InsertItemWithImage
	(:name "wxListCtrl_InsertItemWithImage")
	(:arguments (_obj (ffi:c-pointer NIL))
		(index ffi:int)
		(imageIndex ffi:int))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxListCtrl_InsertItemWithLabel
	(:name "wxListCtrl_InsertItemWithLabel")
	(:arguments (_obj (ffi:c-pointer NIL))
		(index ffi:int)
		(label (ffi:c-pointer NIL))
		(imageIndex ffi:int))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxListCtrl_InsertColumnFromInfo
	(:name "wxListCtrl_InsertColumnFromInfo")
	(:arguments (_obj (ffi:c-pointer NIL))
		(col ffi:int)
		(info (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxListCtrl_InsertColumn
	(:name "wxListCtrl_InsertColumn")
	(:arguments (_obj (ffi:c-pointer NIL))
		(col ffi:int)
		(heading (ffi:c-pointer NIL))
		(format ffi:int)
		(width ffi:int))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxListCtrl_ScrollList
	(:name "wxListCtrl_ScrollList")
	(:arguments (_obj (ffi:c-pointer NIL))
		(dx ffi:int)
		(dy ffi:int))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxListCtrl_SortItems
	(:name "wxListCtrl_SortItems")
	(:arguments (_obj (ffi:c-pointer NIL))
		(fnc (ffi:c-pointer NIL))
		(obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxListCtrl_UpdateStyle
	(:name "wxListCtrl_UpdateStyle")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

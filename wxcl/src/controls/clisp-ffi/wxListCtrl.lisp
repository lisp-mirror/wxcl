;;;wxListCtrl.lisp
;;;License  : wxWindows License 3.1
;;;Author(s) : Surendra Singhi (surendra@asu.edu), Jack Unrue (jdunrue@gmail.com)
;;;Copyright (C) 2005 Surendra Singhi, Jack D. Unrue
;;;See the file LICENSE for information on usage and redistribution.
;;;
;;; $Header$
;;;

(in-package :wxcl-controls)

(ffi:default-foreign-language :stdc)

; (ffi:def-c-struct EiffelSort
; 	(obj :type (ffi:c-pointer NIL))
; 	(fnc :type EiffelSortFunc))

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

(defmacro wxcl-create-list-control (frame &key (id -1) (left -1) (top -1) (width -1)(height -1)
					  (style wxLC_ICON))
  "Creates a list box control."
  `(wxListCtrl_Create ,frame ,id  ,left ,top ,width ,height ,style))

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


(ffi:def-call-out wxListEvent_GetCacheFrom
    (:name "wxListEvent_GetCacheFrom")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out wxListEvent_GetCacheTo
    (:name "wxListEvent_GetCacheTo")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out wxListCtrl_AssignImageList
    (:name "wxListCtrl_AssignImageList")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (images (ffi:c-pointer NIL))
	      (which ffi:int))
  (:library +library-name+))

(ffi:def-call-out wxListCtrl_GetColumn2
    (:name "wxListCtrl_GetColumn2")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (col ffi:int)
	      (item (ffi:c-pointer NIL)))
  (:library +library-name+))

(ffi:def-call-out wxListCtrl_GetItem2
    (:name "wxListCtrl_GetItem2")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (info (ffi:c-pointer NIL)))
  (:library +library-name+))

(ffi:def-call-out wxListCtrl_GetItemPosition2
    (:name "wxListCtrl_GetItemPosition2")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (item ffi:int)
	      (x (ffi:c-ptr ffi:int))
	      (y (ffi:c-ptr ffi:int)))
  (:library +library-name+))

(ffi:def-c-struct SortData
    (id ffi:long)
  (closure (ffi:c-pointer NIL)))

(ffi:def-call-out wxListCtrl_SortItems2
    (:name "wxListCtrl_SortItems2")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (closure (ffi:c-pointer NIL)))
  (:return-type ffi:int)
  (:library +library-name+))

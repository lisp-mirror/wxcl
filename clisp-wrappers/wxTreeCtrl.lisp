;;;wxTreeCtrl.lisp
;;;License  : wxWindows License 3.1
;;;Author(s) : Surendra Singhi (surendra@asu.edu) 
;;;Copyright (C) 2005 Surendra Singhi 
;;;See the file LICENSE for information on usage and redistribution.
;;;
;;; $Header$
;;;

(defpackage :wxTreeCtrl
    (:use :common-lisp :ffi :wxCL :wx_main)
  (:export
   :wxcTreeItemData_Create
   :wxcTreeItemData_GetClientClosure
   :wxcTreeItemData_SetClientClosure
   :wxTreeItemId_Create
   :wxTreeItemId_Delete
   :wxTreeItemId_IsOk
   :wxTreeItemId_Clone
   :wxTreeItemId_CreateFromValue
   :wxTreeItemId_GetValue
   :wxTreeEvent_GetKeyEvent
   :wxTreeEvent_IsEditCancelled
   :wxTreeEvent_Allow
   :wxTreeCtrl_Create
   :wxTreeCtrl_Create2
   :wxTreeCtrl_GetCount
   :wxTreeCtrl_GetIndent
   :wxTreeCtrl_SetIndent
   :wxTreeCtrl_GetSpacing
   :wxTreeCtrl_SetSpacing
   :wxTreeCtrl_GetImageList
   :wxTreeCtrl_GetStateImageList
   :wxTreeCtrl_AssignImageList
   :wxTreeCtrl_AssignStateImageList
   :wxTreeCtrl_SetImageList
   :wxTreeCtrl_SetStateImageList
   :wxTreeCtrl_GetItemText
   :wxTreeCtrl_GetItemImage
   :wxTreeCtrl_GetItemData
   :wxTreeCtrl_GetItemClientClosure
   :wxTreeCtrl_SetItemText
   :wxTreeCtrl_SetItemImage
   :wxTreeCtrl_SetItemData
   :wxTreeCtrl_SetItemClientClosure
   :wxTreeCtrl_SetItemHasChildren
   :wxTreeCtrl_SetItemBold
   :wxTreeCtrl_SetItemDropHighlight
   :wxTreeCtrl_SetItemTextColour
   :wxTreeCtrl_SetItemBackgroundColour
   :wxTreeCtrl_SetItemFont
   :wxTreeCtrl_IsVisible
   :wxTreeCtrl_ItemHasChildren
   :wxTreeCtrl_IsExpanded
   :wxTreeCtrl_IsSelected
   :wxTreeCtrl_IsBold
   :wxTreeCtrl_GetChildrenCount
   :wxTreeCtrl_GetRootItem
   :wxTreeCtrl_GetSelection
   :wxTreeCtrl_GetSelections
   :wxTreeCtrl_GetParent
   :wxTreeCtrl_GetFirstChild
   :wxTreeCtrl_GetNextChild
   :wxTreeCtrl_GetLastChild
   :wxTreeCtrl_GetNextSibling
   :wxTreeCtrl_GetPrevSibling
   :wxTreeCtrl_GetFirstVisibleItem
   :wxTreeCtrl_GetNextVisible
   :wxTreeCtrl_GetPrevVisible
   :wxTreeCtrl_AddRoot
   :wxTreeCtrl_PrependItem
   :wxTreeCtrl_InsertItem
   :wxTreeCtrl_InsertItem2
   :wxTreeCtrl_InsertItemByIndex
   :wxTreeCtrl_InsertItemByIndex2
   :wxTreeCtrl_AppendItem
   :wxTreeCtrl_Delete
   :wxTreeCtrl_DeleteChildren
   :wxTreeCtrl_DeleteAllItems
   :wxTreeCtrl_Expand
   :wxTreeCtrl_Collapse
   :wxTreeCtrl_CollapseAndReset
   :wxTreeCtrl_Toggle
   :wxTreeCtrl_Unselect
   :wxTreeCtrl_UnselectAll
   :wxTreeCtrl_SelectItem
   :wxTreeCtrl_EnsureVisible
   :wxTreeCtrl_ScrollTo
   :wxTreeCtrl_EditLabel
   :wxTreeCtrl_GetEditControl
   :wxTreeCtrl_EndEditLabel
   :wxTreeCtrl_OnCompareItems
   :wxTreeCtrl_SortChildren
   :wxTreeCtrl_HitTest
   :wxTreeCtrl_GetBoundingRect
   :wxcl-create-tree-control
   :wxTR_NO_BUTTONS
   :wxTR_HAS_BUTTONS
   :wxTR_TWIST_BUTTONS
   :wxTR_NO_LINES
   :wxTR_LINES_AT_ROOT
   :wxTR_AQUA_BUTTONS
   :wxTR_SINGLE
   :wxTR_MULTIPLE
   :wxTR_EXTENDED
   :wxTR_FULL_ROW_HIGHLIGHT
   :wxTR_EDIT_LABELS
   :wxTR_ROW_LINES
   :wxTR_HIDE_ROOT
   :wxTR_HAS_VARIABLE_ROW_HEIGHT))

(in-package :wxTreeCtrl)

(ffi:default-foreign-language :stdc)

(defconstant wxTR_NO_BUTTONS 0)
(defconstant wxTR_HAS_BUTTONS 1)
(defconstant wxTR_TWIST_BUTTONS 2)
(defconstant wxTR_NO_LINES 4)
(defconstant wxTR_LINES_AT_ROOT 8)
(defconstant wxTR_AQUA_BUTTONS 16)
(defconstant wxTR_SINGLE 0)
(defconstant wxTR_MULTIPLE 32)
(defconstant wxTR_EXTENDED 64)
(defconstant wxTR_FULL_ROW_HIGHLIGHT 8192)
(defconstant wxTR_EDIT_LABELS 512)
(defconstant wxTR_ROW_LINES 1024)
(defconstant wxTR_HIDE_ROOT 2048)
(defconstant wxTR_HAS_VARIABLE_ROW_HEIGHT 128)

(def-c-type wxcTreeItemData nil)
(def-c-type wxTreeItemId nil)

(def-c-type wxKeyEvent nil)
(def-c-type wxTreeEvent nil)

(def-c-type wxTreeCtrl nil)
(def-c-type wxImageList nil)

(ffi:def-call-out wxcTreeItemData_Create
    (:name "wxcTreeItemData_Create")
  (:arguments (closure (ffi:c-pointer wxClosure)))
  (:return-type (ffi:c-pointer wxcTreeItemData))
  (:library +library-name+))

(ffi:def-call-out wxcTreeItemData_GetClientClosure
    (:name "wxcTreeItemData_GetClientClosure")
  (:arguments (self (ffi:c-pointer wxcTreeItemData)))
  (:return-type (ffi:c-pointer wxClosure))
  (:library +library-name+))

(ffi:def-call-out wxcTreeItemData_SetClientClosure
    (:name "wxcTreeItemData_SetClientClosure")
  (:arguments (self (ffi:c-pointer wxcTreeItemData))
	      (closure (ffi:c-pointer wxClosure)))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxTreeItemId_Create
    (:name "wxTreeItemId_Create")
  (:return-type (ffi:c-pointer NIL))
  (:library +library-name+))

(ffi:def-call-out wxTreeItemId_Delete
    (:name "wxTreeItemId_Delete")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxTreeItemId_IsOk
    (:name "wxTreeItemId_IsOk")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out wxTreeItemId_Clone
    (:name "wxTreeItemId_Clone")
  (:arguments (_obj (ffi:c-pointer wxTreeItemId)))
  (:return-type (ffi:c-pointer wxTreeItemId))
  (:library +library-name+))

(ffi:def-call-out wxTreeItemId_CreateFromValue
    (:name "wxTreeItemId_CreateFromValue")
  (:arguments (value ffi:int))
  (:return-type (ffi:c-pointer wxTreeItemId))
  (:library +library-name+))

(ffi:def-call-out wxTreeItemId_GetValue
    (:name "wxTreeItemId_GetValue")
  (:arguments (_obj (ffi:c-pointer wxTreeItemId)))
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out wxTreeEvent_GetKeyEvent
    (:name "wxTreeEvent_GetKeyEvent")
  (:arguments (_obj (ffi:c-pointer wxTreeEvent)))
  (:return-type (ffi:c-pointer wxKeyEvent))
  (:library +library-name+))

(ffi:def-call-out wxTreeEvent_IsEditCancelled
    (:name "wxTreeEvent_IsEditCancelled")
  (:arguments (_obj (ffi:c-pointer wxTreeEvent)))
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out wxTreeEvent_Allow
    (:name "wxTreeEvent_Allow")
  (:arguments (_obj (ffi:c-pointer wxTreeEvent)))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxTreeCtrl_Create
    (:name "wxTreeCtrl_Create")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (_cmp (ffi:c-pointer NIL))
	      (_prt (ffi:c-pointer NIL))
	      (_id ffi:int)
	      (_lft ffi:int)
	      (_top ffi:int)
	      (_wdt ffi:int)
	      (_hgt ffi:int)
	      (_stl ffi:int))
  (:return-type (ffi:c-pointer NIL))
  (:library +library-name+))

(ffi:def-call-out wxTreeCtrl_Create2
    (:name "wxTreeCtrl_Create2")
  (:arguments (_prt (ffi:c-pointer NIL))
	      (_id ffi:int)
	      (_lft ffi:int)
	      (_top ffi:int)
	      (_wdt ffi:int)
	      (_hgt ffi:int)
	      (_stl ffi:int))
  (:return-type (ffi:c-pointer NIL))
  (:library +library-name+))

(defmacro wxcl-create-tree-control (frame &key (id -1) (left -1) (top -1) (width -1) (height -1)
					  (style wxTR_HAS_BUTTONS))
  "Creates a tree control."
  `(wxTreeCtrl_Create2 ,frame ,id ,left ,top ,width ,height ,style))

(ffi:def-call-out wxTreeCtrl_GetCount
    (:name "wxTreeCtrl_GetCount")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out wxTreeCtrl_GetIndent
    (:name "wxTreeCtrl_GetIndent")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out wxTreeCtrl_SetIndent
    (:name "wxTreeCtrl_SetIndent")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (indent ffi:int))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxTreeCtrl_GetSpacing
    (:name "wxTreeCtrl_GetSpacing")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out wxTreeCtrl_SetSpacing
    (:name "wxTreeCtrl_SetSpacing")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (spacing ffi:int))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxTreeCtrl_GetImageList
    (:name "wxTreeCtrl_GetImageList")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type (ffi:c-pointer NIL))
  (:library +library-name+))

(ffi:def-call-out wxTreeCtrl_GetStateImageList
    (:name "wxTreeCtrl_GetStateImageList")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type (ffi:c-pointer NIL))
  (:library +library-name+))

(ffi:def-call-out wxTreeCtrl_AssignImageList
    (:name "wxTreeCtrl_AssignImageList")
  (:arguments (_obj (ffi:c-pointer wxTreeCtrl))
	      (imageList (ffi:c-pointer wxImageList)))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxTreeCtrl_AssignStateImageList
    (:name "wxTreeCtrl_AssignStateImageList")
  (:arguments (_obj (ffi:c-pointer wxTreeCtrl))
	      (imageList (ffi:c-pointer wxImageList)))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxTreeCtrl_SetImageList
    (:name "wxTreeCtrl_SetImageList")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (imageList (ffi:c-pointer NIL)))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxTreeCtrl_SetStateImageList
    (:name "wxTreeCtrl_SetStateImageList")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (imageList (ffi:c-pointer NIL)))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxTreeCtrl_GetItemText
    (:name "wxTreeCtrl_GetItemText")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (item (ffi:c-pointer NIL))
	      (_buf (ffi:c-pointer NIL)))
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out wxTreeCtrl_GetItemImage
    (:name "wxTreeCtrl_GetItemImage")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (item (ffi:c-pointer NIL))
	      (which ffi:int))
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out wxTreeCtrl_GetItemData
    (:name "wxTreeCtrl_GetItemData")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (item (ffi:c-pointer NIL)))
  (:return-type (ffi:c-pointer NIL))
  (:library +library-name+))

(ffi:def-call-out wxTreeCtrl_GetItemClientClosure
    (:name "wxTreeCtrl_GetItemClientClosure")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (item (ffi:c-pointer NIL)))
  (:return-type (ffi:c-pointer NIL))
  (:library +library-name+))

(ffi:def-call-out wxTreeCtrl_SetItemText
    (:name "wxTreeCtrl_SetItemText")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (item (ffi:c-pointer NIL))
	      (text ffi:c-string))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxTreeCtrl_SetItemImage
    (:name "wxTreeCtrl_SetItemImage")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (item (ffi:c-pointer NIL))
	      (image ffi:int)
	      (which ffi:int))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxTreeCtrl_SetItemData
    (:name "wxTreeCtrl_SetItemData")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (item (ffi:c-pointer NIL))
	      (closure (ffi:c-pointer wxClosure)))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxTreeCtrl_SetItemClientClosure
    (:name "wxTreeCtrl_SetItemClientClosure")
  (:arguments (_obj (ffi:c-pointer wxTreeCtrl))
	      (item (ffi:c-pointer NIL))
	      (closure (ffi:c-pointer wxClosure)))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxTreeCtrl_SetItemHasChildren
    (:name "wxTreeCtrl_SetItemHasChildren")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (item (ffi:c-pointer NIL))
	      (has ffi:int))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxTreeCtrl_SetItemBold
    (:name "wxTreeCtrl_SetItemBold")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (item (ffi:c-pointer NIL))
	      (bold ffi:int))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxTreeCtrl_SetItemDropHighlight
    (:name "wxTreeCtrl_SetItemDropHighlight")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (item (ffi:c-pointer NIL))
	      (highlight ffi:int))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxTreeCtrl_SetItemTextColour
    (:name "wxTreeCtrl_SetItemTextColour")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (item (ffi:c-pointer NIL))
	      (col (ffi:c-pointer NIL)))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxTreeCtrl_SetItemBackgroundColour
    (:name "wxTreeCtrl_SetItemBackgroundColour")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (item (ffi:c-pointer NIL))
	      (col (ffi:c-pointer NIL)))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxTreeCtrl_SetItemFont
    (:name "wxTreeCtrl_SetItemFont")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (item (ffi:c-pointer NIL))
	      (font (ffi:c-pointer NIL)))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxTreeCtrl_IsVisible
    (:name "wxTreeCtrl_IsVisible")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (item (ffi:c-pointer NIL)))
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out wxTreeCtrl_ItemHasChildren
    (:name "wxTreeCtrl_ItemHasChildren")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (item (ffi:c-pointer NIL)))
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out wxTreeCtrl_IsExpanded
    (:name "wxTreeCtrl_IsExpanded")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (item (ffi:c-pointer NIL)))
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out wxTreeCtrl_IsSelected
    (:name "wxTreeCtrl_IsSelected")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (item (ffi:c-pointer NIL)))
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out wxTreeCtrl_IsBold
    (:name "wxTreeCtrl_IsBold")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (item (ffi:c-pointer NIL)))
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out wxTreeCtrl_GetChildrenCount
    (:name "wxTreeCtrl_GetChildrenCount")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (item (ffi:c-pointer NIL))
	      (recursively ffi:int))
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out wxTreeCtrl_GetRootItem
    (:name "wxTreeCtrl_GetRootItem")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (_item (ffi:c-pointer NIL)))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxTreeCtrl_GetSelection
    (:name "wxTreeCtrl_GetSelection")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (_item (ffi:c-pointer NIL)))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxTreeCtrl_GetSelections
    (:name "wxTreeCtrl_GetSelections")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (selections (ffi:c-ptr ffi:int)))
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out wxTreeCtrl_GetParent
    (:name "wxTreeCtrl_GetParent")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (item (ffi:c-pointer NIL))
	      (_item (ffi:c-pointer NIL)))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxTreeCtrl_GetFirstChild
    (:name "wxTreeCtrl_GetFirstChild")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (item (ffi:c-pointer NIL))
	      (cookie (ffi:c-pointer NIL))
	      (_item (ffi:c-pointer NIL)))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxTreeCtrl_GetNextChild
    (:name "wxTreeCtrl_GetNextChild")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (item (ffi:c-pointer NIL))
	      (cookie (ffi:c-pointer NIL))
	      (_item (ffi:c-pointer NIL)))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxTreeCtrl_GetLastChild
    (:name "wxTreeCtrl_GetLastChild")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (item (ffi:c-pointer NIL))
	      (_item (ffi:c-pointer NIL)))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxTreeCtrl_GetNextSibling
    (:name "wxTreeCtrl_GetNextSibling")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (item (ffi:c-pointer NIL))
	      (_item (ffi:c-pointer NIL)))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxTreeCtrl_GetPrevSibling
    (:name "wxTreeCtrl_GetPrevSibling")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (item (ffi:c-pointer NIL))
	      (_item (ffi:c-pointer NIL)))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxTreeCtrl_GetFirstVisibleItem
    (:name "wxTreeCtrl_GetFirstVisibleItem")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (item (ffi:c-pointer NIL))
	      (_item (ffi:c-pointer NIL)))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxTreeCtrl_GetNextVisible
    (:name "wxTreeCtrl_GetNextVisible")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (item (ffi:c-pointer NIL))
	      (_item (ffi:c-pointer NIL)))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxTreeCtrl_GetPrevVisible
    (:name "wxTreeCtrl_GetPrevVisible")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (item (ffi:c-pointer NIL))
	      (_item (ffi:c-pointer NIL)))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxTreeCtrl_AddRoot
    (:name "wxTreeCtrl_AddRoot")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (text ffi:c-string)
	      (image ffi:int)
	      (selectedImage ffi:int)
	      (data (ffi:c-pointer wxClosure))
	      (_item (ffi:c-pointer NIL)))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxTreeCtrl_PrependItem
    (:name "wxTreeCtrl_PrependItem")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (parent (ffi:c-pointer NIL))
	      (text (ffi:c-pointer NIL))
	      (image ffi:int)
	      (selectedImage ffi:int)
	      (data (ffi:c-pointer wxClosure))
	      (_item (ffi:c-pointer NIL)))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxTreeCtrl_InsertItem
    (:name "wxTreeCtrl_InsertItem")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (parent (ffi:c-pointer NIL))
	      (idPrevious (ffi:c-pointer NIL))
	      (text ffi:c-string)
	      (image ffi:int)
	      (selectedImage ffi:int)
	      (data (ffi:c-pointer wxClosure))
	      (_item (ffi:c-pointer NIL)))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxTreeCtrl_InsertItem2
    (:name "wxTreeCtrl_InsertItem2")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (parent (ffi:c-pointer NIL))
	      (idPrevious (ffi:c-pointer NIL))
	      (text ffi:c-string)
	      (image ffi:int)
	      (selectedImage ffi:int)
	      (closure (ffi:c-pointer wxClosure))
	      (_item (ffi:c-pointer NIL)))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxTreeCtrl_InsertItemByIndex
    (:name "wxTreeCtrl_InsertItemByIndex")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (parent (ffi:c-pointer NIL))
	      (index ffi:int)
	      (text ffi:c-string)
	      (image ffi:int)
	      (selectedImage ffi:int)
	      (data (ffi:c-pointer wxClosure))
	      (_item (ffi:c-pointer NIL)))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxTreeCtrl_InsertItemByIndex2
    (:name "wxTreeCtrl_InsertItemByIndex2")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (parent (ffi:c-pointer NIL))
	      (index ffi:int)
	      (text ffi:c-string)
	      (image ffi:int)
	      (selectedImage ffi:int)
	      (data (ffi:c-pointer wxClosure))
	      (_item (ffi:c-pointer NIL)))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxTreeCtrl_AppendItem
    (:name "wxTreeCtrl_AppendItem")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (parent (ffi:c-pointer NIL))
	      (text ffi:c-string)
	      (image ffi:int)
	      (selectedImage ffi:int)
	      (data (ffi:c-pointer wxClosure))
	      (_item (ffi:c-pointer NIL)))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxTreeCtrl_Delete
    (:name "wxTreeCtrl_Delete")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (item (ffi:c-pointer NIL)))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxTreeCtrl_DeleteChildren
    (:name "wxTreeCtrl_DeleteChildren")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (item (ffi:c-pointer NIL)))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxTreeCtrl_DeleteAllItems
    (:name "wxTreeCtrl_DeleteAllItems")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxTreeCtrl_Expand
    (:name "wxTreeCtrl_Expand")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (item (ffi:c-pointer NIL)))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxTreeCtrl_Collapse
    (:name "wxTreeCtrl_Collapse")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (item (ffi:c-pointer NIL)))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxTreeCtrl_CollapseAndReset
    (:name "wxTreeCtrl_CollapseAndReset")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (item (ffi:c-pointer NIL)))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxTreeCtrl_Toggle
    (:name "wxTreeCtrl_Toggle")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (item (ffi:c-pointer NIL)))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxTreeCtrl_Unselect
    (:name "wxTreeCtrl_Unselect")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxTreeCtrl_UnselectAll
    (:name "wxTreeCtrl_UnselectAll")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxTreeCtrl_SelectItem
    (:name "wxTreeCtrl_SelectItem")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (item (ffi:c-pointer NIL)))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxTreeCtrl_EnsureVisible
    (:name "wxTreeCtrl_EnsureVisible")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (item (ffi:c-pointer NIL)))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxTreeCtrl_ScrollTo
    (:name "wxTreeCtrl_ScrollTo")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (item (ffi:c-pointer NIL)))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxTreeCtrl_EditLabel
    (:name "wxTreeCtrl_EditLabel")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (item (ffi:c-pointer NIL)))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxTreeCtrl_GetEditControl
    (:name "wxTreeCtrl_GetEditControl")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type (ffi:c-pointer NIL))
  (:library +library-name+))

(ffi:def-call-out wxTreeCtrl_EndEditLabel
    (:name "wxTreeCtrl_EndEditLabel")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (item (ffi:c-pointer NIL))
	      (discardChanges ffi:int))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxTreeCtrl_OnCompareItems
    (:name "wxTreeCtrl_OnCompareItems")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (item1 (ffi:c-pointer NIL))
	      (item2 (ffi:c-pointer NIL)))
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out wxTreeCtrl_SortChildren
    (:name "wxTreeCtrl_SortChildren")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (item (ffi:c-pointer NIL)))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxTreeCtrl_HitTest
    (:name "wxTreeCtrl_HitTest")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (_x ffi:int)
	      (_y ffi:int)
	      (flags (ffi:c-pointer NIL))
	      (_item (ffi:c-pointer NIL)))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxTreeCtrl_GetBoundingRect
    (:name "wxTreeCtrl_GetBoundingRect")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (item (ffi:c-pointer NIL))
	      (textOnly ffi:int)
	      (_x (ffi:c-pointer NIL))
	      (_y (ffi:c-pointer NIL))
	      (_w (ffi:c-pointer NIL))
	      (_h (ffi:c-pointer NIL)))
  (:return-type ffi:int)
  (:library +library-name+))

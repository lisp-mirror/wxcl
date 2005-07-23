;;;wxGizmos.lisp
;;;License   : BSD-style
;;;Author(s) : Surendra Singhi (surendra@asu.edu) 
;;;Copyright (C) 2005 Surendra Singhi 
;;;See the file LICENSE for information on usage and redistribution.
;;;
;;; $Header$
;;;
;; This is an automatically generated file. 
;;Make changes as you feel are necessary (but remember if you try to regenerate this file, your changes will be lost). 

(defpackage :wxGizmos
  (:use :common-lisp :ffi)
  (:export
	:wxDynamicSashWindow_Create
	:wxDynamicSashWindow_Delete
	:wxDynamicSashWindow_GetHScrollBar
	:wxDynamicSashWindow_GetVScrollBar
	:wxEditableListBox_Create
	:wxEditableListBox_SetStrings
	:wxEditableListBox_GetStrings
	:wxEditableListBox_GetListCtrl
	:wxEditableListBox_GetDelButton
	:wxEditableListBox_GetNewButton
	:wxEditableListBox_GetUpButton
	:wxEditableListBox_GetDownButton
	:wxEditableListBox_GetEditButton
	:wxLEDNumberCtrl_Create
	:wxLEDNumberCtrl_GetAlignment
	:wxLEDNumberCtrl_GetDrawFaded
	:wxLEDNumberCtrl_GetValue
	:wxLEDNumberCtrl_SetAlignment
	:wxLEDNumberCtrl_SetDrawFaded
	:wxLEDNumberCtrl_SetValue
	:wxMultiCellItemHandle_Create
	:wxMultiCellItemHandle_CreateWithSize
	:wxMultiCellItemHandle_CreateWithStyle
	:wxMultiCellItemHandle_GetColumn
	:wxMultiCellItemHandle_GetRow
	:wxMultiCellItemHandle_GetWidth
	:wxMultiCellItemHandle_GetHeight
	:wxMultiCellItemHandle_GetStyle
	:wxMultiCellItemHandle_GetLocalSize
	:wxMultiCellItemHandle_GetAlignment
	:wxMultiCellItemHandle_GetWeight
	:wxMultiCellSizer_Create
	:wxMultiCellSizer_Delete
	:wxMultiCellSizer_RecalcSizes
	:wxMultiCellSizer_CalcMin
	:wxMultiCellSizer_SetDefaultCellSize
	:wxMultiCellSizer_SetColumnWidth
	:wxMultiCellSizer_SetRowHeight
	:wxMultiCellSizer_EnableGridLines
	:wxMultiCellSizer_SetGridPen
	:wxMultiCellCanvas_Create
	:wxMultiCellCanvas_Add
	:wxMultiCellCanvas_MaxRows
	:wxMultiCellCanvas_MaxCols
	:wxMultiCellCanvas_CalculateConstraints
	:wxMultiCellCanvas_SetMinCellSize
	:wxSplitterScrolledWindow_Create
	:wxThinSplitterWindow_Create
	:wxThinSplitterWindow_SizeWindows
	:wxThinSplitterWindow_SashHitTest
	:wxThinSplitterWindow_DrawSash
	:wxTreeCompanionWindow_Create
	:wxTreeCompanionWindow_DrawItem
	:wxTreeCompanionWindow_GetTreeCtrl
	:wxTreeCompanionWindow_SetTreeCtrl
	:wxRemotelyScrolledTreeCtrl_Create
	:wxRemotelyScrolledTreeCtrl_Delete
	:wxRemotelyScrolledTreeCtrl_SetScrollbars
	:wxRemotelyScrolledTreeCtrl_GetViewStart
	:wxRemotelyScrolledTreeCtrl_PrepareDC
	:wxRemotelyScrolledTreeCtrl_GetScrollPos
	:wxRemotelyScrolledTreeCtrl_HideVScrollbar
	:wxRemotelyScrolledTreeCtrl_CalcTreeSize
	:wxRemotelyScrolledTreeCtrl_CalcTreeSizeItem
	:wxRemotelyScrolledTreeCtrl_AdjustRemoteScrollbars
	:wxRemotelyScrolledTreeCtrl_GetScrolledWindow
	:wxRemotelyScrolledTreeCtrl_ScrollToLine
	:wxRemotelyScrolledTreeCtrl_SetCompanionWindow
	:wxRemotelyScrolledTreeCtrl_GetCompanionWindow))

(in-package :wxGizmos)

(ffi:def-call-out wxDynamicSashWindow_Create
	(:name "wxDynamicSashWindow_Create")
	(:arguments (parent (ffi:c-pointer NIL))
		(id ffi:int)
		(x ffi:int)
		(y ffi:int)
		(w ffi:int)
		(h ffi:int)
		(style ffi:int))
	(:return-type (ffi:c-pointer NIL))
	(:library +library-name+))

(ffi:def-call-out wxDynamicSashWindow_Delete
	(:name "wxDynamicSashWindow_Delete")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxDynamicSashWindow_GetHScrollBar
	(:name "wxDynamicSashWindow_GetHScrollBar")
	(:arguments (_obj (ffi:c-pointer NIL))
		(child (ffi:c-pointer NIL)))
	(:return-type (ffi:c-pointer NIL))
	(:library +library-name+))

(ffi:def-call-out wxDynamicSashWindow_GetVScrollBar
	(:name "wxDynamicSashWindow_GetVScrollBar")
	(:arguments (_obj (ffi:c-pointer NIL))
		(child (ffi:c-pointer NIL)))
	(:return-type (ffi:c-pointer NIL))
	(:library +library-name+))

(ffi:def-call-out wxEditableListBox_Create
	(:name "wxEditableListBox_Create")
	(:arguments (parent (ffi:c-pointer NIL))
		(id ffi:int)
		(label (ffi:c-pointer NIL))
		(x ffi:int)
		(y ffi:int)
		(w ffi:int)
		(h ffi:int)
		(style ffi:int))
	(:return-type (ffi:c-pointer NIL))
	(:library +library-name+))

(ffi:def-call-out wxEditableListBox_SetStrings
	(:name "wxEditableListBox_SetStrings")
	(:arguments (_obj (ffi:c-pointer NIL))
		(strings (ffi:c-pointer NIL))
		(_n ffi:int))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxEditableListBox_GetStrings
	(:name "wxEditableListBox_GetStrings")
	(:arguments (_obj (ffi:c-pointer NIL))
		(_ref (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxEditableListBox_GetListCtrl
	(:name "wxEditableListBox_GetListCtrl")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type (ffi:c-pointer NIL))
	(:library +library-name+))

(ffi:def-call-out wxEditableListBox_GetDelButton
	(:name "wxEditableListBox_GetDelButton")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type (ffi:c-pointer NIL))
	(:library +library-name+))

(ffi:def-call-out wxEditableListBox_GetNewButton
	(:name "wxEditableListBox_GetNewButton")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type (ffi:c-pointer NIL))
	(:library +library-name+))

(ffi:def-call-out wxEditableListBox_GetUpButton
	(:name "wxEditableListBox_GetUpButton")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type (ffi:c-pointer NIL))
	(:library +library-name+))

(ffi:def-call-out wxEditableListBox_GetDownButton
	(:name "wxEditableListBox_GetDownButton")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type (ffi:c-pointer NIL))
	(:library +library-name+))

(ffi:def-call-out wxEditableListBox_GetEditButton
	(:name "wxEditableListBox_GetEditButton")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type (ffi:c-pointer NIL))
	(:library +library-name+))

(ffi:def-call-out wxLEDNumberCtrl_Create
	(:name "wxLEDNumberCtrl_Create")
	(:arguments (parent (ffi:c-pointer NIL))
		(id ffi:int)
		(x ffi:int)
		(y ffi:int)
		(w ffi:int)
		(h ffi:int)
		(style ffi:int))
	(:return-type (ffi:c-pointer NIL))
	(:library +library-name+))

(ffi:def-call-out wxLEDNumberCtrl_GetAlignment
	(:name "wxLEDNumberCtrl_GetAlignment")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxLEDNumberCtrl_GetDrawFaded
	(:name "wxLEDNumberCtrl_GetDrawFaded")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxLEDNumberCtrl_GetValue
	(:name "wxLEDNumberCtrl_GetValue")
	(:arguments (_obj (ffi:c-pointer NIL))
		(_ref (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxLEDNumberCtrl_SetAlignment
	(:name "wxLEDNumberCtrl_SetAlignment")
	(:arguments (_obj (ffi:c-pointer NIL))
		(Alignment ffi:int)
		(Redraw ffi:int))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxLEDNumberCtrl_SetDrawFaded
	(:name "wxLEDNumberCtrl_SetDrawFaded")
	(:arguments (_obj (ffi:c-pointer NIL))
		(DrawFaded ffi:int)
		(Redraw ffi:int))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxLEDNumberCtrl_SetValue
	(:name "wxLEDNumberCtrl_SetValue")
	(:arguments (_obj (ffi:c-pointer NIL))
		(Value (ffi:c-pointer NIL))
		(Redraw ffi:int))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxMultiCellItemHandle_Create
	(:name "wxMultiCellItemHandle_Create")
	(:arguments (row ffi:int)
		(column ffi:int)
		(height ffi:int)
		(width ffi:int)
		(sx ffi:int)
		(sy ffi:int)
		(style ffi:int)
		(wx ffi:int)
		(wy ffi:int)
		(align ffi:int))
	(:return-type (ffi:c-pointer NIL))
	(:library +library-name+))

(ffi:def-call-out wxMultiCellItemHandle_CreateWithSize
	(:name "wxMultiCellItemHandle_CreateWithSize")
	(:arguments (_obj (ffi:c-pointer NIL))
		(row ffi:int)
		(column ffi:int)
		(sx ffi:int)
		(sy ffi:int)
		(style ffi:int)
		(wx ffi:int)
		(wy ffi:int)
		(align ffi:int))
	(:return-type (ffi:c-pointer NIL))
	(:library +library-name+))

(ffi:def-call-out wxMultiCellItemHandle_CreateWithStyle
	(:name "wxMultiCellItemHandle_CreateWithStyle")
	(:arguments (_obj (ffi:c-pointer NIL))
		(row ffi:int)
		(column ffi:int)
		(style ffi:int)
		(wx ffi:int)
		(wy ffi:int)
		(align ffi:int))
	(:return-type (ffi:c-pointer NIL))
	(:library +library-name+))

(ffi:def-call-out wxMultiCellItemHandle_GetColumn
	(:name "wxMultiCellItemHandle_GetColumn")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxMultiCellItemHandle_GetRow
	(:name "wxMultiCellItemHandle_GetRow")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxMultiCellItemHandle_GetWidth
	(:name "wxMultiCellItemHandle_GetWidth")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxMultiCellItemHandle_GetHeight
	(:name "wxMultiCellItemHandle_GetHeight")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxMultiCellItemHandle_GetStyle
	(:name "wxMultiCellItemHandle_GetStyle")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxMultiCellItemHandle_GetLocalSize
	(:name "wxMultiCellItemHandle_GetLocalSize")
	(:arguments (_obj (ffi:c-pointer NIL))
		(w (ffi:c-pointer NIL))
		(h (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxMultiCellItemHandle_GetAlignment
	(:name "wxMultiCellItemHandle_GetAlignment")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxMultiCellItemHandle_GetWeight
	(:name "wxMultiCellItemHandle_GetWeight")
	(:arguments (_obj (ffi:c-pointer NIL))
		(w (ffi:c-pointer NIL))
		(h (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxMultiCellSizer_Create
	(:name "wxMultiCellSizer_Create")
	(:arguments (rows ffi:int)
		(cols ffi:int))
	(:return-type (ffi:c-pointer NIL))
	(:library +library-name+))

(ffi:def-call-out wxMultiCellSizer_Delete
	(:name "wxMultiCellSizer_Delete")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxMultiCellSizer_RecalcSizes
	(:name "wxMultiCellSizer_RecalcSizes")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxMultiCellSizer_CalcMin
	(:name "wxMultiCellSizer_CalcMin")
	(:arguments (_obj (ffi:c-pointer NIL))
		(w (ffi:c-pointer NIL))
		(h (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxMultiCellSizer_SetDefaultCellSize
	(:name "wxMultiCellSizer_SetDefaultCellSize")
	(:arguments (_obj (ffi:c-pointer NIL))
		(w ffi:int)
		(h ffi:int))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxMultiCellSizer_SetColumnWidth
	(:name "wxMultiCellSizer_SetColumnWidth")
	(:arguments (_obj (ffi:c-pointer NIL))
		(column ffi:int)
		(colSize ffi:int)
		(expandable ffi:int))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxMultiCellSizer_SetRowHeight
	(:name "wxMultiCellSizer_SetRowHeight")
	(:arguments (_obj (ffi:c-pointer NIL))
		(row ffi:int)
		(rowSize ffi:int)
		(expandable ffi:int))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxMultiCellSizer_EnableGridLines
	(:name "wxMultiCellSizer_EnableGridLines")
	(:arguments (_obj (ffi:c-pointer NIL))
		(win (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxMultiCellSizer_SetGridPen
	(:name "wxMultiCellSizer_SetGridPen")
	(:arguments (_obj (ffi:c-pointer NIL))
		(pen (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxMultiCellCanvas_Create
	(:name "wxMultiCellCanvas_Create")
	(:arguments (parent (ffi:c-pointer NIL))
		(numRows ffi:int)
		(numCols ffi:int))
	(:return-type (ffi:c-pointer NIL))
	(:library +library-name+))

(ffi:def-call-out wxMultiCellCanvas_Add
	(:name "wxMultiCellCanvas_Add")
	(:arguments (_obj (ffi:c-pointer NIL))
		(win (ffi:c-pointer NIL))
		(row ffi:int)
		(col ffi:int))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxMultiCellCanvas_MaxRows
	(:name "wxMultiCellCanvas_MaxRows")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxMultiCellCanvas_MaxCols
	(:name "wxMultiCellCanvas_MaxCols")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxMultiCellCanvas_CalculateConstraints
	(:name "wxMultiCellCanvas_CalculateConstraints")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxMultiCellCanvas_SetMinCellSize
	(:name "wxMultiCellCanvas_SetMinCellSize")
	(:arguments (_obj (ffi:c-pointer NIL))
		(w ffi:int)
		(h ffi:int))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxSplitterScrolledWindow_Create
	(:name "wxSplitterScrolledWindow_Create")
	(:arguments (parent (ffi:c-pointer NIL))
		(id ffi:int)
		(x ffi:int)
		(y ffi:int)
		(w ffi:int)
		(h ffi:int)
		(style ffi:int))
	(:return-type (ffi:c-pointer NIL))
	(:library +library-name+))

(ffi:def-call-out wxThinSplitterWindow_Create
	(:name "wxThinSplitterWindow_Create")
	(:arguments (parent (ffi:c-pointer NIL))
		(id ffi:int)
		(x ffi:int)
		(y ffi:int)
		(w ffi:int)
		(h ffi:int)
		(style ffi:int))
	(:return-type (ffi:c-pointer NIL))
	(:library +library-name+))

(ffi:def-call-out wxThinSplitterWindow_SizeWindows
	(:name "wxThinSplitterWindow_SizeWindows")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxThinSplitterWindow_SashHitTest
	(:name "wxThinSplitterWindow_SashHitTest")
	(:arguments (_obj (ffi:c-pointer NIL))
		(x ffi:int)
		(y ffi:int)
		(tolerance ffi:int))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxThinSplitterWindow_DrawSash
	(:name "wxThinSplitterWindow_DrawSash")
	(:arguments (_obj (ffi:c-pointer NIL))
		(dc (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxTreeCompanionWindow_Create
	(:name "wxTreeCompanionWindow_Create")
	(:arguments (parent (ffi:c-pointer NIL))
		(id ffi:int)
		(x ffi:int)
		(y ffi:int)
		(w ffi:int)
		(h ffi:int)
		(style ffi:int))
	(:return-type (ffi:c-pointer NIL))
	(:library +library-name+))

(ffi:def-call-out wxTreeCompanionWindow_DrawItem
	(:name "wxTreeCompanionWindow_DrawItem")
	(:arguments (_obj (ffi:c-pointer NIL))
		(dc (ffi:c-pointer NIL))
		(id (ffi:c-pointer NIL))
		(x ffi:int)
		(y ffi:int)
		(w ffi:int)
		(h ffi:int))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxTreeCompanionWindow_GetTreeCtrl
	(:name "wxTreeCompanionWindow_GetTreeCtrl")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type (ffi:c-pointer NIL))
	(:library +library-name+))

(ffi:def-call-out wxTreeCompanionWindow_SetTreeCtrl
	(:name "wxTreeCompanionWindow_SetTreeCtrl")
	(:arguments (_obj (ffi:c-pointer NIL))
		(treeCtrl (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxRemotelyScrolledTreeCtrl_Create
	(:name "wxRemotelyScrolledTreeCtrl_Create")
	(:arguments (_obj (ffi:c-pointer NIL))
		(_cmp (ffi:c-pointer NIL))
		(parent (ffi:c-pointer NIL))
		(id ffi:int)
		(x ffi:int)
		(y ffi:int)
		(w ffi:int)
		(h ffi:int)
		(style ffi:int))
	(:return-type (ffi:c-pointer NIL))
	(:library +library-name+))

(ffi:def-call-out wxRemotelyScrolledTreeCtrl_Delete
	(:name "wxRemotelyScrolledTreeCtrl_Delete")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxRemotelyScrolledTreeCtrl_SetScrollbars
	(:name "wxRemotelyScrolledTreeCtrl_SetScrollbars")
	(:arguments (_obj (ffi:c-pointer NIL))
		(pixelsPerUnitX ffi:int)
		(pixelsPerUnitY ffi:int)
		(noUnitsX ffi:int)
		(noUnitsY ffi:int)
		(xPos ffi:int)
		(yPos ffi:int)
		(noRefresh ffi:int))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxRemotelyScrolledTreeCtrl_GetViewStart
	(:name "wxRemotelyScrolledTreeCtrl_GetViewStart")
	(:arguments (_obj (ffi:c-pointer NIL))
		(x (ffi:c-pointer NIL))
		(y (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxRemotelyScrolledTreeCtrl_PrepareDC
	(:name "wxRemotelyScrolledTreeCtrl_PrepareDC")
	(:arguments (_obj (ffi:c-pointer NIL))
		(dc (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxRemotelyScrolledTreeCtrl_GetScrollPos
	(:name "wxRemotelyScrolledTreeCtrl_GetScrollPos")
	(:arguments (_obj (ffi:c-pointer NIL))
		(orient ffi:int))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxRemotelyScrolledTreeCtrl_HideVScrollbar
	(:name "wxRemotelyScrolledTreeCtrl_HideVScrollbar")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxRemotelyScrolledTreeCtrl_CalcTreeSize
	(:name "wxRemotelyScrolledTreeCtrl_CalcTreeSize")
	(:arguments (_obj (ffi:c-pointer NIL))
		(x (ffi:c-pointer NIL))
		(y (ffi:c-pointer NIL))
		(w (ffi:c-pointer NIL))
		(h (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxRemotelyScrolledTreeCtrl_CalcTreeSizeItem
	(:name "wxRemotelyScrolledTreeCtrl_CalcTreeSizeItem")
	(:arguments (_obj (ffi:c-pointer NIL))
		(id (ffi:c-pointer NIL))
		(x (ffi:c-pointer NIL))
		(y (ffi:c-pointer NIL))
		(w (ffi:c-pointer NIL))
		(h (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxRemotelyScrolledTreeCtrl_AdjustRemoteScrollbars
	(:name "wxRemotelyScrolledTreeCtrl_AdjustRemoteScrollbars")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxRemotelyScrolledTreeCtrl_GetScrolledWindow
	(:name "wxRemotelyScrolledTreeCtrl_GetScrolledWindow")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type (ffi:c-pointer NIL))
	(:library +library-name+))

(ffi:def-call-out wxRemotelyScrolledTreeCtrl_ScrollToLine
	(:name "wxRemotelyScrolledTreeCtrl_ScrollToLine")
	(:arguments (_obj (ffi:c-pointer NIL))
		(posHoriz ffi:int)
		(posVert ffi:int))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxRemotelyScrolledTreeCtrl_SetCompanionWindow
	(:name "wxRemotelyScrolledTreeCtrl_SetCompanionWindow")
	(:arguments (_obj (ffi:c-pointer NIL))
		(companion (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxRemotelyScrolledTreeCtrl_GetCompanionWindow
	(:name "wxRemotelyScrolledTreeCtrl_GetCompanionWindow")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type (ffi:c-pointer NIL))
	(:library +library-name+))

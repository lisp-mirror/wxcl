;;;wxGizmos.lisp
;;;License  : wxWindows License 3.1
;;;Author(s) : Surendra Singhi (surendra@asu.edu) 
;;;Copyright (C) 2005 Surendra Singhi 
;;;See the file LICENSE for information on usage and redistribution.
;;;
;;; $Header$
;;;

(in-package :wxcl-misc)

(defcfun ("wxDynamicSashWindow_Create" wxDynamicSashWindow_Create) :pointer
  (parent :pointer)
  (id :int)
  (x :int)
  (y :int)
  (w :int)
  (h :int)
  (style :int))

(defcfun ("wxDynamicSashWindow_Delete" wxDynamicSashWindow_Delete) :void
  (_obj :pointer))

(defcfun ("wxDynamicSashWindow_GetHScrollBar" wxDynamicSashWindow_GetHScrollBar) :pointer
  (_obj :pointer)
  (child :pointer))

(defcfun ("wxDynamicSashWindow_GetVScrollBar" wxDynamicSashWindow_GetVScrollBar) :pointer
  (_obj :pointer)
  (child :pointer))

(defcfun ("wxEditableListBox_Create" wxEditableListBox_Create) :pointer
  (parent :pointer)
  (id :int)
  (label :pointer)
  (x :int)
  (y :int)
  (w :int)
  (h :int)
  (style :int))

(defcfun ("wxEditableListBox_SetStrings" wxEditableListBox_SetStrings) :void
  (_obj :pointer)
  (strings :pointer)
  (_n :int))

(defcfun ("wxEditableListBox_GetStrings" wxEditableListBox_GetStrings) :int
  (_obj :pointer)
  (_ref :pointer))

(defcfun ("wxEditableListBox_GetListCtrl" wxEditableListBox_GetListCtrl) :pointer
  (_obj :pointer))

(defcfun ("wxEditableListBox_GetDelButton" wxEditableListBox_GetDelButton) :pointer
  (_obj :pointer))

(defcfun ("wxEditableListBox_GetNewButton" wxEditableListBox_GetNewButton) :pointer
  (_obj :pointer))

(defcfun ("wxEditableListBox_GetUpButton" wxEditableListBox_GetUpButton) :pointer
  (_obj :pointer))

(defcfun ("wxEditableListBox_GetDownButton" wxEditableListBox_GetDownButton) :pointer
  (_obj :pointer))

(defcfun ("wxEditableListBox_GetEditButton" wxEditableListBox_GetEditButton) :pointer
  (_obj :pointer))

(defcfun ("wxLEDNumberCtrl_Create" wxLEDNumberCtrl_Create) :pointer
  (parent :pointer)
  (id :int)
  (x :int)
  (y :int)
  (w :int)
  (h :int)
  (style :int))

(defcfun ("wxLEDNumberCtrl_GetAlignment" wxLEDNumberCtrl_GetAlignment) :int
  (_obj :pointer))

(defcfun ("wxLEDNumberCtrl_GetDrawFaded" wxLEDNumberCtrl_GetDrawFaded) :int
  (_obj :pointer))

(defcfun ("wxLEDNumberCtrl_GetValue" wxLEDNumberCtrl_GetValue) :int
  (_obj :pointer)
  (_ref :pointer))

(defcfun ("wxLEDNumberCtrl_SetAlignment" wxLEDNumberCtrl_SetAlignment) :void
  (_obj :pointer)
  (Alignment :int)
  (Redraw :int))

(defcfun ("wxLEDNumberCtrl_SetDrawFaded" wxLEDNumberCtrl_SetDrawFaded) :void
  (_obj :pointer)
  (DrawFaded :int)
  (Redraw :int))

(defcfun ("wxLEDNumberCtrl_SetValue" wxLEDNumberCtrl_SetValue) :void
  (_obj :pointer)
  (Value :pointer)
  (Redraw :int))

(defcfun ("wxMultiCellItemHandle_Create" wxMultiCellItemHandle_Create) :pointer
  (row :int)
  (column :int)
  (height :int)
  (width :int)
  (sx :int)
  (sy :int)
  (style :int)
  (wx :int)
  (wy :int)
  (align :int))

(defcfun ("wxMultiCellItemHandle_CreateWithSize" wxMultiCellItemHandle_CreateWithSize) :pointer
  (_obj :pointer)
  (row :int)
  (column :int)
  (sx :int)
  (sy :int)
  (style :int)
  (wx :int)
  (wy :int)
  (align :int))

(defcfun ("wxMultiCellItemHandle_CreateWithStyle" wxMultiCellItemHandle_CreateWithStyle) :pointer
  (_obj :pointer)
  (row :int)
  (column :int)
  (style :int)
  (wx :int)
  (wy :int)
  (align :int))

(defcfun ("wxMultiCellItemHandle_GetColumn" wxMultiCellItemHandle_GetColumn) :int
  (_obj :pointer))

(defcfun ("wxMultiCellItemHandle_GetRow" wxMultiCellItemHandle_GetRow) :int
  (_obj :pointer))

(defcfun ("wxMultiCellItemHandle_GetWidth" wxMultiCellItemHandle_GetWidth) :int
  (_obj :pointer))

(defcfun ("wxMultiCellItemHandle_GetHeight" wxMultiCellItemHandle_GetHeight) :int
  (_obj :pointer))

(defcfun ("wxMultiCellItemHandle_GetStyle" wxMultiCellItemHandle_GetStyle) :int
  (_obj :pointer))

(defcfun ("wxMultiCellItemHandle_GetLocalSize" wxMultiCellItemHandle_GetLocalSize) :void
  (_obj :pointer)
  (w :pointer)
  (h :pointer))

(defcfun ("wxMultiCellItemHandle_GetAlignment" wxMultiCellItemHandle_GetAlignment) :int
  (_obj :pointer))

(defcfun ("wxMultiCellItemHandle_GetWeight" wxMultiCellItemHandle_GetWeight) :void
  (_obj :pointer)
  (w :pointer)
  (h :pointer))

(defcfun ("wxMultiCellSizer_Create" wxMultiCellSizer_Create) :pointer
  (rows :int)
  (cols :int))

(defcfun ("wxMultiCellSizer_Delete" wxMultiCellSizer_Delete) :void
  (_obj :pointer))

(defcfun ("wxMultiCellSizer_RecalcSizes" wxMultiCellSizer_RecalcSizes) :void
  (_obj :pointer))

(defcfun ("wxMultiCellSizer_CalcMin" wxMultiCellSizer_CalcMin) :void
  (_obj :pointer)
  (w :pointer)
  (h :pointer))

(defcfun ("wxMultiCellSizer_SetDefaultCellSize" wxMultiCellSizer_SetDefaultCellSize) :int
  (_obj :pointer)
  (w :int)
  (h :int))

(defcfun ("wxMultiCellSizer_SetColumnWidth" wxMultiCellSizer_SetColumnWidth) :int
  (_obj :pointer)
  (column :int)
  (colSize :int)
  (expandable :int))

(defcfun ("wxMultiCellSizer_SetRowHeight" wxMultiCellSizer_SetRowHeight) :int
  (_obj :pointer)
  (row :int)
  (rowSize :int)
  (expandable :int))

(defcfun ("wxMultiCellSizer_EnableGridLines" wxMultiCellSizer_EnableGridLines) :int
  (_obj :pointer)
  (win :pointer))

(defcfun ("wxMultiCellSizer_SetGridPen" wxMultiCellSizer_SetGridPen) :int
  (_obj :pointer)
  (pen :pointer))

(defcfun ("wxMultiCellCanvas_Create" wxMultiCellCanvas_Create) :pointer
  (parent :pointer)
  (numRows :int)
  (numCols :int))

(defcfun ("wxMultiCellCanvas_Add" wxMultiCellCanvas_Add) :void
  (_obj :pointer)
  (win :pointer)
  (row :int)
  (col :int))

(defcfun ("wxMultiCellCanvas_MaxRows" wxMultiCellCanvas_MaxRows) :int
  (_obj :pointer))

(defcfun ("wxMultiCellCanvas_MaxCols" wxMultiCellCanvas_MaxCols) :int
  (_obj :pointer))

(defcfun ("wxMultiCellCanvas_CalculateConstraints" wxMultiCellCanvas_CalculateConstraints) :void
  (_obj :pointer))

(defcfun ("wxMultiCellCanvas_SetMinCellSize" wxMultiCellCanvas_SetMinCellSize) :void
  (_obj :pointer)
  (w :int)
  (h :int))

(defcfun ("wxSplitterScrolledWindow_Create" wxSplitterScrolledWindow_Create) :pointer
  (parent :pointer)
  (id :int)
  (x :int)
  (y :int)
  (w :int)
  (h :int)
  (style :int))

(defcfun ("wxThinSplitterWindow_Create" wxThinSplitterWindow_Create) :pointer
  (parent :pointer)
  (id :int)
  (x :int)
  (y :int)
  (w :int)
  (h :int)
  (style :int))

(defcfun ("wxThinSplitterWindow_SizeWindows" wxThinSplitterWindow_SizeWindows) :void
  (_obj :pointer))

(defcfun ("wxThinSplitterWindow_SashHitTest" wxThinSplitterWindow_SashHitTest) :int
  (_obj :pointer)
  (x :int)
  (y :int)
  (tolerance :int))

(defcfun ("wxThinSplitterWindow_DrawSash" wxThinSplitterWindow_DrawSash) :void
  (_obj :pointer)
  (dc :pointer))

(defcfun ("wxTreeCompanionWindow_Create" wxTreeCompanionWindow_Create) :pointer
  (parent :pointer)
  (id :int)
  (x :int)
  (y :int)
  (w :int)
  (h :int)
  (style :int))

(defcfun ("wxTreeCompanionWindow_DrawItem" wxTreeCompanionWindow_DrawItem) :void
  (_obj :pointer)
  (dc :pointer)
  (id :pointer)
  (x :int)
  (y :int)
  (w :int)
  (h :int))

(defcfun ("wxTreeCompanionWindow_GetTreeCtrl" wxTreeCompanionWindow_GetTreeCtrl) :pointer
  (_obj :pointer))

(defcfun ("wxTreeCompanionWindow_SetTreeCtrl" wxTreeCompanionWindow_SetTreeCtrl) :void
  (_obj :pointer)
  (treeCtrl :pointer))

(defcfun ("wxRemotelyScrolledTreeCtrl_Create" wxRemotelyScrolledTreeCtrl_Create) :pointer
  (_obj :pointer)
  (_cmp :pointer)
  (parent :pointer)
  (id :int)
  (x :int)
  (y :int)
  (w :int)
  (h :int)
  (style :int))

(defcfun ("wxRemotelyScrolledTreeCtrl_Delete" wxRemotelyScrolledTreeCtrl_Delete) :void
  (_obj :pointer))

(defcfun ("wxRemotelyScrolledTreeCtrl_SetScrollbars" wxRemotelyScrolledTreeCtrl_SetScrollbars) :void
  (_obj :pointer)
  (pixelsPerUnitX :int)
  (pixelsPerUnitY :int)
  (noUnitsX :int)
  (noUnitsY :int)
  (xPos :int)
  (yPos :int)
  (noRefresh :int))

(defcfun ("wxRemotelyScrolledTreeCtrl_GetViewStart" wxRemotelyScrolledTreeCtrl_GetViewStart) :void
  (_obj :pointer)
  (x :pointer)
  (y :pointer))

(defcfun ("wxRemotelyScrolledTreeCtrl_PrepareDC" wxRemotelyScrolledTreeCtrl_PrepareDC) :void
  (_obj :pointer)
  (dc :pointer))

(defcfun ("wxRemotelyScrolledTreeCtrl_GetScrollPos" wxRemotelyScrolledTreeCtrl_GetScrollPos) :int
  (_obj :pointer)
  (orient :int))

(defcfun ("wxRemotelyScrolledTreeCtrl_HideVScrollbar" wxRemotelyScrolledTreeCtrl_HideVScrollbar) :void
  (_obj :pointer))

(defcfun ("wxRemotelyScrolledTreeCtrl_CalcTreeSize" wxRemotelyScrolledTreeCtrl_CalcTreeSize) :void
  (_obj :pointer)
  (x :pointer)
  (y :pointer)
  (w :pointer)
  (h :pointer))

(defcfun ("wxRemotelyScrolledTreeCtrl_CalcTreeSizeItem" wxRemotelyScrolledTreeCtrl_CalcTreeSizeItem) :void
  (_obj :pointer)
  (id :pointer)
  (x :pointer)
  (y :pointer)
  (w :pointer)
  (h :pointer))

(defcfun ("wxRemotelyScrolledTreeCtrl_AdjustRemoteScrollbars" wxRemotelyScrolledTreeCtrl_AdjustRemoteScrollbars) :void
  (_obj :pointer))

(defcfun ("wxRemotelyScrolledTreeCtrl_GetScrolledWindow" wxRemotelyScrolledTreeCtrl_GetScrolledWindow) :pointer
  (_obj :pointer))

(defcfun ("wxRemotelyScrolledTreeCtrl_ScrollToLine" wxRemotelyScrolledTreeCtrl_ScrollToLine) :void
  (_obj :pointer)
  (posHoriz :int)
  (posVert :int))

(defcfun ("wxRemotelyScrolledTreeCtrl_SetCompanionWindow" wxRemotelyScrolledTreeCtrl_SetCompanionWindow) :void
  (_obj :pointer)
  (companion :pointer))

(defcfun ("wxRemotelyScrolledTreeCtrl_GetCompanionWindow" wxRemotelyScrolledTreeCtrl_GetCompanionWindow) :pointer
  (_obj :pointer))

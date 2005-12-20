;;;wxGrid_cpp.lisp
;;;License  : wxWindows License 3.1
;;;Author(s) : Surendra Singhi (surendra@asu.edu) 
;;;Copyright (C) 2005 Surendra Singhi 
;;;See the file LICENSE for information on usage and redistribution.
;;;
;;; $Header$
;;;

(in-package :wxcl-windows)

(defcfun ("wxGridCellCoordsArray_Create" wxGridCellCoordsArray_Create) :pointer)

(defcfun ("wxGridCellCoordsArray_Delete" wxGridCellCoordsArray_Delete) :void
  (_obj :pointer))

(defcfun ("wxGridCellCoordsArray_GetCount" wxGridCellCoordsArray_GetCount) :int
  (_obj :pointer))

(defcfun ("wxGridCellCoordsArray_Item" wxGridCellCoordsArray_Item) :void
  (_obj :pointer)
  (_idx :int)
  (_c :pointer)
  (_r :pointer))

(defcfun ("wxGridCellEditor_IsCreated" wxGridCellEditor_IsCreated) :int
  (_obj :pointer))

(defcfun ("wxGridCellEditor_GetControl" wxGridCellEditor_GetControl) :pointer
  (_obj :pointer))

(defcfun ("wxGridCellEditor_SetControl" wxGridCellEditor_SetControl) :void
  (_obj :pointer)
  (control :pointer))

(defcfun ("wxGridCellEditor_Create" wxGridCellEditor_Create) :void
  (_obj :pointer)
  (parent :pointer)
  (id :int)
  (evtHandler :pointer))

(defcfun ("wxGridCellEditor_SetSize" wxGridCellEditor_SetSize) :void
  (_obj :pointer)
  (x :int)
  (y :int)
  (w :int)
  (h :int))

(defcfun ("wxGridCellEditor_Show" wxGridCellEditor_Show) :void
  (_obj :pointer)
  (show :int)
  (attr :pointer))

(defcfun ("wxGridCellEditor_PaintBackground" wxGridCellEditor_PaintBackground) :void
  (_obj :pointer)
  (x :int)
  (y :int)
  (w :int)
  (h :int)
  (attr :pointer))

(defcfun ("wxGridCellEditor_BeginEdit" wxGridCellEditor_BeginEdit) :void
  (_obj :pointer)
  (row :int)
  (col :int)
  (grid :pointer))

(defcfun ("wxGridCellEditor_EndEdit" wxGridCellEditor_EndEdit) :int
  (_obj :pointer)
  (row :int)
  (col :int)
  (grid :pointer))

(defcfun ("wxGridCellEditor_Reset" wxGridCellEditor_Reset) :void
  (_obj :pointer))

(defcfun ("wxGridCellEditor_IsAcceptedKey" wxGridCellEditor_IsAcceptedKey) :int
  (_obj :pointer)
  (event :pointer))

(defcfun ("wxGridCellEditor_StartingKey" wxGridCellEditor_StartingKey) :void
  (_obj :pointer)
  (event :pointer))

(defcfun ("wxGridCellEditor_StartingClick" wxGridCellEditor_StartingClick) :void
  (_obj :pointer))

(defcfun ("wxGridCellEditor_HandleReturn" wxGridCellEditor_HandleReturn) :void
  (_obj :pointer)
  (event :pointer))

(defcfun ("wxGridCellEditor_Destroy" wxGridCellEditor_Destroy) :void
  (_obj :pointer))

(defcfun ("wxGridCellEditor_SetParameters" wxGridCellEditor_SetParameters) :void
  (_obj :pointer)
  (params :pointer))

(defcfun ("wxGridCellTextEditor_Ctor" wxGridCellTextEditor_Ctor) :pointer)

(defcfun ("wxGridCellNumberEditor_Ctor" wxGridCellNumberEditor_Ctor) :pointer
  (min :int)
  (max :int))

(defcfun ("wxGridCellFloatEditor_Ctor" wxGridCellFloatEditor_Ctor) :pointer
  (width :int)
  (precision :int))

(defcfun ("wxGridCellBoolEditor_Ctor" wxGridCellBoolEditor_Ctor) :pointer)

(defcfun ("wxGridCellChoiceEditor_Ctor" wxGridCellChoiceEditor_Ctor) :pointer
  (count :int)
  (choices :pointer)
  (allowOthers :int))

(defcfun ("wxGridCellAttr_Ctor" wxGridCellAttr_Ctor) :pointer)

(defcfun ("wxGridCellAttr_IncRef" wxGridCellAttr_IncRef) :void
  (_obj :pointer))

(defcfun ("wxGridCellAttr_DecRef" wxGridCellAttr_DecRef) :void
  (_obj :pointer))

(defcfun ("wxGridCellAttr_SetTextColour" wxGridCellAttr_SetTextColour) :void
  (_obj :pointer)
  (colText :pointer))

(defcfun ("wxGridCellAttr_SetBackgroundColour" wxGridCellAttr_SetBackgroundColour) :void
  (_obj :pointer)
  (colBack :pointer))

(defcfun ("wxGridCellAttr_SetFont" wxGridCellAttr_SetFont) :void
  (_obj :pointer)
  (font :pointer))

(defcfun ("wxGridCellAttr_SetAlignment" wxGridCellAttr_SetAlignment) :void
  (_obj :pointer)
  (hAlign :int)
  (vAlign :int))

(defcfun ("wxGridCellAttr_SetReadOnly" wxGridCellAttr_SetReadOnly) :void
  (_obj :pointer)
  (isReadOnly :int))

(defcfun ("wxGridCellAttr_SetRenderer" wxGridCellAttr_SetRenderer) :void
  (_obj :pointer)
  (renderer :pointer))

(defcfun ("wxGridCellAttr_SetEditor" wxGridCellAttr_SetEditor) :void
  (_obj :pointer)
  (editor :pointer))

(defcfun ("wxGridCellAttr_HasTextColour" wxGridCellAttr_HasTextColour) :int
  (_obj :pointer))

(defcfun ("wxGridCellAttr_HasBackgroundColour" wxGridCellAttr_HasBackgroundColour) :int
  (_obj :pointer))

(defcfun ("wxGridCellAttr_HasFont" wxGridCellAttr_HasFont) :int
  (_obj :pointer))

(defcfun ("wxGridCellAttr_HasAlignment" wxGridCellAttr_HasAlignment) :int
  (_obj :pointer))

(defcfun ("wxGridCellAttr_HasRenderer" wxGridCellAttr_HasRenderer) :int
  (_obj :pointer))

(defcfun ("wxGridCellAttr_HasEditor" wxGridCellAttr_HasEditor) :int
  (_obj :pointer))

(defcfun ("wxGridCellAttr_GetTextColour" wxGridCellAttr_GetTextColour) :void
  (_obj :pointer)
  (colour :pointer))

(defcfun ("wxGridCellAttr_GetBackgroundColour" wxGridCellAttr_GetBackgroundColour) :void
  (_obj :pointer)
  (colour :pointer))

(defcfun ("wxGridCellAttr_GetFont" wxGridCellAttr_GetFont) :void
  (_obj :pointer)
  (font :pointer))

(defcfun ("wxGridCellAttr_GetAlignment" wxGridCellAttr_GetAlignment) :void
  (_obj :pointer)
  (hAlign :pointer)
  (vAlign :pointer))

(defcfun ("wxGridCellAttr_GetRenderer" wxGridCellAttr_GetRenderer) :pointer
  (_obj :pointer)
  (grid :pointer)
  (row :int)
  (col :int))

(defcfun ("wxGridCellAttr_GetEditor" wxGridCellAttr_GetEditor) :pointer
  (_obj :pointer)
  (grid :pointer)
  (row :int)
  (col :int))

(defcfun ("wxGridCellAttr_IsReadOnly" wxGridCellAttr_IsReadOnly) :int
  (_obj :pointer))

(defcfun ("wxGridCellAttr_SetDefAttr" wxGridCellAttr_SetDefAttr) :void
  (_obj :pointer)
  (defAttr :pointer))

(defcfun ("wxGrid_Create" wxGrid_Create) :pointer
  (_prt :pointer)
  (_id :int)
  (_lft :int)
  (_top :int)
  (_wdt :int)
  (_hgt :int)
  (_stl :int))

(defcfun ("wxGrid_CreateGrid" wxGrid_CreateGrid) :void
  (_obj :pointer)
  (rows :int)
  (cols :int)
  (selmode :int))

(defcfun ("wxGrid_SetSelectionMode" wxGrid_SetSelectionMode) :void
  (_obj :pointer)
  (selmode :int))

(defcfun ("wxGrid_GetNumberRows" wxGrid_GetNumberRows) :int
  (_obj :pointer))

(defcfun ("wxGrid_GetNumberCols" wxGrid_GetNumberCols) :int
  (_obj :pointer))

(defcfun ("wxGrid_CalcRowLabelsExposed" wxGrid_CalcRowLabelsExposed) :void
  (_obj :pointer)
  (reg :pointer))

(defcfun ("wxGrid_CalcColLabelsExposed" wxGrid_CalcColLabelsExposed) :void
  (_obj :pointer)
  (reg :pointer))

(defcfun ("wxGrid_CalcCellsExposed" wxGrid_CalcCellsExposed) :void
  (_obj :pointer)
  (reg :pointer))

(defcfun ("wxGrid_NewCalcCellsExposed" wxGrid_NewCalcCellsExposed) :void
  (_obj :pointer)
  (reg :pointer)
  (arr :pointer))

(defcfun ("wxGrid_ProcessRowLabelMouseEvent" wxGrid_ProcessRowLabelMouseEvent) :void
  (_obj :pointer)
  (event :pointer))

(defcfun ("wxGrid_ProcessColLabelMouseEvent" wxGrid_ProcessColLabelMouseEvent) :void
  (_obj :pointer)
  (event :pointer))

(defcfun ("wxGrid_ProcessCornerLabelMouseEvent" wxGrid_ProcessCornerLabelMouseEvent) :void
  (_obj :pointer)
  (event :pointer))

(defcfun ("wxGrid_ProcessGridCellMouseEvent" wxGrid_ProcessGridCellMouseEvent) :void
  (_obj :pointer)
  (event :pointer))

(defcfun ("wxGrid_ProcessTableMessage" wxGrid_ProcessTableMessage) :int
  (_obj :pointer)
  (evt :pointer))

(defcfun ("wxGrid_DoEndDragResizeRow" wxGrid_DoEndDragResizeRow) :void
  (_obj :pointer))

(defcfun ("wxGrid_DoEndDragResizeCol" wxGrid_DoEndDragResizeCol) :void
  (_obj :pointer))

(defcfun ("wxGrid_GetTable" wxGrid_GetTable) :pointer
  (_obj :pointer))

(defcfun ("wxGrid_SetTable" wxGrid_SetTable) :int
  (_obj :pointer)
  (table :pointer)
  (takeOwnership :int)
  (selmode :int))

(defcfun ("wxGrid_ClearGrid" wxGrid_ClearGrid) :void
  (_obj :pointer))

(defcfun ("wxGrid_InsertRows" wxGrid_InsertRows) :int
  (_obj :pointer)
  (pos :int)
  (numRows :int)
  (updateLabels :int))

(defcfun ("wxGrid_AppendRows" wxGrid_AppendRows) :int
  (_obj :pointer)
  (numRows :int)
  (updateLabels :int))

(defcfun ("wxGrid_DeleteRows" wxGrid_DeleteRows) :int
  (_obj :pointer)
  (pos :int)
  (numRows :int)
  (updateLabels :int))

(defcfun ("wxGrid_InsertCols" wxGrid_InsertCols) :int
  (_obj :pointer)
  (pos :int)
  (numCols :int)
  (updateLabels :int))

(defcfun ("wxGrid_AppendCols" wxGrid_AppendCols) :int
  (_obj :pointer)
  (numCols :int)
  (updateLabels :int))

(defcfun ("wxGrid_DeleteCols" wxGrid_DeleteCols) :int
  (_obj :pointer)
  (pos :int)
  (numCols :int)
  (updateLabels :int))

(defcfun ("wxGrid_DrawGridCellArea" wxGrid_DrawGridCellArea) :void
  (_obj :pointer)
  (dc :pointer))

(defcfun ("wxGrid_NewDrawGridCellArea" wxGrid_NewDrawGridCellArea) :void
  (_obj :pointer)
  (dc :pointer)
  (arr :pointer))

(defcfun ("wxGrid_DrawGridSpace" wxGrid_DrawGridSpace) :void
  (_obj :pointer)
  (dc :pointer))

(defcfun ("wxGrid_DrawCellBorder" wxGrid_DrawCellBorder) :void
  (_obj :pointer)
  (dc :pointer)
  (_row :int)
  (_col :int))

(defcfun ("wxGrid_DrawAllGridLines" wxGrid_DrawAllGridLines) :void
  (_obj :pointer)
  (dc :pointer)
  (reg :pointer))

(defcfun ("wxGrid_DrawCell" wxGrid_DrawCell) :void
  (_obj :pointer)
  (dc :pointer)
  (_row :int)
  (_col :int))

(defcfun ("wxGrid_DrawHighlight" wxGrid_DrawHighlight) :void
  (_obj :pointer)
  (dc :pointer))

(defcfun ("wxGrid_NewDrawHighlight" wxGrid_NewDrawHighlight) :void
  (_obj :pointer)
  (dc :pointer)
  (arr :pointer))

(defcfun ("wxGrid_DrawCellHighlight" wxGrid_DrawCellHighlight) :void
  (_obj :pointer)
  (dc :pointer)
  (attr :pointer))

(defcfun ("wxGrid_DrawRowLabels" wxGrid_DrawRowLabels) :void
  (_obj :pointer)
  (dc :pointer))

(defcfun ("wxGrid_DrawRowLabel" wxGrid_DrawRowLabel) :void
  (_obj :pointer)
  (dc :pointer)
  (row :int))

(defcfun ("wxGrid_DrawColLabels" wxGrid_DrawColLabels) :void
  (_obj :pointer)
  (dc :pointer))

(defcfun ("wxGrid_DrawColLabel" wxGrid_DrawColLabel) :void
  (_obj :pointer)
  (dc :pointer)
  (col :int))

(defcfun ("wxGrid_DrawTextRectangle" wxGrid_DrawTextRectangle) :void
  (_obj :pointer)
  (dc :pointer)
  (txt :pointer)
  (x :int)
  (y :int)
  (w :int)
  (h :int)
  (horizontalAlignment :int)
  (verticalAlignment :int))

(defcfun ("wxGrid_StringToLines" wxGrid_StringToLines) :int
  (_obj :pointer)
  (value :pointer)
  (lines :pointer))

(defcfun ("wxGrid_GetTextBoxSize" wxGrid_GetTextBoxSize) :void
  (_obj :pointer)
  (dc :pointer)
  (count :int)
  (lines :pointer)
  (width :pointer)
  (height :pointer))

(defcfun ("wxGrid_BeginBatch" wxGrid_BeginBatch) :void
  (_obj :pointer))

(defcfun ("wxGrid_EndBatch" wxGrid_EndBatch) :void
  (_obj :pointer))

(defcfun ("wxGrid_GetBatchCount" wxGrid_GetBatchCount) :int
  (_obj :pointer))

(defcfun ("wxGrid_IsEditable" wxGrid_IsEditable) :int
  (_obj :pointer))

(defcfun ("wxGrid_EnableEditing" wxGrid_EnableEditing) :void
  (_obj :pointer)
  (edit :int))

(defcfun ("wxGrid_EnableCellEditControl" wxGrid_EnableCellEditControl) :void
  (_obj :pointer)
  (enable :int))

(defcfun ("wxGrid_DisableCellEditControl" wxGrid_DisableCellEditControl) :void
  (_obj :pointer))

(defcfun ("wxGrid_CanEnableCellControl" wxGrid_CanEnableCellControl) :int
  (_obj :pointer))

(defcfun ("wxGrid_IsCellEditControlEnabled" wxGrid_IsCellEditControlEnabled) :int
  (_obj :pointer))

(defcfun ("wxGrid_IsCellEditControlShown" wxGrid_IsCellEditControlShown) :int
  (_obj :pointer))

(defcfun ("wxGrid_IsCurrentCellReadOnly" wxGrid_IsCurrentCellReadOnly) :int
  (_obj :pointer))

(defcfun ("wxGrid_ShowCellEditControl" wxGrid_ShowCellEditControl) :void
  (_obj :pointer))

(defcfun ("wxGrid_HideCellEditControl" wxGrid_HideCellEditControl) :void
  (_obj :pointer))

(defcfun ("wxGrid_SaveEditControlValue" wxGrid_SaveEditControlValue) :void
  (_obj :pointer))

(defcfun ("wxGrid_XYToCell" wxGrid_XYToCell) :void
  (_obj :pointer)
  (x :int)
  (y :int)
  (r :int)
  (c :int))

(defcfun ("wxGrid_YToRow" wxGrid_YToRow) :int
  (_obj :pointer)
  (y :int))

(defcfun ("wxGrid_XToCol" wxGrid_XToCol) :int
  (_obj :pointer)
  (x :int))

(defcfun ("wxGrid_YToEdgeOfRow" wxGrid_YToEdgeOfRow) :int
  (_obj :pointer)
  (y :int))

(defcfun ("wxGrid_XToEdgeOfCol" wxGrid_XToEdgeOfCol) :int
  (_obj :pointer)
  (x :int))

(defcfun ("wxGrid_CellToRect" wxGrid_CellToRect) :void
  (_obj :pointer)
  (row :int)
  (col :int)
  (x :int)
  (y :int)
  (w :int)
  (h :int))

(defcfun ("wxGrid_GetGridCursorRow" wxGrid_GetGridCursorRow) :int
  (_obj :pointer))

(defcfun ("wxGrid_GetGridCursorCol" wxGrid_GetGridCursorCol) :int
  (_obj :pointer))

(defcfun ("wxGrid_IsVisible" wxGrid_IsVisible) :int
  (_obj :pointer)
  (row :int)
  (col :int)
  (wholeCellVisible :int))

(defcfun ("wxGrid_MakeCellVisible" wxGrid_MakeCellVisible) :void
  (_obj :pointer)
  (row :int)
  (col :int))

(defcfun ("wxGrid_SetGridCursor" wxGrid_SetGridCursor) :void
  (_obj :pointer)
  (row :int)
  (col :int))

(defcfun ("wxGrid_MoveCursorUp" wxGrid_MoveCursorUp) :int
  (_obj :pointer)
  (expandSelection :int))

(defcfun ("wxGrid_MoveCursorDown" wxGrid_MoveCursorDown) :int
  (_obj :pointer)
  (expandSelection :int))

(defcfun ("wxGrid_MoveCursorLeft" wxGrid_MoveCursorLeft) :int
  (_obj :pointer)
  (expandSelection :int))

(defcfun ("wxGrid_MoveCursorRight" wxGrid_MoveCursorRight) :int
  (_obj :pointer)
  (expandSelection :int))

(defcfun ("wxGrid_MovePageDown" wxGrid_MovePageDown) :int
  (_obj :pointer))

(defcfun ("wxGrid_MovePageUp" wxGrid_MovePageUp) :int
  (_obj :pointer))

(defcfun ("wxGrid_MoveCursorUpBlock" wxGrid_MoveCursorUpBlock) :int
  (_obj :pointer)
  (expandSelection :int))

(defcfun ("wxGrid_MoveCursorDownBlock" wxGrid_MoveCursorDownBlock) :int
  (_obj :pointer)
  (expandSelection :int))

(defcfun ("wxGrid_MoveCursorLeftBlock" wxGrid_MoveCursorLeftBlock) :int
  (_obj :pointer)
  (expandSelection :int))

(defcfun ("wxGrid_MoveCursorRightBlock" wxGrid_MoveCursorRightBlock) :int
  (_obj :pointer)
  (expandSelection :int))

(defcfun ("wxGrid_GetDefaultRowLabelSize" wxGrid_GetDefaultRowLabelSize) :int
  (_obj :pointer))

(defcfun ("wxGrid_GetRowLabelSize" wxGrid_GetRowLabelSize) :int
  (_obj :pointer))

(defcfun ("wxGrid_GetDefaultColLabelSize" wxGrid_GetDefaultColLabelSize) :int
  (_obj :pointer))

(defcfun ("wxGrid_GetColLabelSize" wxGrid_GetColLabelSize) :int
  (_obj :pointer))

(defcfun ("wxGrid_GetLabelBackgroundColour" wxGrid_GetLabelBackgroundColour) :void
  (_obj :pointer)
  (colour :pointer))

(defcfun ("wxGrid_GetLabelTextColour" wxGrid_GetLabelTextColour) :void
  (_obj :pointer)
  (colour :pointer))

(defcfun ("wxGrid_GetLabelFont" wxGrid_GetLabelFont) :void
  (_obj :pointer)
  (font :pointer))

(defcfun ("wxGrid_GetRowLabelAlignment" wxGrid_GetRowLabelAlignment) :void
  (_obj :pointer)
  (horiz :pointer)
  (vert :pointer))

(defcfun ("wxGrid_GetColLabelAlignment" wxGrid_GetColLabelAlignment) :void
  (_obj :pointer)
  (horiz :pointer)
  (vert :pointer))

(defcfun ("wxGrid_GetRowLabelValue" wxGrid_GetRowLabelValue) :int
  (_obj :pointer)
  (row :int)
  (_buf :pointer))

(defcfun ("wxGrid_GetColLabelValue" wxGrid_GetColLabelValue) :int
  (_obj :pointer)
  (col :int)
  (_buf :pointer))

(defcfun ("wxGrid_GetGridLineColour" wxGrid_GetGridLineColour) :void
  (_obj :pointer)
  (colour :pointer))

(defcfun ("wxGrid_GetCellHighlightColour" wxGrid_GetCellHighlightColour) :void
  (_obj :pointer)
  (colour :pointer))

(defcfun ("wxGrid_SetRowLabelSize" wxGrid_SetRowLabelSize) :void
  (_obj :pointer)
  (width :int))

(defcfun ("wxGrid_SetColLabelSize" wxGrid_SetColLabelSize) :void
  (_obj :pointer)
  (height :int))

(defcfun ("wxGrid_SetLabelBackgroundColour" wxGrid_SetLabelBackgroundColour) :void
  (_obj :pointer)
  (colour :pointer))

(defcfun ("wxGrid_SetLabelTextColour" wxGrid_SetLabelTextColour) :void
  (_obj :pointer)
  (colour :pointer))

(defcfun ("wxGrid_SetLabelFont" wxGrid_SetLabelFont) :void
  (_obj :pointer)
  (font :pointer))

(defcfun ("wxGrid_SetRowLabelAlignment" wxGrid_SetRowLabelAlignment) :void
  (_obj :pointer)
  (horiz :int)
  (vert :int))

(defcfun ("wxGrid_SetColLabelAlignment" wxGrid_SetColLabelAlignment) :void
  (_obj :pointer)
  (horiz :int)
  (vert :int))

(defcfun ("wxGrid_SetRowLabelValue" wxGrid_SetRowLabelValue) :void
  (_obj :pointer)
  (row :int)
  (label :pointer))

(defcfun ("wxGrid_SetColLabelValue" wxGrid_SetColLabelValue) :void
  (_obj :pointer)
  (col :int)
  (label :pointer))

(defcfun ("wxGrid_SetGridLineColour" wxGrid_SetGridLineColour) :void
  (_obj :pointer)
  (col :pointer))

(defcfun ("wxGrid_SetCellHighlightColour" wxGrid_SetCellHighlightColour) :void
  (_obj :pointer)
  (col :pointer))

(defcfun ("wxGrid_EnableDragRowSize" wxGrid_EnableDragRowSize) :void
  (_obj :pointer)
  (enable :int))

(defcfun ("wxGrid_DisableDragRowSize" wxGrid_DisableDragRowSize) :void
  (_obj :pointer))

(defcfun ("wxGrid_CanDragRowSize" wxGrid_CanDragRowSize) :int
  (_obj :pointer))

(defcfun ("wxGrid_EnableDragColSize" wxGrid_EnableDragColSize) :void
  (_obj :pointer)
  (enable :int))

(defcfun ("wxGrid_DisableDragColSize" wxGrid_DisableDragColSize) :void
  (_obj :pointer))

(defcfun ("wxGrid_CanDragColSize" wxGrid_CanDragColSize) :int
  (_obj :pointer))

(defcfun ("wxGrid_EnableDragGridSize" wxGrid_EnableDragGridSize) :void
  (_obj :pointer)
  (enable :int))

(defcfun ("wxGrid_DisableDragGridSize" wxGrid_DisableDragGridSize) :void
  (_obj :pointer))

(defcfun ("wxGrid_CanDragGridSize" wxGrid_CanDragGridSize) :int
  (_obj :pointer))

(defcfun ("wxGrid_SetRowAttr" wxGrid_SetRowAttr) :void
  (_obj :pointer)
  (row :int)
  (attr :pointer))

(defcfun ("wxGrid_SetColAttr" wxGrid_SetColAttr) :void
  (_obj :pointer)
  (col :int)
  (attr :pointer))

(defcfun ("wxGrid_SetColFormatBool" wxGrid_SetColFormatBool) :void
  (_obj :pointer)
  (col :int))

(defcfun ("wxGrid_SetColFormatNumber" wxGrid_SetColFormatNumber) :void
  (_obj :pointer)
  (col :int))

(defcfun ("wxGrid_SetColFormatFloat" wxGrid_SetColFormatFloat) :void
  (_obj :pointer)
  (col :int)
  (width :int)
  (precision :int))

(defcfun ("wxGrid_SetColFormatCustom" wxGrid_SetColFormatCustom) :void
  (_obj :pointer)
  (col :int)
  (typeName :pointer))

(defcfun ("wxGrid_EnableGridLines" wxGrid_EnableGridLines) :void
  (_obj :pointer)
  (enable :int))

(defcfun ("wxGrid_GridLinesEnabled" wxGrid_GridLinesEnabled) :int
  (_obj :pointer))

(defcfun ("wxGrid_GetDefaultRowSize" wxGrid_GetDefaultRowSize) :int
  (_obj :pointer))

(defcfun ("wxGrid_GetRowSize" wxGrid_GetRowSize) :int
  (_obj :pointer)
  (row :int))

(defcfun ("wxGrid_GetDefaultColSize" wxGrid_GetDefaultColSize) :int
  (_obj :pointer))

(defcfun ("wxGrid_GetColSize" wxGrid_GetColSize) :int
  (_obj :pointer)
  (col :int))

(defcfun ("wxGrid_GetDefaultCellBackgroundColour" wxGrid_GetDefaultCellBackgroundColour) :void
  (_obj :pointer)
  (colour :pointer))

(defcfun ("wxGrid_GetCellBackgroundColour" wxGrid_GetCellBackgroundColour) :void
  (_obj :pointer)
  (row :int)
  (col :int)
  (colour :pointer))

(defcfun ("wxGrid_GetDefaultCellTextColour" wxGrid_GetDefaultCellTextColour) :void
  (_obj :pointer)
  (colour :pointer))

(defcfun ("wxGrid_GetCellTextColour" wxGrid_GetCellTextColour) :void
  (_obj :pointer)
  (row :int)
  (col :int)
  (colour :pointer))

(defcfun ("wxGrid_GetDefaultCellFont" wxGrid_GetDefaultCellFont) :void
  (_obj :pointer)
  (font :pointer))

(defcfun ("wxGrid_GetCellFont" wxGrid_GetCellFont) :void
  (_obj :pointer)
  (row :int)
  (col :int)
  (font :pointer))

(defcfun ("wxGrid_GetDefaultCellAlignment" wxGrid_GetDefaultCellAlignment) :void
  (_obj :pointer)
  (horiz :pointer)
  (vert :pointer))

(defcfun ("wxGrid_GetCellAlignment" wxGrid_GetCellAlignment) :void
  (_obj :pointer)
  (row :int)
  (col :int)
  (horiz :pointer)
  (vert :pointer))

(defcfun ("wxGrid_SetDefaultRowSize" wxGrid_SetDefaultRowSize) :void
  (_obj :pointer)
  (height :int)
  (resizeExistingRows :int))

(defcfun ("wxGrid_SetRowSize" wxGrid_SetRowSize) :void
  (_obj :pointer)
  (row :int)
  (height :int))

(defcfun ("wxGrid_SetDefaultColSize" wxGrid_SetDefaultColSize) :void
  (_obj :pointer)
  (width :int)
  (resizeExistingCols :int))

(defcfun ("wxGrid_SetColSize" wxGrid_SetColSize) :void
  (_obj :pointer)
  (col :int)
  (width :int))

(defcfun ("wxGrid_AutoSizeColumn" wxGrid_AutoSizeColumn) :void
  (_obj :pointer)
  (col :int)
  (setAsMin :int))

(defcfun ("wxGrid_AutoSizeRow" wxGrid_AutoSizeRow) :void
  (_obj :pointer)
  (row :int)
  (setAsMin :int))

(defcfun ("wxGrid_AutoSizeColumns" wxGrid_AutoSizeColumns) :void
  (_obj :pointer)
  (setAsMin :int))

(defcfun ("wxGrid_AutoSizeRows" wxGrid_AutoSizeRows) :void
  (_obj :pointer)
  (setAsMin :int))

(defcfun ("wxGrid_AutoSize" wxGrid_AutoSize) :void
  (_obj :pointer))

(defcfun ("wxGrid_SetColMinimalWidth" wxGrid_SetColMinimalWidth) :void
  (_obj :pointer)
  (col :int)
  (width :int))

(defcfun ("wxGrid_SetRowMinimalHeight" wxGrid_SetRowMinimalHeight) :void
  (_obj :pointer)
  (row :int)
  (width :int))

(defcfun ("wxGrid_SetDefaultCellBackgroundColour" wxGrid_SetDefaultCellBackgroundColour) :void
  (_obj :pointer)
  (colour :pointer))

(defcfun ("wxGrid_SetCellBackgroundColour" wxGrid_SetCellBackgroundColour) :void
  (_obj :pointer)
  (row :int)
  (col :int)
  (colour :pointer))

(defcfun ("wxGrid_SetDefaultCellTextColour" wxGrid_SetDefaultCellTextColour) :void
  (_obj :pointer)
  (colour :pointer))

(defcfun ("wxGrid_SetCellTextColour" wxGrid_SetCellTextColour) :void
  (_obj :pointer)
  (row :int)
  (col :int)
  (colour :pointer))

(defcfun ("wxGrid_SetDefaultCellFont" wxGrid_SetDefaultCellFont) :void
  (_obj :pointer)
  (font :pointer))

(defcfun ("wxGrid_SetCellFont" wxGrid_SetCellFont) :void
  (_obj :pointer)
  (row :int)
  (col :int)
  (font :pointer))

(defcfun ("wxGrid_SetDefaultCellAlignment" wxGrid_SetDefaultCellAlignment) :void
  (_obj :pointer)
  (horiz :int)
  (vert :int))

(defcfun ("wxGrid_SetCellAlignment" wxGrid_SetCellAlignment) :void
  (_obj :pointer)
  (row :int)
  (col :int)
  (horiz :int)
  (vert :int))

(defcfun ("wxGrid_SetDefaultRenderer" wxGrid_SetDefaultRenderer) :void
  (_obj :pointer)
  (renderer :pointer))

(defcfun ("wxGrid_SetCellRenderer" wxGrid_SetCellRenderer) :void
  (_obj :pointer)
  (row :int)
  (col :int)
  (renderer :pointer))

(defcfun ("wxGrid_GetDefaultRenderer" wxGrid_GetDefaultRenderer) :pointer
  (_obj :pointer))

(defcfun ("wxGrid_GetCellRenderer" wxGrid_GetCellRenderer) :pointer
  (_obj :pointer)
  (row :int)
  (col :int))

(defcfun ("wxGrid_SetDefaultEditor" wxGrid_SetDefaultEditor) :void
  (_obj :pointer)
  (editor :pointer))

(defcfun ("wxGrid_SetCellEditor" wxGrid_SetCellEditor) :void
  (_obj :pointer)
  (row :int)
  (col :int)
  (editor :pointer))

(defcfun ("wxGrid_GetDefaultEditor" wxGrid_GetDefaultEditor) :pointer
  (_obj :pointer))

(defcfun ("wxGrid_GetCellEditor" wxGrid_GetCellEditor) :pointer
  (_obj :pointer)
  (row :int)
  (col :int))

(defcfun ("wxGrid_GetCellValue" wxGrid_GetCellValue) :int
  (_obj :pointer)
  (row :int)
  (col :int)
  (_buf :pointer))

(defcfun ("wxGrid_SetCellValue" wxGrid_SetCellValue) :void
  (_obj :pointer)
  (row :int)
  (col :int)
  (s :pointer))

(defcfun ("wxGrid_IsReadOnly" wxGrid_IsReadOnly) :int
  (_obj :pointer)
  (row :int)
  (col :int))

(defcfun ("wxGrid_SetReadOnly" wxGrid_SetReadOnly) :void
  (_obj :pointer)
  (row :int)
  (col :int)
  (isReadOnly :int))

(defcfun ("wxGrid_SelectRow" wxGrid_SelectRow) :void
  (_obj :pointer)
  (row :int)
  (addToSelected :int))

(defcfun ("wxGrid_SelectCol" wxGrid_SelectCol) :void
  (_obj :pointer)
  (col :int)
  (addToSelected :int))

(defcfun ("wxGrid_SelectBlock" wxGrid_SelectBlock) :void
  (_obj :pointer)
  (topRow :int)
  (leftCol :int)
  (bottomRow :int)
  (rightCol :int)
  (addToSelected :int))

(defcfun ("wxGrid_SelectAll" wxGrid_SelectAll) :void
  (_obj :pointer))

(defcfun ("wxGrid_IsSelection" wxGrid_IsSelection) :int
  (_obj :pointer))

(defcfun ("wxGrid_ClearSelection" wxGrid_ClearSelection) :void
  (_obj :pointer))

(defcfun ("wxGrid_IsInSelection" wxGrid_IsInSelection) :int
  (_obj :pointer)
  (row :int)
  (col :int))

(defcfun ("wxGrid_BlockToDeviceRect" wxGrid_BlockToDeviceRect) :void
  (_obj :pointer)
  (top :int)
  (left :int)
  (bottom :int)
  (right :int)
  (x :int)
  (y :int)
  (w :int)
  (h :int))

(defcfun ("wxGrid_GetSelectionBackground" wxGrid_GetSelectionBackground) :void
  (_obj :pointer)
  (colour :pointer))

(defcfun ("wxGrid_GetSelectionForeground" wxGrid_GetSelectionForeground) :void
  (_obj :pointer)
  (colour :pointer))

(defcfun ("wxGrid_SetSelectionBackground" wxGrid_SetSelectionBackground) :void
  (_obj :pointer)
  (c :pointer))

(defcfun ("wxGrid_SetSelectionForeground" wxGrid_SetSelectionForeground) :void
  (_obj :pointer)
  (c :pointer))

(defcfun ("wxGrid_RegisterDataType" wxGrid_RegisterDataType) :void
  (_obj :pointer)
  (typeName :pointer)
  (renderer :pointer)
  (editor :pointer))

(defcfun ("wxGrid_GetDefaultEditorForCell" wxGrid_GetDefaultEditorForCell) :pointer
  (_obj :pointer)
  (row :int)
  (col :int))

(defcfun ("wxGrid_GetDefaultRendererForCell" wxGrid_GetDefaultRendererForCell) :pointer
  (_obj :pointer)
  (row :int)
  (col :int))

(defcfun ("wxGrid_GetDefaultEditorForType" wxGrid_GetDefaultEditorForType) :pointer
  (_obj :pointer)
  (typeName :pointer))

(defcfun ("wxGrid_GetDefaultRendererForType" wxGrid_GetDefaultRendererForType) :pointer
  (_obj :pointer)
  (typeName :pointer))

(defcfun ("wxGrid_SetMargins" wxGrid_SetMargins) :void
  (_obj :pointer)
  (extraWidth :int)
  (extraHeight :int))

(defcfun ("wxGrid_GetSelectedCells" wxGrid_GetSelectedCells) :void
  (_obj :pointer)
  (_arr :pointer))

(defcfun ("wxGrid_GetSelectionBlockTopLeft" wxGrid_GetSelectionBlockTopLeft) :void
  (_obj :pointer)
  (_arr :pointer))

(defcfun ("wxGrid_GetSelectionBlockBottomRight" wxGrid_GetSelectionBlockBottomRight) :void
  (_obj :pointer)
  (_arr :pointer))

(defcfun ("wxGrid_GetSelectedRows" wxGrid_GetSelectedRows) :int
  (_obj :pointer)
  (_arr :pointer))

(defcfun ("wxGrid_GetSelectedCols" wxGrid_GetSelectedCols) :int
  (_obj :pointer)
  (_arr :pointer))

(defcfun ("ELJGridTable_Create" ELJGridTable_Create) :pointer
  (_obj :pointer)
  (_EifGetNumberRows :pointer)
  (_EifGetNumberCols :pointer)
  (_EifGetValue :pointer)
  (_EifSetValue :pointer)
  (_EifIsEmptyCell :pointer)
  (_EifClear :pointer)
  (_EifInsertRows :pointer)
  (_EifAppendRows :pointer)
  (_EifDeleteRows :pointer)
  (_EifInsertCols :pointer)
  (_EifAppendCols :pointer)
  (_EifDeleteCols :pointer)
  (_EifSetRowLabelValue :pointer)
  (_EifSetColLabelValue :pointer)
  (_EifGetRowLabelValue :pointer)
  (_EifGetColLabelValue :pointer))

(defcfun ("ELJGridTable_Delete" ELJGridTable_Delete) :void
  (_obj :pointer))

(defcfun ("ELJGridTable_GetView" ELJGridTable_GetView) :pointer
  (_obj :pointer))

(defcfun ("ELJGridTable_SendTableMessage" ELJGridTable_SendTableMessage) :void
  (_obj :pointer)
  (id :int)
  (val1 :int)
  (val2 :int))

(defcfun ("wxGridEvent_GetRow" wxGridEvent_GetRow) :int
  (_obj :pointer))

(defcfun ("wxGridEvent_GetCol" wxGridEvent_GetCol) :int
  (_obj :pointer))

(defcfun ("wxGridEvent_GetPosition" wxGridEvent_GetPosition) :void
  (_obj :pointer)
  (_x :pointer)
  (_y :pointer))

(defcfun ("wxGridEvent_Selecting" wxGridEvent_Selecting) :int
  (_obj :pointer))

(defcfun ("wxGridEvent_ControlDown" wxGridEvent_ControlDown) :int
  (_obj :pointer))

(defcfun ("wxGridEvent_MetaDown" wxGridEvent_MetaDown) :int
  (_obj :pointer))

(defcfun ("wxGridEvent_ShiftDown" wxGridEvent_ShiftDown) :int
  (_obj :pointer))

(defcfun ("wxGridEvent_AltDown" wxGridEvent_AltDown) :int
  (_obj :pointer))

(defcfun ("wxGridSizeEvent_GetRowOrCol" wxGridSizeEvent_GetRowOrCol) :int
  (_obj :pointer))

(defcfun ("wxGridSizeEvent_GetPosition" wxGridSizeEvent_GetPosition) :void
  (_obj :pointer)
  (_x :pointer)
  (_y :pointer))

(defcfun ("wxGridSizeEvent_ControlDown" wxGridSizeEvent_ControlDown) :int
  (_obj :pointer))

(defcfun ("wxGridSizeEvent_MetaDown" wxGridSizeEvent_MetaDown) :int
  (_obj :pointer))

(defcfun ("wxGridSizeEvent_ShiftDown" wxGridSizeEvent_ShiftDown) :int
  (_obj :pointer))

(defcfun ("wxGridSizeEvent_AltDown" wxGridSizeEvent_AltDown) :int
  (_obj :pointer))

(defcfun ("wxGridRangeSelectEvent_GetTopLeftCoords" wxGridRangeSelectEvent_GetTopLeftCoords) :void
  (_obj :pointer)
  (_c :pointer)
  (_r :pointer))

(defcfun ("wxGridRangeSelectEvent_GetBottomRightCoords" wxGridRangeSelectEvent_GetBottomRightCoords) :void
  (_obj :pointer)
  (_c :pointer)
  (_r :pointer))

(defcfun ("wxGridRangeSelectEvent_GetTopRow" wxGridRangeSelectEvent_GetTopRow) :int
  (_obj :pointer))

(defcfun ("wxGridRangeSelectEvent_GetBottomRow" wxGridRangeSelectEvent_GetBottomRow) :int
  (_obj :pointer))

(defcfun ("wxGridRangeSelectEvent_GetLeftCol" wxGridRangeSelectEvent_GetLeftCol) :int
  (_obj :pointer))

(defcfun ("wxGridRangeSelectEvent_GetRightCol" wxGridRangeSelectEvent_GetRightCol) :int
  (_obj :pointer))

(defcfun ("wxGridRangeSelectEvent_Selecting" wxGridRangeSelectEvent_Selecting) :int
  (_obj :pointer))

(defcfun ("wxGridRangeSelectEvent_ControlDown" wxGridRangeSelectEvent_ControlDown) :int
  (_obj :pointer))

(defcfun ("wxGridRangeSelectEvent_MetaDown" wxGridRangeSelectEvent_MetaDown) :int
  (_obj :pointer))

(defcfun ("wxGridRangeSelectEvent_ShiftDown" wxGridRangeSelectEvent_ShiftDown) :int
  (_obj :pointer))

(defcfun ("wxGridRangeSelectEvent_AltDown" wxGridRangeSelectEvent_AltDown) :int
  (_obj :pointer))

(defcfun ("wxGridEditorCreatedEvent_GetRow" wxGridEditorCreatedEvent_GetRow) :int
  (_obj :pointer))

(defcfun ("wxGridEditorCreatedEvent_GetCol" wxGridEditorCreatedEvent_GetCol) :int
  (_obj :pointer))

(defcfun ("wxGridEditorCreatedEvent_GetControl" wxGridEditorCreatedEvent_GetControl) :pointer
  (_obj :pointer))

(defcfun ("wxGridEditorCreatedEvent_SetRow" wxGridEditorCreatedEvent_SetRow) :void
  (_obj :pointer)
  (row :int))

(defcfun ("wxGridEditorCreatedEvent_SetCol" wxGridEditorCreatedEvent_SetCol) :void
  (_obj :pointer)
  (col :int))

(defcfun ("wxGridEditorCreatedEvent_SetControl" wxGridEditorCreatedEvent_SetControl) :void
  (_obj :pointer)
  (ctrl :pointer))

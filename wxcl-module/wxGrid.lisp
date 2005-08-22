;;;wxGrid_cpp.lisp
;;;License  : GNU General Public License (GPL)
;;;Author(s) : Surendra Singhi (surendra@asu.edu) 
;;;Copyright (C) 2005 Surendra Singhi 
;;;See the file LICENSE for information on usage and redistribution.
;;;
;;; $Header$
;;;

(defpackage :wxGrid
  (:use :common-lisp :ffi :wxCL)
  (:export
	:wxGridCellCoordsArray_Create
	:wxGridCellCoordsArray_Delete
	:wxGridCellCoordsArray_GetCount
	:wxGridCellCoordsArray_Item
	:wxGridCellEditor_IsCreated
	:wxGridCellEditor_GetControl
	:wxGridCellEditor_SetControl
	:wxGridCellEditor_Create
	:wxGridCellEditor_SetSize
	:wxGridCellEditor_Show
	:wxGridCellEditor_PaintBackground
	:wxGridCellEditor_BeginEdit
	:wxGridCellEditor_EndEdit
	:wxGridCellEditor_Reset
	:wxGridCellEditor_IsAcceptedKey
	:wxGridCellEditor_StartingKey
	:wxGridCellEditor_StartingClick
	:wxGridCellEditor_HandleReturn
	:wxGridCellEditor_Destroy
	:wxGridCellEditor_SetParameters
	:wxGridCellTextEditor_Ctor
	:wxGridCellNumberEditor_Ctor
	:wxGridCellFloatEditor_Ctor
	:wxGridCellBoolEditor_Ctor
	:wxGridCellChoiceEditor_Ctor
	:wxGridCellAttr_Ctor
	:wxGridCellAttr_IncRef
	:wxGridCellAttr_DecRef
	:wxGridCellAttr_SetTextColour
	:wxGridCellAttr_SetBackgroundColour
	:wxGridCellAttr_SetFont
	:wxGridCellAttr_SetAlignment
	:wxGridCellAttr_SetReadOnly
	:wxGridCellAttr_SetRenderer
	:wxGridCellAttr_SetEditor
	:wxGridCellAttr_HasTextColour
	:wxGridCellAttr_HasBackgroundColour
	:wxGridCellAttr_HasFont
	:wxGridCellAttr_HasAlignment
	:wxGridCellAttr_HasRenderer
	:wxGridCellAttr_HasEditor
	:wxGridCellAttr_GetTextColour
	:wxGridCellAttr_GetBackgroundColour
	:wxGridCellAttr_GetFont
	:wxGridCellAttr_GetAlignment
	:wxGridCellAttr_GetRenderer
	:wxGridCellAttr_GetEditor
	:wxGridCellAttr_IsReadOnly
	:wxGridCellAttr_SetDefAttr
	:wxGrid_Create
	:wxGrid_CreateGrid
	:wxGrid_SetSelectionMode
	:wxGrid_GetNumberRows
	:wxGrid_GetNumberCols
	:wxGrid_CalcRowLabelsExposed
	:wxGrid_CalcColLabelsExposed
	:wxGrid_CalcCellsExposed
	:wxGrid_NewCalcCellsExposed
	:wxGrid_ProcessRowLabelMouseEvent
	:wxGrid_ProcessColLabelMouseEvent
	:wxGrid_ProcessCornerLabelMouseEvent
	:wxGrid_ProcessGridCellMouseEvent
	:wxGrid_ProcessTableMessage
	:wxGrid_DoEndDragResizeRow
	:wxGrid_DoEndDragResizeCol
	:wxGrid_GetTable
	:wxGrid_SetTable
	:wxGrid_ClearGrid
	:wxGrid_InsertRows
	:wxGrid_AppendRows
	:wxGrid_DeleteRows
	:wxGrid_InsertCols
	:wxGrid_AppendCols
	:wxGrid_DeleteCols
	:wxGrid_DrawGridCellArea
	:wxGrid_NewDrawGridCellArea
	:wxGrid_DrawGridSpace
	:wxGrid_DrawCellBorder
	:wxGrid_DrawAllGridLines
	:wxGrid_DrawCell
	:wxGrid_DrawHighlight
	:wxGrid_NewDrawHighlight
	:wxGrid_DrawCellHighlight
	:wxGrid_DrawRowLabels
	:wxGrid_DrawRowLabel
	:wxGrid_DrawColLabels
	:wxGrid_DrawColLabel
	:wxGrid_DrawTextRectangle
	:wxGrid_StringToLines
	:wxGrid_GetTextBoxSize
	:wxGrid_BeginBatch
	:wxGrid_EndBatch
	:wxGrid_GetBatchCount
	:wxGrid_IsEditable
	:wxGrid_EnableEditing
	:wxGrid_EnableCellEditControl
	:wxGrid_DisableCellEditControl
	:wxGrid_CanEnableCellControl
	:wxGrid_IsCellEditControlEnabled
	:wxGrid_IsCellEditControlShown
	:wxGrid_IsCurrentCellReadOnly
	:wxGrid_ShowCellEditControl
	:wxGrid_HideCellEditControl
	:wxGrid_SaveEditControlValue
	:wxGrid_XYToCell
	:wxGrid_YToRow
	:wxGrid_XToCol
	:wxGrid_YToEdgeOfRow
	:wxGrid_XToEdgeOfCol
	:wxGrid_CellToRect
	:wxGrid_GetGridCursorRow
	:wxGrid_GetGridCursorCol
	:wxGrid_IsVisible
	:wxGrid_MakeCellVisible
	:wxGrid_SetGridCursor
	:wxGrid_MoveCursorUp
	:wxGrid_MoveCursorDown
	:wxGrid_MoveCursorLeft
	:wxGrid_MoveCursorRight
	:wxGrid_MovePageDown
	:wxGrid_MovePageUp
	:wxGrid_MoveCursorUpBlock
	:wxGrid_MoveCursorDownBlock
	:wxGrid_MoveCursorLeftBlock
	:wxGrid_MoveCursorRightBlock
	:wxGrid_GetDefaultRowLabelSize
	:wxGrid_GetRowLabelSize
	:wxGrid_GetDefaultColLabelSize
	:wxGrid_GetColLabelSize
	:wxGrid_GetLabelBackgroundColour
	:wxGrid_GetLabelTextColour
	:wxGrid_GetLabelFont
	:wxGrid_GetRowLabelAlignment
	:wxGrid_GetColLabelAlignment
	:wxGrid_GetRowLabelValue
	:wxGrid_GetColLabelValue
	:wxGrid_GetGridLineColour
	:wxGrid_GetCellHighlightColour
	:wxGrid_SetRowLabelSize
	:wxGrid_SetColLabelSize
	:wxGrid_SetLabelBackgroundColour
	:wxGrid_SetLabelTextColour
	:wxGrid_SetLabelFont
	:wxGrid_SetRowLabelAlignment
	:wxGrid_SetColLabelAlignment
	:wxGrid_SetRowLabelValue
	:wxGrid_SetColLabelValue
	:wxGrid_SetGridLineColour
	:wxGrid_SetCellHighlightColour
	:wxGrid_EnableDragRowSize
	:wxGrid_DisableDragRowSize
	:wxGrid_CanDragRowSize
	:wxGrid_EnableDragColSize
	:wxGrid_DisableDragColSize
	:wxGrid_CanDragColSize
	:wxGrid_EnableDragGridSize
	:wxGrid_DisableDragGridSize
	:wxGrid_CanDragGridSize
	:wxGrid_SetRowAttr
	:wxGrid_SetColAttr
	:wxGrid_SetColFormatBool
	:wxGrid_SetColFormatNumber
	:wxGrid_SetColFormatFloat
	:wxGrid_SetColFormatCustom
	:wxGrid_EnableGridLines
	:wxGrid_GridLinesEnabled
	:wxGrid_GetDefaultRowSize
	:wxGrid_GetRowSize
	:wxGrid_GetDefaultColSize
	:wxGrid_GetColSize
	:wxGrid_GetDefaultCellBackgroundColour
	:wxGrid_GetCellBackgroundColour
	:wxGrid_GetDefaultCellTextColour
	:wxGrid_GetCellTextColour
	:wxGrid_GetDefaultCellFont
	:wxGrid_GetCellFont
	:wxGrid_GetDefaultCellAlignment
	:wxGrid_GetCellAlignment
	:wxGrid_SetDefaultRowSize
	:wxGrid_SetRowSize
	:wxGrid_SetDefaultColSize
	:wxGrid_SetColSize
	:wxGrid_AutoSizeColumn
	:wxGrid_AutoSizeRow
	:wxGrid_AutoSizeColumns
	:wxGrid_AutoSizeRows
	:wxGrid_AutoSize
	:wxGrid_SetColMinimalWidth
	:wxGrid_SetRowMinimalHeight
	:wxGrid_SetDefaultCellBackgroundColour
	:wxGrid_SetCellBackgroundColour
	:wxGrid_SetDefaultCellTextColour
	:wxGrid_SetCellTextColour
	:wxGrid_SetDefaultCellFont
	:wxGrid_SetCellFont
	:wxGrid_SetDefaultCellAlignment
	:wxGrid_SetCellAlignment
	:wxGrid_SetDefaultRenderer
	:wxGrid_SetCellRenderer
	:wxGrid_GetDefaultRenderer
	:wxGrid_GetCellRenderer
	:wxGrid_SetDefaultEditor
	:wxGrid_SetCellEditor
	:wxGrid_GetDefaultEditor
	:wxGrid_GetCellEditor
	:wxGrid_GetCellValue
	:wxGrid_SetCellValue
	:wxGrid_IsReadOnly
	:wxGrid_SetReadOnly
	:wxGrid_SelectRow
	:wxGrid_SelectCol
	:wxGrid_SelectBlock
	:wxGrid_SelectAll
	:wxGrid_IsSelection
	:wxGrid_ClearSelection
	:wxGrid_IsInSelection
	:wxGrid_BlockToDeviceRect
	:wxGrid_GetSelectionBackground
	:wxGrid_GetSelectionForeground
	:wxGrid_SetSelectionBackground
	:wxGrid_SetSelectionForeground
	:wxGrid_RegisterDataType
	:wxGrid_GetDefaultEditorForCell
	:wxGrid_GetDefaultRendererForCell
	:wxGrid_GetDefaultEditorForType
	:wxGrid_GetDefaultRendererForType
	:wxGrid_SetMargins
	:wxGrid_GetSelectedCells
	:wxGrid_GetSelectionBlockTopLeft
	:wxGrid_GetSelectionBlockBottomRight
	:wxGrid_GetSelectedRows
	:wxGrid_GetSelectedCols
	:ELJGridTable_Create
	:ELJGridTable_Delete
	:ELJGridTable_GetView
	:ELJGridTable_SendTableMessage
	:wxGridEvent_GetRow
	:wxGridEvent_GetCol
	:wxGridEvent_GetPosition
	:wxGridEvent_Selecting
	:wxGridEvent_ControlDown
	:wxGridEvent_MetaDown
	:wxGridEvent_ShiftDown
	:wxGridEvent_AltDown
	:wxGridSizeEvent_GetRowOrCol
	:wxGridSizeEvent_GetPosition
	:wxGridSizeEvent_ControlDown
	:wxGridSizeEvent_MetaDown
	:wxGridSizeEvent_ShiftDown
	:wxGridSizeEvent_AltDown
	:wxGridRangeSelectEvent_GetTopLeftCoords
	:wxGridRangeSelectEvent_GetBottomRightCoords
	:wxGridRangeSelectEvent_GetTopRow
	:wxGridRangeSelectEvent_GetBottomRow
	:wxGridRangeSelectEvent_GetLeftCol
	:wxGridRangeSelectEvent_GetRightCol
	:wxGridRangeSelectEvent_Selecting
	:wxGridRangeSelectEvent_ControlDown
	:wxGridRangeSelectEvent_MetaDown
	:wxGridRangeSelectEvent_ShiftDown
	:wxGridRangeSelectEvent_AltDown
	:wxGridEditorCreatedEvent_GetRow
	:wxGridEditorCreatedEvent_GetCol
	:wxGridEditorCreatedEvent_GetControl
	:wxGridEditorCreatedEvent_SetRow
	:wxGridEditorCreatedEvent_SetCol
	:wxGridEditorCreatedEvent_SetControl))

(in-package :wxGrid)

(ffi:default-foreign-language :stdc)

(ffi:c-lines "#include <wxc.h>~%")

(ffi:def-call-out wxGridCellCoordsArray_Create
	(:name "wxGridCellCoordsArray_Create")
	(:return-type (ffi:c-pointer NIL))
	) ;; (:library +library-name+))

(ffi:def-call-out wxGridCellCoordsArray_Delete
	(:name "wxGridCellCoordsArray_Delete")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type NIL)
	) ;; (:library +library-name+))

(ffi:def-call-out wxGridCellCoordsArray_GetCount
	(:name "wxGridCellCoordsArray_GetCount")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	) ;; (:library +library-name+))

(ffi:def-call-out wxGridCellCoordsArray_Item
	(:name "wxGridCellCoordsArray_Item")
	(:arguments (_obj (ffi:c-pointer NIL))
		(_idx ffi:int)
		(_c (ffi:c-pointer NIL))
		(_r (ffi:c-pointer NIL)))
	(:return-type NIL)
	) ;; (:library +library-name+))

(ffi:def-call-out wxGridCellEditor_IsCreated
	(:name "wxGridCellEditor_IsCreated")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	) ;; (:library +library-name+))

(ffi:def-call-out wxGridCellEditor_GetControl
	(:name "wxGridCellEditor_GetControl")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type (ffi:c-pointer NIL))
	) ;; (:library +library-name+))

(ffi:def-call-out wxGridCellEditor_SetControl
	(:name "wxGridCellEditor_SetControl")
	(:arguments (_obj (ffi:c-pointer NIL))
		(control (ffi:c-pointer NIL)))
	(:return-type NIL)
	) ;; (:library +library-name+))

(ffi:def-call-out wxGridCellEditor_Create
	(:name "wxGridCellEditor_Create")
	(:arguments (_obj (ffi:c-pointer NIL))
		(parent (ffi:c-pointer NIL))
		(id ffi:int)
		(evtHandler (ffi:c-pointer NIL)))
	(:return-type NIL)
	) ;; (:library +library-name+))

(ffi:def-call-out wxGridCellEditor_SetSize
	(:name "wxGridCellEditor_SetSize")
	(:arguments (_obj (ffi:c-pointer NIL))
		(x ffi:int)
		(y ffi:int)
		(w ffi:int)
		(h ffi:int))
	(:return-type NIL)
	) ;; (:library +library-name+))

(ffi:def-call-out wxGridCellEditor_Show
	(:name "wxGridCellEditor_Show")
	(:arguments (_obj (ffi:c-pointer NIL))
		(show ffi:int)
		(attr (ffi:c-pointer NIL)))
	(:return-type NIL)
	) ;; (:library +library-name+))

(ffi:def-call-out wxGridCellEditor_PaintBackground
	(:name "wxGridCellEditor_PaintBackground")
	(:arguments (_obj (ffi:c-pointer NIL))
		(x ffi:int)
		(y ffi:int)
		(w ffi:int)
		(h ffi:int)
		(attr (ffi:c-pointer NIL)))
	(:return-type NIL)
	) ;; (:library +library-name+))

(ffi:def-call-out wxGridCellEditor_BeginEdit
	(:name "wxGridCellEditor_BeginEdit")
	(:arguments (_obj (ffi:c-pointer NIL))
		(row ffi:int)
		(col ffi:int)
		(grid (ffi:c-pointer NIL)))
	(:return-type NIL)
	) ;; (:library +library-name+))

(ffi:def-call-out wxGridCellEditor_EndEdit
	(:name "wxGridCellEditor_EndEdit")
	(:arguments (_obj (ffi:c-pointer NIL))
		(row ffi:int)
		(col ffi:int)
		(grid (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	) ;; (:library +library-name+))

(ffi:def-call-out wxGridCellEditor_Reset
	(:name "wxGridCellEditor_Reset")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type NIL)
	) ;; (:library +library-name+))

(ffi:def-call-out wxGridCellEditor_IsAcceptedKey
	(:name "wxGridCellEditor_IsAcceptedKey")
	(:arguments (_obj (ffi:c-pointer NIL))
		(event (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	) ;; (:library +library-name+))

(ffi:def-call-out wxGridCellEditor_StartingKey
	(:name "wxGridCellEditor_StartingKey")
	(:arguments (_obj (ffi:c-pointer NIL))
		(event (ffi:c-pointer NIL)))
	(:return-type NIL)
	) ;; (:library +library-name+))

(ffi:def-call-out wxGridCellEditor_StartingClick
	(:name "wxGridCellEditor_StartingClick")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type NIL)
	) ;; (:library +library-name+))

(ffi:def-call-out wxGridCellEditor_HandleReturn
	(:name "wxGridCellEditor_HandleReturn")
	(:arguments (_obj (ffi:c-pointer NIL))
		(event (ffi:c-pointer NIL)))
	(:return-type NIL)
	) ;; (:library +library-name+))

(ffi:def-call-out wxGridCellEditor_Destroy
	(:name "wxGridCellEditor_Destroy")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type NIL)
	) ;; (:library +library-name+))

(ffi:def-call-out wxGridCellEditor_SetParameters
	(:name "wxGridCellEditor_SetParameters")
	(:arguments (_obj (ffi:c-pointer NIL))
		(params (ffi:c-pointer NIL)))
	(:return-type NIL)
	) ;; (:library +library-name+))

(ffi:def-call-out wxGridCellTextEditor_Ctor
	(:name "wxGridCellTextEditor_Ctor")
	(:return-type (ffi:c-pointer NIL))
	) ;; (:library +library-name+))

(ffi:def-call-out wxGridCellNumberEditor_Ctor
	(:name "wxGridCellNumberEditor_Ctor")
	(:arguments (min ffi:int)
		(max ffi:int))
	(:return-type (ffi:c-pointer NIL))
	) ;; (:library +library-name+))

(ffi:def-call-out wxGridCellFloatEditor_Ctor
	(:name "wxGridCellFloatEditor_Ctor")
	(:arguments (width ffi:int)
		(precision ffi:int))
	(:return-type (ffi:c-pointer NIL))
	) ;; (:library +library-name+))

(ffi:def-call-out wxGridCellBoolEditor_Ctor
	(:name "wxGridCellBoolEditor_Ctor")
	(:return-type (ffi:c-pointer NIL))
	) ;; (:library +library-name+))

(ffi:def-call-out wxGridCellChoiceEditor_Ctor
	(:name "wxGridCellChoiceEditor_Ctor")
	(:arguments (count ffi:int)
		(choices (ffi:c-pointer NIL))
		(allowOthers ffi:int))
	(:return-type (ffi:c-pointer NIL))
	) ;; (:library +library-name+))

(ffi:def-call-out wxGridCellAttr_Ctor
	(:name "wxGridCellAttr_Ctor")
	(:return-type (ffi:c-pointer NIL))
	) ;; (:library +library-name+))

(ffi:def-call-out wxGridCellAttr_IncRef
	(:name "wxGridCellAttr_IncRef")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type NIL)
	) ;; (:library +library-name+))

(ffi:def-call-out wxGridCellAttr_DecRef
	(:name "wxGridCellAttr_DecRef")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type NIL)
	) ;; (:library +library-name+))

(ffi:def-call-out wxGridCellAttr_SetTextColour
	(:name "wxGridCellAttr_SetTextColour")
	(:arguments (_obj (ffi:c-pointer NIL))
		(colText (ffi:c-pointer NIL)))
	(:return-type NIL)
	) ;; (:library +library-name+))

(ffi:def-call-out wxGridCellAttr_SetBackgroundColour
	(:name "wxGridCellAttr_SetBackgroundColour")
	(:arguments (_obj (ffi:c-pointer NIL))
		(colBack (ffi:c-pointer NIL)))
	(:return-type NIL)
	) ;; (:library +library-name+))

(ffi:def-call-out wxGridCellAttr_SetFont
	(:name "wxGridCellAttr_SetFont")
	(:arguments (_obj (ffi:c-pointer NIL))
		(font (ffi:c-pointer NIL)))
	(:return-type NIL)
	) ;; (:library +library-name+))

(ffi:def-call-out wxGridCellAttr_SetAlignment
	(:name "wxGridCellAttr_SetAlignment")
	(:arguments (_obj (ffi:c-pointer NIL))
		(hAlign ffi:int)
		(vAlign ffi:int))
	(:return-type NIL)
	) ;; (:library +library-name+))

(ffi:def-call-out wxGridCellAttr_SetReadOnly
	(:name "wxGridCellAttr_SetReadOnly")
	(:arguments (_obj (ffi:c-pointer NIL))
		(isReadOnly ffi:int))
	(:return-type NIL)
	) ;; (:library +library-name+))

(ffi:def-call-out wxGridCellAttr_SetRenderer
	(:name "wxGridCellAttr_SetRenderer")
	(:arguments (_obj (ffi:c-pointer NIL))
		(renderer (ffi:c-pointer NIL)))
	(:return-type NIL)
	) ;; (:library +library-name+))

(ffi:def-call-out wxGridCellAttr_SetEditor
	(:name "wxGridCellAttr_SetEditor")
	(:arguments (_obj (ffi:c-pointer NIL))
		(editor (ffi:c-pointer NIL)))
	(:return-type NIL)
	) ;; (:library +library-name+))

(ffi:def-call-out wxGridCellAttr_HasTextColour
	(:name "wxGridCellAttr_HasTextColour")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	) ;; (:library +library-name+))

(ffi:def-call-out wxGridCellAttr_HasBackgroundColour
	(:name "wxGridCellAttr_HasBackgroundColour")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	) ;; (:library +library-name+))

(ffi:def-call-out wxGridCellAttr_HasFont
	(:name "wxGridCellAttr_HasFont")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	) ;; (:library +library-name+))

(ffi:def-call-out wxGridCellAttr_HasAlignment
	(:name "wxGridCellAttr_HasAlignment")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	) ;; (:library +library-name+))

(ffi:def-call-out wxGridCellAttr_HasRenderer
	(:name "wxGridCellAttr_HasRenderer")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	) ;; (:library +library-name+))

(ffi:def-call-out wxGridCellAttr_HasEditor
	(:name "wxGridCellAttr_HasEditor")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	) ;; (:library +library-name+))

(ffi:def-call-out wxGridCellAttr_GetTextColour
	(:name "wxGridCellAttr_GetTextColour")
	(:arguments (_obj (ffi:c-pointer NIL))
		(colour (ffi:c-pointer NIL)))
	(:return-type NIL)
	) ;; (:library +library-name+))

(ffi:def-call-out wxGridCellAttr_GetBackgroundColour
	(:name "wxGridCellAttr_GetBackgroundColour")
	(:arguments (_obj (ffi:c-pointer NIL))
		(colour (ffi:c-pointer NIL)))
	(:return-type NIL)
	) ;; (:library +library-name+))

(ffi:def-call-out wxGridCellAttr_GetFont
	(:name "wxGridCellAttr_GetFont")
	(:arguments (_obj (ffi:c-pointer NIL))
		(font (ffi:c-pointer NIL)))
	(:return-type NIL)
	) ;; (:library +library-name+))

(ffi:def-call-out wxGridCellAttr_GetAlignment
	(:name "wxGridCellAttr_GetAlignment")
	(:arguments (_obj (ffi:c-pointer NIL))
		(hAlign (ffi:c-pointer NIL))
		(vAlign (ffi:c-pointer NIL)))
	(:return-type NIL)
	) ;; (:library +library-name+))

(ffi:def-call-out wxGridCellAttr_GetRenderer
	(:name "wxGridCellAttr_GetRenderer")
	(:arguments (_obj (ffi:c-pointer NIL))
		(grid (ffi:c-pointer NIL))
		(row ffi:int)
		(col ffi:int))
	(:return-type (ffi:c-pointer NIL))
	) ;; (:library +library-name+))

(ffi:def-call-out wxGridCellAttr_GetEditor
	(:name "wxGridCellAttr_GetEditor")
	(:arguments (_obj (ffi:c-pointer NIL))
		(grid (ffi:c-pointer NIL))
		(row ffi:int)
		(col ffi:int))
	(:return-type (ffi:c-pointer NIL))
	) ;; (:library +library-name+))

(ffi:def-call-out wxGridCellAttr_IsReadOnly
	(:name "wxGridCellAttr_IsReadOnly")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	) ;; (:library +library-name+))

(ffi:def-call-out wxGridCellAttr_SetDefAttr
	(:name "wxGridCellAttr_SetDefAttr")
	(:arguments (_obj (ffi:c-pointer NIL))
		(defAttr (ffi:c-pointer NIL)))
	(:return-type NIL)
	) ;; (:library +library-name+))

(ffi:def-call-out wxGrid_Create
	(:name "wxGrid_Create")
	(:arguments (_prt (ffi:c-pointer NIL))
		(_id ffi:int)
		(_lft ffi:int)
		(_top ffi:int)
		(_wdt ffi:int)
		(_hgt ffi:int)
		(_stl ffi:int))
	(:return-type (ffi:c-pointer NIL))
	) ;; (:library +library-name+))

(ffi:def-call-out wxGrid_CreateGrid
	(:name "wxGrid_CreateGrid")
	(:arguments (_obj (ffi:c-pointer NIL))
		(rows ffi:int)
		(cols ffi:int)
		(selmode ffi:int))
	(:return-type NIL)
	) ;; (:library +library-name+))

(ffi:def-call-out wxGrid_SetSelectionMode
	(:name "wxGrid_SetSelectionMode")
	(:arguments (_obj (ffi:c-pointer NIL))
		(selmode ffi:int))
	(:return-type NIL)
	) ;; (:library +library-name+))

(ffi:def-call-out wxGrid_GetNumberRows
	(:name "wxGrid_GetNumberRows")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	) ;; (:library +library-name+))

(ffi:def-call-out wxGrid_GetNumberCols
	(:name "wxGrid_GetNumberCols")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	) ;; (:library +library-name+))

(ffi:def-call-out wxGrid_CalcRowLabelsExposed
	(:name "wxGrid_CalcRowLabelsExposed")
	(:arguments (_obj (ffi:c-pointer NIL))
		(reg (ffi:c-pointer NIL)))
	(:return-type NIL)
	) ;; (:library +library-name+))

(ffi:def-call-out wxGrid_CalcColLabelsExposed
	(:name "wxGrid_CalcColLabelsExposed")
	(:arguments (_obj (ffi:c-pointer NIL))
		(reg (ffi:c-pointer NIL)))
	(:return-type NIL)
	) ;; (:library +library-name+))

(ffi:def-call-out wxGrid_CalcCellsExposed
	(:name "wxGrid_CalcCellsExposed")
	(:arguments (_obj (ffi:c-pointer NIL))
		(reg (ffi:c-pointer NIL)))
	(:return-type NIL)
	) ;; (:library +library-name+))

(ffi:def-call-out wxGrid_NewCalcCellsExposed
	(:name "wxGrid_NewCalcCellsExposed")
	(:arguments (_obj (ffi:c-pointer NIL))
		(reg (ffi:c-pointer NIL))
		(arr (ffi:c-pointer NIL)))
	(:return-type NIL)
	) ;; (:library +library-name+))

(ffi:def-call-out wxGrid_ProcessRowLabelMouseEvent
	(:name "wxGrid_ProcessRowLabelMouseEvent")
	(:arguments (_obj (ffi:c-pointer NIL))
		(event (ffi:c-pointer NIL)))
	(:return-type NIL)
	) ;; (:library +library-name+))

(ffi:def-call-out wxGrid_ProcessColLabelMouseEvent
	(:name "wxGrid_ProcessColLabelMouseEvent")
	(:arguments (_obj (ffi:c-pointer NIL))
		(event (ffi:c-pointer NIL)))
	(:return-type NIL)
	) ;; (:library +library-name+))

(ffi:def-call-out wxGrid_ProcessCornerLabelMouseEvent
	(:name "wxGrid_ProcessCornerLabelMouseEvent")
	(:arguments (_obj (ffi:c-pointer NIL))
		(event (ffi:c-pointer NIL)))
	(:return-type NIL)
	) ;; (:library +library-name+))

(ffi:def-call-out wxGrid_ProcessGridCellMouseEvent
	(:name "wxGrid_ProcessGridCellMouseEvent")
	(:arguments (_obj (ffi:c-pointer NIL))
		(event (ffi:c-pointer NIL)))
	(:return-type NIL)
	) ;; (:library +library-name+))

(ffi:def-call-out wxGrid_ProcessTableMessage
	(:name "wxGrid_ProcessTableMessage")
	(:arguments (_obj (ffi:c-pointer NIL))
		(evt (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	) ;; (:library +library-name+))

(ffi:def-call-out wxGrid_DoEndDragResizeRow
	(:name "wxGrid_DoEndDragResizeRow")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type NIL)
	) ;; (:library +library-name+))

(ffi:def-call-out wxGrid_DoEndDragResizeCol
	(:name "wxGrid_DoEndDragResizeCol")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type NIL)
	) ;; (:library +library-name+))

(ffi:def-call-out wxGrid_GetTable
	(:name "wxGrid_GetTable")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type (ffi:c-pointer NIL))
	) ;; (:library +library-name+))

(ffi:def-call-out wxGrid_SetTable
	(:name "wxGrid_SetTable")
	(:arguments (_obj (ffi:c-pointer NIL))
		(table (ffi:c-pointer NIL))
		(takeOwnership ffi:int)
		(selmode ffi:int))
	(:return-type ffi:int)
	) ;; (:library +library-name+))

(ffi:def-call-out wxGrid_ClearGrid
	(:name "wxGrid_ClearGrid")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type NIL)
	) ;; (:library +library-name+))

(ffi:def-call-out wxGrid_InsertRows
	(:name "wxGrid_InsertRows")
	(:arguments (_obj (ffi:c-pointer NIL))
		(pos ffi:int)
		(numRows ffi:int)
		(updateLabels ffi:int))
	(:return-type ffi:int)
	) ;; (:library +library-name+))

(ffi:def-call-out wxGrid_AppendRows
	(:name "wxGrid_AppendRows")
	(:arguments (_obj (ffi:c-pointer NIL))
		(numRows ffi:int)
		(updateLabels ffi:int))
	(:return-type ffi:int)
	) ;; (:library +library-name+))

(ffi:def-call-out wxGrid_DeleteRows
	(:name "wxGrid_DeleteRows")
	(:arguments (_obj (ffi:c-pointer NIL))
		(pos ffi:int)
		(numRows ffi:int)
		(updateLabels ffi:int))
	(:return-type ffi:int)
	) ;; (:library +library-name+))

(ffi:def-call-out wxGrid_InsertCols
	(:name "wxGrid_InsertCols")
	(:arguments (_obj (ffi:c-pointer NIL))
		(pos ffi:int)
		(numCols ffi:int)
		(updateLabels ffi:int))
	(:return-type ffi:int)
	) ;; (:library +library-name+))

(ffi:def-call-out wxGrid_AppendCols
	(:name "wxGrid_AppendCols")
	(:arguments (_obj (ffi:c-pointer NIL))
		(numCols ffi:int)
		(updateLabels ffi:int))
	(:return-type ffi:int)
	) ;; (:library +library-name+))

(ffi:def-call-out wxGrid_DeleteCols
	(:name "wxGrid_DeleteCols")
	(:arguments (_obj (ffi:c-pointer NIL))
		(pos ffi:int)
		(numCols ffi:int)
		(updateLabels ffi:int))
	(:return-type ffi:int)
	) ;; (:library +library-name+))

(ffi:def-call-out wxGrid_DrawGridCellArea
	(:name "wxGrid_DrawGridCellArea")
	(:arguments (_obj (ffi:c-pointer NIL))
		(dc (ffi:c-pointer NIL)))
	(:return-type NIL)
	) ;; (:library +library-name+))

(ffi:def-call-out wxGrid_NewDrawGridCellArea
	(:name "wxGrid_NewDrawGridCellArea")
	(:arguments (_obj (ffi:c-pointer NIL))
		(dc (ffi:c-pointer NIL))
		(arr (ffi:c-pointer NIL)))
	(:return-type NIL)
	) ;; (:library +library-name+))

(ffi:def-call-out wxGrid_DrawGridSpace
	(:name "wxGrid_DrawGridSpace")
	(:arguments (_obj (ffi:c-pointer NIL))
		(dc (ffi:c-pointer NIL)))
	(:return-type NIL)
	) ;; (:library +library-name+))

(ffi:def-call-out wxGrid_DrawCellBorder
	(:name "wxGrid_DrawCellBorder")
	(:arguments (_obj (ffi:c-pointer NIL))
		(dc (ffi:c-pointer NIL))
		(_row ffi:int)
		(_col ffi:int))
	(:return-type NIL)
	) ;; (:library +library-name+))

(ffi:def-call-out wxGrid_DrawAllGridLines
	(:name "wxGrid_DrawAllGridLines")
	(:arguments (_obj (ffi:c-pointer NIL))
		(dc (ffi:c-pointer NIL))
		(reg (ffi:c-pointer NIL)))
	(:return-type NIL)
	) ;; (:library +library-name+))

(ffi:def-call-out wxGrid_DrawCell
	(:name "wxGrid_DrawCell")
	(:arguments (_obj (ffi:c-pointer NIL))
		(dc (ffi:c-pointer NIL))
		(_row ffi:int)
		(_col ffi:int))
	(:return-type NIL)
	) ;; (:library +library-name+))

(ffi:def-call-out wxGrid_DrawHighlight
	(:name "wxGrid_DrawHighlight")
	(:arguments (_obj (ffi:c-pointer NIL))
		(dc (ffi:c-pointer NIL)))
	(:return-type NIL)
	) ;; (:library +library-name+))

(ffi:def-call-out wxGrid_NewDrawHighlight
	(:name "wxGrid_NewDrawHighlight")
	(:arguments (_obj (ffi:c-pointer NIL))
		(dc (ffi:c-pointer NIL))
		(arr (ffi:c-pointer NIL)))
	(:return-type NIL)
	) ;; (:library +library-name+))

(ffi:def-call-out wxGrid_DrawCellHighlight
	(:name "wxGrid_DrawCellHighlight")
	(:arguments (_obj (ffi:c-pointer NIL))
		(dc (ffi:c-pointer NIL))
		(attr (ffi:c-pointer NIL)))
	(:return-type NIL)
	) ;; (:library +library-name+))

(ffi:def-call-out wxGrid_DrawRowLabels
	(:name "wxGrid_DrawRowLabels")
	(:arguments (_obj (ffi:c-pointer NIL))
		(dc (ffi:c-pointer NIL)))
	(:return-type NIL)
	) ;; (:library +library-name+))

(ffi:def-call-out wxGrid_DrawRowLabel
	(:name "wxGrid_DrawRowLabel")
	(:arguments (_obj (ffi:c-pointer NIL))
		(dc (ffi:c-pointer NIL))
		(row ffi:int))
	(:return-type NIL)
	) ;; (:library +library-name+))

(ffi:def-call-out wxGrid_DrawColLabels
	(:name "wxGrid_DrawColLabels")
	(:arguments (_obj (ffi:c-pointer NIL))
		(dc (ffi:c-pointer NIL)))
	(:return-type NIL)
	) ;; (:library +library-name+))

(ffi:def-call-out wxGrid_DrawColLabel
	(:name "wxGrid_DrawColLabel")
	(:arguments (_obj (ffi:c-pointer NIL))
		(dc (ffi:c-pointer NIL))
		(col ffi:int))
	(:return-type NIL)
	) ;; (:library +library-name+))

(ffi:def-call-out wxGrid_DrawTextRectangle
	(:name "wxGrid_DrawTextRectangle")
	(:arguments (_obj (ffi:c-pointer NIL))
		(dc (ffi:c-pointer NIL))
		(txt (ffi:c-pointer NIL))
		(x ffi:int)
		(y ffi:int)
		(w ffi:int)
		(h ffi:int)
		(horizontalAlignment ffi:int)
		(verticalAlignment ffi:int))
	(:return-type NIL)
	) ;; (:library +library-name+))

(ffi:def-call-out wxGrid_StringToLines
	(:name "wxGrid_StringToLines")
	(:arguments (_obj (ffi:c-pointer NIL))
		(value (ffi:c-pointer NIL))
		(lines (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	) ;; (:library +library-name+))

(ffi:def-call-out wxGrid_GetTextBoxSize
	(:name "wxGrid_GetTextBoxSize")
	(:arguments (_obj (ffi:c-pointer NIL))
		(dc (ffi:c-pointer NIL))
		(count ffi:int)
		(lines (ffi:c-pointer NIL))
		(width (ffi:c-pointer NIL))
		(height (ffi:c-pointer NIL)))
	(:return-type NIL)
	) ;; (:library +library-name+))

(ffi:def-call-out wxGrid_BeginBatch
	(:name "wxGrid_BeginBatch")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type NIL)
	) ;; (:library +library-name+))

(ffi:def-call-out wxGrid_EndBatch
	(:name "wxGrid_EndBatch")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type NIL)
	) ;; (:library +library-name+))

(ffi:def-call-out wxGrid_GetBatchCount
	(:name "wxGrid_GetBatchCount")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	) ;; (:library +library-name+))

(ffi:def-call-out wxGrid_IsEditable
	(:name "wxGrid_IsEditable")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	) ;; (:library +library-name+))

(ffi:def-call-out wxGrid_EnableEditing
	(:name "wxGrid_EnableEditing")
	(:arguments (_obj (ffi:c-pointer NIL))
		(edit ffi:int))
	(:return-type NIL)
	) ;; (:library +library-name+))

(ffi:def-call-out wxGrid_EnableCellEditControl
	(:name "wxGrid_EnableCellEditControl")
	(:arguments (_obj (ffi:c-pointer NIL))
		(enable ffi:int))
	(:return-type NIL)
	) ;; (:library +library-name+))

(ffi:def-call-out wxGrid_DisableCellEditControl
	(:name "wxGrid_DisableCellEditControl")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type NIL)
	) ;; (:library +library-name+))

(ffi:def-call-out wxGrid_CanEnableCellControl
	(:name "wxGrid_CanEnableCellControl")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	) ;; (:library +library-name+))

(ffi:def-call-out wxGrid_IsCellEditControlEnabled
	(:name "wxGrid_IsCellEditControlEnabled")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	) ;; (:library +library-name+))

(ffi:def-call-out wxGrid_IsCellEditControlShown
	(:name "wxGrid_IsCellEditControlShown")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	) ;; (:library +library-name+))

(ffi:def-call-out wxGrid_IsCurrentCellReadOnly
	(:name "wxGrid_IsCurrentCellReadOnly")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	) ;; (:library +library-name+))

(ffi:def-call-out wxGrid_ShowCellEditControl
	(:name "wxGrid_ShowCellEditControl")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type NIL)
	) ;; (:library +library-name+))

(ffi:def-call-out wxGrid_HideCellEditControl
	(:name "wxGrid_HideCellEditControl")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type NIL)
	) ;; (:library +library-name+))

(ffi:def-call-out wxGrid_SaveEditControlValue
	(:name "wxGrid_SaveEditControlValue")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type NIL)
	) ;; (:library +library-name+))

(ffi:def-call-out wxGrid_XYToCell
	(:name "wxGrid_XYToCell")
	(:arguments (_obj (ffi:c-pointer NIL))
		(x ffi:int)
		(y ffi:int)
		(r (ffi:c-ptr ffi:int))
		(c (ffi:c-ptr ffi:int)))
	(:return-type NIL)
	) ;; (:library +library-name+))

(ffi:def-call-out wxGrid_YToRow
	(:name "wxGrid_YToRow")
	(:arguments (_obj (ffi:c-pointer NIL))
		(y ffi:int))
	(:return-type ffi:int)
	) ;; (:library +library-name+))

(ffi:def-call-out wxGrid_XToCol
	(:name "wxGrid_XToCol")
	(:arguments (_obj (ffi:c-pointer NIL))
		(x ffi:int))
	(:return-type ffi:int)
	) ;; (:library +library-name+))

(ffi:def-call-out wxGrid_YToEdgeOfRow
	(:name "wxGrid_YToEdgeOfRow")
	(:arguments (_obj (ffi:c-pointer NIL))
		(y ffi:int))
	(:return-type ffi:int)
	) ;; (:library +library-name+))

(ffi:def-call-out wxGrid_XToEdgeOfCol
	(:name "wxGrid_XToEdgeOfCol")
	(:arguments (_obj (ffi:c-pointer NIL))
		(x ffi:int))
	(:return-type ffi:int)
	) ;; (:library +library-name+))

(ffi:def-call-out wxGrid_CellToRect
	(:name "wxGrid_CellToRect")
	(:arguments (_obj (ffi:c-pointer NIL))
		(row ffi:int)
		(col ffi:int)
		(x (ffi:c-ptr ffi:int))
		(y (ffi:c-ptr ffi:int))
		(w (ffi:c-ptr ffi:int))
		(h (ffi:c-ptr ffi:int)))
	(:return-type NIL)
	) ;; (:library +library-name+))

(ffi:def-call-out wxGrid_GetGridCursorRow
	(:name "wxGrid_GetGridCursorRow")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	) ;; (:library +library-name+))

(ffi:def-call-out wxGrid_GetGridCursorCol
	(:name "wxGrid_GetGridCursorCol")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	) ;; (:library +library-name+))

(ffi:def-call-out wxGrid_IsVisible
	(:name "wxGrid_IsVisible")
	(:arguments (_obj (ffi:c-pointer NIL))
		(row ffi:int)
		(col ffi:int)
		(wholeCellVisible ffi:int))
	(:return-type ffi:int)
	) ;; (:library +library-name+))

(ffi:def-call-out wxGrid_MakeCellVisible
	(:name "wxGrid_MakeCellVisible")
	(:arguments (_obj (ffi:c-pointer NIL))
		(row ffi:int)
		(col ffi:int))
	(:return-type NIL)
	) ;; (:library +library-name+))

(ffi:def-call-out wxGrid_SetGridCursor
	(:name "wxGrid_SetGridCursor")
	(:arguments (_obj (ffi:c-pointer NIL))
		(row ffi:int)
		(col ffi:int))
	(:return-type NIL)
	) ;; (:library +library-name+))

(ffi:def-call-out wxGrid_MoveCursorUp
	(:name "wxGrid_MoveCursorUp")
	(:arguments (_obj (ffi:c-pointer NIL))
		(expandSelection ffi:int))
	(:return-type ffi:int)
	) ;; (:library +library-name+))

(ffi:def-call-out wxGrid_MoveCursorDown
	(:name "wxGrid_MoveCursorDown")
	(:arguments (_obj (ffi:c-pointer NIL))
		(expandSelection ffi:int))
	(:return-type ffi:int)
	) ;; (:library +library-name+))

(ffi:def-call-out wxGrid_MoveCursorLeft
	(:name "wxGrid_MoveCursorLeft")
	(:arguments (_obj (ffi:c-pointer NIL))
		(expandSelection ffi:int))
	(:return-type ffi:int)
	) ;; (:library +library-name+))

(ffi:def-call-out wxGrid_MoveCursorRight
	(:name "wxGrid_MoveCursorRight")
	(:arguments (_obj (ffi:c-pointer NIL))
		(expandSelection ffi:int))
	(:return-type ffi:int)
	) ;; (:library +library-name+))

(ffi:def-call-out wxGrid_MovePageDown
	(:name "wxGrid_MovePageDown")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	) ;; (:library +library-name+))

(ffi:def-call-out wxGrid_MovePageUp
	(:name "wxGrid_MovePageUp")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	) ;; (:library +library-name+))

(ffi:def-call-out wxGrid_MoveCursorUpBlock
	(:name "wxGrid_MoveCursorUpBlock")
	(:arguments (_obj (ffi:c-pointer NIL))
		(expandSelection ffi:int))
	(:return-type ffi:int)
	) ;; (:library +library-name+))

(ffi:def-call-out wxGrid_MoveCursorDownBlock
	(:name "wxGrid_MoveCursorDownBlock")
	(:arguments (_obj (ffi:c-pointer NIL))
		(expandSelection ffi:int))
	(:return-type ffi:int)
	) ;; (:library +library-name+))

(ffi:def-call-out wxGrid_MoveCursorLeftBlock
	(:name "wxGrid_MoveCursorLeftBlock")
	(:arguments (_obj (ffi:c-pointer NIL))
		(expandSelection ffi:int))
	(:return-type ffi:int)
	) ;; (:library +library-name+))

(ffi:def-call-out wxGrid_MoveCursorRightBlock
	(:name "wxGrid_MoveCursorRightBlock")
	(:arguments (_obj (ffi:c-pointer NIL))
		(expandSelection ffi:int))
	(:return-type ffi:int)
	) ;; (:library +library-name+))

(ffi:def-call-out wxGrid_GetDefaultRowLabelSize
	(:name "wxGrid_GetDefaultRowLabelSize")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	) ;; (:library +library-name+))

(ffi:def-call-out wxGrid_GetRowLabelSize
	(:name "wxGrid_GetRowLabelSize")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	) ;; (:library +library-name+))

(ffi:def-call-out wxGrid_GetDefaultColLabelSize
	(:name "wxGrid_GetDefaultColLabelSize")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	) ;; (:library +library-name+))

(ffi:def-call-out wxGrid_GetColLabelSize
	(:name "wxGrid_GetColLabelSize")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	) ;; (:library +library-name+))

(ffi:def-call-out wxGrid_GetLabelBackgroundColour
	(:name "wxGrid_GetLabelBackgroundColour")
	(:arguments (_obj (ffi:c-pointer NIL))
		(colour (ffi:c-pointer NIL)))
	(:return-type NIL)
	) ;; (:library +library-name+))

(ffi:def-call-out wxGrid_GetLabelTextColour
	(:name "wxGrid_GetLabelTextColour")
	(:arguments (_obj (ffi:c-pointer NIL))
		(colour (ffi:c-pointer NIL)))
	(:return-type NIL)
	) ;; (:library +library-name+))

(ffi:def-call-out wxGrid_GetLabelFont
	(:name "wxGrid_GetLabelFont")
	(:arguments (_obj (ffi:c-pointer NIL))
		(font (ffi:c-pointer NIL)))
	(:return-type NIL)
	) ;; (:library +library-name+))

(ffi:def-call-out wxGrid_GetRowLabelAlignment
	(:name "wxGrid_GetRowLabelAlignment")
	(:arguments (_obj (ffi:c-pointer NIL))
		(horiz (ffi:c-pointer NIL))
		(vert (ffi:c-pointer NIL)))
	(:return-type NIL)
	) ;; (:library +library-name+))

(ffi:def-call-out wxGrid_GetColLabelAlignment
	(:name "wxGrid_GetColLabelAlignment")
	(:arguments (_obj (ffi:c-pointer NIL))
		(horiz (ffi:c-pointer NIL))
		(vert (ffi:c-pointer NIL)))
	(:return-type NIL)
	) ;; (:library +library-name+))

(ffi:def-call-out wxGrid_GetRowLabelValue
	(:name "wxGrid_GetRowLabelValue")
	(:arguments (_obj (ffi:c-pointer NIL))
		(row ffi:int)
		(_buf (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	) ;; (:library +library-name+))

(ffi:def-call-out wxGrid_GetColLabelValue
	(:name "wxGrid_GetColLabelValue")
	(:arguments (_obj (ffi:c-pointer NIL))
		(col ffi:int)
		(_buf (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	) ;; (:library +library-name+))

(ffi:def-call-out wxGrid_GetGridLineColour
	(:name "wxGrid_GetGridLineColour")
	(:arguments (_obj (ffi:c-pointer NIL))
		(colour (ffi:c-pointer NIL)))
	(:return-type NIL)
	) ;; (:library +library-name+))

(ffi:def-call-out wxGrid_GetCellHighlightColour
	(:name "wxGrid_GetCellHighlightColour")
	(:arguments (_obj (ffi:c-pointer NIL))
		(colour (ffi:c-pointer NIL)))
	(:return-type NIL)
	) ;; (:library +library-name+))

(ffi:def-call-out wxGrid_SetRowLabelSize
	(:name "wxGrid_SetRowLabelSize")
	(:arguments (_obj (ffi:c-pointer NIL))
		(width ffi:int))
	(:return-type NIL)
	) ;; (:library +library-name+))

(ffi:def-call-out wxGrid_SetColLabelSize
	(:name "wxGrid_SetColLabelSize")
	(:arguments (_obj (ffi:c-pointer NIL))
		(height ffi:int))
	(:return-type NIL)
	) ;; (:library +library-name+))

(ffi:def-call-out wxGrid_SetLabelBackgroundColour
	(:name "wxGrid_SetLabelBackgroundColour")
	(:arguments (_obj (ffi:c-pointer NIL))
		(colour (ffi:c-pointer NIL)))
	(:return-type NIL)
	) ;; (:library +library-name+))

(ffi:def-call-out wxGrid_SetLabelTextColour
	(:name "wxGrid_SetLabelTextColour")
	(:arguments (_obj (ffi:c-pointer NIL))
		(colour (ffi:c-pointer NIL)))
	(:return-type NIL)
	) ;; (:library +library-name+))

(ffi:def-call-out wxGrid_SetLabelFont
	(:name "wxGrid_SetLabelFont")
	(:arguments (_obj (ffi:c-pointer NIL))
		(font (ffi:c-pointer NIL)))
	(:return-type NIL)
	) ;; (:library +library-name+))

(ffi:def-call-out wxGrid_SetRowLabelAlignment
	(:name "wxGrid_SetRowLabelAlignment")
	(:arguments (_obj (ffi:c-pointer NIL))
		(horiz ffi:int)
		(vert ffi:int))
	(:return-type NIL)
	) ;; (:library +library-name+))

(ffi:def-call-out wxGrid_SetColLabelAlignment
	(:name "wxGrid_SetColLabelAlignment")
	(:arguments (_obj (ffi:c-pointer NIL))
		(horiz ffi:int)
		(vert ffi:int))
	(:return-type NIL)
	) ;; (:library +library-name+))

(ffi:def-call-out wxGrid_SetRowLabelValue
	(:name "wxGrid_SetRowLabelValue")
	(:arguments (_obj (ffi:c-pointer NIL))
		(row ffi:int)
		(label (ffi:c-pointer NIL)))
	(:return-type NIL)
	) ;; (:library +library-name+))

(ffi:def-call-out wxGrid_SetColLabelValue
	(:name "wxGrid_SetColLabelValue")
	(:arguments (_obj (ffi:c-pointer NIL))
		(col ffi:int)
		(label (ffi:c-pointer NIL)))
	(:return-type NIL)
	) ;; (:library +library-name+))

(ffi:def-call-out wxGrid_SetGridLineColour
	(:name "wxGrid_SetGridLineColour")
	(:arguments (_obj (ffi:c-pointer NIL))
		(col (ffi:c-pointer NIL)))
	(:return-type NIL)
	) ;; (:library +library-name+))

(ffi:def-call-out wxGrid_SetCellHighlightColour
	(:name "wxGrid_SetCellHighlightColour")
	(:arguments (_obj (ffi:c-pointer NIL))
		(col (ffi:c-pointer NIL)))
	(:return-type NIL)
	) ;; (:library +library-name+))

(ffi:def-call-out wxGrid_EnableDragRowSize
	(:name "wxGrid_EnableDragRowSize")
	(:arguments (_obj (ffi:c-pointer NIL))
		(enable ffi:int))
	(:return-type NIL)
	) ;; (:library +library-name+))

(ffi:def-call-out wxGrid_DisableDragRowSize
	(:name "wxGrid_DisableDragRowSize")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type NIL)
	) ;; (:library +library-name+))

(ffi:def-call-out wxGrid_CanDragRowSize
	(:name "wxGrid_CanDragRowSize")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	) ;; (:library +library-name+))

(ffi:def-call-out wxGrid_EnableDragColSize
	(:name "wxGrid_EnableDragColSize")
	(:arguments (_obj (ffi:c-pointer NIL))
		(enable ffi:int))
	(:return-type NIL)
	) ;; (:library +library-name+))

(ffi:def-call-out wxGrid_DisableDragColSize
	(:name "wxGrid_DisableDragColSize")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type NIL)
	) ;; (:library +library-name+))

(ffi:def-call-out wxGrid_CanDragColSize
	(:name "wxGrid_CanDragColSize")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	) ;; (:library +library-name+))

(ffi:def-call-out wxGrid_EnableDragGridSize
	(:name "wxGrid_EnableDragGridSize")
	(:arguments (_obj (ffi:c-pointer NIL))
		(enable ffi:int))
	(:return-type NIL)
	) ;; (:library +library-name+))

(ffi:def-call-out wxGrid_DisableDragGridSize
	(:name "wxGrid_DisableDragGridSize")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type NIL)
	) ;; (:library +library-name+))

(ffi:def-call-out wxGrid_CanDragGridSize
	(:name "wxGrid_CanDragGridSize")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	) ;; (:library +library-name+))

(ffi:def-call-out wxGrid_SetRowAttr
	(:name "wxGrid_SetRowAttr")
	(:arguments (_obj (ffi:c-pointer NIL))
		(row ffi:int)
		(attr (ffi:c-pointer NIL)))
	(:return-type NIL)
	) ;; (:library +library-name+))

(ffi:def-call-out wxGrid_SetColAttr
	(:name "wxGrid_SetColAttr")
	(:arguments (_obj (ffi:c-pointer NIL))
		(col ffi:int)
		(attr (ffi:c-pointer NIL)))
	(:return-type NIL)
	) ;; (:library +library-name+))

(ffi:def-call-out wxGrid_SetColFormatBool
	(:name "wxGrid_SetColFormatBool")
	(:arguments (_obj (ffi:c-pointer NIL))
		(col ffi:int))
	(:return-type NIL)
	) ;; (:library +library-name+))

(ffi:def-call-out wxGrid_SetColFormatNumber
	(:name "wxGrid_SetColFormatNumber")
	(:arguments (_obj (ffi:c-pointer NIL))
		(col ffi:int))
	(:return-type NIL)
	) ;; (:library +library-name+))

(ffi:def-call-out wxGrid_SetColFormatFloat
	(:name "wxGrid_SetColFormatFloat")
	(:arguments (_obj (ffi:c-pointer NIL))
		(col ffi:int)
		(width ffi:int)
		(precision ffi:int))
	(:return-type NIL)
	) ;; (:library +library-name+))

(ffi:def-call-out wxGrid_SetColFormatCustom
	(:name "wxGrid_SetColFormatCustom")
	(:arguments (_obj (ffi:c-pointer NIL))
		(col ffi:int)
		(typeName (ffi:c-pointer NIL)))
	(:return-type NIL)
	) ;; (:library +library-name+))

(ffi:def-call-out wxGrid_EnableGridLines
	(:name "wxGrid_EnableGridLines")
	(:arguments (_obj (ffi:c-pointer NIL))
		(enable ffi:int))
	(:return-type NIL)
	) ;; (:library +library-name+))

(ffi:def-call-out wxGrid_GridLinesEnabled
	(:name "wxGrid_GridLinesEnabled")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	) ;; (:library +library-name+))

(ffi:def-call-out wxGrid_GetDefaultRowSize
	(:name "wxGrid_GetDefaultRowSize")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	) ;; (:library +library-name+))

(ffi:def-call-out wxGrid_GetRowSize
	(:name "wxGrid_GetRowSize")
	(:arguments (_obj (ffi:c-pointer NIL))
		(row ffi:int))
	(:return-type ffi:int)
	) ;; (:library +library-name+))

(ffi:def-call-out wxGrid_GetDefaultColSize
	(:name "wxGrid_GetDefaultColSize")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	) ;; (:library +library-name+))

(ffi:def-call-out wxGrid_GetColSize
	(:name "wxGrid_GetColSize")
	(:arguments (_obj (ffi:c-pointer NIL))
		(col ffi:int))
	(:return-type ffi:int)
	) ;; (:library +library-name+))

(ffi:def-call-out wxGrid_GetDefaultCellBackgroundColour
	(:name "wxGrid_GetDefaultCellBackgroundColour")
	(:arguments (_obj (ffi:c-pointer NIL))
		(colour (ffi:c-pointer NIL)))
	(:return-type NIL)
	) ;; (:library +library-name+))

(ffi:def-call-out wxGrid_GetCellBackgroundColour
	(:name "wxGrid_GetCellBackgroundColour")
	(:arguments (_obj (ffi:c-pointer NIL))
		(row ffi:int)
		(col ffi:int)
		(colour (ffi:c-pointer NIL)))
	(:return-type NIL)
	) ;; (:library +library-name+))

(ffi:def-call-out wxGrid_GetDefaultCellTextColour
	(:name "wxGrid_GetDefaultCellTextColour")
	(:arguments (_obj (ffi:c-pointer NIL))
		(colour (ffi:c-pointer NIL)))
	(:return-type NIL)
	) ;; (:library +library-name+))

(ffi:def-call-out wxGrid_GetCellTextColour
	(:name "wxGrid_GetCellTextColour")
	(:arguments (_obj (ffi:c-pointer NIL))
		(row ffi:int)
		(col ffi:int)
		(colour (ffi:c-pointer NIL)))
	(:return-type NIL)
	) ;; (:library +library-name+))

(ffi:def-call-out wxGrid_GetDefaultCellFont
	(:name "wxGrid_GetDefaultCellFont")
	(:arguments (_obj (ffi:c-pointer NIL))
		(font (ffi:c-pointer NIL)))
	(:return-type NIL)
	) ;; (:library +library-name+))

(ffi:def-call-out wxGrid_GetCellFont
	(:name "wxGrid_GetCellFont")
	(:arguments (_obj (ffi:c-pointer NIL))
		(row ffi:int)
		(col ffi:int)
		(font (ffi:c-pointer NIL)))
	(:return-type NIL)
	) ;; (:library +library-name+))

(ffi:def-call-out wxGrid_GetDefaultCellAlignment
	(:name "wxGrid_GetDefaultCellAlignment")
	(:arguments (_obj (ffi:c-pointer NIL))
		(horiz (ffi:c-pointer NIL))
		(vert (ffi:c-pointer NIL)))
	(:return-type NIL)
	) ;; (:library +library-name+))

(ffi:def-call-out wxGrid_GetCellAlignment
	(:name "wxGrid_GetCellAlignment")
	(:arguments (_obj (ffi:c-pointer NIL))
		(row ffi:int)
		(col ffi:int)
		(horiz (ffi:c-pointer NIL))
		(vert (ffi:c-pointer NIL)))
	(:return-type NIL)
	) ;; (:library +library-name+))

(ffi:def-call-out wxGrid_SetDefaultRowSize
	(:name "wxGrid_SetDefaultRowSize")
	(:arguments (_obj (ffi:c-pointer NIL))
		(height ffi:int)
		(resizeExistingRows ffi:int))
	(:return-type NIL)
	) ;; (:library +library-name+))

(ffi:def-call-out wxGrid_SetRowSize
	(:name "wxGrid_SetRowSize")
	(:arguments (_obj (ffi:c-pointer NIL))
		(row ffi:int)
		(height ffi:int))
	(:return-type NIL)
	) ;; (:library +library-name+))

(ffi:def-call-out wxGrid_SetDefaultColSize
	(:name "wxGrid_SetDefaultColSize")
	(:arguments (_obj (ffi:c-pointer NIL))
		(width ffi:int)
		(resizeExistingCols ffi:int))
	(:return-type NIL)
	) ;; (:library +library-name+))

(ffi:def-call-out wxGrid_SetColSize
	(:name "wxGrid_SetColSize")
	(:arguments (_obj (ffi:c-pointer NIL))
		(col ffi:int)
		(width ffi:int))
	(:return-type NIL)
	) ;; (:library +library-name+))

(ffi:def-call-out wxGrid_AutoSizeColumn
	(:name "wxGrid_AutoSizeColumn")
	(:arguments (_obj (ffi:c-pointer NIL))
		(col ffi:int)
		(setAsMin ffi:int))
	(:return-type NIL)
	) ;; (:library +library-name+))

(ffi:def-call-out wxGrid_AutoSizeRow
	(:name "wxGrid_AutoSizeRow")
	(:arguments (_obj (ffi:c-pointer NIL))
		(row ffi:int)
		(setAsMin ffi:int))
	(:return-type NIL)
	) ;; (:library +library-name+))

(ffi:def-call-out wxGrid_AutoSizeColumns
	(:name "wxGrid_AutoSizeColumns")
	(:arguments (_obj (ffi:c-pointer NIL))
		(setAsMin ffi:int))
	(:return-type NIL)
	) ;; (:library +library-name+))

(ffi:def-call-out wxGrid_AutoSizeRows
	(:name "wxGrid_AutoSizeRows")
	(:arguments (_obj (ffi:c-pointer NIL))
		(setAsMin ffi:int))
	(:return-type NIL)
	) ;; (:library +library-name+))

(ffi:def-call-out wxGrid_AutoSize
	(:name "wxGrid_AutoSize")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type NIL)
	) ;; (:library +library-name+))

(ffi:def-call-out wxGrid_SetColMinimalWidth
	(:name "wxGrid_SetColMinimalWidth")
	(:arguments (_obj (ffi:c-pointer NIL))
		(col ffi:int)
		(width ffi:int))
	(:return-type NIL)
	) ;; (:library +library-name+))

(ffi:def-call-out wxGrid_SetRowMinimalHeight
	(:name "wxGrid_SetRowMinimalHeight")
	(:arguments (_obj (ffi:c-pointer NIL))
		(row ffi:int)
		(width ffi:int))
	(:return-type NIL)
	) ;; (:library +library-name+))

(ffi:def-call-out wxGrid_SetDefaultCellBackgroundColour
	(:name "wxGrid_SetDefaultCellBackgroundColour")
	(:arguments (_obj (ffi:c-pointer NIL))
		(colour (ffi:c-pointer NIL)))
	(:return-type NIL)
	) ;; (:library +library-name+))

(ffi:def-call-out wxGrid_SetCellBackgroundColour
	(:name "wxGrid_SetCellBackgroundColour")
	(:arguments (_obj (ffi:c-pointer NIL))
		(row ffi:int)
		(col ffi:int)
		(colour (ffi:c-pointer NIL)))
	(:return-type NIL)
	) ;; (:library +library-name+))

(ffi:def-call-out wxGrid_SetDefaultCellTextColour
	(:name "wxGrid_SetDefaultCellTextColour")
	(:arguments (_obj (ffi:c-pointer NIL))
		(colour (ffi:c-pointer NIL)))
	(:return-type NIL)
	) ;; (:library +library-name+))

(ffi:def-call-out wxGrid_SetCellTextColour
	(:name "wxGrid_SetCellTextColour")
	(:arguments (_obj (ffi:c-pointer NIL))
		(row ffi:int)
		(col ffi:int)
		(colour (ffi:c-pointer NIL)))
	(:return-type NIL)
	) ;; (:library +library-name+))

(ffi:def-call-out wxGrid_SetDefaultCellFont
	(:name "wxGrid_SetDefaultCellFont")
	(:arguments (_obj (ffi:c-pointer NIL))
		(font (ffi:c-pointer NIL)))
	(:return-type NIL)
	) ;; (:library +library-name+))

(ffi:def-call-out wxGrid_SetCellFont
	(:name "wxGrid_SetCellFont")
	(:arguments (_obj (ffi:c-pointer NIL))
		(row ffi:int)
		(col ffi:int)
		(font (ffi:c-pointer NIL)))
	(:return-type NIL)
	) ;; (:library +library-name+))

(ffi:def-call-out wxGrid_SetDefaultCellAlignment
	(:name "wxGrid_SetDefaultCellAlignment")
	(:arguments (_obj (ffi:c-pointer NIL))
		(horiz ffi:int)
		(vert ffi:int))
	(:return-type NIL)
	) ;; (:library +library-name+))

(ffi:def-call-out wxGrid_SetCellAlignment
	(:name "wxGrid_SetCellAlignment")
	(:arguments (_obj (ffi:c-pointer NIL))
		(row ffi:int)
		(col ffi:int)
		(horiz ffi:int)
		(vert ffi:int))
	(:return-type NIL)
	) ;; (:library +library-name+))

(ffi:def-call-out wxGrid_SetDefaultRenderer
	(:name "wxGrid_SetDefaultRenderer")
	(:arguments (_obj (ffi:c-pointer NIL))
		(renderer (ffi:c-pointer NIL)))
	(:return-type NIL)
	) ;; (:library +library-name+))

(ffi:def-call-out wxGrid_SetCellRenderer
	(:name "wxGrid_SetCellRenderer")
	(:arguments (_obj (ffi:c-pointer NIL))
		(row ffi:int)
		(col ffi:int)
		(renderer (ffi:c-pointer NIL)))
	(:return-type NIL)
	) ;; (:library +library-name+))

(ffi:def-call-out wxGrid_GetDefaultRenderer
	(:name "wxGrid_GetDefaultRenderer")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type (ffi:c-pointer NIL))
	) ;; (:library +library-name+))

(ffi:def-call-out wxGrid_GetCellRenderer
	(:name "wxGrid_GetCellRenderer")
	(:arguments (_obj (ffi:c-pointer NIL))
		(row ffi:int)
		(col ffi:int))
	(:return-type (ffi:c-pointer NIL))
	) ;; (:library +library-name+))

(ffi:def-call-out wxGrid_SetDefaultEditor
	(:name "wxGrid_SetDefaultEditor")
	(:arguments (_obj (ffi:c-pointer NIL))
		(editor (ffi:c-pointer NIL)))
	(:return-type NIL)
	) ;; (:library +library-name+))

(ffi:def-call-out wxGrid_SetCellEditor
	(:name "wxGrid_SetCellEditor")
	(:arguments (_obj (ffi:c-pointer NIL))
		(row ffi:int)
		(col ffi:int)
		(editor (ffi:c-pointer NIL)))
	(:return-type NIL)
	) ;; (:library +library-name+))

(ffi:def-call-out wxGrid_GetDefaultEditor
	(:name "wxGrid_GetDefaultEditor")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type (ffi:c-pointer NIL))
	) ;; (:library +library-name+))

(ffi:def-call-out wxGrid_GetCellEditor
	(:name "wxGrid_GetCellEditor")
	(:arguments (_obj (ffi:c-pointer NIL))
		(row ffi:int)
		(col ffi:int))
	(:return-type (ffi:c-pointer NIL))
	) ;; (:library +library-name+))

(ffi:def-call-out wxGrid_GetCellValue
	(:name "wxGrid_GetCellValue")
	(:arguments (_obj (ffi:c-pointer NIL))
		(row ffi:int)
		(col ffi:int)
		(_buf (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	) ;; (:library +library-name+))

(ffi:def-call-out wxGrid_SetCellValue
	(:name "wxGrid_SetCellValue")
	(:arguments (_obj (ffi:c-pointer NIL))
		(row ffi:int)
		(col ffi:int)
		(s (ffi:c-pointer NIL)))
	(:return-type NIL)
	) ;; (:library +library-name+))

(ffi:def-call-out wxGrid_IsReadOnly
	(:name "wxGrid_IsReadOnly")
	(:arguments (_obj (ffi:c-pointer NIL))
		(row ffi:int)
		(col ffi:int))
	(:return-type ffi:int)
	) ;; (:library +library-name+))

(ffi:def-call-out wxGrid_SetReadOnly
	(:name "wxGrid_SetReadOnly")
	(:arguments (_obj (ffi:c-pointer NIL))
		(row ffi:int)
		(col ffi:int)
		(isReadOnly ffi:int))
	(:return-type NIL)
	) ;; (:library +library-name+))

(ffi:def-call-out wxGrid_SelectRow
	(:name "wxGrid_SelectRow")
	(:arguments (_obj (ffi:c-pointer NIL))
		(row ffi:int)
		(addToSelected ffi:int))
	(:return-type NIL)
	) ;; (:library +library-name+))

(ffi:def-call-out wxGrid_SelectCol
	(:name "wxGrid_SelectCol")
	(:arguments (_obj (ffi:c-pointer NIL))
		(col ffi:int)
		(addToSelected ffi:int))
	(:return-type NIL)
	) ;; (:library +library-name+))

(ffi:def-call-out wxGrid_SelectBlock
	(:name "wxGrid_SelectBlock")
	(:arguments (_obj (ffi:c-pointer NIL))
		(topRow ffi:int)
		(leftCol ffi:int)
		(bottomRow ffi:int)
		(rightCol ffi:int)
		(addToSelected ffi:int))
	(:return-type NIL)
	) ;; (:library +library-name+))

(ffi:def-call-out wxGrid_SelectAll
	(:name "wxGrid_SelectAll")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type NIL)
	) ;; (:library +library-name+))

(ffi:def-call-out wxGrid_IsSelection
	(:name "wxGrid_IsSelection")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	) ;; (:library +library-name+))

(ffi:def-call-out wxGrid_ClearSelection
	(:name "wxGrid_ClearSelection")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type NIL)
	) ;; (:library +library-name+))

(ffi:def-call-out wxGrid_IsInSelection
	(:name "wxGrid_IsInSelection")
	(:arguments (_obj (ffi:c-pointer NIL))
		(row ffi:int)
		(col ffi:int))
	(:return-type ffi:int)
	) ;; (:library +library-name+))

(ffi:def-call-out wxGrid_BlockToDeviceRect
	(:name "wxGrid_BlockToDeviceRect")
	(:arguments (_obj (ffi:c-pointer NIL))
		(top ffi:int)
		(left ffi:int)
		(bottom ffi:int)
		(right ffi:int)
		(x (ffi:c-ptr ffi:int))
		(y (ffi:c-ptr ffi:int))
		(w (ffi:c-ptr ffi:int))
		(h (ffi:c-ptr ffi:int)))
	(:return-type NIL)
	) ;; (:library +library-name+))

(ffi:def-call-out wxGrid_GetSelectionBackground
	(:name "wxGrid_GetSelectionBackground")
	(:arguments (_obj (ffi:c-pointer NIL))
		(colour (ffi:c-pointer NIL)))
	(:return-type NIL)
	) ;; (:library +library-name+))

(ffi:def-call-out wxGrid_GetSelectionForeground
	(:name "wxGrid_GetSelectionForeground")
	(:arguments (_obj (ffi:c-pointer NIL))
		(colour (ffi:c-pointer NIL)))
	(:return-type NIL)
	) ;; (:library +library-name+))

(ffi:def-call-out wxGrid_SetSelectionBackground
	(:name "wxGrid_SetSelectionBackground")
	(:arguments (_obj (ffi:c-pointer NIL))
		(c (ffi:c-pointer NIL)))
	(:return-type NIL)
	) ;; (:library +library-name+))

(ffi:def-call-out wxGrid_SetSelectionForeground
	(:name "wxGrid_SetSelectionForeground")
	(:arguments (_obj (ffi:c-pointer NIL))
		(c (ffi:c-pointer NIL)))
	(:return-type NIL)
	) ;; (:library +library-name+))

(ffi:def-call-out wxGrid_RegisterDataType
	(:name "wxGrid_RegisterDataType")
	(:arguments (_obj (ffi:c-pointer NIL))
		(typeName (ffi:c-pointer NIL))
		(renderer (ffi:c-pointer NIL))
		(editor (ffi:c-pointer NIL)))
	(:return-type NIL)
	) ;; (:library +library-name+))

(ffi:def-call-out wxGrid_GetDefaultEditorForCell
	(:name "wxGrid_GetDefaultEditorForCell")
	(:arguments (_obj (ffi:c-pointer NIL))
		(row ffi:int)
		(col ffi:int))
	(:return-type (ffi:c-pointer NIL))
	) ;; (:library +library-name+))

(ffi:def-call-out wxGrid_GetDefaultRendererForCell
	(:name "wxGrid_GetDefaultRendererForCell")
	(:arguments (_obj (ffi:c-pointer NIL))
		(row ffi:int)
		(col ffi:int))
	(:return-type (ffi:c-pointer NIL))
	) ;; (:library +library-name+))

(ffi:def-call-out wxGrid_GetDefaultEditorForType
	(:name "wxGrid_GetDefaultEditorForType")
	(:arguments (_obj (ffi:c-pointer NIL))
		(typeName (ffi:c-pointer NIL)))
	(:return-type (ffi:c-pointer NIL))
	) ;; (:library +library-name+))

(ffi:def-call-out wxGrid_GetDefaultRendererForType
	(:name "wxGrid_GetDefaultRendererForType")
	(:arguments (_obj (ffi:c-pointer NIL))
		(typeName (ffi:c-pointer NIL)))
	(:return-type (ffi:c-pointer NIL))
	) ;; (:library +library-name+))

(ffi:def-call-out wxGrid_SetMargins
	(:name "wxGrid_SetMargins")
	(:arguments (_obj (ffi:c-pointer NIL))
		(extraWidth ffi:int)
		(extraHeight ffi:int))
	(:return-type NIL)
	) ;; (:library +library-name+))

(ffi:def-call-out wxGrid_GetSelectedCells
	(:name "wxGrid_GetSelectedCells")
	(:arguments (_obj (ffi:c-pointer NIL))
		(_arr (ffi:c-pointer NIL)))
	(:return-type NIL)
	) ;; (:library +library-name+))

(ffi:def-call-out wxGrid_GetSelectionBlockTopLeft
	(:name "wxGrid_GetSelectionBlockTopLeft")
	(:arguments (_obj (ffi:c-pointer NIL))
		(_arr (ffi:c-pointer NIL)))
	(:return-type NIL)
	) ;; (:library +library-name+))

(ffi:def-call-out wxGrid_GetSelectionBlockBottomRight
	(:name "wxGrid_GetSelectionBlockBottomRight")
	(:arguments (_obj (ffi:c-pointer NIL))
		(_arr (ffi:c-pointer NIL)))
	(:return-type NIL)
	) ;; (:library +library-name+))

(ffi:def-call-out wxGrid_GetSelectedRows
	(:name "wxGrid_GetSelectedRows")
	(:arguments (_obj (ffi:c-pointer NIL))
		(_arr (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	) ;; (:library +library-name+))

(ffi:def-call-out wxGrid_GetSelectedCols
	(:name "wxGrid_GetSelectedCols")
	(:arguments (_obj (ffi:c-pointer NIL))
		(_arr (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	) ;; (:library +library-name+))

(ffi:def-call-out ELJGridTable_Create
	(:name "ELJGridTable_Create")
	(:arguments (_obj (ffi:c-pointer NIL))
		(_EifGetNumberRows (ffi:c-pointer NIL))
		(_EifGetNumberCols (ffi:c-pointer NIL))
		(_EifGetValue (ffi:c-pointer NIL))
		(_EifSetValue (ffi:c-pointer NIL))
		(_EifIsEmptyCell (ffi:c-pointer NIL))
		(_EifClear (ffi:c-pointer NIL))
		(_EifInsertRows (ffi:c-pointer NIL))
		(_EifAppendRows (ffi:c-pointer NIL))
		(_EifDeleteRows (ffi:c-pointer NIL))
		(_EifInsertCols (ffi:c-pointer NIL))
		(_EifAppendCols (ffi:c-pointer NIL))
		(_EifDeleteCols (ffi:c-pointer NIL))
		(_EifSetRowLabelValue (ffi:c-pointer NIL))
		(_EifSetColLabelValue (ffi:c-pointer NIL))
		(_EifGetRowLabelValue (ffi:c-pointer NIL))
		(_EifGetColLabelValue (ffi:c-pointer NIL)))
	(:return-type (ffi:c-pointer NIL))
	) ;; (:library +library-name+))

(ffi:def-call-out ELJGridTable_Delete
	(:name "ELJGridTable_Delete")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type NIL)
	) ;; (:library +library-name+))

(ffi:def-call-out ELJGridTable_GetView
	(:name "ELJGridTable_GetView")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type (ffi:c-pointer NIL))
	) ;; (:library +library-name+))

(ffi:def-call-out ELJGridTable_SendTableMessage
	(:name "ELJGridTable_SendTableMessage")
	(:arguments (_obj (ffi:c-pointer NIL))
		(id ffi:int)
		(val1 ffi:int)
		(val2 ffi:int))
	(:return-type NIL)
	) ;; (:library +library-name+))

(ffi:def-call-out wxGridEvent_GetRow
	(:name "wxGridEvent_GetRow")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	) ;; (:library +library-name+))

(ffi:def-call-out wxGridEvent_GetCol
	(:name "wxGridEvent_GetCol")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	) ;; (:library +library-name+))

(ffi:def-call-out wxGridEvent_GetPosition
	(:name "wxGridEvent_GetPosition")
	(:arguments (_obj (ffi:c-pointer NIL))
		(_x (ffi:c-pointer NIL))
		(_y (ffi:c-pointer NIL)))
	(:return-type NIL)
	) ;; (:library +library-name+))

(ffi:def-call-out wxGridEvent_Selecting
	(:name "wxGridEvent_Selecting")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	) ;; (:library +library-name+))

(ffi:def-call-out wxGridEvent_ControlDown
	(:name "wxGridEvent_ControlDown")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	) ;; (:library +library-name+))

(ffi:def-call-out wxGridEvent_MetaDown
	(:name "wxGridEvent_MetaDown")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	) ;; (:library +library-name+))

(ffi:def-call-out wxGridEvent_ShiftDown
	(:name "wxGridEvent_ShiftDown")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	) ;; (:library +library-name+))

(ffi:def-call-out wxGridEvent_AltDown
	(:name "wxGridEvent_AltDown")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	) ;; (:library +library-name+))

(ffi:def-call-out wxGridSizeEvent_GetRowOrCol
	(:name "wxGridSizeEvent_GetRowOrCol")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	) ;; (:library +library-name+))

(ffi:def-call-out wxGridSizeEvent_GetPosition
	(:name "wxGridSizeEvent_GetPosition")
	(:arguments (_obj (ffi:c-pointer NIL))
		(_x (ffi:c-pointer NIL))
		(_y (ffi:c-pointer NIL)))
	(:return-type NIL)
	) ;; (:library +library-name+))

(ffi:def-call-out wxGridSizeEvent_ControlDown
	(:name "wxGridSizeEvent_ControlDown")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	) ;; (:library +library-name+))

(ffi:def-call-out wxGridSizeEvent_MetaDown
	(:name "wxGridSizeEvent_MetaDown")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	) ;; (:library +library-name+))

(ffi:def-call-out wxGridSizeEvent_ShiftDown
	(:name "wxGridSizeEvent_ShiftDown")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	) ;; (:library +library-name+))

(ffi:def-call-out wxGridSizeEvent_AltDown
	(:name "wxGridSizeEvent_AltDown")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	) ;; (:library +library-name+))

(ffi:def-call-out wxGridRangeSelectEvent_GetTopLeftCoords
	(:name "wxGridRangeSelectEvent_GetTopLeftCoords")
	(:arguments (_obj (ffi:c-pointer NIL))
		(_c (ffi:c-pointer NIL))
		(_r (ffi:c-pointer NIL)))
	(:return-type NIL)
	) ;; (:library +library-name+))

(ffi:def-call-out wxGridRangeSelectEvent_GetBottomRightCoords
	(:name "wxGridRangeSelectEvent_GetBottomRightCoords")
	(:arguments (_obj (ffi:c-pointer NIL))
		(_c (ffi:c-pointer NIL))
		(_r (ffi:c-pointer NIL)))
	(:return-type NIL)
	) ;; (:library +library-name+))

(ffi:def-call-out wxGridRangeSelectEvent_GetTopRow
	(:name "wxGridRangeSelectEvent_GetTopRow")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	) ;; (:library +library-name+))

(ffi:def-call-out wxGridRangeSelectEvent_GetBottomRow
	(:name "wxGridRangeSelectEvent_GetBottomRow")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	) ;; (:library +library-name+))

(ffi:def-call-out wxGridRangeSelectEvent_GetLeftCol
	(:name "wxGridRangeSelectEvent_GetLeftCol")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	) ;; (:library +library-name+))

(ffi:def-call-out wxGridRangeSelectEvent_GetRightCol
	(:name "wxGridRangeSelectEvent_GetRightCol")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	) ;; (:library +library-name+))

(ffi:def-call-out wxGridRangeSelectEvent_Selecting
	(:name "wxGridRangeSelectEvent_Selecting")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	) ;; (:library +library-name+))

(ffi:def-call-out wxGridRangeSelectEvent_ControlDown
	(:name "wxGridRangeSelectEvent_ControlDown")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	) ;; (:library +library-name+))

(ffi:def-call-out wxGridRangeSelectEvent_MetaDown
	(:name "wxGridRangeSelectEvent_MetaDown")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	) ;; (:library +library-name+))

(ffi:def-call-out wxGridRangeSelectEvent_ShiftDown
	(:name "wxGridRangeSelectEvent_ShiftDown")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	) ;; (:library +library-name+))

(ffi:def-call-out wxGridRangeSelectEvent_AltDown
	(:name "wxGridRangeSelectEvent_AltDown")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	) ;; (:library +library-name+))

(ffi:def-call-out wxGridEditorCreatedEvent_GetRow
	(:name "wxGridEditorCreatedEvent_GetRow")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	) ;; (:library +library-name+))

(ffi:def-call-out wxGridEditorCreatedEvent_GetCol
	(:name "wxGridEditorCreatedEvent_GetCol")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	) ;; (:library +library-name+))

(ffi:def-call-out wxGridEditorCreatedEvent_GetControl
	(:name "wxGridEditorCreatedEvent_GetControl")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type (ffi:c-pointer NIL))
	) ;; (:library +library-name+))

(ffi:def-call-out wxGridEditorCreatedEvent_SetRow
	(:name "wxGridEditorCreatedEvent_SetRow")
	(:arguments (_obj (ffi:c-pointer NIL))
		(row ffi:int))
	(:return-type NIL)
	) ;; (:library +library-name+))

(ffi:def-call-out wxGridEditorCreatedEvent_SetCol
	(:name "wxGridEditorCreatedEvent_SetCol")
	(:arguments (_obj (ffi:c-pointer NIL))
		(col ffi:int))
	(:return-type NIL)
	) ;; (:library +library-name+))

(ffi:def-call-out wxGridEditorCreatedEvent_SetControl
	(:name "wxGridEditorCreatedEvent_SetControl")
	(:arguments (_obj (ffi:c-pointer NIL))
		(ctrl (ffi:c-pointer NIL)))
	(:return-type NIL)
	) ;; (:library +library-name+))

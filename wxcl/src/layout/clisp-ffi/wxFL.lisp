;;;wxFL.lisp
;;;License  : wxWindows License 3.1
;;;Author(s) : Surendra Singhi (surendra@asu.edu) 
;;;Copyright (C) 2005 Surendra Singhi 
;;;See the file LICENSE for information on usage and redistribution.
;;;
;;; $Header$
;;;

; (defpackage :wxFL
;   (:use :common-lisp :ffi :WxCL)
;   (:export
; ; 	:wxToolWindow_Create
; ; 	:wxToolWindow_SetClient
; ; 	:wxToolWindow_GetClient
; ; 	:wxToolWindow_SetTitleFont
; ; 	:wxToolWindow_AddMiniButton
; ; 	:cbMiniButton_Create
; ; 	:cbMiniButton_Delete
; ; 	:cbMiniButton_Pos
; ; 	:cbMiniButton_Dim
; ; 	:cbMiniButton_Visible
; ; 	:cbMiniButton_Enabled
; ; 	:cbMiniButton_Layout
; ; 	:cbMiniButton_Pane
; ; 	:cbMiniButton_Plugin
; ; 	:cbMiniButton_Wnd
; ; 	:cbMiniButton_DragStarted
; ; 	:cbMiniButton_Pressed
; ; 	:cbMiniButton_SetPos
; ; 	:cbMiniButton_HitTest
; ; 	:cbMiniButton_Refresh
; ; 	:cbMiniButton_WasClicked
; ; 	:cbMiniButton_Reset
; ; 	:cbMiniButton_Enable
; ; 	:cbMiniButton_IsPressed
; ; 	:cbCloseBox_Create
; ; 	:cbCollapseBox_Create
; ; 	:cbDockBox_Create
; ; 	:cbFloatedBarWindow_Create
; ; 	:cbFloatedBarWindow_SetBar
; ; 	:cbFloatedBarWindow_SetLayout
; ; 	:cbFloatedBarWindow_GetBar
; ; 	:cbFloatedBarWindow_PositionFloatedWnd
; 	:wxFrameLayout_Create
; 	:wxFrameLayout_Delete
; 	:wxFrameLayout_EnableFloating
; 	:wxFrameLayout_Activate
; 	:wxFrameLayout_Deactivate
; 	:wxFrameLayout_HideBarWindows
; 	:wxFrameLayout_DestroyBarWindows
; 	:wxFrameLayout_SetFrameClient
; 	:wxFrameLayout_GetFrameClient
; 	:wxFrameLayout_GetParentFrame
; 	:wxFrameLayout_GetPane
; 	:wxFrameLayout_AddBar
; 	:wxFrameLayout_RedockBar
; 	:wxFrameLayout_FindBarByName
; 	:wxFrameLayout_FindBarByWindow
; 	:wxFrameLayout_GetBars
; 	:wxFrameLayout_SetBarState
; 	:wxFrameLayout_InverseVisibility
; 	:wxFrameLayout_ApplyBarProperties
; 	:wxFrameLayout_RemoveBar
; 	:wxFrameLayout_RecalcLayout
; 	:wxFrameLayout_GetClientHeight
; 	:wxFrameLayout_GetClientWidth
; 	:wxFrameLayout_GetClientRect
; 	:wxFrameLayout_GetUpdatesManager
; 	:wxFrameLayout_SetUpdatesManager
; 	:wxFrameLayout_GetPaneProperties
; 	:wxFrameLayout_SetPaneProperties
; 	:wxFrameLayout_SetMargins
; 	:wxFrameLayout_SetPaneBackground
; 	:wxFrameLayout_RefreshNow
; 	:wxFrameLayout_OnSize
; 	:wxFrameLayout_OnLButtonDown
; 	:wxFrameLayout_OnLDblClick
; 	:wxFrameLayout_OnLButtonUp
; 	:wxFrameLayout_OnRButtonDown
; 	:wxFrameLayout_OnRButtonUp
; 	:wxFrameLayout_OnMouseMove
; 	:wxFrameLayout_FirePluginEvent
; 	:wxFrameLayout_CaptureEventsForPlugin
; 	:wxFrameLayout_ReleaseEventsFromPlugin
; 	:wxFrameLayout_CaptureEventsForPane
; 	:wxFrameLayout_ReleaseEventsFromPane
; 	:wxFrameLayout_GetTopPlugin
; 	:wxFrameLayout_SetTopPlugin
; 	:wxFrameLayout_PushPlugin
; 	:wxFrameLayout_PopPlugin
; 	:wxFrameLayout_PopAllPlugins
; 	:wxFrameLayout_PushDefaultPlugins
; 	:wxFrameLayout_AddPlugin
; 	:wxFrameLayout_AddPluginBefore
; 	:wxFrameLayout_RemovePlugin
; 	:wxFrameLayout_FindPlugin
; 	:wxFrameLayout_HasTopPlugin
; ; 	:cbDimInfo_CreateDefault
; ; 	:cbDimInfo_CreateWithHandler
; ; 	:cbDimInfo_CreateWithInfo
; ; 	:cbDimInfo_Create
; ; 	:cbDimInfo_Delete
; ; 	:cbDimInfo_Assign
; ; 	:cbDimInfo_GetDimHandler
; ; 	:cbBarInfo_Create
; ; 	:cbBarInfo_Delete
; ; 	:cbBarInfo_IsFixed
; ; 	:cbBarInfo_IsExpanded
; ; 	:cbBarSpy_CreateDefault
; ; 	:cbBarSpy_Create
; ; 	:cbBarSpy_Delete
; ; 	:cbBarSpy_SetBarWindow
; ; 	:cbBarSpy_ProcessEvent
; ; 	:cbRowInfo_Create
; ; 	:cbRowInfo_Delete
; ; 	:cbRowInfo_GetFirstBar
; ; 	:cbDockPane_CreateDefault
; ; 	:cbDockPane_Create
; ; 	:cbDockPane_Delete
; ; 	:cbDockPane_SetMargins
; ; 	:cbDockPane_RemoveBar
; ; 	:cbDockPane_InsertBarByCoord
; ; 	:cbDockPane_InsertBarToRow
; ; 	:cbDockPane_InsertBarByInfo
; ; 	:cbDockPane_RemoveRow
; ; 	:cbDockPane_InsertRow
; ; 	:cbDockPane_SetPaneWidth
; ; 	:cbDockPane_SetBoundsInParent
; ; 	:cbDockPane_GetRealRect
; ; 	:cbDockPane_GetRowList
; ; 	:cbDockPane_GetFirstRow
; ; 	:cbDockPane_BarPresent
; ; 	:cbDockPane_GetPaneHeight
; ; 	:cbDockPane_GetAlignment
; ; 	:cbDockPane_MatchesMask
; ; 	:cbDockPane_IsHorizontal
; ; 	:cbDockPane_GetDockingState
; ; 	:cbDockPane_HitTestPaneItems
; ; 	:cbDockPane_GetBarResizeRange
; ; 	:cbDockPane_GetRowResizeRange
; ; 	:cbDockPane_GetBarInfoByWindow
; ; 	:cbPluginBase_GetPaneMask
; ; 	:cbPluginBase_Delete
; ; 	:cbPluginBase_IsReady
; ; 	:cbPluginBase_ProcessEvent
; ; 	:cbPluginEvent_Pane
; ; 	:cbLeftDownEvent_Pos
; ; 	:cbLeftUpEvent_Pos
; ; 	:cbRightDownEvent_Pos
; ; 	:cbRightUpEvent_Pos
; ; 	:cbMotionEvent_Pos
; ; 	:cbLeftDClickEvent_Pos
; ; 	:cbLayoutRowEvent_Row
; ; 	:cbResizeRowEvent_Row
; ; 	:cbResizeRowEvent_HandleOfs
; ; 	:cbResizeRowEvent_ForUpperHandle
; ; 	:cbInsertBarEvent_Bar
; ; 	:cbInsertBarEvent_Row
; ; 	:cbResizeBarEvent_Bar
; ; 	:cbResizeBarEvent_Row
; ; 	:cbRemoveBarEvent_Bar
; ; 	:cbSizeBarWndEvent_Bar
; ; 	:cbSizeBarWndEvent_BoundsInParent
; ; 	:cbDrawBarDecorEvent_Bar
; ; 	:cbDrawBarDecorEvent_BoundsInParent
; ; 	:cbDrawBarDecorEvent_Dc
; ; 	:cbDrawRowDecorEvent_Row
; ; 	:cbDrawRowDecorEvent_Dc
; ; 	:cbDrawPaneDecorEvent_Dc
; ; 	:cbDrawBarHandlesEvent_Bar
; ; 	:cbDrawBarHandlesEvent_Dc
; ; 	:cbDrawRowHandlesEvent_Row
; ; 	:cbDrawRowHandlesEvent_Dc
; ; 	:cbDrawRowBkGroundEvent_Row
; ; 	:cbDrawRowBkGroundEvent_Dc
; ; 	:cbDrawPaneBkGroundEvent_Dc
; ; 	:cbStartBarDraggingEvent_Bar
; ; 	:cbStartBarDraggingEvent_Pos
; ; 	:cbDrawHintRectEvent_Rect
; ; 	:cbDrawHintRectEvent_LastTime
; ; 	:cbDrawHintRectEvent_EraseRect
; ; 	:cbDrawHintRectEvent_IsInClient
; ; 	:cbStartDrawInAreaEvent_Area
; ; 	:cbFinishDrawInAreaEvent_Area
; ; 	:cbCustomizeBarEvent_ClickPos
; ; 	:cbCustomizeBarEvent_Bar
; ; 	:cbCustomizeLayoutEvent_ClickPos
; ; 	:cbAntiflickerPlugin_CreateDefault
; ; 	:cbAntiflickerPlugin_Create
; ; 	:cbAntiflickerPlugin_Delete
; ; 	:cbBarDragPlugin_CreateDefault
; ; 	:cbBarDragPlugin_Create
; ; 	:cbBarDragPlugin_Delete
; ; 	:cbBarHintsPlugin_CreateDefault
; ; 	:cbBarHintsPlugin_Create
; ; 	:cbBarHintsPlugin_Delete
; ; 	:cbBarHintsPlugin_SetGrooveCount
; ; 	:cbSimpleCustomizationPlugin_CreateDefault
; ; 	:cbSimpleCustomizationPlugin_Create
; ; 	:cbSimpleCustomizationPlugin_Delete
; 	:wxToolLayoutItem_IsSeparator
; 	:wxToolLayoutItem_Rect
; 	:wxDynToolInfo_pToolWnd
; 	:wxDynToolInfo_Index
; 	:wxDynToolInfo_RealSize
; 	:wxDynamicToolBar_CreateDefault
; 	:wxDynamicToolBar_Create
; 	:wxDynamicToolBar_Delete
; 	:wxDynamicToolBar_CreateParams
; 	:wxDynamicToolBar_AddTool
; 	:wxDynamicToolBar_AddToolImage
; 	:wxDynamicToolBar_AddToolLabel
; 	:wxDynamicToolBar_AddToolBitmap
; 	:wxDynamicToolBar_AddSeparator
; 	:wxDynamicToolBar_GetToolInfo
; 	:wxDynamicToolBar_RemoveTool
; 	:wxDynamicToolBar_DrawSeparator
; 	:wxDynamicToolBar_Layout
; 	:wxDynamicToolBar_GetPreferredDim
; 	:wxDynamicToolBar_CreateDefaultLayout
; 	:wxDynamicToolBar_SetLayout
; 	:wxDynamicToolBar_EnableTool
; 	:wxDynamicToolBar_FindToolForPosition
; 	:wxDynamicToolBar_DoInsertTool
; 	:wxDynamicToolBar_DoDeleteTool
; 	:wxDynamicToolBar_DoEnableTool
; 	:wxDynamicToolBar_DoToggleTool
; 	:wxDynamicToolBar_DoSetToggle
; 	:wxDynamicToolBar_CreateTool
; 	:wxDynamicToolBar_CreateToolControl
; ; 	:cbDynToolBarDimHandler_Create
; ; 	:cbDynToolBarDimHandler_Delete
; ; 	:cbGCUpdatesMgr_Create
; ; 	:cbGCUpdatesMgr_CreateDefault
; ; 	:cbGCUpdatesMgr_Delete
; ; 	:cbGCUpdatesMgr_UpdateNow
; ; 	:cbHintAnimationPlugin_CreateDefault
; ; 	:cbHintAnimationPlugin_Create
; ; 	:cbHintAnimationPlugin_Delete
; 	:wxNewBitmapButton_Create
; 	:wxNewBitmapButton_CreateFromFile
; 	:wxNewBitmapButton_Realize
; 	:wxNewBitmapButton_Delete
; 	:wxNewBitmapButton_Reshape
; 	:wxNewBitmapButton_SetLabel
; 	:wxNewBitmapButton_SetAlignments
; 	:wxNewBitmapButton_DrawDecorations
; 	:wxNewBitmapButton_DrawLabel
; 	:wxNewBitmapButton_RenderLabelImage
; 	:wxNewBitmapButton_RenderLabelImages
; 	:wxNewBitmapButton_RenderAllLabelImages
; 	:wxNewBitmapButton_Enable
; ; 	:cbPaneDrawPlugin_CreateDefault
; ; 	:cbPaneDrawPlugin_Create
; ; 	:cbPaneDrawPlugin_Delete
; ; 	:cbRowDragPlugin_CreateDefault
; ; 	:cbRowDragPlugin_Create
; ; 	:cbRowDragPlugin_Delete
; ; 	:cbRowLayoutPlugin_CreateDefault
; ; 	:cbRowLayoutPlugin_Create
; ; 	:cbRowLayoutPlugin_Delete
; ; 	:cbPluginBase_Plugin
; ; 	:cbCommonPaneProperties_CreateDefault
; ; 	:cbCommonPaneProperties_Delete
; ; 	:cbCommonPaneProperties_RealTimeUpdatesOn
; ; 	:cbCommonPaneProperties_OutOfPaneDragOn
; ; 	:cbCommonPaneProperties_ExactDockPredictionOn
; ; 	:cbCommonPaneProperties_NonDestructFrictionOn
; ; 	:cbCommonPaneProperties_Show3DPaneBorderOn
; ; 	:cbCommonPaneProperties_BarFloatingOn
; ; 	:cbCommonPaneProperties_RowProportionsOn
; ; 	:cbCommonPaneProperties_ColProportionsOn
; ; 	:cbCommonPaneProperties_BarCollapseIconsOn
; ; 	:cbCommonPaneProperties_BarDragHintsOn
; ; 	:cbCommonPaneProperties_MinCBarDim
; ; 	:cbCommonPaneProperties_ResizeHandleSize
; ; 	:cbCommonPaneProperties_SetRealTimeUpdatesOn
; ; 	:cbCommonPaneProperties_SetOutOfPaneDragOn
; ; 	:cbCommonPaneProperties_SetExactDockPredictionOn
; ; 	:cbCommonPaneProperties_SetNonDestructFrictionOn
; ; 	:cbCommonPaneProperties_SetShow3DPaneBorderOn
; ; 	:cbCommonPaneProperties_SetBarFloatingOn
; ; 	:cbCommonPaneProperties_SetRowProportionsOn
; ; 	:cbCommonPaneProperties_SetColProportionsOn
; ; 	:cbCommonPaneProperties_SetBarCollapseIconsOn
; ; 	:cbCommonPaneProperties_SetBarDragHintsOn
; ; 	:cbCommonPaneProperties_SetMinCBarDim
; ; 	:cbCommonPaneProperties_SetResizeHandleSize
; ;	:cbCommonPaneProperties_Assign
; 	))

; (in-package :wxFL)

; (ffi:default-foreign-language :stdc)

; ; (ffi:def-call-out wxToolWindow_Create
; ; 	(:name "wxToolWindow_Create")
; ; 	(:arguments (_obj (ffi:c-pointer NIL))
; ; 		(_btn (ffi:c-pointer NIL))
; ; 		(_ttl (ffi:c-pointer NIL)))
; ; 	(:return-type (ffi:c-pointer NIL))
; ; 	(:library +library-name+))

; ; (ffi:def-call-out wxToolWindow_SetClient
; ; 	(:name "wxToolWindow_SetClient")
; ; 	(:arguments (_obj (ffi:c-pointer NIL))
; ; 		(_wnd (ffi:c-pointer NIL)))
; ; 	(:return-type NIL)
; ; 	(:library +library-name+))

; ; (ffi:def-call-out wxToolWindow_GetClient
; ; 	(:name "wxToolWindow_GetClient")
; ; 	(:arguments (_obj (ffi:c-pointer NIL)))
; ; 	(:return-type (ffi:c-pointer NIL))
; ; 	(:library +library-name+))

; ; (ffi:def-call-out wxToolWindow_SetTitleFont
; ; 	(:name "wxToolWindow_SetTitleFont")
; ; 	(:arguments (_obj (ffi:c-pointer NIL))
; ; 		(_fnt (ffi:c-pointer NIL)))
; ; 	(:return-type NIL)
; ; 	(:library +library-name+))

; ; (ffi:def-call-out wxToolWindow_AddMiniButton
; ; 	(:name "wxToolWindow_AddMiniButton")
; ; 	(:arguments (_obj (ffi:c-pointer NIL))
; ; 		(_btn (ffi:c-pointer NIL)))
; ; 	(:return-type NIL)
; ; 	(:library +library-name+))

; ; (ffi:def-call-out cbMiniButton_Create
; ; 	(:name "cbMiniButton_Create")
; ; 	(:return-type (ffi:c-pointer NIL))
; ; 	(:library +library-name+))

; ; (ffi:def-call-out cbMiniButton_Delete
; ; 	(:name "cbMiniButton_Delete")
; ; 	(:arguments (_obj (ffi:c-pointer NIL)))
; ; 	(:return-type NIL)
; ; 	(:library +library-name+))

; ; (ffi:def-call-out cbMiniButton_Pos
; ; 	(:name "cbMiniButton_Pos")
; ; 	(:arguments (_obj (ffi:c-pointer NIL))
; ; 		(x (ffi:c-pointer NIL))
; ; 		(y (ffi:c-pointer NIL)))
; ; 	(:return-type NIL)
; ; 	(:library +library-name+))

; ; (ffi:def-call-out cbMiniButton_Dim
; ; 	(:name "cbMiniButton_Dim")
; ; 	(:arguments (_obj (ffi:c-pointer NIL))
; ; 		(w (ffi:c-pointer NIL))
; ; 		(h (ffi:c-pointer NIL)))
; ; 	(:return-type NIL)
; ; 	(:library +library-name+))

; ; (ffi:def-call-out cbMiniButton_Visible
; ; 	(:name "cbMiniButton_Visible")
; ; 	(:arguments (_obj (ffi:c-pointer NIL)))
; ; 	(:return-type ffi:int)
; ; 	(:library +library-name+))

; ; (ffi:def-call-out cbMiniButton_Enabled
; ; 	(:name "cbMiniButton_Enabled")
; ; 	(:arguments (_obj (ffi:c-pointer NIL)))
; ; 	(:return-type ffi:int)
; ; 	(:library +library-name+))

; ; (ffi:def-call-out cbMiniButton_Layout
; ; 	(:name "cbMiniButton_Layout")
; ; 	(:arguments (_obj (ffi:c-pointer NIL)))
; ; 	(:return-type (ffi:c-pointer NIL))
; ; 	(:library +library-name+))

; ; (ffi:def-call-out cbMiniButton_Pane
; ; 	(:name "cbMiniButton_Pane")
; ; 	(:arguments (_obj (ffi:c-pointer NIL)))
; ; 	(:return-type (ffi:c-pointer NIL))
; ; 	(:library +library-name+))

; ; (ffi:def-call-out cbMiniButton_Plugin
; ; 	(:name "cbMiniButton_Plugin")
; ; 	(:arguments (_obj (ffi:c-pointer NIL)))
; ; 	(:return-type (ffi:c-pointer NIL))
; ; 	(:library +library-name+))

; ; (ffi:def-call-out cbMiniButton_Wnd
; ; 	(:name "cbMiniButton_Wnd")
; ; 	(:arguments (_obj (ffi:c-pointer NIL)))
; ; 	(:return-type (ffi:c-pointer NIL))
; ; 	(:library +library-name+))

; ; (ffi:def-call-out cbMiniButton_DragStarted
; ; 	(:name "cbMiniButton_DragStarted")
; ; 	(:arguments (_obj (ffi:c-pointer NIL)))
; ; 	(:return-type ffi:int)
; ; 	(:library +library-name+))

; ; (ffi:def-call-out cbMiniButton_Pressed
; ; 	(:name "cbMiniButton_Pressed")
; ; 	(:arguments (_obj (ffi:c-pointer NIL)))
; ; 	(:return-type ffi:int)
; ; 	(:library +library-name+))

; ; (ffi:def-call-out cbMiniButton_SetPos
; ; 	(:name "cbMiniButton_SetPos")
; ; 	(:arguments (_obj (ffi:c-pointer NIL))
; ; 		(x ffi:int)
; ; 		(y ffi:int))
; ; 	(:return-type NIL)
; ; 	(:library +library-name+))

; ; (ffi:def-call-out cbMiniButton_HitTest
; ; 	(:name "cbMiniButton_HitTest")
; ; 	(:arguments (_obj (ffi:c-pointer NIL))
; ; 		(x ffi:int)
; ; 		(y ffi:int))
; ; 	(:return-type ffi:int)
; ; 	(:library +library-name+))

; ; (ffi:def-call-out cbMiniButton_Refresh
; ; 	(:name "cbMiniButton_Refresh")
; ; 	(:arguments (_obj (ffi:c-pointer NIL)))
; ; 	(:return-type NIL)
; ; 	(:library +library-name+))

; ; (ffi:def-call-out cbMiniButton_WasClicked
; ; 	(:name "cbMiniButton_WasClicked")
; ; 	(:arguments (_obj (ffi:c-pointer NIL)))
; ; 	(:return-type ffi:int)
; ; 	(:library +library-name+))

; ; (ffi:def-call-out cbMiniButton_Reset
; ; 	(:name "cbMiniButton_Reset")
; ; 	(:arguments (_obj (ffi:c-pointer NIL)))
; ; 	(:return-type NIL)
; ; 	(:library +library-name+))

; ; (ffi:def-call-out cbMiniButton_Enable
; ; 	(:name "cbMiniButton_Enable")
; ; 	(:arguments (_obj (ffi:c-pointer NIL))
; ; 		(enable ffi:int))
; ; 	(:return-type NIL)
; ; 	(:library +library-name+))

; ; (ffi:def-call-out cbMiniButton_IsPressed
; ; 	(:name "cbMiniButton_IsPressed")
; ; 	(:arguments (_obj (ffi:c-pointer NIL)))
; ; 	(:return-type ffi:int)
; ; 	(:library +library-name+))

; ; (ffi:def-call-out cbCloseBox_Create
; ; 	(:name "cbCloseBox_Create")
; ; 	(:return-type (ffi:c-pointer NIL))
; ; 	(:library +library-name+))

; ; (ffi:def-call-out cbCollapseBox_Create
; ; 	(:name "cbCollapseBox_Create")
; ; 	(:return-type (ffi:c-pointer NIL))
; ; 	(:library +library-name+))

; ; (ffi:def-call-out cbDockBox_Create
; ; 	(:name "cbDockBox_Create")
; ; 	(:return-type (ffi:c-pointer NIL))
; ; 	(:library +library-name+))

; ; (ffi:def-call-out cbFloatedBarWindow_Create
; ; 	(:name "cbFloatedBarWindow_Create")
; ; 	(:arguments (_obj (ffi:c-pointer NIL)))
; ; 	(:return-type (ffi:c-pointer NIL))
; ; 	(:library +library-name+))

; ; (ffi:def-call-out cbFloatedBarWindow_SetBar
; ; 	(:name "cbFloatedBarWindow_SetBar")
; ; 	(:arguments (_obj (ffi:c-pointer NIL))
; ; 		(_bar (ffi:c-pointer NIL)))
; ; 	(:return-type NIL)
; ; 	(:library +library-name+))

; ; (ffi:def-call-out cbFloatedBarWindow_SetLayout
; ; 	(:name "cbFloatedBarWindow_SetLayout")
; ; 	(:arguments (_obj (ffi:c-pointer NIL))
; ; 		(_layout (ffi:c-pointer NIL)))
; ; 	(:return-type NIL)
; ; 	(:library +library-name+))

; ; (ffi:def-call-out cbFloatedBarWindow_GetBar
; ; 	(:name "cbFloatedBarWindow_GetBar")
; ; 	(:arguments (_obj (ffi:c-pointer NIL)))
; ; 	(:return-type (ffi:c-pointer NIL))
; ; 	(:library +library-name+))

; ; (ffi:def-call-out cbFloatedBarWindow_PositionFloatedWnd
; ; 	(:name "cbFloatedBarWindow_PositionFloatedWnd")
; ; 	(:arguments (_obj (ffi:c-pointer NIL))
; ; 		(_x ffi:int)
; ; 		(_y ffi:int)
; ; 		(_w ffi:int)
; ; 		(_h ffi:int))
; ; 	(:return-type NIL)
; ; 	(:library +library-name+))

; (ffi:def-call-out wxFrameLayout_Create
; 	(:name "wxFrameLayout_Create")
; 	(:arguments (pParentFrame (ffi:c-pointer NIL))
; 		(pFrameClient (ffi:c-pointer NIL))
; 		(activateNow ffi:int))
; 	(:return-type (ffi:c-pointer NIL))
; 	(:library +library-name+))

; (ffi:def-call-out wxFrameLayout_Delete
; 	(:name "wxFrameLayout_Delete")
; 	(:arguments (_obj (ffi:c-pointer NIL)))
; 	(:return-type NIL)
; 	(:library +library-name+))

; (ffi:def-call-out wxFrameLayout_EnableFloating
; 	(:name "wxFrameLayout_EnableFloating")
; 	(:arguments (_obj (ffi:c-pointer NIL))
; 		(enable ffi:int))
; 	(:return-type NIL)
; 	(:library +library-name+))

; (ffi:def-call-out wxFrameLayout_Activate
; 	(:name "wxFrameLayout_Activate")
; 	(:arguments (_obj (ffi:c-pointer NIL)))
; 	(:return-type NIL)
; 	(:library +library-name+))

; (ffi:def-call-out wxFrameLayout_Deactivate
; 	(:name "wxFrameLayout_Deactivate")
; 	(:arguments (_obj (ffi:c-pointer NIL)))
; 	(:return-type NIL)
; 	(:library +library-name+))

; (ffi:def-call-out wxFrameLayout_HideBarWindows
; 	(:name "wxFrameLayout_HideBarWindows")
; 	(:arguments (_obj (ffi:c-pointer NIL)))
; 	(:return-type NIL)
; 	(:library +library-name+))

; (ffi:def-call-out wxFrameLayout_DestroyBarWindows
; 	(:name "wxFrameLayout_DestroyBarWindows")
; 	(:arguments (_obj (ffi:c-pointer NIL)))
; 	(:return-type NIL)
; 	(:library +library-name+))

; (ffi:def-call-out wxFrameLayout_SetFrameClient
; 	(:name "wxFrameLayout_SetFrameClient")
; 	(:arguments (_obj (ffi:c-pointer NIL))
; 		(pFrameClient (ffi:c-pointer NIL)))
; 	(:return-type NIL)
; 	(:library +library-name+))

; (ffi:def-call-out wxFrameLayout_GetFrameClient
; 	(:name "wxFrameLayout_GetFrameClient")
; 	(:arguments (_obj (ffi:c-pointer NIL)))
; 	(:return-type (ffi:c-pointer NIL))
; 	(:library +library-name+))

; (ffi:def-call-out wxFrameLayout_GetParentFrame
; 	(:name "wxFrameLayout_GetParentFrame")
; 	(:arguments (_obj (ffi:c-pointer NIL)))
; 	(:return-type (ffi:c-pointer NIL))
; 	(:library +library-name+))

; (ffi:def-call-out wxFrameLayout_GetPane
; 	(:name "wxFrameLayout_GetPane")
; 	(:arguments (_obj (ffi:c-pointer NIL))
; 		(alignment ffi:int))
; 	(:return-type (ffi:c-pointer NIL))
; 	(:library +library-name+))

; (ffi:def-call-out wxFrameLayout_AddBar
; 	(:name "wxFrameLayout_AddBar")
; 	(:arguments (_obj (ffi:c-pointer NIL))
; 		(pBarWnd (ffi:c-pointer NIL))
; 		(dimInfo (ffi:c-pointer NIL))
; 		(alignment ffi:int)
; 		(rowNo ffi:int)
; 		(columnPos ffi:int)
; 		(name (ffi:c-pointer NIL))
; 		(spyEvents ffi:int)
; 		(state ffi:int))
; 	(:return-type NIL)
; 	(:library +library-name+))

; (ffi:def-call-out wxFrameLayout_RedockBar
; 	(:name "wxFrameLayout_RedockBar")
; 	(:arguments (_obj (ffi:c-pointer NIL))
; 		(pBar (ffi:c-pointer NIL))
; 		(x ffi:int)
; 		(y ffi:int)
; 		(w ffi:int)
; 		(h ffi:int)
; 		(pToPane (ffi:c-pointer NIL))
; 		(updateNow ffi:int))
; 	(:return-type ffi:int)
; 	(:library +library-name+))

; (ffi:def-call-out wxFrameLayout_FindBarByName
; 	(:name "wxFrameLayout_FindBarByName")
; 	(:arguments (_obj (ffi:c-pointer NIL))
; 		(name (ffi:c-pointer NIL)))
; 	(:return-type (ffi:c-pointer NIL))
; 	(:library +library-name+))

; (ffi:def-call-out wxFrameLayout_FindBarByWindow
; 	(:name "wxFrameLayout_FindBarByWindow")
; 	(:arguments (_obj (ffi:c-pointer NIL))
; 		(pWnd (ffi:c-pointer NIL)))
; 	(:return-type (ffi:c-pointer NIL))
; 	(:library +library-name+))

; (ffi:def-call-out wxFrameLayout_GetBars
; 	(:name "wxFrameLayout_GetBars")
; 	(:arguments (_obj (ffi:c-pointer NIL))
; 		(_ref (ffi:c-pointer NIL)))
; 	(:return-type ffi:int)
; 	(:library +library-name+))

; (ffi:def-call-out wxFrameLayout_SetBarState
; 	(:name "wxFrameLayout_SetBarState")
; 	(:arguments (_obj (ffi:c-pointer NIL))
; 		(pBar (ffi:c-pointer NIL))
; 		(newStatem ffi:int)
; 		(updateNow ffi:int))
; 	(:return-type NIL)
; 	(:library +library-name+))

; (ffi:def-call-out wxFrameLayout_InverseVisibility
; 	(:name "wxFrameLayout_InverseVisibility")
; 	(:arguments (_obj (ffi:c-pointer NIL))
; 		(pBar (ffi:c-pointer NIL)))
; 	(:return-type NIL)
; 	(:library +library-name+))

; (ffi:def-call-out wxFrameLayout_ApplyBarProperties
; 	(:name "wxFrameLayout_ApplyBarProperties")
; 	(:arguments (_obj (ffi:c-pointer NIL))
; 		(pBar (ffi:c-pointer NIL)))
; 	(:return-type NIL)
; 	(:library +library-name+))

; (ffi:def-call-out wxFrameLayout_RemoveBar
; 	(:name "wxFrameLayout_RemoveBar")
; 	(:arguments (_obj (ffi:c-pointer NIL))
; 		(pBar (ffi:c-pointer NIL)))
; 	(:return-type NIL)
; 	(:library +library-name+))

; (ffi:def-call-out wxFrameLayout_RecalcLayout
; 	(:name "wxFrameLayout_RecalcLayout")
; 	(:arguments (_obj (ffi:c-pointer NIL))
; 		(repositionBarsNow ffi:int))
; 	(:return-type NIL)
; 	(:library +library-name+))

; (ffi:def-call-out wxFrameLayout_GetClientHeight
; 	(:name "wxFrameLayout_GetClientHeight")
; 	(:arguments (_obj (ffi:c-pointer NIL)))
; 	(:return-type ffi:int)
; 	(:library +library-name+))

; (ffi:def-call-out wxFrameLayout_GetClientWidth
; 	(:name "wxFrameLayout_GetClientWidth")
; 	(:arguments (_obj (ffi:c-pointer NIL)))
; 	(:return-type ffi:int)
; 	(:library +library-name+))

; (ffi:def-call-out wxFrameLayout_GetClientRect
; 	(:name "wxFrameLayout_GetClientRect")
; 	(:arguments (_obj (ffi:c-pointer NIL))
; 		(x (ffi:c-pointer NIL))
; 		(y (ffi:c-pointer NIL))
; 		(w (ffi:c-pointer NIL))
; 		(h (ffi:c-pointer NIL)))
; 	(:return-type NIL)
; 	(:library +library-name+))

; (ffi:def-call-out wxFrameLayout_GetUpdatesManager
; 	(:name "wxFrameLayout_GetUpdatesManager")
; 	(:arguments (_obj (ffi:c-pointer NIL)))
; 	(:return-type (ffi:c-pointer NIL))
; 	(:library +library-name+))

; (ffi:def-call-out wxFrameLayout_SetUpdatesManager
; 	(:name "wxFrameLayout_SetUpdatesManager")
; 	(:arguments (_obj (ffi:c-pointer NIL))
; 		(pUMgr (ffi:c-pointer NIL)))
; 	(:return-type NIL)
; 	(:library +library-name+))

; (ffi:def-call-out wxFrameLayout_GetPaneProperties
; 	(:name "wxFrameLayout_GetPaneProperties")
; 	(:arguments (_obj (ffi:c-pointer NIL))
; 		(props (ffi:c-pointer NIL))
; 		(alignment ffi:int))
; 	(:return-type NIL)
; 	(:library +library-name+))

; (ffi:def-call-out wxFrameLayout_SetPaneProperties
; 	(:name "wxFrameLayout_SetPaneProperties")
; 	(:arguments (_obj (ffi:c-pointer NIL))
; 		(props (ffi:c-pointer NIL))
; 		(paneMask ffi:int))
; 	(:return-type NIL)
; 	(:library +library-name+))

; (ffi:def-call-out wxFrameLayout_SetMargins
; 	(:name "wxFrameLayout_SetMargins")
; 	(:arguments (_obj (ffi:c-pointer NIL))
; 		(top ffi:int)
; 		(bottom ffi:int)
; 		(left ffi:int)
; 		(right ffi:int)
; 		(paneMask ffi:int))
; 	(:return-type NIL)
; 	(:library +library-name+))

; (ffi:def-call-out wxFrameLayout_SetPaneBackground
; 	(:name "wxFrameLayout_SetPaneBackground")
; 	(:arguments (_obj (ffi:c-pointer NIL))
; 		(colour (ffi:c-pointer NIL)))
; 	(:return-type NIL)
; 	(:library +library-name+))

; (ffi:def-call-out wxFrameLayout_RefreshNow
; 	(:name "wxFrameLayout_RefreshNow")
; 	(:arguments (_obj (ffi:c-pointer NIL))
; 		(recalcLayout ffi:int))
; 	(:return-type NIL)
; 	(:library +library-name+))

; (ffi:def-call-out wxFrameLayout_OnSize
; 	(:name "wxFrameLayout_OnSize")
; 	(:arguments (_obj (ffi:c-pointer NIL))
; 		(event (ffi:c-pointer NIL)))
; 	(:return-type NIL)
; 	(:library +library-name+))

; (ffi:def-call-out wxFrameLayout_OnLButtonDown
; 	(:name "wxFrameLayout_OnLButtonDown")
; 	(:arguments (_obj (ffi:c-pointer NIL))
; 		(event (ffi:c-pointer NIL)))
; 	(:return-type NIL)
; 	(:library +library-name+))

; (ffi:def-call-out wxFrameLayout_OnLDblClick
; 	(:name "wxFrameLayout_OnLDblClick")
; 	(:arguments (_obj (ffi:c-pointer NIL))
; 		(event (ffi:c-pointer NIL)))
; 	(:return-type NIL)
; 	(:library +library-name+))

; (ffi:def-call-out wxFrameLayout_OnLButtonUp
; 	(:name "wxFrameLayout_OnLButtonUp")
; 	(:arguments (_obj (ffi:c-pointer NIL))
; 		(event (ffi:c-pointer NIL)))
; 	(:return-type NIL)
; 	(:library +library-name+))

; (ffi:def-call-out wxFrameLayout_OnRButtonDown
; 	(:name "wxFrameLayout_OnRButtonDown")
; 	(:arguments (_obj (ffi:c-pointer NIL))
; 		(event (ffi:c-pointer NIL)))
; 	(:return-type NIL)
; 	(:library +library-name+))

; (ffi:def-call-out wxFrameLayout_OnRButtonUp
; 	(:name "wxFrameLayout_OnRButtonUp")
; 	(:arguments (_obj (ffi:c-pointer NIL))
; 		(event (ffi:c-pointer NIL)))
; 	(:return-type NIL)
; 	(:library +library-name+))

; (ffi:def-call-out wxFrameLayout_OnMouseMove
; 	(:name "wxFrameLayout_OnMouseMove")
; 	(:arguments (_obj (ffi:c-pointer NIL))
; 		(event (ffi:c-pointer NIL)))
; 	(:return-type NIL)
; 	(:library +library-name+))

; (ffi:def-call-out wxFrameLayout_FirePluginEvent
; 	(:name "wxFrameLayout_FirePluginEvent")
; 	(:arguments (_obj (ffi:c-pointer NIL))
; 		(event (ffi:c-pointer NIL)))
; 	(:return-type NIL)
; 	(:library +library-name+))

; (ffi:def-call-out wxFrameLayout_CaptureEventsForPlugin
; 	(:name "wxFrameLayout_CaptureEventsForPlugin")
; 	(:arguments (_obj (ffi:c-pointer NIL))
; 		(pPlugin (ffi:c-pointer NIL)))
; 	(:return-type NIL)
; 	(:library +library-name+))

; (ffi:def-call-out wxFrameLayout_ReleaseEventsFromPlugin
; 	(:name "wxFrameLayout_ReleaseEventsFromPlugin")
; 	(:arguments (_obj (ffi:c-pointer NIL))
; 		(pPlugin (ffi:c-pointer NIL)))
; 	(:return-type NIL)
; 	(:library +library-name+))

; (ffi:def-call-out wxFrameLayout_CaptureEventsForPane
; 	(:name "wxFrameLayout_CaptureEventsForPane")
; 	(:arguments (_obj (ffi:c-pointer NIL))
; 		(toPane (ffi:c-pointer NIL)))
; 	(:return-type NIL)
; 	(:library +library-name+))

; (ffi:def-call-out wxFrameLayout_ReleaseEventsFromPane
; 	(:name "wxFrameLayout_ReleaseEventsFromPane")
; 	(:arguments (_obj (ffi:c-pointer NIL))
; 		(fromPane (ffi:c-pointer NIL)))
; 	(:return-type NIL)
; 	(:library +library-name+))

; (ffi:def-call-out wxFrameLayout_GetTopPlugin
; 	(:name "wxFrameLayout_GetTopPlugin")
; 	(:arguments (_obj (ffi:c-pointer NIL)))
; 	(:return-type (ffi:c-pointer NIL))
; 	(:library +library-name+))

; (ffi:def-call-out wxFrameLayout_SetTopPlugin
; 	(:name "wxFrameLayout_SetTopPlugin")
; 	(:arguments (_obj (ffi:c-pointer NIL))
; 		(pPlugin (ffi:c-pointer NIL)))
; 	(:return-type NIL)
; 	(:library +library-name+))

; (ffi:def-call-out wxFrameLayout_PushPlugin
; 	(:name "wxFrameLayout_PushPlugin")
; 	(:arguments (_obj (ffi:c-pointer NIL))
; 		(pPugin (ffi:c-pointer NIL)))
; 	(:return-type NIL)
; 	(:library +library-name+))

; (ffi:def-call-out wxFrameLayout_PopPlugin
; 	(:name "wxFrameLayout_PopPlugin")
; 	(:arguments (_obj (ffi:c-pointer NIL)))
; 	(:return-type NIL)
; 	(:library +library-name+))

; (ffi:def-call-out wxFrameLayout_PopAllPlugins
; 	(:name "wxFrameLayout_PopAllPlugins")
; 	(:arguments (_obj (ffi:c-pointer NIL)))
; 	(:return-type NIL)
; 	(:library +library-name+))

; (ffi:def-call-out wxFrameLayout_PushDefaultPlugins
; 	(:name "wxFrameLayout_PushDefaultPlugins")
; 	(:arguments (_obj (ffi:c-pointer NIL)))
; 	(:return-type NIL)
; 	(:library +library-name+))

; (ffi:def-call-out wxFrameLayout_AddPlugin
; 	(:name "wxFrameLayout_AddPlugin")
; 	(:arguments (_obj (ffi:c-pointer NIL))
; 		(pPlInfo (ffi:c-pointer NIL))
; 		(paneMask ffi:int))
; 	(:return-type NIL)
; 	(:library +library-name+))

; (ffi:def-call-out wxFrameLayout_AddPluginBefore
; 	(:name "wxFrameLayout_AddPluginBefore")
; 	(:arguments (_obj (ffi:c-pointer NIL))
; 		(pNextPlInfo (ffi:c-pointer NIL))
; 		(pPlInfo (ffi:c-pointer NIL))
; 		(paneMask ffi:int))
; 	(:return-type NIL)
; 	(:library +library-name+))

; (ffi:def-call-out wxFrameLayout_RemovePlugin
; 	(:name "wxFrameLayout_RemovePlugin")
; 	(:arguments (_obj (ffi:c-pointer NIL))
; 		(pPlInfo (ffi:c-pointer NIL)))
; 	(:return-type NIL)
; 	(:library +library-name+))

; (ffi:def-call-out wxFrameLayout_FindPlugin
; 	(:name "wxFrameLayout_FindPlugin")
; 	(:arguments (_obj (ffi:c-pointer NIL))
; 		(pPlInfo (ffi:c-pointer NIL)))
; 	(:return-type (ffi:c-pointer NIL))
; 	(:library +library-name+))

; (ffi:def-call-out wxFrameLayout_HasTopPlugin
; 	(:name "wxFrameLayout_HasTopPlugin")
; 	(:arguments (_obj (ffi:c-pointer NIL)))
; 	(:return-type ffi:int)
; 	(:library +library-name+))

; ; (ffi:def-call-out cbDimInfo_CreateDefault
; ; 	(:name "cbDimInfo_CreateDefault")
; ; 	(:return-type (ffi:c-pointer NIL))
; ; 	(:library +library-name+))

; ; (ffi:def-call-out cbDimInfo_CreateWithHandler
; ; 	(:name "cbDimInfo_CreateWithHandler")
; ; 	(:arguments (pDimHandler (ffi:c-pointer NIL))
; ; 		(isFixed ffi:int))
; ; 	(:return-type (ffi:c-pointer NIL))
; ; 	(:library +library-name+))

; ; (ffi:def-call-out cbDimInfo_CreateWithInfo
; ; 	(:name "cbDimInfo_CreateWithInfo")
; ; 	(:arguments (dh_x ffi:int)
; ; 		(dh_y ffi:int)
; ; 		(dv_x ffi:int)
; ; 		(dv_y ffi:int)
; ; 		(f_x ffi:int)
; ; 		(f_y ffi:int)
; ; 		(isFixed ffi:int)
; ; 		(horizGap ffi:int)
; ; 		(vertGap ffi:int)
; ; 		(pDimHandler (ffi:c-pointer NIL)))
; ; 	(:return-type (ffi:c-pointer NIL))
; ; 	(:library +library-name+))

; ; (ffi:def-call-out cbDimInfo_Create
; ; 	(:name "cbDimInfo_Create")
; ; 	(:arguments (x ffi:int)
; ; 		(y ffi:int)
; ; 		(isFixed ffi:int)
; ; 		(gap ffi:int)
; ; 		(pDimHandler (ffi:c-pointer NIL)))
; ; 	(:return-type (ffi:c-pointer NIL))
; ; 	(:library +library-name+))

; ; (ffi:def-call-out cbDimInfo_Delete
; ; 	(:name "cbDimInfo_Delete")
; ; 	(:arguments (_obj (ffi:c-pointer NIL)))
; ; 	(:return-type NIL)
; ; 	(:library +library-name+))

; ; (ffi:def-call-out cbDimInfo_Assign
; ; 	(:name "cbDimInfo_Assign")
; ; 	(:arguments (_obj (ffi:c-pointer NIL))
; ; 		(other (ffi:c-pointer NIL)))
; ; 	(:return-type NIL)
; ; 	(:library +library-name+))

; ; (ffi:def-call-out cbDimInfo_GetDimHandler
; ; 	(:name "cbDimInfo_GetDimHandler")
; ; 	(:arguments (_obj (ffi:c-pointer NIL)))
; ; 	(:return-type (ffi:c-pointer NIL))
; ; 	(:library +library-name+))

; ; (ffi:def-call-out cbBarInfo_Create
; ; 	(:name "cbBarInfo_Create")
; ; 	(:return-type (ffi:c-pointer NIL))
; ; 	(:library +library-name+))

; ; (ffi:def-call-out cbBarInfo_Delete
; ; 	(:name "cbBarInfo_Delete")
; ; 	(:arguments (_obj (ffi:c-pointer NIL)))
; ; 	(:return-type NIL)
; ; 	(:library +library-name+))

; ; (ffi:def-call-out cbBarInfo_IsFixed
; ; 	(:name "cbBarInfo_IsFixed")
; ; 	(:arguments (_obj (ffi:c-pointer NIL)))
; ; 	(:return-type ffi:int)
; ; 	(:library +library-name+))

; ; (ffi:def-call-out cbBarInfo_IsExpanded
; ; 	(:name "cbBarInfo_IsExpanded")
; ; 	(:arguments (_obj (ffi:c-pointer NIL)))
; ; 	(:return-type ffi:int)
; ; 	(:library +library-name+))

; ; (ffi:def-call-out cbBarSpy_CreateDefault
; ; 	(:name "cbBarSpy_CreateDefault")
; ; 	(:return-type (ffi:c-pointer NIL))
; ; 	(:library +library-name+))

; ; (ffi:def-call-out cbBarSpy_Create
; ; 	(:name "cbBarSpy_Create")
; ; 	(:arguments (pPanel (ffi:c-pointer NIL)))
; ; 	(:return-type (ffi:c-pointer NIL))
; ; 	(:library +library-name+))

; ; (ffi:def-call-out cbBarSpy_Delete
; ; 	(:name "cbBarSpy_Delete")
; ; 	(:arguments (_obj (ffi:c-pointer NIL)))
; ; 	(:return-type NIL)
; ; 	(:library +library-name+))

; ; (ffi:def-call-out cbBarSpy_SetBarWindow
; ; 	(:name "cbBarSpy_SetBarWindow")
; ; 	(:arguments (_obj (ffi:c-pointer NIL))
; ; 		(pWnd (ffi:c-pointer NIL)))
; ; 	(:return-type NIL)
; ; 	(:library +library-name+))

; ; (ffi:def-call-out cbBarSpy_ProcessEvent
; ; 	(:name "cbBarSpy_ProcessEvent")
; ; 	(:arguments (_obj (ffi:c-pointer NIL))
; ; 		(event (ffi:c-pointer NIL)))
; ; 	(:return-type ffi:int)
; ; 	(:library +library-name+))

; ; (ffi:def-call-out cbRowInfo_Create
; ; 	(:name "cbRowInfo_Create")
; ; 	(:return-type (ffi:c-pointer NIL))
; ; 	(:library +library-name+))

; ; (ffi:def-call-out cbRowInfo_Delete
; ; 	(:name "cbRowInfo_Delete")
; ; 	(:arguments (_obj (ffi:c-pointer NIL)))
; ; 	(:return-type NIL)
; ; 	(:library +library-name+))

; ; (ffi:def-call-out cbRowInfo_GetFirstBar
; ; 	(:name "cbRowInfo_GetFirstBar")
; ; 	(:arguments (_obj (ffi:c-pointer NIL)))
; ; 	(:return-type (ffi:c-pointer NIL))
; ; 	(:library +library-name+))

; ; (ffi:def-call-out cbDockPane_CreateDefault
; ; 	(:name "cbDockPane_CreateDefault")
; ; 	(:return-type (ffi:c-pointer NIL))
; ; 	(:library +library-name+))

; ; (ffi:def-call-out cbDockPane_Create
; ; 	(:name "cbDockPane_Create")
; ; 	(:arguments (alignment ffi:int)
; ; 		(pPanel (ffi:c-pointer NIL)))
; ; 	(:return-type (ffi:c-pointer NIL))
; ; 	(:library +library-name+))

; ; (ffi:def-call-out cbDockPane_Delete
; ; 	(:name "cbDockPane_Delete")
; ; 	(:arguments (_obj (ffi:c-pointer NIL)))
; ; 	(:return-type NIL)
; ; 	(:library +library-name+))

; ; (ffi:def-call-out cbDockPane_SetMargins
; ; 	(:name "cbDockPane_SetMargins")
; ; 	(:arguments (_obj (ffi:c-pointer NIL))
; ; 		(top ffi:int)
; ; 		(bottom ffi:int)
; ; 		(left ffi:int)
; ; 		(right ffi:int))
; ; 	(:return-type NIL)
; ; 	(:library +library-name+))

; ; (ffi:def-call-out cbDockPane_RemoveBar
; ; 	(:name "cbDockPane_RemoveBar")
; ; 	(:arguments (_obj (ffi:c-pointer NIL))
; ; 		(pBar (ffi:c-pointer NIL)))
; ; 	(:return-type NIL)
; ; 	(:library +library-name+))

; ; (ffi:def-call-out cbDockPane_InsertBarByCoord
; ; 	(:name "cbDockPane_InsertBarByCoord")
; ; 	(:arguments (_obj (ffi:c-pointer NIL))
; ; 		(pBar (ffi:c-pointer NIL))
; ; 		(x ffi:int)
; ; 		(y ffi:int)
; ; 		(w ffi:int)
; ; 		(h ffi:int))
; ; 	(:return-type NIL)
; ; 	(:library +library-name+))

; ; (ffi:def-call-out cbDockPane_InsertBarToRow
; ; 	(:name "cbDockPane_InsertBarToRow")
; ; 	(:arguments (_obj (ffi:c-pointer NIL))
; ; 		(pBar (ffi:c-pointer NIL))
; ; 		(pIntoRow (ffi:c-pointer NIL)))
; ; 	(:return-type NIL)
; ; 	(:library +library-name+))

; ; (ffi:def-call-out cbDockPane_InsertBarByInfo
; ; 	(:name "cbDockPane_InsertBarByInfo")
; ; 	(:arguments (_obj (ffi:c-pointer NIL))
; ; 		(pBarInfo (ffi:c-pointer NIL)))
; ; 	(:return-type NIL)
; ; 	(:library +library-name+))

; ; (ffi:def-call-out cbDockPane_RemoveRow
; ; 	(:name "cbDockPane_RemoveRow")
; ; 	(:arguments (_obj (ffi:c-pointer NIL))
; ; 		(pRow (ffi:c-pointer NIL)))
; ; 	(:return-type NIL)
; ; 	(:library +library-name+))

; ; (ffi:def-call-out cbDockPane_InsertRow
; ; 	(:name "cbDockPane_InsertRow")
; ; 	(:arguments (_obj (ffi:c-pointer NIL))
; ; 		(pRow (ffi:c-pointer NIL))
; ; 		(pBeforeRow (ffi:c-pointer NIL)))
; ; 	(:return-type NIL)
; ; 	(:library +library-name+))

; ; (ffi:def-call-out cbDockPane_SetPaneWidth
; ; 	(:name "cbDockPane_SetPaneWidth")
; ; 	(:arguments (_obj (ffi:c-pointer NIL))
; ; 		(width ffi:int))
; ; 	(:return-type NIL)
; ; 	(:library +library-name+))

; ; (ffi:def-call-out cbDockPane_SetBoundsInParent
; ; 	(:name "cbDockPane_SetBoundsInParent")
; ; 	(:arguments (_obj (ffi:c-pointer NIL))
; ; 		(_x ffi:int)
; ; 		(_y ffi:int)
; ; 		(_w ffi:int)
; ; 		(_h ffi:int))
; ; 	(:return-type NIL)
; ; 	(:library +library-name+))

; ; (ffi:def-call-out cbDockPane_GetRealRect
; ; 	(:name "cbDockPane_GetRealRect")
; ; 	(:arguments (_obj (ffi:c-pointer NIL))
; ; 		(_x (ffi:c-pointer NIL))
; ; 		(_y (ffi:c-pointer NIL))
; ; 		(_w (ffi:c-pointer NIL))
; ; 		(_h (ffi:c-pointer NIL)))
; ; 	(:return-type NIL)
; ; 	(:library +library-name+))

; ; (ffi:def-call-out cbDockPane_GetRowList
; ; 	(:name "cbDockPane_GetRowList")
; ; 	(:arguments (_obj (ffi:c-pointer NIL))
; ; 		(_ref (ffi:c-pointer NIL)))
; ; 	(:return-type ffi:int)
; ; 	(:library +library-name+))

; ; (ffi:def-call-out cbDockPane_GetFirstRow
; ; 	(:name "cbDockPane_GetFirstRow")
; ; 	(:arguments (_obj (ffi:c-pointer NIL)))
; ; 	(:return-type (ffi:c-pointer NIL))
; ; 	(:library +library-name+))

; ; (ffi:def-call-out cbDockPane_BarPresent
; ; 	(:name "cbDockPane_BarPresent")
; ; 	(:arguments (_obj (ffi:c-pointer NIL))
; ; 		(pBar (ffi:c-pointer NIL)))
; ; 	(:return-type ffi:int)
; ; 	(:library +library-name+))

; ; (ffi:def-call-out cbDockPane_GetPaneHeight
; ; 	(:name "cbDockPane_GetPaneHeight")
; ; 	(:arguments (_obj (ffi:c-pointer NIL)))
; ; 	(:return-type ffi:int)
; ; 	(:library +library-name+))

; ; (ffi:def-call-out cbDockPane_GetAlignment
; ; 	(:name "cbDockPane_GetAlignment")
; ; 	(:arguments (_obj (ffi:c-pointer NIL)))
; ; 	(:return-type ffi:int)
; ; 	(:library +library-name+))

; ; (ffi:def-call-out cbDockPane_MatchesMask
; ; 	(:name "cbDockPane_MatchesMask")
; ; 	(:arguments (_obj (ffi:c-pointer NIL))
; ; 		(paneMask ffi:int))
; ; 	(:return-type ffi:int)
; ; 	(:library +library-name+))

; ; (ffi:def-call-out cbDockPane_IsHorizontal
; ; 	(:name "cbDockPane_IsHorizontal")
; ; 	(:arguments (_obj (ffi:c-pointer NIL)))
; ; 	(:return-type ffi:int)
; ; 	(:library +library-name+))

; ; (ffi:def-call-out cbDockPane_GetDockingState
; ; 	(:name "cbDockPane_GetDockingState")
; ; 	(:arguments (_obj (ffi:c-pointer NIL)))
; ; 	(:return-type ffi:int)
; ; 	(:library +library-name+))

; ; (ffi:def-call-out cbDockPane_HitTestPaneItems
; ; 	(:name "cbDockPane_HitTestPaneItems")
; ; 	(:arguments (_obj (ffi:c-pointer NIL))
; ; 		(x ffi:int)
; ; 		(y ffi:int)
; ; 		(ppRow (ffi:c-pointer NIL))
; ; 		(ppBar (ffi:c-pointer NIL)))
; ; 	(:return-type ffi:int)
; ; 	(:library +library-name+))

; ; (ffi:def-call-out cbDockPane_GetBarResizeRange
; ; 	(:name "cbDockPane_GetBarResizeRange")
; ; 	(:arguments (_obj (ffi:c-pointer NIL))
; ; 		(pBar (ffi:c-pointer NIL))
; ; 		(from (ffi:c-pointer NIL))
; ; 		(till (ffi:c-pointer NIL))
; ; 		(forLeftHandle ffi:int))
; ; 	(:return-type NIL)
; ; 	(:library +library-name+))

; ; (ffi:def-call-out cbDockPane_GetRowResizeRange
; ; 	(:name "cbDockPane_GetRowResizeRange")
; ; 	(:arguments (_obj (ffi:c-pointer NIL))
; ; 		(pRow (ffi:c-pointer NIL))
; ; 		(from (ffi:c-pointer NIL))
; ; 		(till (ffi:c-pointer NIL))
; ; 		(forUpperHandle ffi:int))
; ; 	(:return-type NIL)
; ; 	(:library +library-name+))

; ; (ffi:def-call-out cbDockPane_GetBarInfoByWindow
; ; 	(:name "cbDockPane_GetBarInfoByWindow")
; ; 	(:arguments (_obj (ffi:c-pointer NIL))
; ; 		(pBarWnd (ffi:c-pointer NIL)))
; ; 	(:return-type (ffi:c-pointer NIL))
; ; 	(:library +library-name+))

; ; (ffi:def-call-out cbPluginBase_GetPaneMask
; ; 	(:name "cbPluginBase_GetPaneMask")
; ; 	(:arguments (_obj (ffi:c-pointer NIL)))
; ; 	(:return-type ffi:int)
; ; 	(:library +library-name+))

; ; (ffi:def-call-out cbPluginBase_Delete
; ; 	(:name "cbPluginBase_Delete")
; ; 	(:arguments (_obj (ffi:c-pointer NIL)))
; ; 	(:return-type NIL)
; ; 	(:library +library-name+))

; ; (ffi:def-call-out cbPluginBase_IsReady
; ; 	(:name "cbPluginBase_IsReady")
; ; 	(:arguments (_obj (ffi:c-pointer NIL)))
; ; 	(:return-type ffi:int)
; ; 	(:library +library-name+))

; ; (ffi:def-call-out cbPluginBase_ProcessEvent
; ; 	(:name "cbPluginBase_ProcessEvent")
; ; 	(:arguments (_obj (ffi:c-pointer NIL))
; ; 		(event (ffi:c-pointer NIL)))
; ; 	(:return-type ffi:int)
; ; 	(:library +library-name+))

; ; (ffi:def-call-out cbPluginEvent_Pane
; ; 	(:name "cbPluginEvent_Pane")
; ; 	(:arguments (_obj (ffi:c-pointer NIL)))
; ; 	(:return-type (ffi:c-pointer NIL))
; ; 	(:library +library-name+))

; ; (ffi:def-call-out cbLeftDownEvent_Pos
; ; 	(:name "cbLeftDownEvent_Pos")
; ; 	(:arguments (_obj (ffi:c-pointer NIL))
; ; 		(_x (ffi:c-pointer NIL))
; ; 		(_y (ffi:c-pointer NIL)))
; ; 	(:return-type NIL)
; ; 	(:library +library-name+))

; ; (ffi:def-call-out cbLeftUpEvent_Pos
; ; 	(:name "cbLeftUpEvent_Pos")
; ; 	(:arguments (_obj (ffi:c-pointer NIL))
; ; 		(_x (ffi:c-pointer NIL))
; ; 		(_y (ffi:c-pointer NIL)))
; ; 	(:return-type NIL)
; ; 	(:library +library-name+))

; ; (ffi:def-call-out cbRightDownEvent_Pos
; ; 	(:name "cbRightDownEvent_Pos")
; ; 	(:arguments (_obj (ffi:c-pointer NIL))
; ; 		(_x (ffi:c-pointer NIL))
; ; 		(_y (ffi:c-pointer NIL)))
; ; 	(:return-type NIL)
; ; 	(:library +library-name+))

; ; (ffi:def-call-out cbRightUpEvent_Pos
; ; 	(:name "cbRightUpEvent_Pos")
; ; 	(:arguments (_obj (ffi:c-pointer NIL))
; ; 		(_x (ffi:c-pointer NIL))
; ; 		(_y (ffi:c-pointer NIL)))
; ; 	(:return-type NIL)
; ; 	(:library +library-name+))

; ; (ffi:def-call-out cbMotionEvent_Pos
; ; 	(:name "cbMotionEvent_Pos")
; ; 	(:arguments (_obj (ffi:c-pointer NIL))
; ; 		(_x (ffi:c-pointer NIL))
; ; 		(_y (ffi:c-pointer NIL)))
; ; 	(:return-type NIL)
; ; 	(:library +library-name+))

; ; (ffi:def-call-out cbLeftDClickEvent_Pos
; ; 	(:name "cbLeftDClickEvent_Pos")
; ; 	(:arguments (_obj (ffi:c-pointer NIL))
; ; 		(_x (ffi:c-pointer NIL))
; ; 		(_y (ffi:c-pointer NIL)))
; ; 	(:return-type NIL)
; ; 	(:library +library-name+))

; ; (ffi:def-call-out cbLayoutRowEvent_Row
; ; 	(:name "cbLayoutRowEvent_Row")
; ; 	(:arguments (_obj (ffi:c-pointer NIL)))
; ; 	(:return-type (ffi:c-pointer NIL))
; ; 	(:library +library-name+))

; ; (ffi:def-call-out cbResizeRowEvent_Row
; ; 	(:name "cbResizeRowEvent_Row")
; ; 	(:arguments (_obj (ffi:c-pointer NIL)))
; ; 	(:return-type (ffi:c-pointer NIL))
; ; 	(:library +library-name+))

; ; (ffi:def-call-out cbResizeRowEvent_HandleOfs
; ; 	(:name "cbResizeRowEvent_HandleOfs")
; ; 	(:arguments (_obj (ffi:c-pointer NIL)))
; ; 	(:return-type ffi:int)
; ; 	(:library +library-name+))

; ; (ffi:def-call-out cbResizeRowEvent_ForUpperHandle
; ; 	(:name "cbResizeRowEvent_ForUpperHandle")
; ; 	(:arguments (_obj (ffi:c-pointer NIL)))
; ; 	(:return-type ffi:int)
; ; 	(:library +library-name+))

; ; (ffi:def-call-out cbInsertBarEvent_Bar
; ; 	(:name "cbInsertBarEvent_Bar")
; ; 	(:arguments (_obj (ffi:c-pointer NIL)))
; ; 	(:return-type (ffi:c-pointer NIL))
; ; 	(:library +library-name+))

; ; (ffi:def-call-out cbInsertBarEvent_Row
; ; 	(:name "cbInsertBarEvent_Row")
; ; 	(:arguments (_obj (ffi:c-pointer NIL)))
; ; 	(:return-type (ffi:c-pointer NIL))
; ; 	(:library +library-name+))

; ; (ffi:def-call-out cbResizeBarEvent_Bar
; ; 	(:name "cbResizeBarEvent_Bar")
; ; 	(:arguments (_obj (ffi:c-pointer NIL)))
; ; 	(:return-type (ffi:c-pointer NIL))
; ; 	(:library +library-name+))

; ; (ffi:def-call-out cbResizeBarEvent_Row
; ; 	(:name "cbResizeBarEvent_Row")
; ; 	(:arguments (_obj (ffi:c-pointer NIL)))
; ; 	(:return-type (ffi:c-pointer NIL))
; ; 	(:library +library-name+))

; ; (ffi:def-call-out cbRemoveBarEvent_Bar
; ; 	(:name "cbRemoveBarEvent_Bar")
; ; 	(:arguments (_obj (ffi:c-pointer NIL)))
; ; 	(:return-type (ffi:c-pointer NIL))
; ; 	(:library +library-name+))

; ; (ffi:def-call-out cbSizeBarWndEvent_Bar
; ; 	(:name "cbSizeBarWndEvent_Bar")
; ; 	(:arguments (_obj (ffi:c-pointer NIL)))
; ; 	(:return-type (ffi:c-pointer NIL))
; ; 	(:library +library-name+))

; ; (ffi:def-call-out cbSizeBarWndEvent_BoundsInParent
; ; 	(:name "cbSizeBarWndEvent_BoundsInParent")
; ; 	(:arguments (_obj (ffi:c-pointer NIL))
; ; 		(_x (ffi:c-pointer NIL))
; ; 		(_y (ffi:c-pointer NIL))
; ; 		(_w (ffi:c-pointer NIL))
; ; 		(_h (ffi:c-pointer NIL)))
; ; 	(:return-type NIL)
; ; 	(:library +library-name+))

; ; (ffi:def-call-out cbDrawBarDecorEvent_Bar
; ; 	(:name "cbDrawBarDecorEvent_Bar")
; ; 	(:arguments (_obj (ffi:c-pointer NIL)))
; ; 	(:return-type (ffi:c-pointer NIL))
; ; 	(:library +library-name+))

; ; (ffi:def-call-out cbDrawBarDecorEvent_BoundsInParent
; ; 	(:name "cbDrawBarDecorEvent_BoundsInParent")
; ; 	(:arguments (_obj (ffi:c-pointer NIL))
; ; 		(_x (ffi:c-pointer NIL))
; ; 		(_y (ffi:c-pointer NIL))
; ; 		(_w (ffi:c-pointer NIL))
; ; 		(_h (ffi:c-pointer NIL)))
; ; 	(:return-type NIL)
; ; 	(:library +library-name+))

; ; (ffi:def-call-out cbDrawBarDecorEvent_Dc
; ; 	(:name "cbDrawBarDecorEvent_Dc")
; ; 	(:arguments (_obj (ffi:c-pointer NIL)))
; ; 	(:return-type (ffi:c-pointer NIL))
; ; 	(:library +library-name+))

; ; (ffi:def-call-out cbDrawRowDecorEvent_Row
; ; 	(:name "cbDrawRowDecorEvent_Row")
; ; 	(:arguments (_obj (ffi:c-pointer NIL)))
; ; 	(:return-type (ffi:c-pointer NIL))
; ; 	(:library +library-name+))

; ; (ffi:def-call-out cbDrawRowDecorEvent_Dc
; ; 	(:name "cbDrawRowDecorEvent_Dc")
; ; 	(:arguments (_obj (ffi:c-pointer NIL)))
; ; 	(:return-type (ffi:c-pointer NIL))
; ; 	(:library +library-name+))

; ; (ffi:def-call-out cbDrawPaneDecorEvent_Dc
; ; 	(:name "cbDrawPaneDecorEvent_Dc")
; ; 	(:arguments (_obj (ffi:c-pointer NIL)))
; ; 	(:return-type (ffi:c-pointer NIL))
; ; 	(:library +library-name+))

; ; (ffi:def-call-out cbDrawBarHandlesEvent_Bar
; ; 	(:name "cbDrawBarHandlesEvent_Bar")
; ; 	(:arguments (_obj (ffi:c-pointer NIL)))
; ; 	(:return-type (ffi:c-pointer NIL))
; ; 	(:library +library-name+))

; ; (ffi:def-call-out cbDrawBarHandlesEvent_Dc
; ; 	(:name "cbDrawBarHandlesEvent_Dc")
; ; 	(:arguments (_obj (ffi:c-pointer NIL)))
; ; 	(:return-type (ffi:c-pointer NIL))
; ; 	(:library +library-name+))

; ; (ffi:def-call-out cbDrawRowHandlesEvent_Row
; ; 	(:name "cbDrawRowHandlesEvent_Row")
; ; 	(:arguments (_obj (ffi:c-pointer NIL)))
; ; 	(:return-type (ffi:c-pointer NIL))
; ; 	(:library +library-name+))

; ; (ffi:def-call-out cbDrawRowHandlesEvent_Dc
; ; 	(:name "cbDrawRowHandlesEvent_Dc")
; ; 	(:arguments (_obj (ffi:c-pointer NIL)))
; ; 	(:return-type (ffi:c-pointer NIL))
; ; 	(:library +library-name+))

; ; (ffi:def-call-out cbDrawRowBkGroundEvent_Row
; ; 	(:name "cbDrawRowBkGroundEvent_Row")
; ; 	(:arguments (_obj (ffi:c-pointer NIL)))
; ; 	(:return-type (ffi:c-pointer NIL))
; ; 	(:library +library-name+))

; ; (ffi:def-call-out cbDrawRowBkGroundEvent_Dc
; ; 	(:name "cbDrawRowBkGroundEvent_Dc")
; ; 	(:arguments (_obj (ffi:c-pointer NIL)))
; ; 	(:return-type (ffi:c-pointer NIL))
; ; 	(:library +library-name+))

; ; (ffi:def-call-out cbDrawPaneBkGroundEvent_Dc
; ; 	(:name "cbDrawPaneBkGroundEvent_Dc")
; ; 	(:arguments (_obj (ffi:c-pointer NIL)))
; ; 	(:return-type (ffi:c-pointer NIL))
; ; 	(:library +library-name+))

; ; (ffi:def-call-out cbStartBarDraggingEvent_Bar
; ; 	(:name "cbStartBarDraggingEvent_Bar")
; ; 	(:arguments (_obj (ffi:c-pointer NIL)))
; ; 	(:return-type (ffi:c-pointer NIL))
; ; 	(:library +library-name+))

; ; (ffi:def-call-out cbStartBarDraggingEvent_Pos
; ; 	(:name "cbStartBarDraggingEvent_Pos")
; ; 	(:arguments (_obj (ffi:c-pointer NIL))
; ; 		(_x (ffi:c-pointer NIL))
; ; 		(_y (ffi:c-pointer NIL)))
; ; 	(:return-type NIL)
; ; 	(:library +library-name+))

; ; (ffi:def-call-out cbDrawHintRectEvent_Rect
; ; 	(:name "cbDrawHintRectEvent_Rect")
; ; 	(:arguments (_obj (ffi:c-pointer NIL))
; ; 		(_x (ffi:c-pointer NIL))
; ; 		(_y (ffi:c-pointer NIL))
; ; 		(_w (ffi:c-pointer NIL))
; ; 		(_h (ffi:c-pointer NIL)))
; ; 	(:return-type NIL)
; ; 	(:library +library-name+))

; ; (ffi:def-call-out cbDrawHintRectEvent_LastTime
; ; 	(:name "cbDrawHintRectEvent_LastTime")
; ; 	(:arguments (_obj (ffi:c-pointer NIL)))
; ; 	(:return-type ffi:int)
; ; 	(:library +library-name+))

; ; (ffi:def-call-out cbDrawHintRectEvent_EraseRect
; ; 	(:name "cbDrawHintRectEvent_EraseRect")
; ; 	(:arguments (_obj (ffi:c-pointer NIL)))
; ; 	(:return-type ffi:int)
; ; 	(:library +library-name+))

; ; (ffi:def-call-out cbDrawHintRectEvent_IsInClient
; ; 	(:name "cbDrawHintRectEvent_IsInClient")
; ; 	(:arguments (_obj (ffi:c-pointer NIL)))
; ; 	(:return-type ffi:int)
; ; 	(:library +library-name+))

; ; (ffi:def-call-out cbStartDrawInAreaEvent_Area
; ; 	(:name "cbStartDrawInAreaEvent_Area")
; ; 	(:arguments (_obj (ffi:c-pointer NIL))
; ; 		(_x (ffi:c-pointer NIL))
; ; 		(_y (ffi:c-pointer NIL))
; ; 		(_w (ffi:c-pointer NIL))
; ; 		(_h (ffi:c-pointer NIL)))
; ; 	(:return-type NIL)
; ; 	(:library +library-name+))

; ; (ffi:def-call-out cbFinishDrawInAreaEvent_Area
; ; 	(:name "cbFinishDrawInAreaEvent_Area")
; ; 	(:arguments (_obj (ffi:c-pointer NIL))
; ; 		(_x (ffi:c-pointer NIL))
; ; 		(_y (ffi:c-pointer NIL))
; ; 		(_w (ffi:c-pointer NIL))
; ; 		(_h (ffi:c-pointer NIL)))
; ; 	(:return-type NIL)
; ; 	(:library +library-name+))

; ; (ffi:def-call-out cbCustomizeBarEvent_ClickPos
; ; 	(:name "cbCustomizeBarEvent_ClickPos")
; ; 	(:arguments (_obj (ffi:c-pointer NIL))
; ; 		(_x (ffi:c-pointer NIL))
; ; 		(_y (ffi:c-pointer NIL)))
; ; 	(:return-type NIL)
; ; 	(:library +library-name+))

; ; (ffi:def-call-out cbCustomizeBarEvent_Bar
; ; 	(:name "cbCustomizeBarEvent_Bar")
; ; 	(:arguments (_obj (ffi:c-pointer NIL)))
; ; 	(:return-type (ffi:c-pointer NIL))
; ; 	(:library +library-name+))

; ; (ffi:def-call-out cbCustomizeLayoutEvent_ClickPos
; ; 	(:name "cbCustomizeLayoutEvent_ClickPos")
; ; 	(:arguments (_obj (ffi:c-pointer NIL))
; ; 		(_x (ffi:c-pointer NIL))
; ; 		(_y (ffi:c-pointer NIL)))
; ; 	(:return-type NIL)
; ; 	(:library +library-name+))

; ; (ffi:def-call-out cbAntiflickerPlugin_CreateDefault
; ; 	(:name "cbAntiflickerPlugin_CreateDefault")
; ; 	(:return-type (ffi:c-pointer NIL))
; ; 	(:library +library-name+))

; ; (ffi:def-call-out cbAntiflickerPlugin_Create
; ; 	(:name "cbAntiflickerPlugin_Create")
; ; 	(:arguments (pPanel (ffi:c-pointer NIL))
; ; 		(paneMask ffi:int))
; ; 	(:return-type (ffi:c-pointer NIL))
; ; 	(:library +library-name+))

; ; (ffi:def-call-out cbAntiflickerPlugin_Delete
; ; 	(:name "cbAntiflickerPlugin_Delete")
; ; 	(:arguments (_obj (ffi:c-pointer NIL)))
; ; 	(:return-type NIL)
; ; 	(:library +library-name+))

; ; (ffi:def-call-out cbBarDragPlugin_CreateDefault
; ; 	(:name "cbBarDragPlugin_CreateDefault")
; ; 	(:return-type (ffi:c-pointer NIL))
; ; 	(:library +library-name+))

; ; (ffi:def-call-out cbBarDragPlugin_Create
; ; 	(:name "cbBarDragPlugin_Create")
; ; 	(:arguments (pPanel (ffi:c-pointer NIL))
; ; 		(paneMask ffi:int))
; ; 	(:return-type (ffi:c-pointer NIL))
; ; 	(:library +library-name+))

; ; (ffi:def-call-out cbBarDragPlugin_Delete
; ; 	(:name "cbBarDragPlugin_Delete")
; ; 	(:arguments (_obj (ffi:c-pointer NIL)))
; ; 	(:return-type NIL)
; ; 	(:library +library-name+))

; ; (ffi:def-call-out cbBarHintsPlugin_CreateDefault
; ; 	(:name "cbBarHintsPlugin_CreateDefault")
; ; 	(:return-type (ffi:c-pointer NIL))
; ; 	(:library +library-name+))

; ; (ffi:def-call-out cbBarHintsPlugin_Create
; ; 	(:name "cbBarHintsPlugin_Create")
; ; 	(:arguments (pPanel (ffi:c-pointer NIL))
; ; 		(paneMask ffi:int))
; ; 	(:return-type (ffi:c-pointer NIL))
; ; 	(:library +library-name+))

; ; (ffi:def-call-out cbBarHintsPlugin_Delete
; ; 	(:name "cbBarHintsPlugin_Delete")
; ; 	(:arguments (_obj (ffi:c-pointer NIL)))
; ; 	(:return-type NIL)
; ; 	(:library +library-name+))

; ; (ffi:def-call-out cbBarHintsPlugin_SetGrooveCount
; ; 	(:name "cbBarHintsPlugin_SetGrooveCount")
; ; 	(:arguments (_obj (ffi:c-pointer NIL))
; ; 		(nGrooves ffi:int))
; ; 	(:return-type NIL)
; ; 	(:library +library-name+))

; ; (ffi:def-call-out cbSimpleCustomizationPlugin_CreateDefault
; ; 	(:name "cbSimpleCustomizationPlugin_CreateDefault")
; ; 	(:return-type (ffi:c-pointer NIL))
; ; 	(:library +library-name+))

; ; (ffi:def-call-out cbSimpleCustomizationPlugin_Create
; ; 	(:name "cbSimpleCustomizationPlugin_Create")
; ; 	(:arguments (pPanel (ffi:c-pointer NIL))
; ; 		(paneMask ffi:int))
; ; 	(:return-type (ffi:c-pointer NIL))
; ; 	(:library +library-name+))

; ; (ffi:def-call-out cbSimpleCustomizationPlugin_Delete
; ; 	(:name "cbSimpleCustomizationPlugin_Delete")
; ; 	(:arguments (_obj (ffi:c-pointer NIL)))
; ; 	(:return-type NIL)
; ; 	(:library +library-name+))

; (ffi:def-call-out wxToolLayoutItem_IsSeparator
; 	(:name "wxToolLayoutItem_IsSeparator")
; 	(:arguments (_obj (ffi:c-pointer NIL)))
; 	(:return-type ffi:int)
; 	(:library +library-name+))

; (ffi:def-call-out wxToolLayoutItem_Rect
; 	(:name "wxToolLayoutItem_Rect")
; 	(:arguments (_obj (ffi:c-pointer NIL))
; 		(_x (ffi:c-pointer NIL))
; 		(_y (ffi:c-pointer NIL))
; 		(_w (ffi:c-pointer NIL))
; 		(_h (ffi:c-pointer NIL)))
; 	(:return-type NIL)
; 	(:library +library-name+))

; (ffi:def-call-out wxDynToolInfo_pToolWnd
; 	(:name "wxDynToolInfo_pToolWnd")
; 	(:arguments (_obj (ffi:c-pointer NIL)))
; 	(:return-type (ffi:c-pointer NIL))
; 	(:library +library-name+))

; (ffi:def-call-out wxDynToolInfo_Index
; 	(:name "wxDynToolInfo_Index")
; 	(:arguments (_obj (ffi:c-pointer NIL)))
; 	(:return-type ffi:int)
; 	(:library +library-name+))

; (ffi:def-call-out wxDynToolInfo_RealSize
; 	(:name "wxDynToolInfo_RealSize")
; 	(:arguments (_obj (ffi:c-pointer NIL))
; 		(_w (ffi:c-pointer NIL))
; 		(_h (ffi:c-pointer NIL)))
; 	(:return-type NIL)
; 	(:library +library-name+))

; (ffi:def-call-out wxDynamicToolBar_CreateDefault
; 	(:name "wxDynamicToolBar_CreateDefault")
; 	(:return-type (ffi:c-pointer NIL))
; 	(:library +library-name+))

; (ffi:def-call-out wxDynamicToolBar_Create
; 	(:name "wxDynamicToolBar_Create")
; 	(:arguments (parent (ffi:c-pointer NIL))
; 		(id ffi:int)
; 		(x ffi:int)
; 		(y ffi:int)
; 		(w ffi:int)
; 		(h ffi:int)
; 		(style ffi:int)
; 		(orientation ffi:int)
; 		(RowsOrColumns ffi:int))
; 	(:return-type (ffi:c-pointer NIL))
; 	(:library +library-name+))

; (ffi:def-call-out wxDynamicToolBar_Delete
; 	(:name "wxDynamicToolBar_Delete")
; 	(:arguments (_obj (ffi:c-pointer NIL)))
; 	(:return-type NIL)
; 	(:library +library-name+))

; (ffi:def-call-out wxDynamicToolBar_CreateParams
; 	(:name "wxDynamicToolBar_CreateParams")
; 	(:arguments (_obj (ffi:c-pointer NIL))
; 		(parent (ffi:c-pointer NIL))
; 		(id ffi:int)
; 		(x ffi:int)
; 		(y ffi:int)
; 		(w ffi:int)
; 		(h ffi:int)
; 		(style ffi:int)
; 		(orientation ffi:int)
; 		(RowsOrColumns ffi:int))
; 	(:return-type ffi:int)
; 	(:library +library-name+))

; (ffi:def-call-out wxDynamicToolBar_AddTool
; 	(:name "wxDynamicToolBar_AddTool")
; 	(:arguments (_obj (ffi:c-pointer NIL))
; 		(toolIndex ffi:int)
; 		(pToolWindow (ffi:c-pointer NIL))
; 		(w ffi:int)
; 		(h ffi:int))
; 	(:return-type NIL)
; 	(:library +library-name+))

; (ffi:def-call-out wxDynamicToolBar_AddToolImage
; 	(:name "wxDynamicToolBar_AddToolImage")
; 	(:arguments (_obj (ffi:c-pointer NIL))
; 		(toolIndex ffi:int)
; 		(imageFileName (ffi:c-pointer NIL))
; 		(imageFileType ffi:int)
; 		(labelText (ffi:c-pointer NIL))
; 		(alignTextRight ffi:int)
; 		(isFlat ffi:int))
; 	(:return-type NIL)
; 	(:library +library-name+))

; (ffi:def-call-out wxDynamicToolBar_AddToolLabel
; 	(:name "wxDynamicToolBar_AddToolLabel")
; 	(:arguments (_obj (ffi:c-pointer NIL))
; 		(toolIndex ffi:int)
; 		(labelBmp (ffi:c-pointer NIL))
; 		(labelText (ffi:c-pointer NIL))
; 		(alignTextRight ffi:int)
; 		(isFlat ffi:int))
; 	(:return-type NIL)
; 	(:library +library-name+))

; (ffi:def-call-out wxDynamicToolBar_AddToolBitmap
; 	(:name "wxDynamicToolBar_AddToolBitmap")
; 	(:arguments (_obj (ffi:c-pointer NIL))
; 		(toolIndex ffi:int)
; 		(bitmap (ffi:c-pointer NIL))
; 		(pushedBitmap (ffi:c-pointer NIL))
; 		(toggle ffi:int)
; 		(x ffi:int)
; 		(y ffi:int)
; 		(clientData (ffi:c-pointer NIL))
; 		(helpString1 (ffi:c-pointer NIL))
; 		(helpString2 (ffi:c-pointer NIL)))
; 	(:return-type (ffi:c-pointer NIL))
; 	(:library +library-name+))

; (ffi:def-call-out wxDynamicToolBar_AddSeparator
; 	(:name "wxDynamicToolBar_AddSeparator")
; 	(:arguments (_obj (ffi:c-pointer NIL))
; 		(pSepartorWnd (ffi:c-pointer NIL)))
; 	(:return-type NIL)
; 	(:library +library-name+))

; (ffi:def-call-out wxDynamicToolBar_GetToolInfo
; 	(:name "wxDynamicToolBar_GetToolInfo")
; 	(:arguments (_obj (ffi:c-pointer NIL))
; 		(toolIndex ffi:int))
; 	(:return-type (ffi:c-pointer NIL))
; 	(:library +library-name+))

; (ffi:def-call-out wxDynamicToolBar_RemoveTool
; 	(:name "wxDynamicToolBar_RemoveTool")
; 	(:arguments (_obj (ffi:c-pointer NIL))
; 		(toolIndex ffi:int))
; 	(:return-type NIL)
; 	(:library +library-name+))

; (ffi:def-call-out wxDynamicToolBar_DrawSeparator
; 	(:name "wxDynamicToolBar_DrawSeparator")
; 	(:arguments (_obj (ffi:c-pointer NIL))
; 		(info (ffi:c-pointer NIL))
; 		(dc (ffi:c-pointer NIL)))
; 	(:return-type NIL)
; 	(:library +library-name+))

; (ffi:def-call-out wxDynamicToolBar_Layout
; 	(:name "wxDynamicToolBar_Layout")
; 	(:arguments (_obj (ffi:c-pointer NIL)))
; 	(:return-type ffi:int)
; 	(:library +library-name+))

; (ffi:def-call-out wxDynamicToolBar_GetPreferredDim
; 	(:name "wxDynamicToolBar_GetPreferredDim")
; 	(:arguments (_obj (ffi:c-pointer NIL))
; 		(gw ffi:int)
; 		(gh ffi:int)
; 		(pw (ffi:c-pointer NIL))
; 		(ph (ffi:c-pointer NIL)))
; 	(:return-type NIL)
; 	(:library +library-name+))

; (ffi:def-call-out wxDynamicToolBar_CreateDefaultLayout
; 	(:name "wxDynamicToolBar_CreateDefaultLayout")
; 	(:arguments (_obj (ffi:c-pointer NIL)))
; 	(:return-type (ffi:c-pointer NIL))
; 	(:library +library-name+))

; (ffi:def-call-out wxDynamicToolBar_SetLayout
; 	(:name "wxDynamicToolBar_SetLayout")
; 	(:arguments (_obj (ffi:c-pointer NIL))
; 		(pLayout (ffi:c-pointer NIL)))
; 	(:return-type NIL)
; 	(:library +library-name+))

; (ffi:def-call-out wxDynamicToolBar_EnableTool
; 	(:name "wxDynamicToolBar_EnableTool")
; 	(:arguments (_obj (ffi:c-pointer NIL))
; 		(toolIndex ffi:int)
; 		(enable ffi:int))
; 	(:return-type NIL)
; 	(:library +library-name+))

; (ffi:def-call-out wxDynamicToolBar_FindToolForPosition
; 	(:name "wxDynamicToolBar_FindToolForPosition")
; 	(:arguments (_obj (ffi:c-pointer NIL))
; 		(x ffi:int)
; 		(y ffi:int))
; 	(:return-type (ffi:c-pointer NIL))
; 	(:library +library-name+))

; (ffi:def-call-out wxDynamicToolBar_DoInsertTool
; 	(:name "wxDynamicToolBar_DoInsertTool")
; 	(:arguments (_obj (ffi:c-pointer NIL))
; 		(pos ffi:int)
; 		(tool (ffi:c-pointer NIL)))
; 	(:return-type ffi:int)
; 	(:library +library-name+))

; (ffi:def-call-out wxDynamicToolBar_DoDeleteTool
; 	(:name "wxDynamicToolBar_DoDeleteTool")
; 	(:arguments (_obj (ffi:c-pointer NIL))
; 		(pos ffi:int)
; 		(tool (ffi:c-pointer NIL)))
; 	(:return-type ffi:int)
; 	(:library +library-name+))

; (ffi:def-call-out wxDynamicToolBar_DoEnableTool
; 	(:name "wxDynamicToolBar_DoEnableTool")
; 	(:arguments (_obj (ffi:c-pointer NIL))
; 		(tool (ffi:c-pointer NIL))
; 		(enable ffi:int))
; 	(:return-type NIL)
; 	(:library +library-name+))

; (ffi:def-call-out wxDynamicToolBar_DoToggleTool
; 	(:name "wxDynamicToolBar_DoToggleTool")
; 	(:arguments (_obj (ffi:c-pointer NIL))
; 		(tool (ffi:c-pointer NIL))
; 		(toggle ffi:int))
; 	(:return-type NIL)
; 	(:library +library-name+))

; (ffi:def-call-out wxDynamicToolBar_DoSetToggle
; 	(:name "wxDynamicToolBar_DoSetToggle")
; 	(:arguments (_obj (ffi:c-pointer NIL))
; 		(tool (ffi:c-pointer NIL))
; 		(toggle ffi:int))
; 	(:return-type NIL)
; 	(:library +library-name+))

; (ffi:def-call-out wxDynamicToolBar_CreateTool
; 	(:name "wxDynamicToolBar_CreateTool")
; 	(:arguments (_obj (ffi:c-pointer NIL))
; 		(id ffi:int)
; 		(label (ffi:c-pointer NIL))
; 		(bmpNormal (ffi:c-pointer NIL))
; 		(bmpDisabled (ffi:c-pointer NIL))
; 		(kind ffi:int)
; 		(clientData (ffi:c-pointer NIL))
; 		(shortHelp (ffi:c-pointer NIL))
; 		(longHelp (ffi:c-pointer NIL)))
; 	(:return-type (ffi:c-pointer NIL))
; 	(:library +library-name+))

; (ffi:def-call-out wxDynamicToolBar_CreateToolControl
; 	(:name "wxDynamicToolBar_CreateToolControl")
; 	(:arguments (_obj (ffi:c-pointer NIL))
; 		(control (ffi:c-pointer NIL)))
; 	(:return-type (ffi:c-pointer NIL))
; 	(:library +library-name+))

; ; (ffi:def-call-out cbDynToolBarDimHandler_Create
; ; 	(:name "cbDynToolBarDimHandler_Create")
; ; 	(:return-type (ffi:c-pointer NIL))
; ; 	(:library +library-name+))

; ; (ffi:def-call-out cbDynToolBarDimHandler_Delete
; ; 	(:name "cbDynToolBarDimHandler_Delete")
; ; 	(:arguments (_obj (ffi:c-pointer NIL)))
; ; 	(:return-type NIL)
; ; 	(:library +library-name+))

; ; (ffi:def-call-out cbGCUpdatesMgr_Create
; ; 	(:name "cbGCUpdatesMgr_Create")
; ; 	(:arguments (pPanel (ffi:c-pointer NIL)))
; ; 	(:return-type (ffi:c-pointer NIL))
; ; 	(:library +library-name+))

; ; (ffi:def-call-out cbGCUpdatesMgr_CreateDefault
; ; 	(:name "cbGCUpdatesMgr_CreateDefault")
; ; 	(:return-type (ffi:c-pointer NIL))
; ; 	(:library +library-name+))

; ; (ffi:def-call-out cbGCUpdatesMgr_Delete
; ; 	(:name "cbGCUpdatesMgr_Delete")
; ; 	(:arguments (_obj (ffi:c-pointer NIL)))
; ; 	(:return-type NIL)
; ; 	(:library +library-name+))

; ; (ffi:def-call-out cbGCUpdatesMgr_UpdateNow
; ; 	(:name "cbGCUpdatesMgr_UpdateNow")
; ; 	(:arguments (_obj (ffi:c-pointer NIL)))
; ; 	(:return-type NIL)
; ; 	(:library +library-name+))

; ; (ffi:def-call-out cbHintAnimationPlugin_CreateDefault
; ; 	(:name "cbHintAnimationPlugin_CreateDefault")
; ; 	(:return-type (ffi:c-pointer NIL))
; ; 	(:library +library-name+))

; ; (ffi:def-call-out cbHintAnimationPlugin_Create
; ; 	(:name "cbHintAnimationPlugin_Create")
; ; 	(:arguments (pPanel (ffi:c-pointer NIL))
; ; 		(paneMask ffi:int))
; ; 	(:return-type (ffi:c-pointer NIL))
; ; 	(:library +library-name+))

; ; (ffi:def-call-out cbHintAnimationPlugin_Delete
; ; 	(:name "cbHintAnimationPlugin_Delete")
; ; 	(:arguments (_obj (ffi:c-pointer NIL)))
; ; 	(:return-type NIL)
; ; 	(:library +library-name+))

; (ffi:def-call-out wxNewBitmapButton_Create
; 	(:name "wxNewBitmapButton_Create")
; 	(:arguments (labelBitmap (ffi:c-pointer NIL))
; 		(labelText (ffi:c-pointer NIL))
; 		(alignText ffi:int)
; 		(isFlat ffi:int)
; 		(firedEventType ffi:int)
; 		(marginX ffi:int)
; 		(marginY ffi:int)
; 		(textToLabelGap ffi:int)
; 		(isSticky ffi:int))
; 	(:return-type (ffi:c-pointer NIL))
; 	(:library +library-name+))

; (ffi:def-call-out wxNewBitmapButton_CreateFromFile
; 	(:name "wxNewBitmapButton_CreateFromFile")
; 	(:arguments (bitmapFileName (ffi:c-pointer NIL))
; 		(bitmapFileType ffi:int)
; 		(labelText (ffi:c-pointer NIL))
; 		(alignText ffi:int)
; 		(isFlat ffi:int)
; 		(firedEventType ffi:int)
; 		(marginX ffi:int)
; 		(marginY ffi:int)
; 		(textToLabelGap ffi:int)
; 		(isSticky ffi:int))
; 	(:return-type (ffi:c-pointer NIL))
; 	(:library +library-name+))

; (ffi:def-call-out wxNewBitmapButton_Realize
; 	(:name "wxNewBitmapButton_Realize")
; 	(:arguments (_obj (ffi:c-pointer NIL))
; 		(_prt (ffi:c-pointer NIL))
; 		(_id ffi:int)
; 		(_x ffi:int)
; 		(_y ffi:int)
; 		(_w ffi:int)
; 		(_h ffi:int))
; 	(:return-type NIL)
; 	(:library +library-name+))

; (ffi:def-call-out wxNewBitmapButton_Delete
; 	(:name "wxNewBitmapButton_Delete")
; 	(:arguments (_obj (ffi:c-pointer NIL)))
; 	(:return-type NIL)
; 	(:library +library-name+))

; (ffi:def-call-out wxNewBitmapButton_Reshape
; 	(:name "wxNewBitmapButton_Reshape")
; 	(:arguments (_obj (ffi:c-pointer NIL)))
; 	(:return-type NIL)
; 	(:library +library-name+))

; (ffi:def-call-out wxNewBitmapButton_SetLabel
; 	(:name "wxNewBitmapButton_SetLabel")
; 	(:arguments (_obj (ffi:c-pointer NIL))
; 		(labelBitmap (ffi:c-pointer NIL))
; 		(labelText (ffi:c-pointer NIL)))
; 	(:return-type NIL)
; 	(:library +library-name+))

; (ffi:def-call-out wxNewBitmapButton_SetAlignments
; 	(:name "wxNewBitmapButton_SetAlignments")
; 	(:arguments (_obj (ffi:c-pointer NIL))
; 		(alignText ffi:int)
; 		(marginX ffi:int)
; 		(marginY ffi:int)
; 		(textToLabelGap ffi:int))
; 	(:return-type NIL)
; 	(:library +library-name+))

; (ffi:def-call-out wxNewBitmapButton_DrawDecorations
; 	(:name "wxNewBitmapButton_DrawDecorations")
; 	(:arguments (_obj (ffi:c-pointer NIL))
; 		(dc (ffi:c-pointer NIL)))
; 	(:return-type NIL)
; 	(:library +library-name+))

; (ffi:def-call-out wxNewBitmapButton_DrawLabel
; 	(:name "wxNewBitmapButton_DrawLabel")
; 	(:arguments (_obj (ffi:c-pointer NIL))
; 		(dc (ffi:c-pointer NIL)))
; 	(:return-type NIL)
; 	(:library +library-name+))

; (ffi:def-call-out wxNewBitmapButton_RenderLabelImage
; 	(:name "wxNewBitmapButton_RenderLabelImage")
; 	(:arguments (_obj (ffi:c-pointer NIL))
; 		(destBmp (ffi:c-pointer NIL))
; 		(srcBmp (ffi:c-pointer NIL))
; 		(isEnabled ffi:int)
; 		(isPressed ffi:int))
; 	(:return-type NIL)
; 	(:library +library-name+))

; (ffi:def-call-out wxNewBitmapButton_RenderLabelImages
; 	(:name "wxNewBitmapButton_RenderLabelImages")
; 	(:arguments (_obj (ffi:c-pointer NIL)))
; 	(:return-type NIL)
; 	(:library +library-name+))

; (ffi:def-call-out wxNewBitmapButton_RenderAllLabelImages
; 	(:name "wxNewBitmapButton_RenderAllLabelImages")
; 	(:arguments (_obj (ffi:c-pointer NIL)))
; 	(:return-type NIL)
; 	(:library +library-name+))

; (ffi:def-call-out wxNewBitmapButton_Enable
; 	(:name "wxNewBitmapButton_Enable")
; 	(:arguments (_obj (ffi:c-pointer NIL))
; 		(enable ffi:int))
; 	(:return-type ffi:int)
; 	(:library +library-name+))

; ; (ffi:def-call-out cbPaneDrawPlugin_CreateDefault
; ; 	(:name "cbPaneDrawPlugin_CreateDefault")
; ; 	(:return-type (ffi:c-pointer NIL))
; ; 	(:library +library-name+))

; ; (ffi:def-call-out cbPaneDrawPlugin_Create
; ; 	(:name "cbPaneDrawPlugin_Create")
; ; 	(:arguments (pPanel (ffi:c-pointer NIL))
; ; 		(paneMask ffi:int))
; ; 	(:return-type (ffi:c-pointer NIL))
; ; 	(:library +library-name+))

; ; (ffi:def-call-out cbPaneDrawPlugin_Delete
; ; 	(:name "cbPaneDrawPlugin_Delete")
; ; 	(:arguments (_obj (ffi:c-pointer NIL)))
; ; 	(:return-type NIL)
; ; 	(:library +library-name+))

; ; (ffi:def-call-out cbRowDragPlugin_CreateDefault
; ; 	(:name "cbRowDragPlugin_CreateDefault")
; ; 	(:return-type (ffi:c-pointer NIL))
; ; 	(:library +library-name+))

; ; (ffi:def-call-out cbRowDragPlugin_Create
; ; 	(:name "cbRowDragPlugin_Create")
; ; 	(:arguments (pPanel (ffi:c-pointer NIL))
; ; 		(paneMask ffi:int))
; ; 	(:return-type (ffi:c-pointer NIL))
; ; 	(:library +library-name+))

; ; (ffi:def-call-out cbRowDragPlugin_Delete
; ; 	(:name "cbRowDragPlugin_Delete")
; ; 	(:arguments (_obj (ffi:c-pointer NIL)))
; ; 	(:return-type NIL)
; ; 	(:library +library-name+))

; ; (ffi:def-call-out cbRowLayoutPlugin_CreateDefault
; ; 	(:name "cbRowLayoutPlugin_CreateDefault")
; ; 	(:return-type (ffi:c-pointer NIL))
; ; 	(:library +library-name+))

; ; (ffi:def-call-out cbRowLayoutPlugin_Create
; ; 	(:name "cbRowLayoutPlugin_Create")
; ; 	(:arguments (pPanel (ffi:c-pointer NIL))
; ; 		(paneMask ffi:int))
; ; 	(:return-type (ffi:c-pointer NIL))
; ; 	(:library +library-name+))

; ; (ffi:def-call-out cbRowLayoutPlugin_Delete
; ; 	(:name "cbRowLayoutPlugin_Delete")
; ; 	(:arguments (_obj (ffi:c-pointer NIL)))
; ; 	(:return-type NIL)
; ; 	(:library +library-name+))

; ; (ffi:def-call-out cbPluginBase_Plugin
; ; 	(:name "cbPluginBase_Plugin")
; ; 	(:arguments (_swt ffi:int))
; ; 	(:return-type (ffi:c-pointer NIL))
; ; 	(:library +library-name+))

; ; (ffi:def-call-out cbCommonPaneProperties_CreateDefault
; ; 	(:name "cbCommonPaneProperties_CreateDefault")
; ; 	(:return-type (ffi:c-pointer NIL))
; ; 	(:library +library-name+))

; ; (ffi:def-call-out cbCommonPaneProperties_Delete
; ; 	(:name "cbCommonPaneProperties_Delete")
; ; 	(:arguments (_obj (ffi:c-pointer NIL)))
; ; 	(:return-type NIL)
; ; 	(:library +library-name+))

; ; (ffi:def-call-out cbCommonPaneProperties_RealTimeUpdatesOn
; ; 	(:name "cbCommonPaneProperties_RealTimeUpdatesOn")
; ; 	(:arguments (_obj (ffi:c-pointer NIL)))
; ; 	(:return-type ffi:int)
; ; 	(:library +library-name+))

; ; (ffi:def-call-out cbCommonPaneProperties_OutOfPaneDragOn
; ; 	(:name "cbCommonPaneProperties_OutOfPaneDragOn")
; ; 	(:arguments (_obj (ffi:c-pointer NIL)))
; ; 	(:return-type ffi:int)
; ; 	(:library +library-name+))

; ; (ffi:def-call-out cbCommonPaneProperties_ExactDockPredictionOn
; ; 	(:name "cbCommonPaneProperties_ExactDockPredictionOn")
; ; 	(:arguments (_obj (ffi:c-pointer NIL)))
; ; 	(:return-type ffi:int)
; ; 	(:library +library-name+))

; ; (ffi:def-call-out cbCommonPaneProperties_NonDestructFrictionOn
; ; 	(:name "cbCommonPaneProperties_NonDestructFrictionOn")
; ; 	(:arguments (_obj (ffi:c-pointer NIL)))
; ; 	(:return-type ffi:int)
; ; 	(:library +library-name+))

; ; (ffi:def-call-out cbCommonPaneProperties_Show3DPaneBorderOn
; ; 	(:name "cbCommonPaneProperties_Show3DPaneBorderOn")
; ; 	(:arguments (_obj (ffi:c-pointer NIL)))
; ; 	(:return-type ffi:int)
; ; 	(:library +library-name+))

; ; (ffi:def-call-out cbCommonPaneProperties_BarFloatingOn
; ; 	(:name "cbCommonPaneProperties_BarFloatingOn")
; ; 	(:arguments (_obj (ffi:c-pointer NIL)))
; ; 	(:return-type ffi:int)
; ; 	(:library +library-name+))

; ; (ffi:def-call-out cbCommonPaneProperties_RowProportionsOn
; ; 	(:name "cbCommonPaneProperties_RowProportionsOn")
; ; 	(:arguments (_obj (ffi:c-pointer NIL)))
; ; 	(:return-type ffi:int)
; ; 	(:library +library-name+))

; ; (ffi:def-call-out cbCommonPaneProperties_ColProportionsOn
; ; 	(:name "cbCommonPaneProperties_ColProportionsOn")
; ; 	(:arguments (_obj (ffi:c-pointer NIL)))
; ; 	(:return-type ffi:int)
; ; 	(:library +library-name+))

; ; (ffi:def-call-out cbCommonPaneProperties_BarCollapseIconsOn
; ; 	(:name "cbCommonPaneProperties_BarCollapseIconsOn")
; ; 	(:arguments (_obj (ffi:c-pointer NIL)))
; ; 	(:return-type ffi:int)
; ; 	(:library +library-name+))

; ; (ffi:def-call-out cbCommonPaneProperties_BarDragHintsOn
; ; 	(:name "cbCommonPaneProperties_BarDragHintsOn")
; ; 	(:arguments (_obj (ffi:c-pointer NIL)))
; ; 	(:return-type ffi:int)
; ; 	(:library +library-name+))

; ; (ffi:def-call-out cbCommonPaneProperties_MinCBarDim
; ; 	(:name "cbCommonPaneProperties_MinCBarDim")
; ; 	(:arguments (_obj (ffi:c-pointer NIL))
; ; 		(_w (ffi:c-pointer NIL))
; ; 		(_h (ffi:c-pointer NIL)))
; ; 	(:return-type NIL)
; ; 	(:library +library-name+))

; ; (ffi:def-call-out cbCommonPaneProperties_ResizeHandleSize
; ; 	(:name "cbCommonPaneProperties_ResizeHandleSize")
; ; 	(:arguments (_obj (ffi:c-pointer NIL)))
; ; 	(:return-type ffi:int)
; ; 	(:library +library-name+))

; ; (ffi:def-call-out cbCommonPaneProperties_SetRealTimeUpdatesOn
; ; 	(:name "cbCommonPaneProperties_SetRealTimeUpdatesOn")
; ; 	(:arguments (_obj (ffi:c-pointer NIL))
; ; 		(_val ffi:int))
; ; 	(:return-type NIL)
; ; 	(:library +library-name+))

; ; (ffi:def-call-out cbCommonPaneProperties_SetOutOfPaneDragOn
; ; 	(:name "cbCommonPaneProperties_SetOutOfPaneDragOn")
; ; 	(:arguments (_obj (ffi:c-pointer NIL))
; ; 		(_val ffi:int))
; ; 	(:return-type NIL)
; ; 	(:library +library-name+))

; ; (ffi:def-call-out cbCommonPaneProperties_SetExactDockPredictionOn
; ; 	(:name "cbCommonPaneProperties_SetExactDockPredictionOn")
; ; 	(:arguments (_obj (ffi:c-pointer NIL))
; ; 		(_val ffi:int))
; ; 	(:return-type NIL)
; ; 	(:library +library-name+))

; ; (ffi:def-call-out cbCommonPaneProperties_SetNonDestructFrictionOn
; ; 	(:name "cbCommonPaneProperties_SetNonDestructFrictionOn")
; ; 	(:arguments (_obj (ffi:c-pointer NIL))
; ; 		(_val ffi:int))
; ; 	(:return-type NIL)
; ; 	(:library +library-name+))

; ; (ffi:def-call-out cbCommonPaneProperties_SetShow3DPaneBorderOn
; ; 	(:name "cbCommonPaneProperties_SetShow3DPaneBorderOn")
; ; 	(:arguments (_obj (ffi:c-pointer NIL))
; ; 		(_val ffi:int))
; ; 	(:return-type NIL)
; ; 	(:library +library-name+))

; ; (ffi:def-call-out cbCommonPaneProperties_SetBarFloatingOn
; ; 	(:name "cbCommonPaneProperties_SetBarFloatingOn")
; ; 	(:arguments (_obj (ffi:c-pointer NIL))
; ; 		(_val ffi:int))
; ; 	(:return-type NIL)
; ; 	(:library +library-name+))

; ; (ffi:def-call-out cbCommonPaneProperties_SetRowProportionsOn
; ; 	(:name "cbCommonPaneProperties_SetRowProportionsOn")
; ; 	(:arguments (_obj (ffi:c-pointer NIL))
; ; 		(_val ffi:int))
; ; 	(:return-type NIL)
; ; 	(:library +library-name+))

; ; (ffi:def-call-out cbCommonPaneProperties_SetColProportionsOn
; ; 	(:name "cbCommonPaneProperties_SetColProportionsOn")
; ; 	(:arguments (_obj (ffi:c-pointer NIL))
; ; 		(_val ffi:int))
; ; 	(:return-type NIL)
; ; 	(:library +library-name+))

; ; (ffi:def-call-out cbCommonPaneProperties_SetBarCollapseIconsOn
; ; 	(:name "cbCommonPaneProperties_SetBarCollapseIconsOn")
; ; 	(:arguments (_obj (ffi:c-pointer NIL))
; ; 		(_val ffi:int))
; ; 	(:return-type NIL)
; ; 	(:library +library-name+))

; ; (ffi:def-call-out cbCommonPaneProperties_SetBarDragHintsOn
; ; 	(:name "cbCommonPaneProperties_SetBarDragHintsOn")
; ; 	(:arguments (_obj (ffi:c-pointer NIL))
; ; 		(_val ffi:int))
; ; 	(:return-type NIL)
; ; 	(:library +library-name+))

; ; (ffi:def-call-out cbCommonPaneProperties_SetMinCBarDim
; ; 	(:name "cbCommonPaneProperties_SetMinCBarDim")
; ; 	(:arguments (_obj (ffi:c-pointer NIL))
; ; 		(_w ffi:int)
; ; 		(_h ffi:int))
; ; 	(:return-type NIL)
; ; 	(:library +library-name+))

; ; (ffi:def-call-out cbCommonPaneProperties_SetResizeHandleSize
; ; 	(:name "cbCommonPaneProperties_SetResizeHandleSize")
; ; 	(:arguments (_obj (ffi:c-pointer NIL))
; ; 		(_val ffi:int))
; ; 	(:return-type NIL)
; ; 	(:library +library-name+))

; ; (ffi:def-call-out cbCommonPaneProperties_Assign
; ; 	(:name "cbCommonPaneProperties_Assign")
; ; 	(:arguments (_obj (ffi:c-pointer NIL))
; ; 		(_other (ffi:c-pointer NIL)))
; ; 	(:return-type NIL)
; ; 	(:library +library-name+))

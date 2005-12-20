;;;wxFL.lisp
;;;License  : GNU General Public License (GPL)
;;;Author(s) : Surendra Singhi (surendra@asu.edu) 
;;;Copyright (C) 2005 Surendra Singhi 
;;;See the file LICENSE for information on usage and redistribution.
;;;
;;; $Header$
;;;

(in-package :wxcl-layout)

(defcvar ("EifObj" EifObj)
 :pointer)

(defcvar ("DrwCb" DrwCb)
 :pointer)

(defcfun ("Draw" Draw) :void
  (dc :pointer))

(defcfun ("wxToolWindow_Create" wxToolWindow_Create) :pointer
  (_obj :pointer)
  (_btn :pointer)
  (_ttl :pointer))

(defcfun ("wxToolWindow_SetClient" wxToolWindow_SetClient) :void
  (_obj :pointer)
  (_wnd :pointer))

(defcfun ("wxToolWindow_GetClient" wxToolWindow_GetClient) :pointer
  (_obj :pointer))

(defcfun ("wxToolWindow_SetTitleFont" wxToolWindow_SetTitleFont) :void
  (_obj :pointer)
  (_fnt :pointer))

(defcfun ("wxToolWindow_AddMiniButton" wxToolWindow_AddMiniButton) :void
  (_obj :pointer)
  (_btn :pointer))

(defcfun ("cbMiniButton_Create" cbMiniButton_Create) :pointer)

(defcfun ("cbMiniButton_Delete" cbMiniButton_Delete) :void
  (_obj :pointer))

(defcfun ("cbMiniButton_Pos" cbMiniButton_Pos) :void
  (_obj :pointer)
  (x :pointer)
  (y :pointer))

(defcfun ("cbMiniButton_Dim" cbMiniButton_Dim) :void
  (_obj :pointer)
  (w :pointer)
  (h :pointer))

(defcfun ("cbMiniButton_Visible" cbMiniButton_Visible) :int
  (_obj :pointer))

(defcfun ("cbMiniButton_Enabled" cbMiniButton_Enabled) :int
  (_obj :pointer))

(defcfun ("cbMiniButton_Layout" cbMiniButton_Layout) :pointer
  (_obj :pointer))

(defcfun ("cbMiniButton_Pane" cbMiniButton_Pane) :pointer
  (_obj :pointer))

(defcfun ("cbMiniButton_Plugin" cbMiniButton_Plugin) :pointer
  (_obj :pointer))

(defcfun ("cbMiniButton_Wnd" cbMiniButton_Wnd) :pointer
  (_obj :pointer))

(defcfun ("cbMiniButton_DragStarted" cbMiniButton_DragStarted) :int
  (_obj :pointer))

(defcfun ("cbMiniButton_Pressed" cbMiniButton_Pressed) :int
  (_obj :pointer))

(defcfun ("cbMiniButton_SetPos" cbMiniButton_SetPos) :void
  (_obj :pointer)
  (x :int)
  (y :int))

(defcfun ("cbMiniButton_HitTest" cbMiniButton_HitTest) :int
  (_obj :pointer)
  (x :int)
  (y :int))

(defcfun ("cbMiniButton_Refresh" cbMiniButton_Refresh) :void
  (_obj :pointer))

(defcfun ("cbMiniButton_WasClicked" cbMiniButton_WasClicked) :int
  (_obj :pointer))

(defcfun ("cbMiniButton_Reset" cbMiniButton_Reset) :void
  (_obj :pointer))

(defcfun ("cbMiniButton_Enable" cbMiniButton_Enable) :void
  (_obj :pointer)
  (enable :int))

(defcfun ("cbMiniButton_IsPressed" cbMiniButton_IsPressed) :int
  (_obj :pointer))

(defcfun ("cbCloseBox_Create" cbCloseBox_Create) :pointer)

(defcfun ("cbCollapseBox_Create" cbCollapseBox_Create) :pointer)

(defcfun ("cbDockBox_Create" cbDockBox_Create) :pointer)

(defcfun ("cbFloatedBarWindow_Create" cbFloatedBarWindow_Create) :pointer
  (_obj :pointer))

(defcfun ("cbFloatedBarWindow_SetBar" cbFloatedBarWindow_SetBar) :void
  (_obj :pointer)
  (_bar :pointer))

(defcfun ("cbFloatedBarWindow_SetLayout" cbFloatedBarWindow_SetLayout) :void
  (_obj :pointer)
  (_layout :pointer))

(defcfun ("cbFloatedBarWindow_GetBar" cbFloatedBarWindow_GetBar) :pointer
  (_obj :pointer))

(defcfun ("cbFloatedBarWindow_PositionFloatedWnd" cbFloatedBarWindow_PositionFloatedWnd) :void
  (_obj :pointer)
  (_x :int)
  (_y :int)
  (_w :int)
  (_h :int))

(defcfun ("wxFrameLayout_Create" wxFrameLayout_Create) :pointer
  (pParentFrame :pointer)
  (pFrameClient :pointer)
  (activateNow :int))

(defcfun ("wxFrameLayout_Delete" wxFrameLayout_Delete) :void
  (_obj :pointer))

(defcfun ("wxFrameLayout_EnableFloating" wxFrameLayout_EnableFloating) :void
  (_obj :pointer)
  (enable :int))

(defcfun ("wxFrameLayout_Activate" wxFrameLayout_Activate) :void
  (_obj :pointer))

(defcfun ("wxFrameLayout_Deactivate" wxFrameLayout_Deactivate) :void
  (_obj :pointer))

(defcfun ("wxFrameLayout_HideBarWindows" wxFrameLayout_HideBarWindows) :void
  (_obj :pointer))

(defcfun ("wxFrameLayout_DestroyBarWindows" wxFrameLayout_DestroyBarWindows) :void
  (_obj :pointer))

(defcfun ("wxFrameLayout_SetFrameClient" wxFrameLayout_SetFrameClient) :void
  (_obj :pointer)
  (pFrameClient :pointer))

(defcfun ("wxFrameLayout_GetFrameClient" wxFrameLayout_GetFrameClient) :pointer
  (_obj :pointer))

(defcfun ("wxFrameLayout_GetParentFrame" wxFrameLayout_GetParentFrame) :pointer
  (_obj :pointer))

(defcfun ("wxFrameLayout_GetPane" wxFrameLayout_GetPane) :pointer
  (_obj :pointer)
  (alignment :int))

(defcfun ("wxFrameLayout_AddBar" wxFrameLayout_AddBar) :void
  (_obj :pointer)
  (pBarWnd :pointer)
  (dimInfo :pointer)
  (alignment :int)
  (rowNo :int)
  (columnPos :int)
  (name :pointer)
  (spyEvents :int)
  (state :int))

(defcfun ("wxFrameLayout_RedockBar" wxFrameLayout_RedockBar) :int
  (_obj :pointer)
  (pBar :pointer)
  (x :int)
  (y :int)
  (w :int)
  (h :int)
  (pToPane :pointer)
  (updateNow :int))

(defcfun ("wxFrameLayout_FindBarByName" wxFrameLayout_FindBarByName) :pointer
  (_obj :pointer)
  (name :pointer))

(defcfun ("wxFrameLayout_FindBarByWindow" wxFrameLayout_FindBarByWindow) :pointer
  (_obj :pointer)
  (pWnd :pointer))

(defcfun ("wxFrameLayout_GetBars" wxFrameLayout_GetBars) :int
  (_obj :pointer)
  (_ref :pointer))

(defcfun ("wxFrameLayout_SetBarState" wxFrameLayout_SetBarState) :void
  (_obj :pointer)
  (pBar :pointer)
  (newStatem :int)
  (updateNow :int))

(defcfun ("wxFrameLayout_InverseVisibility" wxFrameLayout_InverseVisibility) :void
  (_obj :pointer)
  (pBar :pointer))

(defcfun ("wxFrameLayout_ApplyBarProperties" wxFrameLayout_ApplyBarProperties) :void
  (_obj :pointer)
  (pBar :pointer))

(defcfun ("wxFrameLayout_RemoveBar" wxFrameLayout_RemoveBar) :void
  (_obj :pointer)
  (pBar :pointer))

(defcfun ("wxFrameLayout_RecalcLayout" wxFrameLayout_RecalcLayout) :void
  (_obj :pointer)
  (repositionBarsNow :int))

(defcfun ("wxFrameLayout_GetClientHeight" wxFrameLayout_GetClientHeight) :int
  (_obj :pointer))

(defcfun ("wxFrameLayout_GetClientWidth" wxFrameLayout_GetClientWidth) :int
  (_obj :pointer))

(defcfun ("wxFrameLayout_GetClientRect" wxFrameLayout_GetClientRect) :void
  (_obj :pointer)
  (x :pointer)
  (y :pointer)
  (w :pointer)
  (h :pointer))

(defcfun ("wxFrameLayout_GetUpdatesManager" wxFrameLayout_GetUpdatesManager) :pointer
  (_obj :pointer))

(defcfun ("wxFrameLayout_SetUpdatesManager" wxFrameLayout_SetUpdatesManager) :void
  (_obj :pointer)
  (pUMgr :pointer))

(defcfun ("wxFrameLayout_GetPaneProperties" wxFrameLayout_GetPaneProperties) :void
  (_obj :pointer)
  (props :pointer)
  (alignment :int))

(defcfun ("wxFrameLayout_SetPaneProperties" wxFrameLayout_SetPaneProperties) :void
  (_obj :pointer)
  (props :pointer)
  (paneMask :int))

(defcfun ("wxFrameLayout_SetMargins" wxFrameLayout_SetMargins) :void
  (_obj :pointer)
  (top :int)
  (bottom :int)
  (left :int)
  (right :int)
  (paneMask :int))

(defcfun ("wxFrameLayout_SetPaneBackground" wxFrameLayout_SetPaneBackground) :void
  (_obj :pointer)
  (colour :pointer))

(defcfun ("wxFrameLayout_RefreshNow" wxFrameLayout_RefreshNow) :void
  (_obj :pointer)
  (recalcLayout :int))

(defcfun ("wxFrameLayout_OnSize" wxFrameLayout_OnSize) :void
  (_obj :pointer)
  (event :pointer))

(defcfun ("wxFrameLayout_OnLButtonDown" wxFrameLayout_OnLButtonDown) :void
  (_obj :pointer)
  (event :pointer))

(defcfun ("wxFrameLayout_OnLDblClick" wxFrameLayout_OnLDblClick) :void
  (_obj :pointer)
  (event :pointer))

(defcfun ("wxFrameLayout_OnLButtonUp" wxFrameLayout_OnLButtonUp) :void
  (_obj :pointer)
  (event :pointer))

(defcfun ("wxFrameLayout_OnRButtonDown" wxFrameLayout_OnRButtonDown) :void
  (_obj :pointer)
  (event :pointer))

(defcfun ("wxFrameLayout_OnRButtonUp" wxFrameLayout_OnRButtonUp) :void
  (_obj :pointer)
  (event :pointer))

(defcfun ("wxFrameLayout_OnMouseMove" wxFrameLayout_OnMouseMove) :void
  (_obj :pointer)
  (event :pointer))

(defcfun ("wxFrameLayout_FirePluginEvent" wxFrameLayout_FirePluginEvent) :void
  (_obj :pointer)
  (event :pointer))

(defcfun ("wxFrameLayout_CaptureEventsForPlugin" wxFrameLayout_CaptureEventsForPlugin) :void
  (_obj :pointer)
  (pPlugin :pointer))

(defcfun ("wxFrameLayout_ReleaseEventsFromPlugin" wxFrameLayout_ReleaseEventsFromPlugin) :void
  (_obj :pointer)
  (pPlugin :pointer))

(defcfun ("wxFrameLayout_CaptureEventsForPane" wxFrameLayout_CaptureEventsForPane) :void
  (_obj :pointer)
  (toPane :pointer))

(defcfun ("wxFrameLayout_ReleaseEventsFromPane" wxFrameLayout_ReleaseEventsFromPane) :void
  (_obj :pointer)
  (fromPane :pointer))

(defcfun ("wxFrameLayout_GetTopPlugin" wxFrameLayout_GetTopPlugin) :pointer
  (_obj :pointer))

(defcfun ("wxFrameLayout_SetTopPlugin" wxFrameLayout_SetTopPlugin) :void
  (_obj :pointer)
  (pPlugin :pointer))

(defcfun ("wxFrameLayout_PushPlugin" wxFrameLayout_PushPlugin) :void
  (_obj :pointer)
  (pPugin :pointer))

(defcfun ("wxFrameLayout_PopPlugin" wxFrameLayout_PopPlugin) :void
  (_obj :pointer))

(defcfun ("wxFrameLayout_PopAllPlugins" wxFrameLayout_PopAllPlugins) :void
  (_obj :pointer))

(defcfun ("wxFrameLayout_PushDefaultPlugins" wxFrameLayout_PushDefaultPlugins) :void
  (_obj :pointer))

(defcfun ("wxFrameLayout_AddPlugin" wxFrameLayout_AddPlugin) :void
  (_obj :pointer)
  (pPlInfo :pointer)
  (paneMask :int))

(defcfun ("wxFrameLayout_AddPluginBefore" wxFrameLayout_AddPluginBefore) :void
  (_obj :pointer)
  (pNextPlInfo :pointer)
  (pPlInfo :pointer)
  (paneMask :int))

(defcfun ("wxFrameLayout_RemovePlugin" wxFrameLayout_RemovePlugin) :void
  (_obj :pointer)
  (pPlInfo :pointer))

(defcfun ("wxFrameLayout_FindPlugin" wxFrameLayout_FindPlugin) :pointer
  (_obj :pointer)
  (pPlInfo :pointer))

(defcfun ("wxFrameLayout_HasTopPlugin" wxFrameLayout_HasTopPlugin) :int
  (_obj :pointer))

(defcfun ("cbDimInfo_CreateDefault" cbDimInfo_CreateDefault) :pointer)

(defcfun ("cbDimInfo_CreateWithHandler" cbDimInfo_CreateWithHandler) :pointer
  (pDimHandler :pointer)
  (isFixed :int))

(defcfun ("cbDimInfo_CreateWithInfo" cbDimInfo_CreateWithInfo) :pointer
  (dh_x :int)
  (dh_y :int)
  (dv_x :int)
  (dv_y :int)
  (f_x :int)
  (f_y :int)
  (isFixed :int)
  (horizGap :int)
  (vertGap :int)
  (pDimHandler :pointer))

(defcfun ("cbDimInfo_Create" cbDimInfo_Create) :pointer
  (x :int)
  (y :int)
  (isFixed :pointer)
  (gap :int)
  (pDimHandler :pointer))

(defcfun ("cbDimInfo_Delete" cbDimInfo_Delete) :void
  (_obj :pointer))

(defcfun ("cbDimInfo_Assign" cbDimInfo_Assign) :void
  (_obj :pointer)
  (other :pointer))

(defcfun ("cbDimInfo_GetDimHandler" cbDimInfo_GetDimHandler) :pointer
  (_obj :pointer))

(defcfun ("cbBarInfo_Create" cbBarInfo_Create) :pointer)

(defcfun ("cbBarInfo_Delete" cbBarInfo_Delete) :void
  (_obj :pointer))

(defcfun ("cbBarInfo_IsFixed" cbBarInfo_IsFixed) :int
  (_obj :pointer))

(defcfun ("cbBarInfo_IsExpanded" cbBarInfo_IsExpanded) :int
  (_obj :pointer))

(defcfun ("cbBarSpy_CreateDefault" cbBarSpy_CreateDefault) :pointer)

(defcfun ("cbBarSpy_Create" cbBarSpy_Create) :pointer
  (pPanel :pointer))

(defcfun ("cbBarSpy_Delete" cbBarSpy_Delete) :void
  (_obj :pointer))

(defcfun ("cbBarSpy_SetBarWindow" cbBarSpy_SetBarWindow) :void
  (_obj :pointer)
  (pWnd :pointer))

(defcfun ("cbBarSpy_ProcessEvent" cbBarSpy_ProcessEvent) :int
  (_obj :pointer)
  (event :pointer))

(defcfun ("cbRowInfo_Create" cbRowInfo_Create) :pointer)

(defcfun ("cbRowInfo_Delete" cbRowInfo_Delete) :void
  (_obj :pointer))

(defcfun ("cbRowInfo_GetFirstBar" cbRowInfo_GetFirstBar) :pointer
  (_obj :pointer))

(defcfun ("cbDockPane_CreateDefault" cbDockPane_CreateDefault) :pointer)

(defcfun ("cbDockPane_Create" cbDockPane_Create) :pointer
  (alignment :int)
  (pPanel :pointer))

(defcfun ("cbDockPane_Delete" cbDockPane_Delete) :void
  (_obj :pointer))

(defcfun ("cbDockPane_SetMargins" cbDockPane_SetMargins) :void
  (_obj :pointer)
  (top :int)
  (bottom :int)
  (left :int)
  (right :int))

(defcfun ("cbDockPane_RemoveBar" cbDockPane_RemoveBar) :void
  (_obj :pointer)
  (pBar :pointer))

(defcfun ("cbDockPane_InsertBarByCoord" cbDockPane_InsertBarByCoord) :void
  (_obj :pointer)
  (pBar :pointer)
  (x :int)
  (y :int)
  (w :int)
  (h :int))

(defcfun ("cbDockPane_InsertBarToRow" cbDockPane_InsertBarToRow) :void
  (_obj :pointer)
  (pBar :pointer)
  (pIntoRow :pointer))

(defcfun ("cbDockPane_InsertBarByInfo" cbDockPane_InsertBarByInfo) :void
  (_obj :pointer)
  (pBarInfo :pointer))

(defcfun ("cbDockPane_RemoveRow" cbDockPane_RemoveRow) :void
  (_obj :pointer)
  (pRow :pointer))

(defcfun ("cbDockPane_InsertRow" cbDockPane_InsertRow) :void
  (_obj :pointer)
  (pRow :pointer)
  (pBeforeRow :pointer))

(defcfun ("cbDockPane_SetPaneWidth" cbDockPane_SetPaneWidth) :void
  (_obj :pointer)
  (width :int))

(defcfun ("cbDockPane_SetBoundsInParent" cbDockPane_SetBoundsInParent) :void
  (_obj :pointer)
  (_x :int)
  (_y :int)
  (_w :int)
  (_h :int))

(defcfun ("cbDockPane_GetRealRect" cbDockPane_GetRealRect) :void
  (_obj :pointer)
  (_x :pointer)
  (_y :pointer)
  (_w :pointer)
  (_h :pointer))

(defcfun ("cbDockPane_GetRowList" cbDockPane_GetRowList) :int
  (_obj :pointer)
  (_ref :pointer))

(defcfun ("cbDockPane_GetFirstRow" cbDockPane_GetFirstRow) :pointer
  (_obj :pointer))

(defcfun ("cbDockPane_BarPresent" cbDockPane_BarPresent) :int
  (_obj :pointer)
  (pBar :pointer))

(defcfun ("cbDockPane_GetPaneHeight" cbDockPane_GetPaneHeight) :int
  (_obj :pointer))

(defcfun ("cbDockPane_GetAlignment" cbDockPane_GetAlignment) :int
  (_obj :pointer))

(defcfun ("cbDockPane_MatchesMask" cbDockPane_MatchesMask) :int
  (_obj :pointer)
  (paneMask :int))

(defcfun ("cbDockPane_IsHorizontal" cbDockPane_IsHorizontal) :int
  (_obj :pointer))

(defcfun ("cbDockPane_GetDockingState" cbDockPane_GetDockingState) :int
  (_obj :pointer))

(defcfun ("cbDockPane_HitTestPaneItems" cbDockPane_HitTestPaneItems) :int
  (_obj :pointer)
  (x :int)
  (y :int)
  (ppRow :pointer)
  (ppBar :pointer))

(defcfun ("cbDockPane_GetBarResizeRange" cbDockPane_GetBarResizeRange) :void
  (_obj :pointer)
  (pBar :pointer)
  (from :pointer)
  (till :pointer)
  (forLeftHandle :int))

(defcfun ("cbDockPane_GetRowResizeRange" cbDockPane_GetRowResizeRange) :void
  (_obj :pointer)
  (pRow :pointer)
  (from :pointer)
  (till :pointer)
  (forUpperHandle :int))

(defcfun ("cbDockPane_GetBarInfoByWindow" cbDockPane_GetBarInfoByWindow) :pointer
  (_obj :pointer)
  (pBarWnd :pointer))

(defcfun ("cbPluginBase_GetPaneMask" cbPluginBase_GetPaneMask) :int
  (_obj :pointer))

(defcfun ("cbPluginBase_Delete" cbPluginBase_Delete) :void
  (_obj :pointer))

(defcfun ("cbPluginBase_IsReady" cbPluginBase_IsReady) :int
  (_obj :pointer))

(defcfun ("cbPluginBase_ProcessEvent" cbPluginBase_ProcessEvent) :int
  (_obj :pointer)
  (event :pointer))

(defcfun ("cbPluginEvent_Pane" cbPluginEvent_Pane) :pointer
  (_obj :pointer))

(defcfun ("cbLeftDownEvent_Pos" cbLeftDownEvent_Pos) :void
  (_obj :pointer)
  (_x :pointer)
  (_y :pointer))

(defcfun ("cbLeftUpEvent_Pos" cbLeftUpEvent_Pos) :void
  (_obj :pointer)
  (_x :pointer)
  (_y :pointer))

(defcfun ("cbRightDownEvent_Pos" cbRightDownEvent_Pos) :void
  (_obj :pointer)
  (_x :pointer)
  (_y :pointer))

(defcfun ("cbRightUpEvent_Pos" cbRightUpEvent_Pos) :void
  (_obj :pointer)
  (_x :pointer)
  (_y :pointer))

(defcfun ("cbMotionEvent_Pos" cbMotionEvent_Pos) :void
  (_obj :pointer)
  (_x :pointer)
  (_y :pointer))

(defcfun ("cbLeftDClickEvent_Pos" cbLeftDClickEvent_Pos) :void
  (_obj :pointer)
  (_x :pointer)
  (_y :pointer))

(defcfun ("cbLayoutRowEvent_Row" cbLayoutRowEvent_Row) :pointer
  (_obj :pointer))

(defcfun ("cbResizeRowEvent_Row" cbResizeRowEvent_Row) :pointer
  (_obj :pointer))

(defcfun ("cbResizeRowEvent_HandleOfs" cbResizeRowEvent_HandleOfs) :int
  (_obj :pointer))

(defcfun ("cbResizeRowEvent_ForUpperHandle" cbResizeRowEvent_ForUpperHandle) :int
  (_obj :pointer))

(defcfun ("cbInsertBarEvent_Bar" cbInsertBarEvent_Bar) :pointer
  (_obj :pointer))

(defcfun ("cbInsertBarEvent_Row" cbInsertBarEvent_Row) :pointer
  (_obj :pointer))

(defcfun ("cbResizeBarEvent_Bar" cbResizeBarEvent_Bar) :pointer
  (_obj :pointer))

(defcfun ("cbResizeBarEvent_Row" cbResizeBarEvent_Row) :pointer
  (_obj :pointer))

(defcfun ("cbRemoveBarEvent_Bar" cbRemoveBarEvent_Bar) :pointer
  (_obj :pointer))

(defcfun ("cbSizeBarWndEvent_Bar" cbSizeBarWndEvent_Bar) :pointer
  (_obj :pointer))

(defcfun ("cbSizeBarWndEvent_BoundsInParent" cbSizeBarWndEvent_BoundsInParent) :void
  (_obj :pointer)
  (_x :pointer)
  (_y :pointer)
  (_w :pointer)
  (_h :pointer))

(defcfun ("cbDrawBarDecorEvent_Bar" cbDrawBarDecorEvent_Bar) :pointer
  (_obj :pointer))

(defcfun ("cbDrawBarDecorEvent_BoundsInParent" cbDrawBarDecorEvent_BoundsInParent) :void
  (_obj :pointer)
  (_x :pointer)
  (_y :pointer)
  (_w :pointer)
  (_h :pointer))

(defcfun ("cbDrawBarDecorEvent_Dc" cbDrawBarDecorEvent_Dc) :pointer
  (_obj :pointer))

(defcfun ("cbDrawRowDecorEvent_Row" cbDrawRowDecorEvent_Row) :pointer
  (_obj :pointer))

(defcfun ("cbDrawRowDecorEvent_Dc" cbDrawRowDecorEvent_Dc) :pointer
  (_obj :pointer))

(defcfun ("cbDrawPaneDecorEvent_Dc" cbDrawPaneDecorEvent_Dc) :pointer
  (_obj :pointer))

(defcfun ("cbDrawBarHandlesEvent_Bar" cbDrawBarHandlesEvent_Bar) :pointer
  (_obj :pointer))

(defcfun ("cbDrawBarHandlesEvent_Dc" cbDrawBarHandlesEvent_Dc) :pointer
  (_obj :pointer))

(defcfun ("cbDrawRowHandlesEvent_Row" cbDrawRowHandlesEvent_Row) :pointer
  (_obj :pointer))

(defcfun ("cbDrawRowHandlesEvent_Dc" cbDrawRowHandlesEvent_Dc) :pointer
  (_obj :pointer))

(defcfun ("cbDrawRowBkGroundEvent_Row" cbDrawRowBkGroundEvent_Row) :pointer
  (_obj :pointer))

(defcfun ("cbDrawRowBkGroundEvent_Dc" cbDrawRowBkGroundEvent_Dc) :pointer
  (_obj :pointer))

(defcfun ("cbDrawPaneBkGroundEvent_Dc" cbDrawPaneBkGroundEvent_Dc) :pointer
  (_obj :pointer))

(defcfun ("cbStartBarDraggingEvent_Bar" cbStartBarDraggingEvent_Bar) :pointer
  (_obj :pointer))

(defcfun ("cbStartBarDraggingEvent_Pos" cbStartBarDraggingEvent_Pos) :void
  (_obj :pointer)
  (_x :pointer)
  (_y :pointer))

(defcfun ("cbDrawHintRectEvent_Rect" cbDrawHintRectEvent_Rect) :void
  (_obj :pointer)
  (_x :pointer)
  (_y :pointer)
  (_w :pointer)
  (_h :pointer))

(defcfun ("cbDrawHintRectEvent_LastTime" cbDrawHintRectEvent_LastTime) :int
  (_obj :pointer))

(defcfun ("cbDrawHintRectEvent_EraseRect" cbDrawHintRectEvent_EraseRect) :int
  (_obj :pointer))

(defcfun ("cbDrawHintRectEvent_IsInClient" cbDrawHintRectEvent_IsInClient) :int
  (_obj :pointer))

(defcfun ("cbStartDrawInAreaEvent_Area" cbStartDrawInAreaEvent_Area) :void
  (_obj :pointer)
  (_x :pointer)
  (_y :pointer)
  (_w :pointer)
  (_h :pointer))

(defcfun ("cbFinishDrawInAreaEvent_Area" cbFinishDrawInAreaEvent_Area) :void
  (_obj :pointer)
  (_x :pointer)
  (_y :pointer)
  (_w :pointer)
  (_h :pointer))

(defcfun ("cbCustomizeBarEvent_ClickPos" cbCustomizeBarEvent_ClickPos) :void
  (_obj :pointer)
  (_x :pointer)
  (_y :pointer))

(defcfun ("cbCustomizeBarEvent_Bar" cbCustomizeBarEvent_Bar) :pointer
  (_obj :pointer))

(defcfun ("cbCustomizeLayoutEvent_ClickPos" cbCustomizeLayoutEvent_ClickPos) :void
  (_obj :pointer)
  (_x :pointer)
  (_y :pointer))

(defcfun ("cbAntiflickerPlugin_CreateDefault" cbAntiflickerPlugin_CreateDefault) :pointer)

(defcfun ("cbAntiflickerPlugin_Create" cbAntiflickerPlugin_Create) :pointer
  (pPanel :pointer)
  (paneMask :int))

(defcfun ("cbAntiflickerPlugin_Delete" cbAntiflickerPlugin_Delete) :void
  (_obj :pointer))

(defcfun ("cbBarDragPlugin_CreateDefault" cbBarDragPlugin_CreateDefault) :pointer)

(defcfun ("cbBarDragPlugin_Create" cbBarDragPlugin_Create) :pointer
  (pPanel :pointer)
  (paneMask :int))

(defcfun ("cbBarDragPlugin_Delete" cbBarDragPlugin_Delete) :void
  (_obj :pointer))

(defcfun ("cbBarHintsPlugin_CreateDefault" cbBarHintsPlugin_CreateDefault) :pointer)

(defcfun ("cbBarHintsPlugin_Create" cbBarHintsPlugin_Create) :pointer
  (pPanel :pointer)
  (paneMask :int))

(defcfun ("cbBarHintsPlugin_Delete" cbBarHintsPlugin_Delete) :void
  (_obj :pointer))

(defcfun ("cbBarHintsPlugin_SetGrooveCount" cbBarHintsPlugin_SetGrooveCount) :void
  (_obj :pointer)
  (nGrooves :int))

(defcfun ("cbSimpleCustomizationPlugin_CreateDefault" cbSimpleCustomizationPlugin_CreateDefault) :pointer)

(defcfun ("cbSimpleCustomizationPlugin_Create" cbSimpleCustomizationPlugin_Create) :pointer
  (pPanel :pointer)
  (paneMask :int))

(defcfun ("cbSimpleCustomizationPlugin_Delete" cbSimpleCustomizationPlugin_Delete) :void
  (_obj :pointer))

(defcfun ("wxToolLayoutItem_IsSeparator" wxToolLayoutItem_IsSeparator) :int
  (_obj :pointer))

(defcfun ("wxToolLayoutItem_Rect" wxToolLayoutItem_Rect) :void
  (_obj :pointer)
  (_x :pointer)
  (_y :pointer)
  (_w :pointer)
  (_h :pointer))

(defcfun ("wxDynToolInfo_pToolWnd" wxDynToolInfo_pToolWnd) :pointer
  (_obj :pointer))

(defcfun ("wxDynToolInfo_Index" wxDynToolInfo_Index) :int
  (_obj :pointer))

(defcfun ("wxDynToolInfo_RealSize" wxDynToolInfo_RealSize) :void
  (_obj :pointer)
  (_w :pointer)
  (_h :pointer))

(defcfun ("wxDynamicToolBar_CreateDefault" wxDynamicToolBar_CreateDefault) :pointer)

(defcfun ("wxDynamicToolBar_Create" wxDynamicToolBar_Create) :pointer
  (parent :pointer)
  (id :int)
  (x :int)
  (y :int)
  (w :int)
  (h :int)
  (style :int)
  (orientation :int)
  (RowsOrColumns :int))

(defcfun ("wxDynamicToolBar_Delete" wxDynamicToolBar_Delete) :void
  (_obj :pointer))

(defcfun ("wxDynamicToolBar_CreateParams" wxDynamicToolBar_CreateParams) :int
  (_obj :pointer)
  (parent :pointer)
  (id :int)
  (x :int)
  (y :int)
  (w :int)
  (h :int)
  (style :int)
  (orientation :int)
  (RowsOrColumns :int))

(defcfun ("wxDynamicToolBar_AddTool" wxDynamicToolBar_AddTool) :void
  (_obj :pointer)
  (toolIndex :int)
  (pToolWindow :pointer)
  (w :int)
  (h :int))

(defcfun ("wxDynamicToolBar_AddToolImage" wxDynamicToolBar_AddToolImage) :void
  (_obj :pointer)
  (toolIndex :int)
  (imageFileName :pointer)
  (imageFileType :int)
  (labelText :pointer)
  (alignTextRight :int)
  (isFlat :int))

(defcfun ("wxDynamicToolBar_AddToolLabel" wxDynamicToolBar_AddToolLabel) :void
  (_obj :pointer)
  (toolIndex :int)
  (labelBmp :pointer)
  (labelText :pointer)
  (alignTextRight :int)
  (isFlat :int))

(defcfun ("wxDynamicToolBar_AddToolBitmap" wxDynamicToolBar_AddToolBitmap) :pointer
  (_obj :pointer)
  (toolIndex :int)
  (bitmap :pointer)
  (pushedBitmap :pointer)
  (toggle :int)
  (x :int)
  (y :int)
  (clientData :pointer)
  (helpString1 :pointer)
  (helpString2 :pointer))

(defcfun ("wxDynamicToolBar_AddSeparator" wxDynamicToolBar_AddSeparator) :void
  (_obj :pointer)
  (pSepartorWnd :pointer))

(defcfun ("wxDynamicToolBar_GetToolInfo" wxDynamicToolBar_GetToolInfo) :pointer
  (_obj :pointer)
  (toolIndex :int))

(defcfun ("wxDynamicToolBar_RemoveTool" wxDynamicToolBar_RemoveTool) :void
  (_obj :pointer)
  (toolIndex :int))

(defcfun ("wxDynamicToolBar_DrawSeparator" wxDynamicToolBar_DrawSeparator) :void
  (_obj :pointer)
  (info :pointer)
  (dc :pointer))

(defcfun ("wxDynamicToolBar_Layout" wxDynamicToolBar_Layout) :int
  (_obj :pointer))

(defcfun ("wxDynamicToolBar_GetPreferredDim" wxDynamicToolBar_GetPreferredDim) :void
  (_obj :pointer)
  (gw :int)
  (gh :int)
  (pw :pointer)
  (ph :pointer))

(defcfun ("wxDynamicToolBar_CreateDefaultLayout" wxDynamicToolBar_CreateDefaultLayout) :pointer
  (_obj :pointer))

(defcfun ("wxDynamicToolBar_SetLayout" wxDynamicToolBar_SetLayout) :void
  (_obj :pointer)
  (pLayout :pointer))

(defcfun ("wxDynamicToolBar_EnableTool" wxDynamicToolBar_EnableTool) :void
  (_obj :pointer)
  (toolIndex :int)
  (enable :int))

(defcfun ("wxDynamicToolBar_FindToolForPosition" wxDynamicToolBar_FindToolForPosition) :pointer
  (_obj :pointer)
  (x :int)
  (y :int))

(defcfun ("wxDynamicToolBar_DoInsertTool" wxDynamicToolBar_DoInsertTool) :int
  (_obj :pointer)
  (pos :int)
  (tool :pointer))

(defcfun ("wxDynamicToolBar_DoDeleteTool" wxDynamicToolBar_DoDeleteTool) :int
  (_obj :pointer)
  (pos :int)
  (tool :pointer))

(defcfun ("wxDynamicToolBar_DoEnableTool" wxDynamicToolBar_DoEnableTool) :void
  (_obj :pointer)
  (tool :pointer)
  (enable :int))

(defcfun ("wxDynamicToolBar_DoToggleTool" wxDynamicToolBar_DoToggleTool) :void
  (_obj :pointer)
  (tool :pointer)
  (toggle :int))

(defcfun ("wxDynamicToolBar_DoSetToggle" wxDynamicToolBar_DoSetToggle) :void
  (_obj :pointer)
  (tool :pointer)
  (toggle :int))

(defcfun ("wxDynamicToolBar_CreateTool" wxDynamicToolBar_CreateTool) :pointer
  (_obj :pointer)
  (id :int)
  (label :pointer)
  (bmpNormal :pointer)
  (bmpDisabled :pointer)
  (kind :int)
  (clientData :pointer)
  (shortHelp :pointer)
  (longHelp :pointer))

(defcfun ("wxDynamicToolBar_CreateToolControl" wxDynamicToolBar_CreateToolControl) :pointer
  (_obj :pointer)
  (control :pointer))

(defcfun ("cbDynToolBarDimHandler_Create" cbDynToolBarDimHandler_Create) :pointer)

(defcfun ("cbDynToolBarDimHandler_Delete" cbDynToolBarDimHandler_Delete) :void
  (_obj :pointer))

(defcfun ("cbGCUpdatesMgr_Create" cbGCUpdatesMgr_Create) :pointer
  (pPanel :pointer))

(defcfun ("cbGCUpdatesMgr_CreateDefault" cbGCUpdatesMgr_CreateDefault) :pointer)

(defcfun ("cbGCUpdatesMgr_Delete" cbGCUpdatesMgr_Delete) :void
  (_obj :pointer))

(defcfun ("cbGCUpdatesMgr_UpdateNow" cbGCUpdatesMgr_UpdateNow) :void
  (_obj :pointer))

(defcfun ("cbHintAnimationPlugin_CreateDefault" cbHintAnimationPlugin_CreateDefault) :pointer)

(defcfun ("cbHintAnimationPlugin_Create" cbHintAnimationPlugin_Create) :pointer
  (pPanel :pointer)
  (paneMask :int))

(defcfun ("cbHintAnimationPlugin_Delete" cbHintAnimationPlugin_Delete) :void
  (_obj :pointer))

(defcfun ("wxNewBitmapButton_Create" wxNewBitmapButton_Create) :pointer
  (labelBitmap :pointer)
  (labelText :pointer)
  (alignText :int)
  (isFlat :int)
  (firedEventType :int)
  (marginX :int)
  (marginY :int)
  (textToLabelGap :int)
  (isSticky :int))

(defcfun ("wxNewBitmapButton_CreateFromFile" wxNewBitmapButton_CreateFromFile) :pointer
  (bitmapFileName :pointer)
  (bitmapFileType :int)
  (labelText :pointer)
  (alignText :int)
  (isFlat :int)
  (firedEventType :int)
  (marginX :int)
  (marginY :int)
  (textToLabelGap :int)
  (isSticky :int))

(defcfun ("wxNewBitmapButton_Realize" wxNewBitmapButton_Realize) :void
  (_obj :pointer)
  (_prt :pointer)
  (_id :int)
  (_x :int)
  (_y :int)
  (_w :int)
  (_h :int))

(defcfun ("wxNewBitmapButton_Delete" wxNewBitmapButton_Delete) :void
  (_obj :pointer))

(defcfun ("wxNewBitmapButton_Reshape" wxNewBitmapButton_Reshape) :void
  (_obj :pointer))

(defcfun ("wxNewBitmapButton_SetLabel" wxNewBitmapButton_SetLabel) :void
  (_obj :pointer)
  (labelBitmap :pointer)
  (labelText :pointer))

(defcfun ("wxNewBitmapButton_SetAlignments" wxNewBitmapButton_SetAlignments) :void
  (_obj :pointer)
  (alignText :int)
  (marginX :int)
  (marginY :int)
  (textToLabelGap :int))

(defcfun ("wxNewBitmapButton_DrawDecorations" wxNewBitmapButton_DrawDecorations) :void
  (_obj :pointer)
  (dc :pointer))

(defcfun ("wxNewBitmapButton_DrawLabel" wxNewBitmapButton_DrawLabel) :void
  (_obj :pointer)
  (dc :pointer))

(defcfun ("wxNewBitmapButton_RenderLabelImage" wxNewBitmapButton_RenderLabelImage) :void
  (_obj :pointer)
  (destBmp :pointer)
  (srcBmp :pointer)
  (isEnabled :int)
  (isPressed :int))

(defcfun ("wxNewBitmapButton_RenderLabelImages" wxNewBitmapButton_RenderLabelImages) :void
  (_obj :pointer))

(defcfun ("wxNewBitmapButton_RenderAllLabelImages" wxNewBitmapButton_RenderAllLabelImages) :void
  (_obj :pointer))

(defcfun ("wxNewBitmapButton_Enable" wxNewBitmapButton_Enable) :int
  (_obj :pointer)
  (enable :int))

(defcfun ("cbPaneDrawPlugin_CreateDefault" cbPaneDrawPlugin_CreateDefault) :pointer)

(defcfun ("cbPaneDrawPlugin_Create" cbPaneDrawPlugin_Create) :pointer
  (pPanel :pointer)
  (paneMask :int))

(defcfun ("cbPaneDrawPlugin_Delete" cbPaneDrawPlugin_Delete) :void
  (_obj :pointer))

(defcfun ("cbRowDragPlugin_CreateDefault" cbRowDragPlugin_CreateDefault) :pointer)

(defcfun ("cbRowDragPlugin_Create" cbRowDragPlugin_Create) :pointer
  (pPanel :pointer)
  (paneMask :int))

(defcfun ("cbRowDragPlugin_Delete" cbRowDragPlugin_Delete) :void
  (_obj :pointer))

(defcfun ("cbRowLayoutPlugin_CreateDefault" cbRowLayoutPlugin_CreateDefault) :pointer)

(defcfun ("cbRowLayoutPlugin_Create" cbRowLayoutPlugin_Create) :pointer
  (pPanel :pointer)
  (paneMask :int))

(defcfun ("cbRowLayoutPlugin_Delete" cbRowLayoutPlugin_Delete) :void
  (_obj :pointer))

(defcfun ("cbPluginBase_Plugin" cbPluginBase_Plugin) :pointer
  (_swt :int))

(defcfun ("cbCommonPaneProperties_CreateDefault" cbCommonPaneProperties_CreateDefault) :pointer)

(defcfun ("cbCommonPaneProperties_Delete" cbCommonPaneProperties_Delete) :void
  (_obj :pointer))

(defcfun ("cbCommonPaneProperties_RealTimeUpdatesOn" cbCommonPaneProperties_RealTimeUpdatesOn) :int
  (_obj :pointer))

(defcfun ("cbCommonPaneProperties_OutOfPaneDragOn" cbCommonPaneProperties_OutOfPaneDragOn) :int
  (_obj :pointer))

(defcfun ("cbCommonPaneProperties_ExactDockPredictionOn" cbCommonPaneProperties_ExactDockPredictionOn) :int
  (_obj :pointer))

(defcfun ("cbCommonPaneProperties_NonDestructFrictionOn" cbCommonPaneProperties_NonDestructFrictionOn) :int
  (_obj :pointer))

(defcfun ("cbCommonPaneProperties_Show3DPaneBorderOn" cbCommonPaneProperties_Show3DPaneBorderOn) :int
  (_obj :pointer))

(defcfun ("cbCommonPaneProperties_BarFloatingOn" cbCommonPaneProperties_BarFloatingOn) :int
  (_obj :pointer))

(defcfun ("cbCommonPaneProperties_RowProportionsOn" cbCommonPaneProperties_RowProportionsOn) :int
  (_obj :pointer))

(defcfun ("cbCommonPaneProperties_ColProportionsOn" cbCommonPaneProperties_ColProportionsOn) :int
  (_obj :pointer))

(defcfun ("cbCommonPaneProperties_BarCollapseIconsOn" cbCommonPaneProperties_BarCollapseIconsOn) :int
  (_obj :pointer))

(defcfun ("cbCommonPaneProperties_BarDragHintsOn" cbCommonPaneProperties_BarDragHintsOn) :int
  (_obj :pointer))

(defcfun ("cbCommonPaneProperties_MinCBarDim" cbCommonPaneProperties_MinCBarDim) :void
  (_obj :pointer)
  (_w :pointer)
  (_h :pointer))

(defcfun ("cbCommonPaneProperties_ResizeHandleSize" cbCommonPaneProperties_ResizeHandleSize) :int
  (_obj :pointer))

(defcfun ("cbCommonPaneProperties_SetRealTimeUpdatesOn" cbCommonPaneProperties_SetRealTimeUpdatesOn) :void
  (_obj :pointer)
  (_val :int))

(defcfun ("cbCommonPaneProperties_SetOutOfPaneDragOn" cbCommonPaneProperties_SetOutOfPaneDragOn) :void
  (_obj :pointer)
  (_val :int))

(defcfun ("cbCommonPaneProperties_SetExactDockPredictionOn" cbCommonPaneProperties_SetExactDockPredictionOn) :void
  (_obj :pointer)
  (_val :int))

(defcfun ("cbCommonPaneProperties_SetNonDestructFrictionOn" cbCommonPaneProperties_SetNonDestructFrictionOn) :void
  (_obj :pointer)
  (_val :int))

(defcfun ("cbCommonPaneProperties_SetShow3DPaneBorderOn" cbCommonPaneProperties_SetShow3DPaneBorderOn) :void
  (_obj :pointer)
  (_val :int))

(defcfun ("cbCommonPaneProperties_SetBarFloatingOn" cbCommonPaneProperties_SetBarFloatingOn) :void
  (_obj :pointer)
  (_val :int))

(defcfun ("cbCommonPaneProperties_SetRowProportionsOn" cbCommonPaneProperties_SetRowProportionsOn) :void
  (_obj :pointer)
  (_val :int))

(defcfun ("cbCommonPaneProperties_SetColProportionsOn" cbCommonPaneProperties_SetColProportionsOn) :void
  (_obj :pointer)
  (_val :int))

(defcfun ("cbCommonPaneProperties_SetBarCollapseIconsOn" cbCommonPaneProperties_SetBarCollapseIconsOn) :void
  (_obj :pointer)
  (_val :int))

(defcfun ("cbCommonPaneProperties_SetBarDragHintsOn" cbCommonPaneProperties_SetBarDragHintsOn) :void
  (_obj :pointer)
  (_val :int))

(defcfun ("cbCommonPaneProperties_SetMinCBarDim" cbCommonPaneProperties_SetMinCBarDim) :void
  (_obj :pointer)
  (_w :int)
  (_h :int))

(defcfun ("cbCommonPaneProperties_SetResizeHandleSize" cbCommonPaneProperties_SetResizeHandleSize) :void
  (_obj :pointer)
  (_val :int))

(defcfun ("cbCommonPaneProperties_Assign" cbCommonPaneProperties_Assign) :void
  (_obj :pointer)
  (_other :pointer))

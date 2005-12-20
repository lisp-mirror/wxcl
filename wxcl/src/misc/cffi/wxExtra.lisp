;;;wxExtra.lisp
;;;License  : wxWindows License 3.1
;;;Author(s) : Surendra Singhi (surendra@asu.edu) 
;;;Copyright (C) 2005 Surendra Singhi 
;;;See the file LICENSE for information on usage and redistribution.
;;;
;;; $Header$
;;;

(in-package :wxcl-misc)

(defcfun ("expEVT_DELETE" expEVT_DELETE) :int)

(defcfun ("expEVT_HTML_CELL_CLICKED" expEVT_HTML_CELL_CLICKED) :int)

(defcfun ("expEVT_HTML_CELL_MOUSE_HOVER" expEVT_HTML_CELL_MOUSE_HOVER) :int)

(defcfun ("expEVT_HTML_LINK_CLICKED" expEVT_HTML_LINK_CLICKED) :int)

(defcfun ("expEVT_HTML_SET_TITLE" expEVT_HTML_SET_TITLE) :int)

(defcfun ("expEVT_INPUT_SINK" expEVT_INPUT_SINK) :int)

(defcfun ("expEVT_SORT" expEVT_SORT) :int)

(defcfun ("expEVT_COMMAND_LIST_CACHE_HINT" expEVT_COMMAND_LIST_CACHE_HINT) :int)

(defcfun ("expEVT_COMMAND_LIST_COL_RIGHT_CLICK" expEVT_COMMAND_LIST_COL_RIGHT_CLICK) :int)

(defcfun ("expEVT_COMMAND_LIST_COL_BEGIN_DRAG" expEVT_COMMAND_LIST_COL_BEGIN_DRAG) :int)

(defcfun ("expEVT_COMMAND_LIST_COL_DRAGGING" expEVT_COMMAND_LIST_COL_DRAGGING) :int)

(defcfun ("expEVT_COMMAND_LIST_COL_END_DRAG" expEVT_COMMAND_LIST_COL_END_DRAG) :int)

(defcvar ("m_closure" m_closure)
 :pointer)

(defcfun ("Connect" Connect) :void
  (closure :pointer))

(defcfun ("GetClosure" GetClosure) :pointer)

(defcfun ("Notify" Notify) :void)

(defcvar ("wxInputSink" wxInputSink)
 :pointer)

(defcvar ("m_buffer" m_buffer)
 :string)

(defcvar ("m_bufferLen" m_bufferLen)
 :pointer)

(defcvar ("m_lastRead" m_lastRead)
 :pointer)

(defcvar ("m_lastError" m_lastError)
 :pointer)

(defcfun ("Read" Read) :void
  (input :pointer))

(defcfun ("Clone" Clone) :pointer)

(defcfun ("LastError" LastError) :pointer)

(defcfun ("LastRead" LastRead) :int)

(defcfun ("LastInput" LastInput) :lisp-string)

(defcvar ("m_evtHandler" m_evtHandler)
 :pointer)

(defcvar ("m_input" m_input)
 :pointer)

(defcvar ("m_event" m_event)
 :pointer)

(defcfun ("Entry" Entry) :pointer)

(defcfun ("GetId" GetId) :int)

(defcfun ("Start" Start) :void)

(defcfun ("OnCellClicked" OnCellClicked) :void
  (cell :pointer)
  (x :pointer)
  (y :pointer)
  (event :pointer))

(defcfun ("OnCellMouseHover" OnCellMouseHover) :void
  (cell :pointer)
  (x :pointer)
  (y :pointer))

(defcfun ("OnLinkClicked" OnLinkClicked) :void
  (link :pointer))

(defcfun ("OnOpeningURL" OnOpeningURL) :pointer
  (type :pointer)
  (url :pointer)
  (redirect :pointer))

(defcfun ("OnSetTitle" OnSetTitle) :void
  (title :pointer))

(defcvar ("m_mouseEvent" m_mouseEvent)
 :pointer)

(defcvar ("m_htmlCell" m_htmlCell)
 :pointer)

(defcvar ("m_linkInfo" m_linkInfo)
 :pointer)

(defcvar ("m_logicalPosition" m_logicalPosition)
 :pointer)

(defcfun ("GetMouseEvent" GetMouseEvent) :pointer)

(defcfun ("GetHtmlCell" GetHtmlCell) :pointer)

(defcfun ("GetHtmlCellId" GetHtmlCellId) :pointer)

(defcfun ("GetHref" GetHref) :pointer)

(defcfun ("GetTarget" GetTarget) :pointer)

(defcfun ("GetLogicalPosition" GetLogicalPosition) :pointer)

(defcfun ("Create" Create) :void
  (parent :pointer)
  (id :pointer)
  (evtHandler :pointer))

(defcvar ("defineDefs" defineDefs)
 :pointer)

(defcvar ("useDefs" useDefs)
 :pointer)

(defcfun ("wxVersionNumber" wxVersionNumber) :int)

(defcfun ("wxIsDefined" wxIsDefined) :int
  (s :string))

(defcfun ("wxcMalloc" wxcMalloc) :pointer
  (size :int))

(defcfun ("wxcFree" wxcFree) :void
  (p :pointer))

(defcfun ("wxcSystemSettingsGetColour" wxcSystemSettingsGetColour) :pointer
  (systemColour :int))

(defcfun ("wxcWakeUpIdle" wxcWakeUpIdle) :void)

(defcfun ("wxCursor_Delete" wxCursor_Delete) :void
  (_obj :pointer))

(defcfun ("wxDateTime_Delete" wxDateTime_Delete) :void
  (_obj :pointer))

(defcfun ("wxFrame_GetTitle" wxFrame_GetTitle) :lisp-string
  (_obj :pointer))

(defcfun ("wxFrame_SetTitle" wxFrame_SetTitle) :void
  (_obj :pointer)
  (_txt :string))

(defcfun ("wxFrame_SetShape" wxFrame_SetShape) :pointer
  (self :pointer)
  (region :pointer))

(defcfun ("wxFrame_ShowFullScreen" wxFrame_ShowFullScreen) :pointer
  (self :pointer)
  (show :pointer)
  (style :int))

(defcfun ("wxFrame_IsFullScreen" wxFrame_IsFullScreen) :pointer
  (self :pointer))

(defcfun ("wxFrame_Centre" wxFrame_Centre) :void
  (self :pointer)
  (orientation :int))

(defcfun ("wxNotebook_AssignImageList" wxNotebook_AssignImageList) :void
  (_obj :pointer)
  (imageList :pointer))

(defcfun ("wxMenu_GetMenuBar" wxMenu_GetMenuBar) :pointer
  (_obj :pointer))

(defcfun ("wxMenuBar_GetFrame" wxMenuBar_GetFrame) :pointer
  (_obj :pointer))

(defcfun ("wxToolBar_AddTool2" wxToolBar_AddTool2) :void
  (_obj :pointer)
  (toolId :int)
  (label :string)
  (bmp :pointer)
  (bmpDisabled :pointer)
  (itemKind :int)
  (shortHelp :string)
  (longHelp :string))

(defcfun ("wxListEvent_GetCacheFrom" wxListEvent_GetCacheFrom) :int
  (_obj :pointer))

(defcfun ("wxListEvent_GetCacheTo" wxListEvent_GetCacheTo) :int
  (_obj :pointer))

(defcfun ("wxListCtrl_AssignImageList" wxListCtrl_AssignImageList) :void
  (_obj :pointer)
  (images :pointer)
  (which :int))

(defcfun ("wxListCtrl_GetColumn2" wxListCtrl_GetColumn2) :void
  (_obj :pointer)
  (col :int)
  (item :pointer))

(defcfun ("wxListCtrl_GetItem2" wxListCtrl_GetItem2) :void
  (_obj :pointer)
  (info :pointer))

(defcfun ("wxListCtrl_GetItemPosition2" wxListCtrl_GetItemPosition2) :void
  (_obj :pointer)
  (item :int)
  (x :int)
  (y :int))

(defcstruct SortData

	(id :long)
	(closure :pointer))

(defcfun ("wxListCtrl_SortItems2" wxListCtrl_SortItems2) :int
  (_obj :pointer)
  (closure :pointer))

(defcfun ("wxDC_GetPixel2" wxDC_GetPixel2) :void
  (_obj :pointer)
  (x :int)
  (y :int)
  (col :pointer))

(defcfun ("wxObject_IsKindOf" wxObject_IsKindOf) :int
  (_obj :pointer)
  (classInfo :pointer))

(defcfun ("wxObject_GetClassInfo" wxObject_GetClassInfo) :pointer
  (_obj :pointer))

(defcfun ("wxObject_IsScrolledWindow" wxObject_IsScrolledWindow) :int
  (_obj :pointer))

(defcfun ("wxObject_Delete" wxObject_Delete) :void
  (_obj :pointer))

(defcfun ("wxString_Create" wxString_Create) :pointer
  (buffer :string))

(defcfun ("wxString_CreateLen" wxString_CreateLen) :pointer
  (buffer :string)
  (len :int))

(defcfun ("wxString_Delete" wxString_Delete) :void
  (s :pointer))

(defcfun ("wxString_GetString" wxString_GetString) :int
  (s :pointer)
  (buffer :string))

(defcfun ("wxClassInfo_FindClass" wxClassInfo_FindClass) :pointer
  (_txt :string))

(defcfun ("wxClassInfo_GetClassNameEx" wxClassInfo_GetClassNameEx) :lisp-string
  (_obj :pointer))

(defcfun ("wxClassInfo_GetBaseClassName1" wxClassInfo_GetBaseClassName1) :lisp-string
  (_obj :pointer))

(defcfun ("wxClassInfo_GetBaseClassName2" wxClassInfo_GetBaseClassName2) :lisp-string
  (_obj :pointer))

(defcfun ("wxClassInfo_IsKindOfEx" wxClassInfo_IsKindOfEx) :int
  (_obj :pointer)
  (classInfo :pointer))

(defcfun ("wxClassInfo_GetSize" wxClassInfo_GetSize) :int
  (_obj :pointer))

(defcfun ("wxWindow_ConvertPixelsToDialogEx" wxWindow_ConvertPixelsToDialogEx) :void
  (_obj :pointer)
  (x :int)
  (y :int)
  (_x :int)
  (_y :int))

(defcfun ("wxWindow_ConvertDialogToPixelsEx" wxWindow_ConvertDialogToPixelsEx) :void
  (_obj :pointer)
  (x :int)
  (y :int)
  (_x :int)
  (_y :int))

(defcfun ("wxWindow_SetClientObject" wxWindow_SetClientObject) :void
  (_obj :pointer)
  (obj :pointer))

(defcfun ("wxWindow_SetVirtualSize" wxWindow_SetVirtualSize) :void
  (_obj :pointer)
  (w :int)
  (h :int))

(defcfun ("wxWindow_GetVirtualSize" wxWindow_GetVirtualSize) :void
  (_obj :pointer)
  (w :int)
  (h :int))

(defcfun ("wxWindow_FitInside" wxWindow_FitInside) :void
  (_obj :pointer))

(defcfun ("wxWindow_ClientToScreen" wxWindow_ClientToScreen) :void
  (self :pointer)
  (x :int)
  (y :int)
  (sx :int)
  (sy :int))

(defcfun ("wxWindow_ScreenToClient2" wxWindow_ScreenToClient2) :void
  (self :pointer)
  (x :int)
  (y :int)
  (cx :int)
  (cy :int))

(defcfun ("wxcGetMousePosition" wxcGetMousePosition) :void
  (x :int)
  (y :int))

(defcfun ("wxScrolledWindow_SetScrollRate" wxScrolledWindow_SetScrollRate) :void
  (_obj :pointer)
  (xstep :int)
  (ystep :int))

(defcfun ("wxMouseEvent_GetWheelDelta" wxMouseEvent_GetWheelDelta) :int
  (_obj :pointer))

(defcfun ("wxMouseEvent_GetWheelRotation" wxMouseEvent_GetWheelRotation) :int
  (_obj :pointer))

(defcfun ("wxMouseEvent_GetButton" wxMouseEvent_GetButton) :int
  (_obj :pointer))

(defcfun ("expEVT_MOUSEWHEEL" expEVT_MOUSEWHEEL) :int)

(defcfun ("wxDC_GetUserScaleX" wxDC_GetUserScaleX) :double
  (dc :pointer))

(defcfun ("wxDC_GetUserScaleY" wxDC_GetUserScaleY) :double
  (dc :pointer))

(defcfun ("wxTimerEx_Create" wxTimerEx_Create) :pointer)

(defcfun ("wxTimerEx_Connect" wxTimerEx_Connect) :void
  (_obj :pointer)
  (_closure :pointer))

(defcfun ("wxTimerEx_GetClosure" wxTimerEx_GetClosure) :pointer
  (_obj :pointer))

(defcfun ("wxProcess_IsErrorAvailable" wxProcess_IsErrorAvailable) :int
  (_obj :pointer))

(defcfun ("wxProcess_IsInputAvailable" wxProcess_IsInputAvailable) :int
  (_obj :pointer))

(defcfun ("wxProcess_IsInputOpened" wxProcess_IsInputOpened) :int
  (_obj :pointer))

(defcfun ("wxProcess_Open" wxProcess_Open) :pointer
  (cmd :string)
  (flags :int))

(defcfun ("wxKill" wxKill) :pointer
  (pid :int)
  (signal :pointer))

(defcfun ("wxStreamBase_Delete" wxStreamBase_Delete) :void
  (stream :pointer))

(defcfun ("wxTextCtrl_EmulateKeyPress" wxTextCtrl_EmulateKeyPress) :int
  (_obj :pointer)
  (keyevent :pointer))

(defcfun ("wxTextCtrl_GetStyle" wxTextCtrl_GetStyle) :int
  (_obj :pointer)
  (pos :long)
  (style :pointer))

(defcfun ("wxTextCtrl_GetDefaultStyle" wxTextCtrl_GetDefaultStyle) :pointer
  (_obj :pointer))

(defcfun ("wxTextCtrl_GetRange" wxTextCtrl_GetRange) :lisp-string
  (_obj :pointer)
  (from :long)
  (to :long))

(defcfun ("wxTextCtrl_GetStringSelection" wxTextCtrl_GetStringSelection) :lisp-string
  (_obj :pointer))

(defcfun ("wxTextCtrl_IsMultiLine" wxTextCtrl_IsMultiLine) :int
  (_obj :pointer))

(defcfun ("wxTextCtrl_IsSingleLine" wxTextCtrl_IsSingleLine) :int
  (_obj :pointer))

(defcfun ("wxTextCtrl_SetDefaultStyle" wxTextCtrl_SetDefaultStyle) :int
  (_obj :pointer)
  (style :pointer))

(defcfun ("wxTextCtrl_SetMaxLength" wxTextCtrl_SetMaxLength) :void
  (_obj :pointer)
  (len :long))

(defcfun ("wxTextCtrl_SetStyle" wxTextCtrl_SetStyle) :int
  (_obj :pointer)
  (start :long)
  (end :long)
  (style :pointer))

(defcfun ("wxTextAttr_CreateDefault" wxTextAttr_CreateDefault) :pointer)

(defcfun ("wxTextAttr_Create" wxTextAttr_Create) :pointer
  (colText :pointer)
  (colBack :pointer)
  (font :pointer))

(defcfun ("wxTextAttr_Delete" wxTextAttr_Delete) :void
  (_obj :pointer))

(defcfun ("wxTextAttr_GetBackgroundColour" wxTextAttr_GetBackgroundColour) :pointer
  (_obj :pointer))

(defcfun ("wxTextAttr_GetFont" wxTextAttr_GetFont) :pointer
  (_obj :pointer))

(defcfun ("wxTextAttr_GetTextColour" wxTextAttr_GetTextColour) :pointer
  (_obj :pointer))

(defcfun ("wxTextAttr_HasBackgroundColour" wxTextAttr_HasBackgroundColour) :int
  (_obj :pointer))

(defcfun ("wxTextAttr_HasFont" wxTextAttr_HasFont) :int
  (_obj :pointer))

(defcfun ("wxTextAttr_HasTextColour" wxTextAttr_HasTextColour) :int
  (_obj :pointer))

(defcfun ("wxTextAttr_IsDefault" wxTextAttr_IsDefault) :int
  (_obj :pointer))

(defcfun ("wxTextAttr_SetTextColour" wxTextAttr_SetTextColour) :void
  (_obj :pointer)
  (colour :pointer))

(defcfun ("wxTextAttr_SetBackgroundColour" wxTextAttr_SetBackgroundColour) :void
  (_obj :pointer)
  (colour :pointer))

(defcfun ("wxTextAttr_SetFont" wxTextAttr_SetFont) :void
  (_obj :pointer)
  (font :pointer))

(defcfun ("wxProgressDialog_Create" wxProgressDialog_Create) :pointer
  (title :string)
  (message :string)
  (max :int)
  (parent :pointer)
  (style :int))

(defcfun ("wxProgressDialog_Update" wxProgressDialog_Update) :int
  (obj :pointer)
  (value :int)
  (message :string))

(defcfun ("wxProgressDialog_Resume" wxProgressDialog_Resume) :void
  (obj :pointer))

(defcfun ("wxcDirSelector" wxcDirSelector) :lisp-string
  (message :string)
  (path :string)
  (style :long)
  (x :int)
  (y :int)
  (parent :pointer))

(defcfun ("wxcFileSelector" wxcFileSelector) :lisp-string
  (message :string)
  (path :string)
  (filename :string)
  (extension :string)
  (wildcard :string)
  (flags :int)
  (parent :pointer)
  (x :int)
  (y :int))

(defcfun ("wxcGetColourFromUser" wxcGetColourFromUser) :pointer
  (parent :pointer)
  (colInit :pointer))

(defcfun ("wxcGetFontFromUser" wxcGetFontFromUser) :pointer
  (parent :pointer)
  (fontInit :pointer))

(defcfun ("wxcGetPasswordFromUser" wxcGetPasswordFromUser) :lisp-string
  (message :string)
  (caption :string)
  (defaultText :string)
  (parent :pointer)
  (x :int)
  (y :int)
  (center :int))

(defcfun ("wxcGetTextFromUser" wxcGetTextFromUser) :lisp-string
  (message :string)
  (caption :string)
  (defaultText :string)
  (parent :pointer)
  (x :int)
  (y :int)
  (center :int))

(defcfun ("wxcGetNumberFromUser" wxcGetNumberFromUser) :long
  (message :string)
  (prompt :string)
  (caption :string)
  (value :long)
  (min :long)
  (max :long)
  (parent :pointer)
  (x :int)
  (y :int))

(defcfun ("wxcMessageBox" wxcMessageBox) :int
  (message :string)
  (caption :string)
  (style :int)
  (parent :pointer)
  (x :int)
  (y :int))

(defcfun ("wxcBell" wxcBell) :void)

(defcfun ("wxcBeginBusyCursor" wxcBeginBusyCursor) :void)

(defcfun ("wxcIsBusy" wxcIsBusy) :int)

(defcfun ("wxcEndBusyCursor" wxcEndBusyCursor) :void)

(defcfun ("wxInputSink_Create" wxInputSink_Create) :pointer
  (input :pointer)
  (evtHandler :pointer)
  (bufferLen :int))

(defcfun ("wxInputSink_GetId" wxInputSink_GetId) :int
  (obj :pointer))

(defcfun ("wxInputSink_Start" wxInputSink_Start) :void
  (obj :pointer))

(defcfun ("wxInputSinkEvent_LastError" wxInputSinkEvent_LastError) :int
  (obj :pointer))

(defcfun ("wxInputSinkEvent_LastRead" wxInputSinkEvent_LastRead) :int
  (obj :pointer))

(defcfun ("wxInputSinkEvent_LastInput" wxInputSinkEvent_LastInput) :lisp-string
  (obj :pointer))

(defcfun ("wxcHtmlEvent_GetMouseEvent" wxcHtmlEvent_GetMouseEvent) :pointer
  (_obj :pointer))

(defcfun ("wxcHtmlEvent_GetHtmlCell" wxcHtmlEvent_GetHtmlCell) :pointer
  (_obj :pointer))

(defcfun ("wxcHtmlEvent_GetHtmlCellId" wxcHtmlEvent_GetHtmlCellId) :pointer
  (_obj :pointer))

(defcfun ("wxcHtmlEvent_GetHref" wxcHtmlEvent_GetHref) :pointer
  (_obj :pointer))

(defcfun ("wxcHtmlEvent_GetTarget" wxcHtmlEvent_GetTarget) :pointer
  (_obj :pointer))

(defcfun ("wxcHtmlEvent_GetLogicalPosition" wxcHtmlEvent_GetLogicalPosition) :void
  (_obj :pointer)
  (x :int)
  (y :int))

(defcfun ("wxHtmlWindow_Create" wxHtmlWindow_Create) :pointer
  (_prt :pointer)
  (_id :int)
  (_lft :int)
  (_top :int)
  (_wdt :int)
  (_hgt :int)
  (_stl :long)
  (_txt :string))

(defcfun ("wxcHtmlWindow_Create" wxcHtmlWindow_Create) :pointer
  (_prt :pointer)
  (_id :int)
  (_lft :int)
  (_top :int)
  (_wdt :int)
  (_hgt :int)
  (_stl :long)
  (_txt :string))

(defcfun ("wxHtmlWindow_AppendToPage" wxHtmlWindow_AppendToPage) :int
  (_obj :pointer)
  (source :string))

(defcfun ("wxHtmlWindow_GetInternalRepresentation" wxHtmlWindow_GetInternalRepresentation) :pointer
  (_obj :pointer))

(defcfun ("wxHtmlWindow_GetOpenedAnchor" wxHtmlWindow_GetOpenedAnchor) :lisp-string
  (_obj :pointer))

(defcfun ("wxHtmlWindow_GetOpenedPage" wxHtmlWindow_GetOpenedPage) :lisp-string
  (_obj :pointer))

(defcfun ("wxHtmlWindow_GetOpenedPageTitle" wxHtmlWindow_GetOpenedPageTitle) :lisp-string
  (_obj :pointer))

(defcfun ("wxHtmlWindow_GetRelatedFrame" wxHtmlWindow_GetRelatedFrame) :pointer
  (_obj :pointer))

(defcfun ("wxHtmlWindow_HistoryBack" wxHtmlWindow_HistoryBack) :int
  (_obj :pointer))

(defcfun ("wxHtmlWindow_HistoryCanBack" wxHtmlWindow_HistoryCanBack) :int
  (_obj :pointer))

(defcfun ("wxHtmlWindow_HistoryCanForward" wxHtmlWindow_HistoryCanForward) :int
  (_obj :pointer))

(defcfun ("wxHtmlWindow_HistoryClear" wxHtmlWindow_HistoryClear) :void
  (_obj :pointer))

(defcfun ("wxHtmlWindow_HistoryForward" wxHtmlWindow_HistoryForward) :int
  (_obj :pointer))

(defcfun ("wxHtmlWindow_LoadPage" wxHtmlWindow_LoadPage) :int
  (_obj :pointer)
  (location :string))

(defcfun ("wxHtmlWindow_ReadCustomization" wxHtmlWindow_ReadCustomization) :void
  (_obj :pointer)
  (cfg :pointer)
  (path :string))

(defcfun ("wxHtmlWindow_SetBorders" wxHtmlWindow_SetBorders) :void
  (_obj :pointer)
  (b :int))

(defcfun ("wxHtmlWindow_SetFonts" wxHtmlWindow_SetFonts) :void
  (_obj :pointer)
  (normal_face :string)
  (fixed_face :string)
  (sizes :int))

(defcfun ("wxHtmlWindow_SetPage" wxHtmlWindow_SetPage) :int
  (_obj :pointer)
  (source :string))

(defcfun ("wxHtmlWindow_SetRelatedFrame" wxHtmlWindow_SetRelatedFrame) :void
  (_obj :pointer)
  (frame :pointer)
  (format :string))

(defcfun ("wxHtmlWindow_SetRelatedStatusBar" wxHtmlWindow_SetRelatedStatusBar) :void
  (_obj :pointer)
  (bar :int))

(defcfun ("wxHtmlWindow_WriteCustomization" wxHtmlWindow_WriteCustomization) :void
  (_obj :pointer)
  (cfg :pointer)
  (path :string))

(defcfun ("wxLogStderr_Create" wxLogStderr_Create) :pointer)

(defcfun ("wxLogStderr_CreateStdOut" wxLogStderr_CreateStdOut) :pointer)

(defcfun ("wxLogNull_Create" wxLogNull_Create) :pointer)

(defcfun ("wxLogTextCtrl_Create" wxLogTextCtrl_Create) :pointer
  (text :pointer))

(defcfun ("wxLogWindow_Create" wxLogWindow_Create) :pointer
  (parent :pointer)
  (title :string)
  (showit :int)
  (passthrough :int))

(defcfun ("wxLogWindow_GetFrame" wxLogWindow_GetFrame) :pointer
  (obj :pointer))

(defcfun ("wxLog_Delete" wxLog_Delete) :void
  (_obj :pointer))

(defcfun ("wxLog_OnLog" wxLog_OnLog) :void
  (_obj :pointer)
  (level :int)
  (szString :pointer)
  (t :int))

(defcfun ("wxLog_Flush" wxLog_Flush) :void
  (_obj :pointer))

(defcfun ("wxLog_HasPendingMessages" wxLog_HasPendingMessages) :int
  (_obj :pointer))

(defcfun ("wxLog_FlushActive" wxLog_FlushActive) :void
  (_obj :pointer))

(defcfun ("wxLog_GetActiveTarget" wxLog_GetActiveTarget) :pointer)

(defcfun ("wxLog_SetActiveTarget" wxLog_SetActiveTarget) :pointer
  (pLogger :pointer))

(defcfun ("wxLog_Suspend" wxLog_Suspend) :void
  (_obj :pointer))

(defcfun ("wxLog_Resume" wxLog_Resume) :void
  (_obj :pointer))

(defcfun ("wxLog_SetVerbose" wxLog_SetVerbose) :void
  (_obj :pointer)
  (bVerbose :int))

(defcfun ("wxLog_DontCreateOnDemand" wxLog_DontCreateOnDemand) :void
  (_obj :pointer))

(defcfun ("wxLog_SetTraceMask" wxLog_SetTraceMask) :void
  (_obj :pointer)
  (ulMask :int))

(defcfun ("wxLog_AddTraceMask" wxLog_AddTraceMask) :void
  (_obj :pointer)
  (str :pointer))

(defcfun ("wxLog_RemoveTraceMask" wxLog_RemoveTraceMask) :void
  (_obj :pointer)
  (str :pointer))

(defcfun ("wxLog_SetTimestamp" wxLog_SetTimestamp) :void
  (_obj :pointer)
  (ts :pointer))

(defcfun ("wxLog_GetVerbose" wxLog_GetVerbose) :int
  (_obj :pointer))

(defcfun ("wxLog_GetTraceMask" wxLog_GetTraceMask) :int
  (_obj :pointer))

(defcfun ("wxLog_IsAllowedTraceMask" wxLog_IsAllowedTraceMask) :int
  (_obj :pointer)
  (mask :pointer))

(defcfun ("wxLog_GetTimestamp" wxLog_GetTimestamp) :pointer
  (_obj :pointer))

(defcfun ("LogError" LogError) :void
  (_msg :pointer))

(defcfun ("LogFatalError" LogFatalError) :void
  (_msg :pointer))

(defcfun ("LogWarning" LogWarning) :void
  (_msg :pointer))

(defcfun ("LogMessage" LogMessage) :void
  (_msg :pointer))

(defcfun ("LogVerbose" LogVerbose) :void
  (_msg :pointer))

(defcfun ("LogStatus" LogStatus) :void
  (_msg :pointer))

(defcfun ("LogSysError" LogSysError) :void
  (_msg :pointer))

(defcfun ("LogDebug" LogDebug) :void
  (_msg :pointer))

(defcfun ("LogTrace" LogTrace) :void
  (mask :pointer)
  (_msg :pointer))

(defcfun ("wxGridCellTextEnterEditor_Ctor" wxGridCellTextEnterEditor_Ctor) :pointer)

(defcfun ("wxConfigBase_Get" wxConfigBase_Get) :pointer)

(defcfun ("wxConfigBase_Set" wxConfigBase_Set) :void
  (self :pointer))

(defcfun ("wxFileConfig_Create" wxFileConfig_Create) :pointer
  (inp :pointer))

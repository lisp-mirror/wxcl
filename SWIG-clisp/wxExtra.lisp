;; This is an automatically generated file. 
;;Make changes as you feel are necessary (but remember if you try to regenerate this file, your changes will be lost). 

(defpackage :wxExtra
  (:use :common-lisp :ffi)
  (:export
	:wxVersionNumber
	:wxIsDefined
	:wxcMalloc
	:wxcFree
	:wxcSystemSettingsGetColour
	:wxcWakeUpIdle
	:wxCursor_Delete
	:wxDateTime_Delete
	:wxFrame_GetTitle
	:wxFrame_SetTitle
	:wxFrame_SetShape
	:wxFrame_ShowFullScreen
	:wxFrame_IsFullScreen
	:wxFrame_Centre
	:wxNotebook_AssignImageList
	:wxMenu_GetMenuBar
	:wxMenuBar_GetFrame
	:wxToolBar_AddTool2
	:wxListEvent_GetCacheFrom
	:wxListEvent_GetCacheTo
	:wxListCtrl_AssignImageList
	:wxListCtrl_GetColumn2
	:wxListCtrl_GetItem2
	:wxListCtrl_GetItemPosition2
	:make-SortData
	:SortData-id
	:SortData-closure
	:wxListCtrl_SortItems2
	:wxDC_GetPixel2
	:wxObject_IsKindOf
	:wxObject_GetClassInfo
	:wxObject_IsScrolledWindow
	:wxObject_Delete
	:wxString_Create
	:wxString_CreateLen
	:wxString_Delete
	:wxString_GetString
	:wxClassInfo_FindClass
	:wxClassInfo_GetClassNameEx
	:wxClassInfo_GetBaseClassName1
	:wxClassInfo_GetBaseClassName2
	:wxClassInfo_IsKindOfEx
	:wxClassInfo_GetSize
	:wxWindow_ConvertPixelsToDialogEx
	:wxWindow_ConvertDialogToPixelsEx
	:wxWindow_SetClientObject
	:wxWindow_SetVirtualSize
	:wxWindow_GetVirtualSize
	:wxWindow_FitInside
	:wxWindow_ClientToScreen
	:wxWindow_ScreenToClient2
	:wxcGetMousePosition
	:wxScrolledWindow_SetScrollRate
	:wxMouseEvent_GetWheelDelta
	:wxMouseEvent_GetWheelRotation
	:wxMouseEvent_GetButton
	:expEVT_MOUSEWHEEL
	:wxDC_GetUserScaleX
	:wxDC_GetUserScaleY
	:wxTimerEx_Create
	:wxTimerEx_Connect
	:wxTimerEx_GetClosure
	:wxMenuItem_CreateSeparator
	:wxMenuItem_CreateEx
	:wxMenu_AppendRadioItem
	:wxProcess_IsErrorAvailable
	:wxProcess_IsInputAvailable
	:wxProcess_IsInputOpened
	:wxProcess_Open
	:wxKill
	:wxStreamBase_Delete
	:wxTextCtrl_EmulateKeyPress
	:wxTextCtrl_GetDefaultStyle
	:wxTextCtrl_GetRange
	:wxTextCtrl_GetStringSelection
	:wxTextCtrl_IsMultiLine
	:wxTextCtrl_IsSingleLine
	:wxTextCtrl_SetDefaultStyle
	:wxTextCtrl_SetMaxLength
	:wxTextCtrl_SetStyle
	:wxTextAttr_CreateDefault
	:wxTextAttr_Create
	:wxTextAttr_Delete
	:wxTextAttr_GetBackgroundColour
	:wxTextAttr_GetFont
	:wxTextAttr_GetTextColour
	:wxTextAttr_HasBackgroundColour
	:wxTextAttr_HasFont
	:wxTextAttr_HasTextColour
	:wxTextAttr_IsDefault
	:wxTextAttr_SetTextColour
	:wxTextAttr_SetBackgroundColour
	:wxTextAttr_SetFont
	:wxProgressDialog_Create
	:wxProgressDialog_Update
	:wxProgressDialog_UpdateWithMessage
	:wxProgressDialog_Resume
	:wxGetColourFromUser
	:wxGetFontFromUser
	:wxGetPasswordFromUser
	:wxGetTextFromUser
	:wxGetNumberFromUser
	:wxcBell
	:wxcBeginBusyCursor
	:wxcIsBusy
	:wxcEndBusyCursor
	:wxInputSink_Create
	:wxInputSink_GetId
	:wxInputSink_Start
	:wxInputSinkEvent_LastError
	:wxInputSinkEvent_LastRead
	:wxInputSinkEvent_LastInput
	:wxcHtmlEvent_GetMouseEvent
	:wxcHtmlEvent_GetHtmlCell
	:wxcHtmlEvent_GetHtmlCellId
	:wxcHtmlEvent_GetHref
	:wxcHtmlEvent_GetTarget
	:wxcHtmlEvent_GetLogicalPosition
	:wxHtmlWindow_Create
	:wxcHtmlWindow_Create
	:wxHtmlWindow_AppendToPage
	:wxHtmlWindow_GetInternalRepresentation
	:wxHtmlWindow_GetOpenedAnchor
	:wxHtmlWindow_GetOpenedPage
	:wxHtmlWindow_GetOpenedPageTitle
	:wxHtmlWindow_GetRelatedFrame
	:wxHtmlWindow_HistoryBack
	:wxHtmlWindow_HistoryCanBack
	:wxHtmlWindow_HistoryCanForward
	:wxHtmlWindow_HistoryClear
	:wxHtmlWindow_HistoryForward
	:wxHtmlWindow_LoadPage
	:wxHtmlWindow_ReadCustomization
	:wxHtmlWindow_SetBorders
	:wxHtmlWindow_SetFonts
	:wxHtmlWindow_SetPage
	:wxHtmlWindow_SetRelatedFrame
	:wxHtmlWindow_SetRelatedStatusBar
	:wxHtmlWindow_WriteCustomization
	:wxLogStderr_Create
	:wxLogStderr_CreateStdOut
	:wxLogNull_Create
	:wxLogTextCtrl_Create
	:wxLogWindow_Create
	:wxLogWindow_GetFrame
	:wxLog_Delete
	:wxLog_OnLog
	:wxLog_Flush
	:wxLog_HasPendingMessages
	:wxLog_FlushActive
	:wxLog_GetActiveTarget
	:wxLog_SetActiveTarget
	:wxLog_Suspend
	:wxLog_Resume
	:wxLog_SetVerbose
	:wxLog_DontCreateOnDemand
	:wxLog_SetTraceMask
	:wxLog_AddTraceMask
	:wxLog_RemoveTraceMask
	:wxLog_SetTimestamp
	:wxLog_GetVerbose
	:wxLog_GetTraceMask
	:wxLog_IsAllowedTraceMask
	:wxLog_GetTimestamp
	:LogError
	:LogFatalError
	:LogWarning
	:LogMessage
	:LogVerbose
	:LogStatus
	:LogSysError
	:LogDebug
	:LogTrace
	:wxGridCellTextEnterEditor_Ctor
	:wxConfigBase_Get
	:wxConfigBase_Set
	:wxFileConfig_Create))

(in-package :wxExtra)

(default-foreign-language :stdc)

(ffi:def-call-out wxVersionNumber
	(:name "wxVersionNumber")
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxIsDefined
	(:name "wxIsDefined")
	(:arguments (s ffi:c-string))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxcMalloc
	(:name "wxcMalloc")
	(:arguments (size ffi:int))
	(:return-type (ffi:c-pointer NIL))
	(:library +library-name+))

(ffi:def-call-out wxcFree
	(:name "wxcFree")
	(:arguments (p (ffi:c-pointer NIL)))
	(:library +library-name+))

(ffi:def-call-out wxcSystemSettingsGetColour
	(:name "wxcSystemSettingsGetColour")
	(:arguments (systemColour ffi:int))
	(:return-type (ffi:c-pointer wxColour))
	(:library +library-name+))

(ffi:def-call-out wxcWakeUpIdle
	(:name "wxcWakeUpIdle")
	(:library +library-name+))

(ffi:def-call-out wxCursor_Delete
	(:name "wxCursor_Delete")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:library +library-name+))

(ffi:def-call-out wxDateTime_Delete
	(:name "wxDateTime_Delete")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:library +library-name+))

(ffi:def-call-out wxFrame_GetTitle
	(:name "wxFrame_GetTitle")
	(:arguments (_obj (ffi:c-pointer NIL))
		(_buf (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxFrame_SetTitle
	(:name "wxFrame_SetTitle")
	(:arguments (_obj (ffi:c-pointer NIL))
		(_txt ffi:c-string))
	(:library +library-name+))

(ffi:def-call-out wxFrame_SetShape
	(:name "wxFrame_SetShape")
	(:arguments (self (ffi:c-pointer wxFrame))
		(region (ffi:c-pointer wxRegion)))
	(:return-type bool)
	(:library +library-name+))

(ffi:def-call-out wxFrame_ShowFullScreen
	(:name "wxFrame_ShowFullScreen")
	(:arguments (self (ffi:c-pointer wxFrame))
		(show bool)
		(style ffi:int))
	(:return-type bool)
	(:library +library-name+))

(ffi:def-call-out wxFrame_IsFullScreen
	(:name "wxFrame_IsFullScreen")
	(:arguments (self (ffi:c-pointer wxFrame)))
	(:return-type bool)
	(:library +library-name+))

(ffi:def-call-out wxFrame_Centre
	(:name "wxFrame_Centre")
	(:arguments (self (ffi:c-pointer wxFrame))
		(orientation ffi:int))
	(:library +library-name+))

(ffi:def-call-out wxNotebook_AssignImageList
	(:name "wxNotebook_AssignImageList")
	(:arguments (_obj (ffi:c-pointer wxNotebook))
		(imageList (ffi:c-pointer wxImageList)))
	(:library +library-name+))

(ffi:def-call-out wxMenu_GetMenuBar
	(:name "wxMenu_GetMenuBar")
	(:arguments (_obj (ffi:c-pointer wxMenu)))
	(:return-type (ffi:c-pointer wxMenuBar))
	(:library +library-name+))

(ffi:def-call-out wxMenuBar_GetFrame
	(:name "wxMenuBar_GetFrame")
	(:arguments (_obj (ffi:c-pointer wxMenuBar)))
	(:return-type (ffi:c-pointer wxFrame))
	(:library +library-name+))

(ffi:def-call-out wxToolBar_AddTool2
	(:name "wxToolBar_AddTool2")
	(:arguments (_obj (ffi:c-pointer wxToolBar))
		(toolId ffi:int)
		(label ffi:c-string)
		(bmp (ffi:c-pointer wxBitmap))
		(bmpDisabled (ffi:c-pointer wxBitmap))
		(itemKind ffi:int)
		(shortHelp ffi:c-string)
		(longHelp ffi:c-string))
	(:library +library-name+))

(ffi:def-call-out wxListEvent_GetCacheFrom
	(:name "wxListEvent_GetCacheFrom")
	(:arguments (_obj (ffi:c-pointer wxListEvent)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxListEvent_GetCacheTo
	(:name "wxListEvent_GetCacheTo")
	(:arguments (_obj (ffi:c-pointer wxListEvent)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxListCtrl_AssignImageList
	(:name "wxListCtrl_AssignImageList")
	(:arguments (_obj (ffi:c-pointer wxListCtrl))
		(images (ffi:c-pointer wxImageList))
		(which ffi:int))
	(:library +library-name+))

(ffi:def-call-out wxListCtrl_GetColumn2
	(:name "wxListCtrl_GetColumn2")
	(:arguments (_obj (ffi:c-pointer wxListCtrl))
		(col ffi:int)
		(item (ffi:c-pointer wxListItem)))
	(:library +library-name+))

(ffi:def-call-out wxListCtrl_GetItem2
	(:name "wxListCtrl_GetItem2")
	(:arguments (_obj (ffi:c-pointer wxListCtrl))
		(info (ffi:c-pointer wxListItem)))
	(:library +library-name+))

(ffi:def-call-out wxListCtrl_GetItemPosition2
	(:name "wxListCtrl_GetItemPosition2")
	(:arguments (_obj (ffi:c-pointer wxListCtrl))
		(item ffi:int)
		(x (ffi:c-ptr ffi:int))
		(y (ffi:c-ptr ffi:int)))
	(:library +library-name+))

(ffi:def-c-struct SortData
	(id ffi:long)
	(closure (ffi:c-pointer wxClosure)))

(ffi:def-call-out wxListCtrl_SortItems2
	(:name "wxListCtrl_SortItems2")
	(:arguments (_obj (ffi:c-pointer wxListCtrl))
		(closure (ffi:c-pointer wxClosure)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxDC_GetPixel2
	(:name "wxDC_GetPixel2")
	(:arguments (_obj (ffi:c-pointer wxDC))
		(x ffi:int)
		(y ffi:int)
		(col (ffi:c-pointer wxColour)))
	(:library +library-name+))

(ffi:def-call-out wxObject_IsKindOf
	(:name "wxObject_IsKindOf")
	(:arguments (_obj (ffi:c-pointer NIL))
		(classInfo (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxObject_GetClassInfo
	(:name "wxObject_GetClassInfo")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type (ffi:c-pointer NIL))
	(:library +library-name+))

(ffi:def-call-out wxObject_IsScrolledWindow
	(:name "wxObject_IsScrolledWindow")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxObject_Delete
	(:name "wxObject_Delete")
	(:arguments (_obj (ffi:c-pointer wxObject)))
	(:library +library-name+))

(ffi:def-call-out wxString_Create
	(:name "wxString_Create")
	(:arguments (buffer ffi:c-string))
	(:return-type (ffi:c-pointer wxString))
	(:library +library-name+))

(ffi:def-call-out wxString_CreateLen
	(:name "wxString_CreateLen")
	(:arguments (buffer ffi:c-string)
		(len ffi:int))
	(:return-type (ffi:c-pointer wxString))
	(:library +library-name+))

(ffi:def-call-out wxString_Delete
	(:name "wxString_Delete")
	(:arguments (s (ffi:c-pointer wxString)))
	(:library +library-name+))

(ffi:def-call-out wxString_GetString
	(:name "wxString_GetString")
	(:arguments (s (ffi:c-pointer wxString))
		(buffer ffi:c-string))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxClassInfo_FindClass
	(:name "wxClassInfo_FindClass")
	(:arguments (_txt ffi:c-string))
	(:return-type (ffi:c-pointer NIL))
	(:library +library-name+))

(ffi:def-call-out wxClassInfo_GetClassNameEx
	(:name "wxClassInfo_GetClassNameEx")
	(:arguments (_obj (ffi:c-pointer NIL))
		(_buf (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxClassInfo_GetBaseClassName1
	(:name "wxClassInfo_GetBaseClassName1")
	(:arguments (_obj (ffi:c-pointer NIL))
		(_buf (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxClassInfo_GetBaseClassName2
	(:name "wxClassInfo_GetBaseClassName2")
	(:arguments (_obj (ffi:c-pointer NIL))
		(_buf (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxClassInfo_IsKindOfEx
	(:name "wxClassInfo_IsKindOfEx")
	(:arguments (_obj (ffi:c-pointer NIL))
		(classInfo (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxClassInfo_GetSize
	(:name "wxClassInfo_GetSize")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxWindow_ConvertPixelsToDialogEx
	(:name "wxWindow_ConvertPixelsToDialogEx")
	(:arguments (_obj (ffi:c-pointer NIL))
		(x ffi:int)
		(y ffi:int)
		(_x (ffi:c-ptr ffi:int))
		(_y (ffi:c-ptr ffi:int)))
	(:library +library-name+))

(ffi:def-call-out wxWindow_ConvertDialogToPixelsEx
	(:name "wxWindow_ConvertDialogToPixelsEx")
	(:arguments (_obj (ffi:c-pointer NIL))
		(x ffi:int)
		(y ffi:int)
		(_x (ffi:c-ptr ffi:int))
		(_y (ffi:c-ptr ffi:int)))
	(:library +library-name+))

(ffi:def-call-out wxWindow_SetClientObject
	(:name "wxWindow_SetClientObject")
	(:arguments (_obj (ffi:c-pointer NIL))
		(obj (ffi:c-pointer NIL)))
	(:library +library-name+))

(ffi:def-call-out wxWindow_SetVirtualSize
	(:name "wxWindow_SetVirtualSize")
	(:arguments (_obj (ffi:c-pointer NIL))
		(w ffi:int)
		(h ffi:int))
	(:library +library-name+))

(ffi:def-call-out wxWindow_GetVirtualSize
	(:name "wxWindow_GetVirtualSize")
	(:arguments (_obj (ffi:c-pointer NIL))
		(w (ffi:c-ptr ffi:int))
		(h (ffi:c-ptr ffi:int)))
	(:library +library-name+))

(ffi:def-call-out wxWindow_FitInside
	(:name "wxWindow_FitInside")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:library +library-name+))

(ffi:def-call-out wxWindow_ClientToScreen
	(:name "wxWindow_ClientToScreen")
	(:arguments (self (ffi:c-pointer wxWindow))
		(x ffi:int)
		(y ffi:int)
		(sx (ffi:c-ptr ffi:int))
		(sy (ffi:c-ptr ffi:int)))
	(:library +library-name+))

(ffi:def-call-out wxWindow_ScreenToClient2
	(:name "wxWindow_ScreenToClient2")
	(:arguments (self (ffi:c-pointer wxWindow))
		(x ffi:int)
		(y ffi:int)
		(cx (ffi:c-ptr ffi:int))
		(cy (ffi:c-ptr ffi:int)))
	(:library +library-name+))

(ffi:def-call-out wxcGetMousePosition
	(:name "wxcGetMousePosition")
	(:arguments (x (ffi:c-ptr ffi:int))
		(y (ffi:c-ptr ffi:int)))
	(:library +library-name+))

(ffi:def-call-out wxScrolledWindow_SetScrollRate
	(:name "wxScrolledWindow_SetScrollRate")
	(:arguments (_obj (ffi:c-pointer wxScrolledWindow))
		(xstep ffi:int)
		(ystep ffi:int))
	(:library +library-name+))

(ffi:def-call-out wxMouseEvent_GetWheelDelta
	(:name "wxMouseEvent_GetWheelDelta")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxMouseEvent_GetWheelRotation
	(:name "wxMouseEvent_GetWheelRotation")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxMouseEvent_GetButton
	(:name "wxMouseEvent_GetButton")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out expEVT_MOUSEWHEEL
	(:name "expEVT_MOUSEWHEEL")
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxDC_GetUserScaleX
	(:name "wxDC_GetUserScaleX")
	(:arguments (dc (ffi:c-pointer wxDC)))
	(:return-type DOUBLE-FLOAT)
	(:library +library-name+))

(ffi:def-call-out wxDC_GetUserScaleY
	(:name "wxDC_GetUserScaleY")
	(:arguments (dc (ffi:c-pointer wxDC)))
	(:return-type DOUBLE-FLOAT)
	(:library +library-name+))

(ffi:def-call-out wxTimerEx_Create
	(:name "wxTimerEx_Create")
	(:return-type (ffi:c-pointer NIL))
	(:library +library-name+))

(ffi:def-call-out wxTimerEx_Connect
	(:name "wxTimerEx_Connect")
	(:arguments (_obj (ffi:c-pointer NIL))
		(_closure (ffi:c-pointer NIL)))
	(:library +library-name+))

(ffi:def-call-out wxTimerEx_GetClosure
	(:name "wxTimerEx_GetClosure")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type (ffi:c-pointer NIL))
	(:library +library-name+))

(ffi:def-call-out wxMenuItem_CreateSeparator
	(:name "wxMenuItem_CreateSeparator")
	(:return-type (ffi:c-pointer NIL))
	(:library +library-name+))

(ffi:def-call-out wxMenuItem_CreateEx
	(:name "wxMenuItem_CreateEx")
	(:arguments (id ffi:int)
		(text ffi:c-string)
		(helpstr ffi:c-string)
		(itemkind ffi:int)
		(submenu (ffi:c-pointer NIL)))
	(:return-type (ffi:c-pointer NIL))
	(:library +library-name+))

(ffi:def-call-out wxMenu_AppendRadioItem
	(:name "wxMenu_AppendRadioItem")
	(:arguments (self (ffi:c-pointer wxMenu))
		(id ffi:int)
		(text ffi:c-string)
		(help ffi:c-string))
	(:library +library-name+))

(ffi:def-call-out wxProcess_IsErrorAvailable
	(:name "wxProcess_IsErrorAvailable")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxProcess_IsInputAvailable
	(:name "wxProcess_IsInputAvailable")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxProcess_IsInputOpened
	(:name "wxProcess_IsInputOpened")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxProcess_Open
	(:name "wxProcess_Open")
	(:arguments (cmd ffi:c-string)
		(flags ffi:int))
	(:return-type (ffi:c-pointer wxProcess))
	(:library +library-name+))

(ffi:def-call-out wxKill
	(:name "wxKill")
	(:arguments (pid ffi:int)
		(signal wxSignal))
	(:return-type wxKillError)
	(:library +library-name+))

(ffi:def-call-out wxStreamBase_Delete
	(:name "wxStreamBase_Delete")
	(:arguments (stream (ffi:c-pointer wxStreamBase)))
	(:library +library-name+))

(ffi:def-call-out wxTextCtrl_EmulateKeyPress
	(:name "wxTextCtrl_EmulateKeyPress")
	(:arguments (_obj (ffi:c-pointer NIL))
		(keyevent (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxTextCtrl_GetDefaultStyle
	(:name "wxTextCtrl_GetDefaultStyle")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type (ffi:c-pointer NIL))
	(:library +library-name+))

(ffi:def-call-out wxTextCtrl_GetRange
	(:name "wxTextCtrl_GetRange")
	(:arguments (_obj (ffi:c-pointer NIL))
		(from ffi:long)
		(to ffi:long)
		(_buf (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxTextCtrl_GetStringSelection
	(:name "wxTextCtrl_GetStringSelection")
	(:arguments (_obj (ffi:c-pointer NIL))
		(_buf (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxTextCtrl_IsMultiLine
	(:name "wxTextCtrl_IsMultiLine")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxTextCtrl_IsSingleLine
	(:name "wxTextCtrl_IsSingleLine")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxTextCtrl_SetDefaultStyle
	(:name "wxTextCtrl_SetDefaultStyle")
	(:arguments (_obj (ffi:c-pointer NIL))
		(style (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxTextCtrl_SetMaxLength
	(:name "wxTextCtrl_SetMaxLength")
	(:arguments (_obj (ffi:c-pointer NIL))
		(len ffi:long))
	(:library +library-name+))

(ffi:def-call-out wxTextCtrl_SetStyle
	(:name "wxTextCtrl_SetStyle")
	(:arguments (_obj (ffi:c-pointer NIL))
		(start ffi:long)
		(end ffi:long)
		(style (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxTextAttr_CreateDefault
	(:name "wxTextAttr_CreateDefault")
	(:return-type (ffi:c-pointer wxTextAttr))
	(:library +library-name+))

(ffi:def-call-out wxTextAttr_Create
	(:name "wxTextAttr_Create")
	(:arguments (colText (ffi:c-pointer NIL))
		(colBack (ffi:c-pointer NIL))
		(font (ffi:c-pointer NIL)))
	(:return-type (ffi:c-pointer NIL))
	(:library +library-name+))

(ffi:def-call-out wxTextAttr_Delete
	(:name "wxTextAttr_Delete")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:library +library-name+))

(ffi:def-call-out wxTextAttr_GetBackgroundColour
	(:name "wxTextAttr_GetBackgroundColour")
	(:arguments (_obj (ffi:c-pointer wxTextAttr))
		(colour (ffi:c-pointer wxColour)))
	(:library +library-name+))

(ffi:def-call-out wxTextAttr_GetFont
	(:name "wxTextAttr_GetFont")
	(:arguments (_obj (ffi:c-pointer wxTextAttr))
		(font (ffi:c-pointer wxFont)))
	(:library +library-name+))

(ffi:def-call-out wxTextAttr_GetTextColour
	(:name "wxTextAttr_GetTextColour")
	(:arguments (_obj (ffi:c-pointer wxTextAttr))
		(colour (ffi:c-pointer wxColour)))
	(:library +library-name+))

(ffi:def-call-out wxTextAttr_HasBackgroundColour
	(:name "wxTextAttr_HasBackgroundColour")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxTextAttr_HasFont
	(:name "wxTextAttr_HasFont")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxTextAttr_HasTextColour
	(:name "wxTextAttr_HasTextColour")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxTextAttr_IsDefault
	(:name "wxTextAttr_IsDefault")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxTextAttr_SetTextColour
	(:name "wxTextAttr_SetTextColour")
	(:arguments (_obj (ffi:c-pointer wxTextAttr))
		(colour (ffi:c-pointer wxColour)))
	(:library +library-name+))

(ffi:def-call-out wxTextAttr_SetBackgroundColour
	(:name "wxTextAttr_SetBackgroundColour")
	(:arguments (_obj (ffi:c-pointer wxTextAttr))
		(colour (ffi:c-pointer wxColour)))
	(:library +library-name+))

(ffi:def-call-out wxTextAttr_SetFont
	(:name "wxTextAttr_SetFont")
	(:arguments (_obj (ffi:c-pointer wxTextAttr))
		(font (ffi:c-pointer wxFont)))
	(:library +library-name+))

(ffi:def-call-out wxProgressDialog_Create
	(:name "wxProgressDialog_Create")
	(:arguments (title ffi:c-string)
		(message ffi:c-string)
		(max ffi:int)
		(parent (ffi:c-pointer wxWindow))
		(style ffi:int))
	(:return-type (ffi:c-pointer wxProgressDialog))
	(:library +library-name+))

(ffi:def-call-out wxProgressDialog_Update
	(:name "wxProgressDialog_Update")
	(:arguments (obj (ffi:c-pointer wxProgressDialog))
		(value ffi:int))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxProgressDialog_UpdateWithMessage
	(:name "wxProgressDialog_UpdateWithMessage")
	(:arguments (obj (ffi:c-pointer wxProgressDialog))
		(value ffi:int)
		(message ffi:c-string))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxProgressDialog_Resume
	(:name "wxProgressDialog_Resume")
	(:arguments (obj (ffi:c-pointer wxProgressDialog)))
	(:library +library-name+))

(ffi:def-call-out wxGetColourFromUser
	(:name "wxGetColourFromUser")
	(:arguments (parent (ffi:c-pointer wxWindow))
		(colInit (ffi:c-pointer wxColour))
		(colour (ffi:c-pointer wxColour)))
	(:library +library-name+))

(ffi:def-call-out wxGetFontFromUser
	(:name "wxGetFontFromUser")
	(:arguments (parent (ffi:c-pointer wxWindow))
		(fontInit (ffi:c-pointer wxFont))
		(font (ffi:c-pointer wxFont)))
	(:library +library-name+))

(ffi:def-call-out wxGetPasswordFromUser
	(:name "wxGetPasswordFromUser")
	(:arguments (message ffi:c-string)
		(caption ffi:c-string)
		(defaultText ffi:c-string)
		(parent (ffi:c-pointer wxWindow))
		(_buf ffi:c-string))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxGetTextFromUser
	(:name "wxGetTextFromUser")
	(:arguments (message ffi:c-string)
		(caption ffi:c-string)
		(defaultText ffi:c-string)
		(parent (ffi:c-pointer wxWindow))
		(x ffi:int)
		(y ffi:int)
		(center ffi:int)
		(_buf ffi:c-string))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxGetNumberFromUser
	(:name "wxGetNumberFromUser")
	(:arguments (message ffi:c-string)
		(prompt ffi:c-string)
		(caption ffi:c-string)
		(value ffi:long)
		(min ffi:long)
		(max ffi:long)
		(parent (ffi:c-pointer wxWindow))
		(x ffi:int)
		(y ffi:int))
	(:return-type ffi:long)
	(:library +library-name+))

(ffi:def-call-out wxcBell
	(:name "wxcBell")
	(:library +library-name+))

(ffi:def-call-out wxcBeginBusyCursor
	(:name "wxcBeginBusyCursor")
	(:library +library-name+))

(ffi:def-call-out wxcIsBusy
	(:name "wxcIsBusy")
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxcEndBusyCursor
	(:name "wxcEndBusyCursor")
	(:library +library-name+))

(ffi:def-call-out wxInputSink_Create
	(:name "wxInputSink_Create")
	(:arguments (input (ffi:c-pointer wxInputStream))
		(evtHandler (ffi:c-pointer wxEvtHandler))
		(bufferLen ffi:int))
	(:return-type (ffi:c-pointer wxInputSink))
	(:library +library-name+))

(ffi:def-call-out wxInputSink_GetId
	(:name "wxInputSink_GetId")
	(:arguments (obj (ffi:c-pointer wxInputSink)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxInputSink_Start
	(:name "wxInputSink_Start")
	(:arguments (obj (ffi:c-pointer wxInputSink)))
	(:library +library-name+))

(ffi:def-call-out wxInputSinkEvent_LastError
	(:name "wxInputSinkEvent_LastError")
	(:arguments (obj (ffi:c-pointer wxInputSinkEvent)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxInputSinkEvent_LastRead
	(:name "wxInputSinkEvent_LastRead")
	(:arguments (obj (ffi:c-pointer wxInputSinkEvent)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxInputSinkEvent_LastInput
	(:name "wxInputSinkEvent_LastInput")
	(:arguments (obj (ffi:c-pointer wxInputSinkEvent)))
	(:return-type ffi:c-string)
	(:library +library-name+))

(ffi:def-call-out wxcHtmlEvent_GetMouseEvent
	(:name "wxcHtmlEvent_GetMouseEvent")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type (ffi:c-pointer NIL))
	(:library +library-name+))

(ffi:def-call-out wxcHtmlEvent_GetHtmlCell
	(:name "wxcHtmlEvent_GetHtmlCell")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type (ffi:c-pointer NIL))
	(:library +library-name+))

(ffi:def-call-out wxcHtmlEvent_GetHtmlCellId
	(:name "wxcHtmlEvent_GetHtmlCellId")
	(:arguments (_obj (ffi:c-pointer wxcHtmlEvent)))
	(:return-type (ffi:c-pointer wxString))
	(:library +library-name+))

(ffi:def-call-out wxcHtmlEvent_GetHref
	(:name "wxcHtmlEvent_GetHref")
	(:arguments (_obj (ffi:c-pointer wxcHtmlEvent)))
	(:return-type (ffi:c-pointer wxString))
	(:library +library-name+))

(ffi:def-call-out wxcHtmlEvent_GetTarget
	(:name "wxcHtmlEvent_GetTarget")
	(:arguments (_obj (ffi:c-pointer wxcHtmlEvent)))
	(:return-type (ffi:c-pointer wxString))
	(:library +library-name+))

(ffi:def-call-out wxcHtmlEvent_GetLogicalPosition
	(:name "wxcHtmlEvent_GetLogicalPosition")
	(:arguments (_obj (ffi:c-pointer wxcHtmlEvent))
		(x (ffi:c-ptr ffi:int))
		(y (ffi:c-ptr ffi:int)))
	(:library +library-name+))

(ffi:def-call-out wxHtmlWindow_Create
	(:name "wxHtmlWindow_Create")
	(:arguments (_prt (ffi:c-pointer NIL))
		(_id ffi:int)
		(_lft ffi:int)
		(_top ffi:int)
		(_wdt ffi:int)
		(_hgt ffi:int)
		(_stl ffi:long)
		(_txt ffi:c-string))
	(:return-type (ffi:c-pointer NIL))
	(:library +library-name+))

(ffi:def-call-out wxcHtmlWindow_Create
	(:name "wxcHtmlWindow_Create")
	(:arguments (_prt (ffi:c-pointer NIL))
		(_id ffi:int)
		(_lft ffi:int)
		(_top ffi:int)
		(_wdt ffi:int)
		(_hgt ffi:int)
		(_stl ffi:long)
		(_txt ffi:c-string))
	(:return-type (ffi:c-pointer NIL))
	(:library +library-name+))

(ffi:def-call-out wxHtmlWindow_AppendToPage
	(:name "wxHtmlWindow_AppendToPage")
	(:arguments (_obj (ffi:c-pointer NIL))
		(source ffi:c-string))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxHtmlWindow_GetInternalRepresentation
	(:name "wxHtmlWindow_GetInternalRepresentation")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type (ffi:c-pointer NIL))
	(:library +library-name+))

(ffi:def-call-out wxHtmlWindow_GetOpenedAnchor
	(:name "wxHtmlWindow_GetOpenedAnchor")
	(:arguments (_obj (ffi:c-pointer NIL))
		(_buf (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxHtmlWindow_GetOpenedPage
	(:name "wxHtmlWindow_GetOpenedPage")
	(:arguments (_obj (ffi:c-pointer NIL))
		(_buf (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxHtmlWindow_GetOpenedPageTitle
	(:name "wxHtmlWindow_GetOpenedPageTitle")
	(:arguments (_obj (ffi:c-pointer NIL))
		(_buf (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxHtmlWindow_GetRelatedFrame
	(:name "wxHtmlWindow_GetRelatedFrame")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type (ffi:c-pointer NIL))
	(:library +library-name+))

(ffi:def-call-out wxHtmlWindow_HistoryBack
	(:name "wxHtmlWindow_HistoryBack")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxHtmlWindow_HistoryCanBack
	(:name "wxHtmlWindow_HistoryCanBack")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxHtmlWindow_HistoryCanForward
	(:name "wxHtmlWindow_HistoryCanForward")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxHtmlWindow_HistoryClear
	(:name "wxHtmlWindow_HistoryClear")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:library +library-name+))

(ffi:def-call-out wxHtmlWindow_HistoryForward
	(:name "wxHtmlWindow_HistoryForward")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxHtmlWindow_LoadPage
	(:name "wxHtmlWindow_LoadPage")
	(:arguments (_obj (ffi:c-pointer NIL))
		(location ffi:c-string))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxHtmlWindow_ReadCustomization
	(:name "wxHtmlWindow_ReadCustomization")
	(:arguments (_obj (ffi:c-pointer NIL))
		(cfg (ffi:c-pointer NIL))
		(path ffi:c-string))
	(:library +library-name+))

(ffi:def-call-out wxHtmlWindow_SetBorders
	(:name "wxHtmlWindow_SetBorders")
	(:arguments (_obj (ffi:c-pointer NIL))
		(b ffi:int))
	(:library +library-name+))

(ffi:def-call-out wxHtmlWindow_SetFonts
	(:name "wxHtmlWindow_SetFonts")
	(:arguments (_obj (ffi:c-pointer NIL))
		(normal_face ffi:c-string)
		(fixed_face ffi:c-string)
		(sizes (ffi:c-ptr ffi:int)))
	(:library +library-name+))

(ffi:def-call-out wxHtmlWindow_SetPage
	(:name "wxHtmlWindow_SetPage")
	(:arguments (_obj (ffi:c-pointer NIL))
		(source ffi:c-string))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxHtmlWindow_SetRelatedFrame
	(:name "wxHtmlWindow_SetRelatedFrame")
	(:arguments (_obj (ffi:c-pointer NIL))
		(frame (ffi:c-pointer NIL))
		(format ffi:c-string))
	(:library +library-name+))

(ffi:def-call-out wxHtmlWindow_SetRelatedStatusBar
	(:name "wxHtmlWindow_SetRelatedStatusBar")
	(:arguments (_obj (ffi:c-pointer NIL))
		(bar ffi:int))
	(:library +library-name+))

(ffi:def-call-out wxHtmlWindow_WriteCustomization
	(:name "wxHtmlWindow_WriteCustomization")
	(:arguments (_obj (ffi:c-pointer NIL))
		(cfg (ffi:c-pointer NIL))
		(path ffi:c-string))
	(:library +library-name+))

(ffi:def-call-out wxLogStderr_Create
	(:name "wxLogStderr_Create")
	(:return-type (ffi:c-pointer wxLogStderr))
	(:library +library-name+))

(ffi:def-call-out wxLogStderr_CreateStdOut
	(:name "wxLogStderr_CreateStdOut")
	(:return-type (ffi:c-pointer wxLogStderr))
	(:library +library-name+))

(ffi:def-call-out wxLogNull_Create
	(:name "wxLogNull_Create")
	(:return-type (ffi:c-pointer wxLogNull))
	(:library +library-name+))

(ffi:def-call-out wxLogTextCtrl_Create
	(:name "wxLogTextCtrl_Create")
	(:arguments (text (ffi:c-pointer wxTextCtrl)))
	(:return-type (ffi:c-pointer wxLogTextCtrl))
	(:library +library-name+))

(ffi:def-call-out wxLogWindow_Create
	(:name "wxLogWindow_Create")
	(:arguments (parent (ffi:c-pointer wxFrame))
		(title ffi:c-string)
		(showit ffi:int)
		(passthrough ffi:int))
	(:return-type (ffi:c-pointer wxLogWindow))
	(:library +library-name+))

(ffi:def-call-out wxLogWindow_GetFrame
	(:name "wxLogWindow_GetFrame")
	(:arguments (obj (ffi:c-pointer wxLogWindow)))
	(:return-type (ffi:c-pointer wxFrame))
	(:library +library-name+))

(ffi:def-call-out wxLog_Delete
	(:name "wxLog_Delete")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:library +library-name+))

(ffi:def-call-out wxLog_OnLog
	(:name "wxLog_OnLog")
	(:arguments (_obj (ffi:c-pointer NIL))
		(level ffi:int)
		(szString (ffi:c-pointer NIL))
		(t ffi:int))
	(:library +library-name+))

(ffi:def-call-out wxLog_Flush
	(:name "wxLog_Flush")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:library +library-name+))

(ffi:def-call-out wxLog_HasPendingMessages
	(:name "wxLog_HasPendingMessages")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxLog_FlushActive
	(:name "wxLog_FlushActive")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:library +library-name+))

(ffi:def-call-out wxLog_GetActiveTarget
	(:name "wxLog_GetActiveTarget")
	(:return-type (ffi:c-pointer NIL))
	(:library +library-name+))

(ffi:def-call-out wxLog_SetActiveTarget
	(:name "wxLog_SetActiveTarget")
	(:arguments (pLogger (ffi:c-pointer NIL)))
	(:return-type (ffi:c-pointer NIL))
	(:library +library-name+))

(ffi:def-call-out wxLog_Suspend
	(:name "wxLog_Suspend")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:library +library-name+))

(ffi:def-call-out wxLog_Resume
	(:name "wxLog_Resume")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:library +library-name+))

(ffi:def-call-out wxLog_SetVerbose
	(:name "wxLog_SetVerbose")
	(:arguments (_obj (ffi:c-pointer NIL))
		(bVerbose ffi:int))
	(:library +library-name+))

(ffi:def-call-out wxLog_DontCreateOnDemand
	(:name "wxLog_DontCreateOnDemand")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:library +library-name+))

(ffi:def-call-out wxLog_SetTraceMask
	(:name "wxLog_SetTraceMask")
	(:arguments (_obj (ffi:c-pointer NIL))
		(ulMask ffi:int))
	(:library +library-name+))

(ffi:def-call-out wxLog_AddTraceMask
	(:name "wxLog_AddTraceMask")
	(:arguments (_obj (ffi:c-pointer NIL))
		(str (ffi:c-pointer NIL)))
	(:library +library-name+))

(ffi:def-call-out wxLog_RemoveTraceMask
	(:name "wxLog_RemoveTraceMask")
	(:arguments (_obj (ffi:c-pointer NIL))
		(str (ffi:c-pointer NIL)))
	(:library +library-name+))

(ffi:def-call-out wxLog_SetTimestamp
	(:name "wxLog_SetTimestamp")
	(:arguments (_obj (ffi:c-pointer NIL))
		(ts (ffi:c-pointer NIL)))
	(:library +library-name+))

(ffi:def-call-out wxLog_GetVerbose
	(:name "wxLog_GetVerbose")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxLog_GetTraceMask
	(:name "wxLog_GetTraceMask")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxLog_IsAllowedTraceMask
	(:name "wxLog_IsAllowedTraceMask")
	(:arguments (_obj (ffi:c-pointer NIL))
		(mask (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxLog_GetTimestamp
	(:name "wxLog_GetTimestamp")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type (ffi:c-pointer NIL))
	(:library +library-name+))

(ffi:def-call-out LogError
	(:name "LogError")
	(:arguments (_msg (ffi:c-pointer NIL)))
	(:library +library-name+))

(ffi:def-call-out LogFatalError
	(:name "LogFatalError")
	(:arguments (_msg (ffi:c-pointer NIL)))
	(:library +library-name+))

(ffi:def-call-out LogWarning
	(:name "LogWarning")
	(:arguments (_msg (ffi:c-pointer NIL)))
	(:library +library-name+))

(ffi:def-call-out LogMessage
	(:name "LogMessage")
	(:arguments (_msg (ffi:c-pointer NIL)))
	(:library +library-name+))

(ffi:def-call-out LogVerbose
	(:name "LogVerbose")
	(:arguments (_msg (ffi:c-pointer NIL)))
	(:library +library-name+))

(ffi:def-call-out LogStatus
	(:name "LogStatus")
	(:arguments (_msg (ffi:c-pointer NIL)))
	(:library +library-name+))

(ffi:def-call-out LogSysError
	(:name "LogSysError")
	(:arguments (_msg (ffi:c-pointer NIL)))
	(:library +library-name+))

(ffi:def-call-out LogDebug
	(:name "LogDebug")
	(:arguments (_msg (ffi:c-pointer NIL)))
	(:library +library-name+))

(ffi:def-call-out LogTrace
	(:name "LogTrace")
	(:arguments (mask (ffi:c-pointer NIL))
		(_msg (ffi:c-pointer NIL)))
	(:library +library-name+))

(ffi:def-call-out wxGridCellTextEnterEditor_Ctor
	(:name "wxGridCellTextEnterEditor_Ctor")
	(:return-type (ffi:c-pointer wxGridCellTextEnterEditor))
	(:library +library-name+))

(ffi:def-call-out wxConfigBase_Get
	(:name "wxConfigBase_Get")
	(:return-type (ffi:c-pointer wxConfigBase))
	(:library +library-name+))

(ffi:def-call-out wxConfigBase_Set
	(:name "wxConfigBase_Set")
	(:arguments (self (ffi:c-pointer wxConfigBase)))
	(:library +library-name+))

(ffi:def-call-out wxFileConfig_Create
	(:name "wxFileConfig_Create")
	(:arguments (inp (ffi:c-pointer wxInputStream)))
	(:return-type (ffi:c-pointer wxFileConfig))
	(:library +library-name+))

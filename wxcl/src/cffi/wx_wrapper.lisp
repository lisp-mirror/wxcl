
(in-package :wxcl)

(defcvar ("idleTimer" idleTimer)
 :pointer)

; (defcfun ("initIdleTimer" initIdleTimer) :void)

; (defcfun ("doneIdleTimer" doneIdleTimer) :void)

(defcvar ("initClosure" initClosure)
 :pointer)

(defcvar ("APPTerminating" APPTerminating)
 :int)

(defcvar ("ELJApp" ELJApp)
 :pointer)

(defcvar ("getCallback" getCallback)
 :pointer)

(defcvar ("m_closure" m_closure)
 :pointer)

; (defcfun ("GetClosure" GetClosure) :pointer)

(defcfun ("wxEvtHandler_Connect" wxEvtHandler_Connect) :void
  (_obj :pointer)
  (first :int)
  (last :int)
  (type :int)
  (closure :pointer))

(defcfun ("wxEvtHandler_GetClosure" wxEvtHandler_GetClosure) :pointer
  (evtHandler :pointer)
  (id :int)
  (type :int))

(defcfun ("wxClosure_Create" wxClosure_Create) :pointer
  (fun :pointer))

(defcfun ("wxEvtHandler_GetClientClosure" wxEvtHandler_GetClientClosure) :pointer
  (_obj :pointer))

(defcfun ("wxEvtHandler_SetClientClosure" wxEvtHandler_SetClientClosure) :void
  (_obj :pointer)
  (closure :pointer))

(defcfun ("wxObject_GetClientClosure" wxObject_GetClientClosure) :pointer
  (_obj :pointer))

(defcfun ("wxObject_SetClientClosure" wxObject_SetClientClosure) :void
  (_obj :pointer)
  (closure :pointer))

(defcfun ("ELJApp_GetIdleInterval" ELJApp_GetIdleInterval) :int)

(defcfun ("ELJApp_SetIdleInterval" ELJApp_SetIdleInterval) :void
  (interval :int))

(defcfun ("ELJApp_MainLoop" ELJApp_MainLoop) :int)

(defcfun ("ELJApp_Initialized" ELJApp_Initialized) :int)

(defcfun ("ELJApp_Pending" ELJApp_Pending) :int)

(defcfun ("ELJApp_Dispatch" ELJApp_Dispatch) :void)

(defcfun ("ELJApp_GetAppName" ELJApp_GetAppName) :lisp-string)

(defcfun ("ELJApp_SetAppName" ELJApp_SetAppName) :void
  (name :string))

(defcfun ("ELJApp_GetClassName" ELJApp_GetClassName) :lisp-string)

(defcfun ("ELJApp_SetClassName" ELJApp_SetClassName) :void
  (name :string))

(defcfun ("ELJApp_GetVendorName" ELJApp_GetVendorName) :lisp-string)

(defcfun ("ELJApp_SetVendorName" ELJApp_SetVendorName) :void
  (name :string))

(defcfun ("ELJApp_GetTopWindow" ELJApp_GetTopWindow) :pointer)

(defcfun ("ELJApp_SetExitOnFrameDelete" ELJApp_SetExitOnFrameDelete) :void
  (flag :int))

(defcfun ("ELJApp_GetExitOnFrameDelete" ELJApp_GetExitOnFrameDelete) :int)

(defcfun ("ELJApp_CreateLogTarget" ELJApp_CreateLogTarget) :pointer)

(defcfun ("ELJApp_SetUseBestVisual" ELJApp_SetUseBestVisual) :void
  (flag :int))

(defcfun ("ELJApp_GetUseBestVisual" ELJApp_GetUseBestVisual) :int)

(defcfun ("ELJApp_SetPrintMode" ELJApp_SetPrintMode) :void
  (mode :int))

(defcfun ("ELJApp_ExitMainLoop" ELJApp_ExitMainLoop) :void)

(defcfun ("ELJApp_SetTopWindow" ELJApp_SetTopWindow) :void
  (_wnd :pointer))

(defcfun ("ELJApp_EnableTooltips" ELJApp_EnableTooltips) :void
  (_enable :int))

(defcfun ("ELJApp_SetTooltipDelay" ELJApp_SetTooltipDelay) :void
  (_ms :int))

(defcfun ("ELJApp_InitAllImageHandlers" ELJApp_InitAllImageHandlers) :void)

(defcfun ("ELJApp_DisplaySize" ELJApp_DisplaySize) :void
  (w :pointer)
  (h :pointer))

(defcfun ("ELJApp_EnableTopLevelWindows" ELJApp_EnableTopLevelWindows) :void
  (_enb :int))

(defcfun ("ELJApp_Exit" ELJApp_Exit) :void)

(defcfun ("ELJApp_MousePosition" ELJApp_MousePosition) :void
  (x :pointer)
  (y :pointer))

(defcfun ("ELJApp_FindWindowByLabel" ELJApp_FindWindowByLabel) :pointer
  (_lbl :pointer)
  (_prt :pointer))

(defcfun ("ELJApp_FindWindowByName" ELJApp_FindWindowByName) :pointer
  (_lbl :pointer)
  (_prt :pointer))

(defcfun ("ELJApp_FindWindowById" ELJApp_FindWindowById) :pointer
  (_id :int)
  (_prt :pointer))

(defcfun ("ELJApp_GetApp" ELJApp_GetApp) :pointer)

(defcfun ("ELJApp_GetUserId" ELJApp_GetUserId) :int
  (_buf :pointer))

(defcfun ("ELJApp_GetUserName" ELJApp_GetUserName) :int
  (_buf :pointer))

(defcfun ("ELJApp_GetUserHome" ELJApp_GetUserHome) :int
  (_usr :string)
  (_buf :pointer))

(defcfun ("ELJApp_ExecuteProcess" ELJApp_ExecuteProcess) :int
  (_cmd :string)
  (_snc :int)
  (_prc :pointer))

(defcfun ("ELJApp_Yield" ELJApp_Yield) :int)

(defcfun ("ELJApp_SafeYield" ELJApp_SafeYield) :int
  (_win :pointer))

(defcfun ("ELJApp_GetOsVersion" ELJApp_GetOsVersion) :int
  (_maj :pointer)
  (_min :pointer))

(defcfun ("ELJApp_GetOsDescription" ELJApp_GetOsDescription) :int
  (_buf :pointer))

(defcfun ("ELJApp_Sleep" ELJApp_Sleep) :void
  (_scs :int))

(defcfun ("ELJApp_USleep" ELJApp_USleep) :void
  (_mscs :int))

(defcfun ("ELJApp_IsTerminating" ELJApp_IsTerminating) :int)

(defcfun ("QuantizePalette" QuantizePalette) :int
  (src :pointer)
  (dest :pointer)
  (pPalette :pointer)
  (desiredNoColours :int)
  (eightBitData :pointer)
  (flags :int))

(defcfun ("Quantize" Quantize) :int
  (src :pointer)
  (dest :pointer)
  (desiredNoColours :int)
  (eightBitData :pointer)
  (flags :int))

(defcfun ("wxEvtHandler_Create" wxEvtHandler_Create) :pointer)

(defcfun ("wxEvtHandler_Delete" wxEvtHandler_Delete) :void
  (_obj :pointer))

(defcfun ("wxEvtHandler_Disconnect" wxEvtHandler_Disconnect) :int
  (_obj :pointer)
  (first :int)
  (last :int)
  (type :int)
  (data :int))

(defcfun ("wxEvtHandler_GetNextHandler" wxEvtHandler_GetNextHandler) :pointer
  (_obj :pointer))

(defcfun ("wxEvtHandler_GetPreviousHandler" wxEvtHandler_GetPreviousHandler) :pointer
  (_obj :pointer))

(defcfun ("wxEvtHandler_SetNextHandler" wxEvtHandler_SetNextHandler) :void
  (_obj :pointer)
  (handler :pointer))

(defcfun ("wxEvtHandler_SetPreviousHandler" wxEvtHandler_SetPreviousHandler) :void
  (_obj :pointer)
  (handler :pointer))

(defcfun ("wxEvtHandler_SetEvtHandlerEnabled" wxEvtHandler_SetEvtHandlerEnabled) :void
  (_obj :pointer)
  (enabled :int))

(defcfun ("wxEvtHandler_GetEvtHandlerEnabled" wxEvtHandler_GetEvtHandlerEnabled) :int
  (_obj :pointer))

(defcfun ("wxEvtHandler_ProcessEvent" wxEvtHandler_ProcessEvent) :int
  (_obj :pointer)
  (event :pointer))

(defcfun ("wxEvtHandler_AddPendingEvent" wxEvtHandler_AddPendingEvent) :void
  (_obj :pointer)
  (event :pointer))

(defcfun ("wxEvtHandler_ProcessPendingEvents" wxEvtHandler_ProcessPendingEvents) :void
  (_obj :pointer))

(defcfun ("Null_AcceleratorTable" Null_AcceleratorTable) :pointer)

(defcfun ("Null_Bitmap" Null_Bitmap) :pointer)

(defcfun ("Null_Icon" Null_Icon) :pointer)

(defcfun ("Null_Cursor" Null_Cursor) :pointer)

(defcfun ("Null_Pen" Null_Pen) :pointer)

(defcfun ("Null_Palette" Null_Palette) :pointer)

(defcfun ("Null_Font" Null_Font) :pointer)

(defcfun ("wxCFree" wxCFree) :void
  (_ptr :pointer))

(defcfun ("wxClassInfo_CreateClassByName" wxClassInfo_CreateClassByName) :pointer
  (_inf :pointer))

(defcfun ("wxClassInfo_GetClassName" wxClassInfo_GetClassName) :pointer
  (_obj :pointer))

(defcfun ("wxClassInfo_IsKindOf" wxClassInfo_IsKindOf) :int
  (_obj :pointer)
  (_name :pointer))

(defcfun ("wxEvent_NewEventType" wxEvent_NewEventType) :int)

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

(defcfun ("wxString_GetLength" wxString_GetLength) :int
  (s :pointer))

(defcfun ("wxStringc_str" wxStringc_str) :pointer
  (s :pointer))

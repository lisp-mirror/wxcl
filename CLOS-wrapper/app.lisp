(in-package :wxCL)

(use-package :wxEvtHandler)

; (defclass app (object evt-handler)
;   ()
;   (:documentation "The app class represents the application itself.\
;  It is used to set and get application-wide properties; implement the\
;  windowing system message or event loop."))

; (defmethod ((obj app)) ELJApp_MainLoop
;     (:name "ELJApp_MainLoop")
;   (:return-type ffi:int)
;   (:library +library-name+))

; (defmethod ((obj app)) ELJApp_Initialized
;     (:name "ELJApp_Initialized")
;   (:return-type ffi:int)
;   (:library +library-name+))

(defun app-pending-p (); ((obj app))
  (= 1 (ELJApp_Pending))) ;(object-pointer obj)

(defun app-dispatch () ;((obj app))
  (ELJApp_Dispatch)); (object-pointer obj)))

(defun app-name ();((obj app))
  (ELJApp_GetAppName)); (object-pointer obj)))

(defun set-app-name (name) ; ((obj app))
  (ELJApp_SetAppName name))

(defmethod app-class-name ;((obj app))
    (:name "ELJApp_GetClassName")
  (:arguments (_buf (ffi:c-pointer NIL)))
  (:return-type ffi:int)
  (:library +library-name+))

(defmethod ((obj app)) ELJApp_SetClassName
    (:name "ELJApp_SetClassName")
  (:arguments (name ffi:c-string))
  (:return-type NIL)
  (:library +library-name+))

(defmethod ((obj app)) ELJApp_GetVendorName
    (:name "ELJApp_GetVendorName")
  (:arguments (_buf (ffi:c-pointer NIL)))
  (:return-type ffi:int)
  (:library +library-name+))

(defmethod ((obj app)) ELJApp_SetVendorName
    (:name "ELJApp_SetVendorName")
  (:arguments (name ffi:c-string))
  (:return-type NIL)
  (:library +library-name+))

(defmethod ((obj app)) ELJApp_GetTopWindow
    (:name "ELJApp_GetTopWindow")
  (:return-type (ffi:c-pointer NIL))
  (:library +library-name+))

(defmethod ((obj app)) ELJApp_SetExitOnFrameDelete
    (:name "ELJApp_SetExitOnFrameDelete")
  (:arguments (flag ffi:int))
  (:return-type NIL)
  (:library +library-name+))

(defmethod ((obj app)) ELJApp_GetExitOnFrameDelete
    (:name "ELJApp_GetExitOnFrameDelete")
  (:return-type ffi:int)
  (:library +library-name+))

(defmethod ((obj app)) ELJApp_CreateLogTarget
    (:name "ELJApp_CreateLogTarget")
  (:return-type (ffi:c-pointer NIL))
  (:library +library-name+))

; (defmethod ((obj app)) ELJApp_GetWantDebugOutput
;     (:name "ELJApp_GetWantDebugOutput")
;   (:return-type ffi:int)
;   (:library +library-name+))

(defmethod ((obj app)) ELJApp_SetUseBestVisual
    (:name "ELJApp_SetUseBestVisual")
  (:arguments (flag ffi:int))
  (:return-type NIL)
  (:library +library-name+))

(defmethod ((obj app)) ELJApp_GetUseBestVisual
    (:name "ELJApp_GetUseBestVisual")
  (:return-type ffi:int)
  (:library +library-name+))

(defmethod ((obj app)) ELJApp_SetPrintMode
    (:name "ELJApp_SetPrintMode")
  (:arguments (mode ffi:int))
  (:return-type NIL)
  (:library +library-name+))

(defmethod ((obj app)) ELJApp_ExitMainLoop
    (:name "ELJApp_ExitMainLoop")
  (:return-type NIL)
  (:library +library-name+))

(defmethod ((obj app)) ELJApp_SetTopWindow
    (:name "ELJApp_SetTopWindow")
  (:arguments (_wnd (ffi:c-pointer NIL)))
  (:return-type NIL)
  (:library +library-name+))

; (defmethod ((obj app)) ELJApp_SendIdleEvents
;     (:name "ELJApp_SendIdleEvents")
;   (:return-type ffi:int)
;   (:library +library-name+))

; (defmethod ((obj app)) ELJApp_SendIdleEventsToWindow
;     (:name "ELJApp_SendIdleEventsToWindow")
;   (:arguments (win (ffi:c-pointer NIL)))
;   (:return-type ffi:int)
;   (:library +library-name+))

(defmethod ((obj app)) ELJApp_EnableTooltips
    (:name "ELJApp_EnableTooltips")
  (:arguments (_enable ffi:int))
  (:return-type NIL)
  (:library +library-name+))

(defmethod ((obj app)) ELJApp_SetTooltipDelay
    (:name "ELJApp_SetTooltipDelay")
  (:arguments (_ms ffi:int))
  (:return-type NIL)
  (:library +library-name+))

(defmethod ((obj app)) ELJApp_InitAllImageHandlers
    (:name "ELJApp_InitAllImageHandlers")
  (:return-type NIL)
  (:library +library-name+))

(defmethod ((obj app)) ELJApp_Bell
    (:name "ELJApp_Bell")
  (:return-type NIL)
  (:library +library-name+))

(defmethod ((obj app)) ELJApp_DisplaySize
    (:name "ELJApp_DisplaySize")
  (:arguments (w (ffi:c-pointer NIL))
	      (h (ffi:c-pointer NIL)))
  (:return-type NIL)
  (:library +library-name+))

(defmethod ((obj app)) ELJApp_EnableTopLevelWindows
    (:name "ELJApp_EnableTopLevelWindows")
  (:arguments (_enb ffi:int))
  (:return-type NIL)
  (:library +library-name+))

(defmethod ((obj app)) ELJApp_Exit
    (:name "ELJApp_Exit")
  (:return-type NIL)
  (:library +library-name+))

(defmethod ((obj app)) ELJApp_MousePosition
    (:name "ELJApp_MousePosition")
  (:arguments (x (ffi:c-pointer NIL))
	      (y (ffi:c-pointer NIL)))
  (:return-type NIL)
  (:library +library-name+))

(defmethod ((obj app)) ELJApp_FindWindowByLabel
    (:name "ELJApp_FindWindowByLabel")
  (:arguments (_lbl (ffi:c-pointer NIL))
	      (_prt (ffi:c-pointer NIL)))
  (:return-type (ffi:c-pointer NIL))
  (:library +library-name+))

(defmethod ((obj app)) ELJApp_FindWindowByName
    (:name "ELJApp_FindWindowByName")
  (:arguments (_lbl (ffi:c-pointer NIL))
	      (_prt (ffi:c-pointer NIL)))
  (:return-type (ffi:c-pointer NIL))
  (:library +library-name+))

(defmethod ((obj app)) ELJApp_FindWindowById
    (:name "ELJApp_FindWindowById")
  (:arguments (_id ffi:int)
	      (_prt (ffi:c-pointer NIL)))
  (:return-type (ffi:c-pointer NIL))
  (:library +library-name+))

(defmethod ((obj app)) ELJApp_GetApp
    (:name "ELJApp_GetApp")
  (:return-type (ffi:c-pointer NIL))
  (:library +library-name+))

(defmethod ((obj app)) ELJApp_GetUserId
    (:name "ELJApp_GetUserId")
  (:arguments (_buf (ffi:c-pointer NIL)))
  (:return-type ffi:int)
  (:library +library-name+))

(defmethod ((obj app)) ELJApp_GetUserName
    (:name "ELJApp_GetUserName")
  (:arguments (_buf (ffi:c-pointer NIL)))
  (:return-type ffi:int)
  (:library +library-name+))

(defmethod ((obj app)) ELJApp_GetUserHome
    (:name "ELJApp_GetUserHome")
  (:arguments (_usr (ffi:c-pointer NIL))
	      (_buf (ffi:c-pointer NIL)))
  (:return-type ffi:int)
  (:library +library-name+))

(defmethod ((obj app)) ELJApp_ExecuteProcess
    (:name "ELJApp_ExecuteProcess")
  (:arguments (_cmd (ffi:c-pointer NIL))
	      (_snc ffi:int)
	      (_prc (ffi:c-pointer NIL)))
  (:return-type ffi:int)
  (:library +library-name+))

(defmethod ((obj app)) ELJApp_Yield
    (:name "ELJApp_Yield")
  (:return-type ffi:int)
  (:library +library-name+))

(defmethod ((obj app)) ELJApp_SafeYield
    (:name "ELJApp_SafeYield")
  (:arguments (_win (ffi:c-pointer NIL)))
  (:return-type ffi:int)
  (:library +library-name+))

(defmethod ((obj app)) ELJApp_GetOsVersion
    (:name "ELJApp_GetOsVersion")
  (:arguments (_maj (ffi:c-pointer NIL))
	      (_min (ffi:c-pointer NIL)))
  (:return-type ffi:int)
  (:library +library-name+))

(defmethod ((obj app)) ELJApp_GetOsDescription
    (:name "ELJApp_GetOsDescription")
  (:arguments (_buf (ffi:c-pointer NIL)))
  (:return-type ffi:int)
  (:library +library-name+))

(defmethod ((obj app)) ELJApp_Sleep
    (:name "ELJApp_Sleep")
  (:arguments (_scs ffi:int))
  (:return-type NIL)
  (:library +library-name+))

(defmethod ((obj app)) ELJApp_USleep
    (:name "ELJApp_USleep")
  (:arguments (_mscs ffi:int))
  (:return-type NIL)
  (:library +library-name+))

(defmethod ((obj app)) ELJApp_IsTerminating
    (:name "ELJApp_IsTerminating")
  (:return-type ffi:int)
  (:library +library-name+))

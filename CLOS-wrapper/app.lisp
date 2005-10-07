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

(defun app-pending-p()
  (= 1 (ELJApp_Pending)))

(defun app-dispatch()
  (ELJApp_Dispatch))

(defun app-name()
  (ELJApp_GetAppName))

(defun set-app-name (name)
  (ELJApp_SetAppName name))

(defun app-class-name()
  (ELJApp_GetClassName))

(defun set-class-name(name) ;
  (ELJApp_SetClassName name))

(defun vendor-name() ;((obj app)) ELJApp_GetVendorName
  (ELJApp_GetVendorName))

(defun set-vendor-name (name) ; ((obj app)) ELJApp_SetVendorName
  (ELJApp_SetVendorName name))

(defun top-window() ;((obj app)) ELJApp_GetTopWindow
  (let ((win (ELJApp_GetTopWindow)))
    (when win 
      (let ((obj (make-instance 'window)))
	(setf (slot-value obj 'object) win)
	obj))))

(defun set-exit-on-frame-delete (flag) ;((obj app)) 
  (ELJApp_SetExitOnFrameDelete (if flag 1 0)))

(defun exit-on-frame-delete(); ((obj app)) ELJApp_GetExitOnFrameDelete
  (= 1 (ELJApp_GetExitOnFrameDelete)))

; (defmethod create-log-target() ;((obj app)) 
;     (ELJApp_CreateLogTarget )
;   (:return-type (ffi:c-pointer NIL))
;   (:library +library-name+))

; (defun ((obj app)) ELJApp_GetWantDebugOutput
;     (:name "ELJApp_GetWantDebugOutput")
;   (:return-type ffi:int)
;   (:library +library-name+))

(defun set-use-best-visual(flag) ;((obj app)) 
  (ELJApp_SetUseBestVisual (if flag 1 0)))

(defun use-best-visual();((obj app)) ELJApp_GetUseBestVisual
  (= 1 (ELJApp_GetUseBestVisual)))

; (defun set-print-mode(flag ); ((obj app))
;   (ELJApp_SetPrintMode")
;   (:arguments (mode ffi:int))
;   (:return-type NIL)
;   (:library +library-name+))

; (defun ((obj app)) ELJApp_ExitMainLoop
;     (:name "ELJApp_ExitMainLoop")
;   (:return-type NIL)
;   (:library +library-name+))

(defun set-top-window (window) ; ((obj app)) ELJApp_SetTopWindow
  (ELJApp_SetTopWindow (object-pointer window)))

; (defun ((obj app)) ELJApp_SendIdleEvents
;     (:name "ELJApp_SendIdleEvents")
;   (:return-type ffi:int)
;   (:library +library-name+))

; (defun ((obj app)) ELJApp_SendIdleEventsToWindow
;     (:name "ELJApp_SendIdleEventsToWindow")
;   (:arguments (win (ffi:c-pointer NIL)))
;   (:return-type ffi:int)
;   (:library +library-name+))

; (defun ((obj app)) ELJApp_InitAllImageHandlers
;     (:name "ELJApp_InitAllImageHandlers")
;   (:return-type NIL)
;   (:library +library-name+))

; (defun ((obj app)) ELJApp_Bell
;     (:name "ELJApp_Bell")
;   (:return-type NIL)
;   (:library +library-name+))

; (defun ((obj app)) ELJApp_DisplaySize
;     (:name "ELJApp_DisplaySize")
;   (:arguments (w (ffi:c-pointer NIL))
; 	      (h (ffi:c-pointer NIL)))
;   (:return-type NIL)
;   (:library +library-name+))

; (defun ((obj app)) ELJApp_EnableTopLevelWindows
;     (:name "ELJApp_EnableTopLevelWindows")
;   (:arguments (_enb ffi:int))
;   (:return-type NIL)
;   (:library +library-name+))

; (defun ((obj app)) ELJApp_Exit
;     (:name "ELJApp_Exit")
;   (:return-type NIL)
;   (:library +library-name+))

(defun ((obj app)) ELJApp_MousePosition
    (:name "ELJApp_MousePosition")
  (:arguments (x (ffi:c-pointer NIL))
	      (y (ffi:c-pointer NIL)))
  (:return-type NIL)
  (:library +library-name+))

(defun ((obj app)) ELJApp_FindWindowByLabel
    (:name "ELJApp_FindWindowByLabel")
  (:arguments (_lbl (ffi:c-pointer NIL))
	      (_prt (ffi:c-pointer NIL)))
  (:return-type (ffi:c-pointer NIL))
  (:library +library-name+))

(defun ((obj app)) ELJApp_FindWindowByName
    (:name "ELJApp_FindWindowByName")
  (:arguments (_lbl (ffi:c-pointer NIL))
	      (_prt (ffi:c-pointer NIL)))
  (:return-type (ffi:c-pointer NIL))
  (:library +library-name+))

(defun ((obj app)) ELJApp_FindWindowById
    (:name "ELJApp_FindWindowById")
  (:arguments (_id ffi:int)
	      (_prt (ffi:c-pointer NIL)))
  (:return-type (ffi:c-pointer NIL))
  (:library +library-name+))

(defun ((obj app)) ELJApp_GetApp
    (:name "ELJApp_GetApp")
  (:return-type (ffi:c-pointer NIL))
  (:library +library-name+))

(defun ((obj app)) ELJApp_GetUserId
    (:name "ELJApp_GetUserId")
  (:arguments (_buf (ffi:c-pointer NIL)))
  (:return-type ffi:int)
  (:library +library-name+))

(defun ((obj app)) ELJApp_GetUserName
    (:name "ELJApp_GetUserName")
  (:arguments (_buf (ffi:c-pointer NIL)))
  (:return-type ffi:int)
  (:library +library-name+))

(defun ((obj app)) ELJApp_GetUserHome
    (:name "ELJApp_GetUserHome")
  (:arguments (_usr (ffi:c-pointer NIL))
	      (_buf (ffi:c-pointer NIL)))
  (:return-type ffi:int)
  (:library +library-name+))

(defun ((obj app)) ELJApp_ExecuteProcess
    (:name "ELJApp_ExecuteProcess")
  (:arguments (_cmd (ffi:c-pointer NIL))
	      (_snc ffi:int)
	      (_prc (ffi:c-pointer NIL)))
  (:return-type ffi:int)
  (:library +library-name+))

(defun ((obj app)) ELJApp_Yield
    (:name "ELJApp_Yield")
  (:return-type ffi:int)
  (:library +library-name+))

(defun ((obj app)) ELJApp_SafeYield
    (:name "ELJApp_SafeYield")
  (:arguments (_win (ffi:c-pointer NIL)))
  (:return-type ffi:int)
  (:library +library-name+))

(defun ((obj app)) ELJApp_GetOsVersion
    (:name "ELJApp_GetOsVersion")
  (:arguments (_maj (ffi:c-pointer NIL))
	      (_min (ffi:c-pointer NIL)))
  (:return-type ffi:int)
  (:library +library-name+))

(defun ((obj app)) ELJApp_GetOsDescription
    (:name "ELJApp_GetOsDescription")
  (:arguments (_buf (ffi:c-pointer NIL)))
  (:return-type ffi:int)
  (:library +library-name+))

(defun ((obj app)) ELJApp_Sleep
    (:name "ELJApp_Sleep")
  (:arguments (_scs ffi:int))
  (:return-type NIL)
  (:library +library-name+))

(defun ((obj app)) ELJApp_USleep
    (:name "ELJApp_USleep")
  (:arguments (_mscs ffi:int))
  (:return-type NIL)
  (:library +library-name+))

(defun ((obj app)) ELJApp_IsTerminating
    (:name "ELJApp_IsTerminating")
  (:return-type ffi:int)
  (:library +library-name+))

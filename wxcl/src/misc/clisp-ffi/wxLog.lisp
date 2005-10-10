;;;wxLog.lisp
;;;License  : wxWindows License 3.1
;;;Author(s) : Surendra Singhi (surendra@asu.edu) 
;;;Copyright (C) 2005 Surendra Singhi 
;;;See the file LICENSE for information on usage and redistribution.
;;;
;;; $Header$
;;;

(defpackage :wxLog
    (:use :common-lisp :ffi :wxCL)
  (:export :ELJLog_Create
	   :ELJLog_Delete
	   :ELJLog_IsEnabled
	   :ELJLog_EnableLogging
	   :ELJLog_OnLog
	   :ELJLog_Flush
	   :ELJLog_HasPendingMessages
	   :ELJLog_FlushActive
	   :ELJLog_GetActiveTarget
	   :ELJLog_SetActiveTarget
	   :ELJLog_Suspend
	   :ELJLog_Resume
	   :ELJLog_SetVerbose
	   :ELJLog_DontCreateOnDemand
	   :ELJLog_SetTraceMask
	   :ELJLog_AddTraceMask
	   :ELJLog_RemoveTraceMask
	   :ELJLog_SetTimestamp
	   :ELJLog_GetVerbose
	   :ELJLog_GetTraceMask
	   :ELJLog_IsAllowedTraceMask
	   :ELJLog_GetTimestamp
	   :ELJSysErrorCode
	   :ELJSysErrorMsg
	   :LogErrorMsg
	   :LogFatalErrorMsg
	   :LogWarningMsg
	   :LogMessageMsg
	   :wxLogChain_Create
	   :wxLogChain_Delete
	   :wxLogChain_SetLog
	   :wxLogChain_PassMessages
	   :wxLogChain_IsPassingMessages
	   :wxLogChain_GetOldLog
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
	   :wxLog_GetTimestamp))

(in-package :wxLog)

(ffi:default-foreign-language :stdc)

(def-c-type wxLogWindow NIL)

(ffi:def-call-out ELJLog_Create
    (:name "ELJLog_Create")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (_fnc (ffi:c-pointer NIL)))
  (:return-type (ffi:c-pointer NIL))
  (:library +library-name+))

(ffi:def-call-out ELJLog_Delete
    (:name "ELJLog_Delete")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out ELJLog_IsEnabled
    (:name "ELJLog_IsEnabled")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out ELJLog_EnableLogging
    (:name "ELJLog_EnableLogging")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (doIt ffi:int))
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out ELJLog_OnLog
    (:name "ELJLog_OnLog")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (level ffi:int)
	      (szString (ffi:c-pointer NIL))
	      (t ffi:int))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out ELJLog_Flush
    (:name "ELJLog_Flush")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out ELJLog_HasPendingMessages
    (:name "ELJLog_HasPendingMessages")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out ELJLog_FlushActive
    (:name "ELJLog_FlushActive")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out ELJLog_GetActiveTarget
    (:name "ELJLog_GetActiveTarget")
  (:return-type (ffi:c-pointer NIL))
  (:library +library-name+))

(ffi:def-call-out ELJLog_SetActiveTarget
    (:name "ELJLog_SetActiveTarget")
  (:arguments (pLogger (ffi:c-pointer NIL)))
  (:return-type (ffi:c-pointer NIL))
  (:library +library-name+))

(ffi:def-call-out ELJLog_Suspend
    (:name "ELJLog_Suspend")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out ELJLog_Resume
    (:name "ELJLog_Resume")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out ELJLog_SetVerbose
    (:name "ELJLog_SetVerbose")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (bVerbose ffi:int))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out ELJLog_DontCreateOnDemand
    (:name "ELJLog_DontCreateOnDemand")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out ELJLog_SetTraceMask
    (:name "ELJLog_SetTraceMask")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (ulMask ffi:int))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out ELJLog_AddTraceMask
    (:name "ELJLog_AddTraceMask")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (str (ffi:c-pointer NIL)))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out ELJLog_RemoveTraceMask
    (:name "ELJLog_RemoveTraceMask")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (str (ffi:c-pointer NIL)))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out ELJLog_SetTimestamp
    (:name "ELJLog_SetTimestamp")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (ts (ffi:c-pointer NIL)))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out ELJLog_GetVerbose
    (:name "ELJLog_GetVerbose")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out ELJLog_GetTraceMask
    (:name "ELJLog_GetTraceMask")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out ELJLog_IsAllowedTraceMask
    (:name "ELJLog_IsAllowedTraceMask")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (mask (ffi:c-pointer NIL)))
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out ELJLog_GetTimestamp
    (:name "ELJLog_GetTimestamp")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type (ffi:c-pointer NIL))
  (:library +library-name+))

(ffi:def-call-out ELJSysErrorCode
    (:name "ELJSysErrorCode")
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out ELJSysErrorMsg
    (:name "ELJSysErrorMsg")
  (:arguments (nErrCode ffi:int))
  (:return-type (ffi:c-pointer NIL))
  (:library +library-name+))

(ffi:def-call-out LogErrorMsg
    (:name "LogErrorMsg")
  (:arguments (_msg (ffi:c-pointer NIL)))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out LogFatalErrorMsg
    (:name "LogFatalErrorMsg")
  (:arguments (_msg (ffi:c-pointer NIL)))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out LogWarningMsg
    (:name "LogWarningMsg")
  (:arguments (_msg (ffi:c-pointer NIL)))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out LogMessageMsg
    (:name "LogMessageMsg")
  (:arguments (_msg (ffi:c-pointer NIL)))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxLogChain_Create
    (:name "wxLogChain_Create")
  (:arguments (logger (ffi:c-pointer NIL)))
  (:return-type (ffi:c-pointer NIL))
  (:library +library-name+))

(ffi:def-call-out wxLogChain_Delete
    (:name "wxLogChain_Delete")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxLogChain_SetLog
    (:name "wxLogChain_SetLog")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (logger (ffi:c-pointer NIL)))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxLogChain_PassMessages
    (:name "wxLogChain_PassMessages")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (bDoPass ffi:int))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxLogChain_IsPassingMessages
    (:name "wxLogChain_IsPassingMessages")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out wxLogChain_GetOldLog
    (:name "wxLogChain_GetOldLog")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type (ffi:c-pointer NIL))
  (:library +library-name+))

(ffi:def-call-out wxLogStderr_Create
    (:name "wxLogStderr_Create")
  (:return-type (ffi:c-pointer NIL))
  (:library +library-name+))

(ffi:def-call-out wxLogStderr_CreateStdOut
    (:name "wxLogStderr_CreateStdOut")
  (:return-type (ffi:c-pointer NIL))
  (:library +library-name+))

(ffi:def-call-out wxLogNull_Create
    (:name "wxLogNull_Create")
  (:return-type (ffi:c-pointer NIL))
  (:library +library-name+))

(ffi:def-call-out wxLogTextCtrl_Create
    (:name "wxLogTextCtrl_Create")
  (:arguments (text (ffi:c-pointer NIL)))
  (:return-type (ffi:c-pointer NIL))
  (:library +library-name+))

(ffi:def-call-out wxLogWindow_Create
    (:name "wxLogWindow_Create")
  (:arguments (parent (ffi:c-pointer NIL))
	      (title ffi:c-string)
	      (showit ffi:int)
	      (passthrough ffi:int))
  (:return-type (ffi:c-pointer wxLogWindow))
  (:library +library-name+))

(ffi:def-call-out wxLogWindow_GetFrame
    (:name "wxLogWindow_GetFrame")
  (:arguments (obj (ffi:c-pointer wxLogWindow)))
  (:return-type (ffi:c-pointer NIL))
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

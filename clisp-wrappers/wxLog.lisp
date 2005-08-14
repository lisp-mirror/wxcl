;;;wxLog.lisp
;;;License  : GNU General Public License (GPL)
;;;Author(s) : Surendra Singhi (surendra@asu.edu) 
;;;Copyright (C) 2005 Surendra Singhi 
;;;See the file LICENSE for information on usage and redistribution.
;;;
;;; $Header$
;;;

(defpackage :wxLog
  (:use :common-lisp :ffi :wxCL)
  (:export
	:ELJLog_Create
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
	:wxLogChain_GetOldLog))

(in-package :wxLog)

(ffi:default-foreign-language :stdc)

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

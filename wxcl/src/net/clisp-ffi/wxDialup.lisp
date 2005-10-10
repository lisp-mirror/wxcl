;;;wxDialup.lisp
;;;License  : wxWindows License 3.1
;;;Author(s) : Surendra Singhi (surendra@asu.edu) 
;;;Copyright (C) 2005 Surendra Singhi 
;;;See the file LICENSE for information on usage and redistribution.
;;;
;;; $Header$
;;;
;; This is an automatically generated file. 
;;Make changes as you feel are necessary (but remember if you try to regenerate this file, your changes will be lost). 

(defpackage :wxDialup
  (:use :common-lisp :ffi :wxCL)
  (:export
	:wxDialUpManager_Create
	:wxDialUpManager_Delete
	:wxDialUpManager_IsOk
	:wxDialUpManager_GetISPNames
	:wxDialUpManager_Dial
	:wxDialUpManager_IsDialing
	:wxDialUpManager_CancelDialing
	:wxDialUpManager_HangUp
	:wxDialUpManager_IsAlwaysOnline
	:wxDialUpManager_IsOnline
	:wxDialUpManager_SetOnlineStatus
	:wxDialUpManager_EnableAutoCheckOnlineStatus
	:wxDialUpManager_DisableAutoCheckOnlineStatus
	:wxDialUpManager_SetWellKnownHost
	:wxDialUpManager_SetConnectCommand
	:wxDialUpEvent_IsConnectedEvent
	:wxDialUpEvent_IsOwnEvent))

(in-package :wxDialup)

(ffi:default-foreign-language :stdc)

(ffi:def-call-out wxDialUpManager_Create
	(:name "wxDialUpManager_Create")
	(:return-type (ffi:c-pointer NIL))
	(:library +library-name+))

(ffi:def-call-out wxDialUpManager_Delete
	(:name "wxDialUpManager_Delete")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxDialUpManager_IsOk
	(:name "wxDialUpManager_IsOk")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxDialUpManager_GetISPNames
	(:name "wxDialUpManager_GetISPNames")
	(:arguments (_obj (ffi:c-pointer NIL))
		(_lst (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxDialUpManager_Dial
	(:name "wxDialUpManager_Dial")
	(:arguments (_obj (ffi:c-pointer NIL))
		(nameOfISP (ffi:c-pointer NIL))
		(username (ffi:c-pointer NIL))
		(password (ffi:c-pointer NIL))
		(async ffi:int))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxDialUpManager_IsDialing
	(:name "wxDialUpManager_IsDialing")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxDialUpManager_CancelDialing
	(:name "wxDialUpManager_CancelDialing")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxDialUpManager_HangUp
	(:name "wxDialUpManager_HangUp")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxDialUpManager_IsAlwaysOnline
	(:name "wxDialUpManager_IsAlwaysOnline")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxDialUpManager_IsOnline
	(:name "wxDialUpManager_IsOnline")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxDialUpManager_SetOnlineStatus
	(:name "wxDialUpManager_SetOnlineStatus")
	(:arguments (_obj (ffi:c-pointer NIL))
		(isOnline ffi:int))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxDialUpManager_EnableAutoCheckOnlineStatus
	(:name "wxDialUpManager_EnableAutoCheckOnlineStatus")
	(:arguments (_obj (ffi:c-pointer NIL))
		(nSeconds ffi:int))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxDialUpManager_DisableAutoCheckOnlineStatus
	(:name "wxDialUpManager_DisableAutoCheckOnlineStatus")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxDialUpManager_SetWellKnownHost
	(:name "wxDialUpManager_SetWellKnownHost")
	(:arguments (_obj (ffi:c-pointer NIL))
		(hostname (ffi:c-pointer NIL))
		(portno ffi:int))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxDialUpManager_SetConnectCommand
	(:name "wxDialUpManager_SetConnectCommand")
	(:arguments (_obj (ffi:c-pointer NIL))
		(commandDial (ffi:c-pointer NIL))
		(commandHangup (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxDialUpEvent_IsConnectedEvent
	(:name "wxDialUpEvent_IsConnectedEvent")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxDialUpEvent_IsOwnEvent
	(:name "wxDialUpEvent_IsOwnEvent")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

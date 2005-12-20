
(in-package :wxcl)

(defcfun ("wxDialUpManager_Create" wxDialUpManager_Create) :pointer)

(defcfun ("wxDialUpManager_Delete" wxDialUpManager_Delete) :void
  (_obj :pointer))

(defcfun ("wxDialUpManager_IsOk" wxDialUpManager_IsOk) :int
  (_obj :pointer))

(defcfun ("wxDialUpManager_GetISPNames" wxDialUpManager_GetISPNames) :int
  (_obj :pointer)
  (_lst :pointer))

(defcfun ("wxDialUpManager_Dial" wxDialUpManager_Dial) :int
  (_obj :pointer)
  (nameOfISP :pointer)
  (username :pointer)
  (password :pointer)
  (async :int))

(defcfun ("wxDialUpManager_IsDialing" wxDialUpManager_IsDialing) :int
  (_obj :pointer))

(defcfun ("wxDialUpManager_CancelDialing" wxDialUpManager_CancelDialing) :int
  (_obj :pointer))

(defcfun ("wxDialUpManager_HangUp" wxDialUpManager_HangUp) :int
  (_obj :pointer))

(defcfun ("wxDialUpManager_IsAlwaysOnline" wxDialUpManager_IsAlwaysOnline) :int
  (_obj :pointer))

(defcfun ("wxDialUpManager_IsOnline" wxDialUpManager_IsOnline) :int
  (_obj :pointer))

(defcfun ("wxDialUpManager_SetOnlineStatus" wxDialUpManager_SetOnlineStatus) :void
  (_obj :pointer)
  (isOnline :int))

(defcfun ("wxDialUpManager_EnableAutoCheckOnlineStatus" wxDialUpManager_EnableAutoCheckOnlineStatus) :int
  (_obj :pointer)
  (nSeconds :int))

(defcfun ("wxDialUpManager_DisableAutoCheckOnlineStatus" wxDialUpManager_DisableAutoCheckOnlineStatus) :void
  (_obj :pointer))

(defcfun ("wxDialUpManager_SetWellKnownHost" wxDialUpManager_SetWellKnownHost) :void
  (_obj :pointer)
  (hostname :pointer)
  (portno :int))

(defcfun ("wxDialUpManager_SetConnectCommand" wxDialUpManager_SetConnectCommand) :void
  (_obj :pointer)
  (commandDial :pointer)
  (commandHangup :pointer))

(defcfun ("wxDialUpEvent_IsConnectedEvent" wxDialUpEvent_IsConnectedEvent) :int
  (_obj :pointer))

(defcfun ("wxDialUpEvent_IsOwnEvent" wxDialUpEvent_IsOwnEvent) :int
  (_obj :pointer))

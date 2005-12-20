;;;wxIPC.lisp
;;;License  : wxWindows License 3.1
;;;Author(s) : Surendra Singhi (surendra@asu.edu) 
;;;Copyright (C) 2005 Surendra Singhi 
;;;See the file LICENSE for information on usage and redistribution.
;;;
;;; $Header$
;;;

(in-package :wxcl-misc)

(defcfun ("ELJConnection_CreateDefault" ELJConnection_CreateDefault) :pointer)

(defcfun ("ELJConnection_Create" ELJConnection_Create) :pointer
  (buffer :pointer)
  (size :int))

(defcfun ("ELJConnection_Delete" ELJConnection_Delete) :void
  (_obj :pointer))

(defcfun ("ELJConnection_Execute" ELJConnection_Execute) :int
  (_obj :pointer)
  (data :pointer)
  (size :int)
  (format :int))

(defcfun ("ELJConnection_Request" ELJConnection_Request) :pointer
  (_obj :pointer)
  (item :pointer)
  (size :pointer)
  (format :int))

(defcfun ("ELJConnection_Poke" ELJConnection_Poke) :int
  (_obj :pointer)
  (item :pointer)
  (data :pointer)
  (size :int)
  (format :int))

(defcfun ("ELJConnection_StartAdvise" ELJConnection_StartAdvise) :int
  (_obj :pointer)
  (item :pointer))

(defcfun ("ELJConnection_StopAdvise" ELJConnection_StopAdvise) :int
  (_obj :pointer)
  (item :pointer))

(defcfun ("ELJConnection_Advise" ELJConnection_Advise) :int
  (_obj :pointer)
  (item :pointer)
  (data :pointer)
  (size :int)
  (format :int))

(defcfun ("ELJConnection_Disconnect" ELJConnection_Disconnect) :int
  (_obj :pointer))

(defcfun ("ELJConnection_Compress" ELJConnection_Compress) :void
  (_obj :pointer)
  (on :int))

(defcfun ("ELJConnection_SetOnAdvise" ELJConnection_SetOnAdvise) :void
  (_obj :pointer)
  (_fnc :pointer))

(defcfun ("ELJConnection_SetOnExecute" ELJConnection_SetOnExecute) :void
  (_obj :pointer)
  (_fnc :pointer))

(defcfun ("ELJConnection_SetOnRequest" ELJConnection_SetOnRequest) :void
  (_obj :pointer)
  (_fnc :pointer))

(defcfun ("ELJConnection_SetOnPoke" ELJConnection_SetOnPoke) :void
  (_obj :pointer)
  (_fnc :pointer))

(defcfun ("ELJConnection_SetOnStartAdvise" ELJConnection_SetOnStartAdvise) :void
  (_obj :pointer)
  (_fnc :pointer))

(defcfun ("ELJConnection_SetOnStopAdvise" ELJConnection_SetOnStopAdvise) :void
  (_obj :pointer)
  (_fnc :pointer))

(defcfun ("ELJConnection_SetOnDisconnect" ELJConnection_SetOnDisconnect) :void
  (_obj :pointer)
  (_fnc :pointer))

(defcfun ("ELJServer_Create" ELJServer_Create) :pointer
  (_eobj :pointer)
  (_cnct :pointer))

(defcfun ("ELJServer_Delete" ELJServer_Delete) :void
  (_obj :pointer))

(defcfun ("ELJServer_Initialize" ELJServer_Initialize) :int
  (_obj :pointer)
  (name :pointer))

(defcfun ("ELJClient_Create" ELJClient_Create) :pointer
  (_eobj :pointer)
  (_cnct :pointer))

(defcfun ("ELJClient_Delete" ELJClient_Delete) :void
  (_obj :pointer))

(defcfun ("ELJClient_MakeConnection" ELJClient_MakeConnection) :void
  (_obj :pointer)
  (host :pointer)
  (server :pointer)
  (topic :pointer))

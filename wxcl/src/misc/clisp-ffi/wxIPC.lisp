;;;wxIPC.lisp
;;;License  : wxWindows License 3.1
;;;Author(s) : Surendra Singhi (surendra@asu.edu) 
;;;Copyright (C) 2005 Surendra Singhi 
;;;See the file LICENSE for information on usage and redistribution.
;;;
;;; $Header$
;;;

(defpackage :wxIPC
  (:use :common-lisp :ffi :wxCL)
  (:export
	:ELJConnection_CreateDefault
	:ELJConnection_Create
	:ELJConnection_Delete
	:ELJConnection_Execute
	:ELJConnection_Request
	:ELJConnection_Poke
	:ELJConnection_StartAdvise
	:ELJConnection_StopAdvise
	:ELJConnection_Advise
	:ELJConnection_Disconnect
	:ELJConnection_Compress
	:ELJConnection_SetOnAdvise
	:ELJConnection_SetOnExecute
	:ELJConnection_SetOnRequest
	:ELJConnection_SetOnPoke
	:ELJConnection_SetOnStartAdvise
	:ELJConnection_SetOnStopAdvise
	:ELJConnection_SetOnDisconnect
	:ELJServer_Create
	:ELJServer_Delete
	:ELJServer_Initialize
	:ELJClient_Create
	:ELJClient_Delete
	:ELJClient_MakeConnection))

(in-package :wxIPC)

(ffi:default-foreign-language :stdc)

(ffi:def-call-out ELJConnection_CreateDefault
	(:name "ELJConnection_CreateDefault")
	(:return-type (ffi:c-pointer NIL))
	(:library +library-name+))

(ffi:def-call-out ELJConnection_Create
	(:name "ELJConnection_Create")
	(:arguments (buffer (ffi:c-pointer NIL))
		(size ffi:int))
	(:return-type (ffi:c-pointer NIL))
	(:library +library-name+))

(ffi:def-call-out ELJConnection_Delete
	(:name "ELJConnection_Delete")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out ELJConnection_Execute
	(:name "ELJConnection_Execute")
	(:arguments (_obj (ffi:c-pointer NIL))
		(data (ffi:c-pointer NIL))
		(size ffi:int)
		(format ffi:int))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out ELJConnection_Request
	(:name "ELJConnection_Request")
	(:arguments (_obj (ffi:c-pointer NIL))
		(item (ffi:c-pointer NIL))
		(size (ffi:c-pointer NIL))
		(format ffi:int))
	(:return-type (ffi:c-pointer NIL))
	(:library +library-name+))

(ffi:def-call-out ELJConnection_Poke
	(:name "ELJConnection_Poke")
	(:arguments (_obj (ffi:c-pointer NIL))
		(item (ffi:c-pointer NIL))
		(data (ffi:c-pointer NIL))
		(size ffi:int)
		(format ffi:int))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out ELJConnection_StartAdvise
	(:name "ELJConnection_StartAdvise")
	(:arguments (_obj (ffi:c-pointer NIL))
		(item (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out ELJConnection_StopAdvise
	(:name "ELJConnection_StopAdvise")
	(:arguments (_obj (ffi:c-pointer NIL))
		(item (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out ELJConnection_Advise
	(:name "ELJConnection_Advise")
	(:arguments (_obj (ffi:c-pointer NIL))
		(item (ffi:c-pointer NIL))
		(data (ffi:c-pointer NIL))
		(size ffi:int)
		(format ffi:int))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out ELJConnection_Disconnect
	(:name "ELJConnection_Disconnect")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out ELJConnection_Compress
	(:name "ELJConnection_Compress")
	(:arguments (_obj (ffi:c-pointer NIL))
		(on ffi:int))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out ELJConnection_SetOnAdvise
	(:name "ELJConnection_SetOnAdvise")
	(:arguments (_obj (ffi:c-pointer NIL))
		(_fnc (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out ELJConnection_SetOnExecute
	(:name "ELJConnection_SetOnExecute")
	(:arguments (_obj (ffi:c-pointer NIL))
		(_fnc (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out ELJConnection_SetOnRequest
	(:name "ELJConnection_SetOnRequest")
	(:arguments (_obj (ffi:c-pointer NIL))
		(_fnc (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out ELJConnection_SetOnPoke
	(:name "ELJConnection_SetOnPoke")
	(:arguments (_obj (ffi:c-pointer NIL))
		(_fnc (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out ELJConnection_SetOnStartAdvise
	(:name "ELJConnection_SetOnStartAdvise")
	(:arguments (_obj (ffi:c-pointer NIL))
		(_fnc (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out ELJConnection_SetOnStopAdvise
	(:name "ELJConnection_SetOnStopAdvise")
	(:arguments (_obj (ffi:c-pointer NIL))
		(_fnc (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out ELJConnection_SetOnDisconnect
	(:name "ELJConnection_SetOnDisconnect")
	(:arguments (_obj (ffi:c-pointer NIL))
		(_fnc (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out ELJServer_Create
	(:name "ELJServer_Create")
	(:arguments (_eobj (ffi:c-pointer NIL))
		(_cnct (ffi:c-pointer NIL)))
	(:return-type (ffi:c-pointer NIL))
	(:library +library-name+))

(ffi:def-call-out ELJServer_Delete
	(:name "ELJServer_Delete")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out ELJServer_Initialize
	(:name "ELJServer_Initialize")
	(:arguments (_obj (ffi:c-pointer NIL))
		(name (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out ELJClient_Create
	(:name "ELJClient_Create")
	(:arguments (_eobj (ffi:c-pointer NIL))
		(_cnct (ffi:c-pointer NIL)))
	(:return-type (ffi:c-pointer NIL))
	(:library +library-name+))

(ffi:def-call-out ELJClient_Delete
	(:name "ELJClient_Delete")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out ELJClient_MakeConnection
	(:name "ELJClient_MakeConnection")
	(:arguments (_obj (ffi:c-pointer NIL))
		(host (ffi:c-pointer NIL))
		(server (ffi:c-pointer NIL))
		(topic (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

;;;wxEvThandler.lisp
;;;License  : wxWindows License 3.1
;;;Author(s) : Surendra Singhi (surendra@asu.edu) 
;;;Copyright (C) 2005 Surendra Singhi 
;;;See the file LICENSE for information on usage and redistribution.
;;;
;;; $Header$
;;;

(defpackage :wxEvtHandler
    (:use :common-lisp :ffi :wxCL)
  (:export :wxEvtHandler_Create
	   :wxEvtHandler_Delete
	   :wxEvtHandler_Connect
	   :wxEvtHandler_Disconnect
	   :wxEvtHandler_GetNextHandler
	   :wxEvtHandler_GetPreviousHandler
	   :wxEvtHandler_SetNextHandler
	   :wxEvtHandler_SetPreviousHandler
	   :wxEvtHandler_SetEvtHandlerEnabled
	   :wxEvtHandler_GetEvtHandlerEnabled
	   :wxEvtHandler_ProcessEvent
	   :wxEvtHandler_AddPendingEvent
	   :wxEvtHandler_ProcessPendingEvents))

(in-package :wxEvtHandler)

(ffi:default-foreign-language :stdc)


(ffi:def-call-out wxEvtHandler_Create
    (:name "wxEvtHandler_Create")
  (:return-type (ffi:c-pointer NIL))
  (:library +library-name+))

(ffi:def-call-out wxEvtHandler_Delete
    (:name "wxEvtHandler_Delete")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out _wxEvtHandler_Connect
    (:name "wxEvtHandler_Connect")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (first ffi:int)
	      (last ffi:int)
	      (type ffi:int)
	      (data (ffi:c-pointer NIL)))
  (:return-type ffi:int)
  (:library +library-name+))

(defun wxEvtHandler_Connect (_obj first type data)
    (_wxEvtHandler_Connect _obj first first type data))


(ffi:def-call-out wxEvtHandler_Disconnect
    (:name "wxEvtHandler_Disconnect")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (first ffi:int)
	      (last ffi:int)
	      (type ffi:int)
	      (data ffi:int))
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out wxEvtHandler_GetNextHandler
    (:name "wxEvtHandler_GetNextHandler")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type (ffi:c-pointer NIL))
  (:library +library-name+))

(ffi:def-call-out wxEvtHandler_GetPreviousHandler
    (:name "wxEvtHandler_GetPreviousHandler")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type (ffi:c-pointer NIL))
  (:library +library-name+))

(ffi:def-call-out wxEvtHandler_SetNextHandler
    (:name "wxEvtHandler_SetNextHandler")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (handler (ffi:c-pointer NIL)))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxEvtHandler_SetPreviousHandler
    (:name "wxEvtHandler_SetPreviousHandler")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (handler (ffi:c-pointer NIL)))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxEvtHandler_SetEvtHandlerEnabled
    (:name "wxEvtHandler_SetEvtHandlerEnabled")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (enabled ffi:int))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxEvtHandler_GetEvtHandlerEnabled
    (:name "wxEvtHandler_GetEvtHandlerEnabled")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out wxEvtHandler_ProcessEvent
    (:name "wxEvtHandler_ProcessEvent")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (event (ffi:c-pointer NIL)))
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out wxEvtHandler_AddPendingEvent
    (:name "wxEvtHandler_AddPendingEvent")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (event (ffi:c-pointer NIL)))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxEvtHandler_ProcessPendingEvents
    (:name "wxEvtHandler_ProcessPendingEvents")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type NIL)
  (:library +library-name+))


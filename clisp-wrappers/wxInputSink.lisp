;;;wxInputSink.lisp
;;;License  : wxWindows License 3.1
;;;Author(s) : Surendra Singhi (surendra@asu.edu) 
;;;Copyright (C) 2005 Surendra Singhi 
;;;See the file LICENSE for information on usage and redistribution.
;;;
;;; $Header$
;;;

(defpackage :wxInputSink
    (:use :common-lisp :ffi :wxCL :wxWindow :wxDialog)
  (:export :wxInputSink_Create
	   :wxInputSink_GetId
	   :wxInputSink_Start
	   :wxInputSinkEvent_LastError
	   :wxInputSinkEvent_LastRead
	   :wxInputSinkEvent_LastInput))


(in-package :wxInputSink)

(ffi:default-foreign-language :stdc)

(ffi:def-c-type wxInputSink NIL)
(ffi:def-c-type wxInputSinkEvent NIL)
    
(ffi:def-call-out wxInputSink_Create
    (:name "wxInputSink_Create")
  (:arguments (input (ffi:c-pointer NIL))
	      (evtHandler (ffi:c-pointer NIL))
	      (bufferLen ffi:int))
  (:return-type (ffi:c-pointer wxInputSink))
  (:library +library-name+))

(ffi:def-call-out wxInputSink_GetId
    (:name "wxInputSink_GetId")
  (:arguments (obj (ffi:c-pointer wxInputSink)))
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out wxInputSink_Start
    (:name "wxInputSink_Start")
  (:arguments (obj (ffi:c-pointer wxInputSink)))
  (:library +library-name+))

(ffi:def-call-out wxInputSinkEvent_LastError
    (:name "wxInputSinkEvent_LastError")
  (:arguments (obj (ffi:c-pointer wxInputSinkEvent)))
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out wxInputSinkEvent_LastRead
    (:name "wxInputSinkEvent_LastRead")
  (:arguments (obj (ffi:c-pointer wxInputSinkEvent)))
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out wxInputSinkEvent_LastInput
    (:name "wxInputSinkEvent_LastInput")
  (:arguments (obj (ffi:c-pointer wxInputSinkEvent)))
  (:return-type ffi:c-string)
  (:library +library-name+))

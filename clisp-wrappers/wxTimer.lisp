;;;wxTimer.lisp
;;;License  : wxWindows License 3.1
;;;Author(s) : Surendra Singhi (surendra@asu.edu) 
;;;Copyright (C) 2005 Surendra Singhi 
;;;See the file LICENSE for information on usage and redistribution.
;;;
;;; $Header$
;;;

(defpackage :wxTimer
  (:use :common-lisp :ffi :wxCL)
  (:export
	:wxTimer_Create
	:wxTimer_Delete
	:wxTimer_Start
	:wxTimer_Stop
	:wxTimer_IsRuning
	:wxTimer_IsOneShot
	:wxTimer_GetInterval
	:wxTimerEx_Create
	:wxTimerEx_Connect
	:wxTimerEx_GetClosure
	:wxStopWatch_Create
	:wxStopWatch_Delete
	:wxStopWatch_Start
	:wxStopWatch_Pause
	:wxStopWatch_Resume
	:wxStopWatch_Time))

(in-package :wxTimer)

(ffi:default-foreign-language :stdc)

(ffi:def-call-out wxTimer_Create
	(:name "wxTimer_Create")
	(:arguments (_prt (ffi:c-pointer NIL))
		(_id ffi:int))
	(:return-type (ffi:c-pointer NIL))
	(:library +library-name+))

(ffi:def-call-out wxTimer_Delete
	(:name "wxTimer_Delete")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxTimer_Start
	(:name "wxTimer_Start")
	(:arguments (_obj (ffi:c-pointer NIL))
		(_int ffi:int)
		(_one ffi:int))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxTimer_Stop
	(:name "wxTimer_Stop")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxTimer_IsRuning
	(:name "wxTimer_IsRuning")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxTimer_IsOneShot
	(:name "wxTimer_IsOneShot")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxTimer_GetInterval
	(:name "wxTimer_GetInterval")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxStopWatch_Create
	(:name "wxStopWatch_Create")
	(:return-type (ffi:c-pointer NIL))
	(:library +library-name+))

(ffi:def-call-out wxStopWatch_Delete
	(:name "wxStopWatch_Delete")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxStopWatch_Start
	(:name "wxStopWatch_Start")
	(:arguments (_obj (ffi:c-pointer NIL))
		(_t ffi:int))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxStopWatch_Pause
	(:name "wxStopWatch_Pause")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxStopWatch_Resume
	(:name "wxStopWatch_Resume")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxStopWatch_Time
	(:name "wxStopWatch_Time")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))


(ffi:def-call-out wxTimerEx_Create
	(:name "wxTimerEx_Create")
	(:return-type (ffi:c-pointer NIL))
	(:library +library-name+))

(ffi:def-call-out wxTimerEx_Connect
	(:name "wxTimerEx_Connect")
	(:arguments (_obj (ffi:c-pointer NIL))
		(_closure (ffi:c-pointer NIL)))
	(:library +library-name+))

(ffi:def-call-out wxTimerEx_GetClosure
	(:name "wxTimerEx_GetClosure")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type (ffi:c-pointer NIL))
	(:library +library-name+))

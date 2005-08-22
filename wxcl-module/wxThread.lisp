;;;wxThread.lisp
;;;License  : GNU General Public License (GPL)
;;;Author(s) : Surendra Singhi (surendra@asu.edu) 
;;;Copyright (C) 2005 Surendra Singhi 
;;;See the file LICENSE for information on usage and redistribution.
;;;
;;; $Header$
;;;

(defpackage :wxThread
  (:use :common-lisp :ffi :wxCL)
  (:export
	:wxCriticalSection_Create
	:wxCriticalSection_Delete
	:wxCriticalSection_Enter
	:wxCriticalSection_Leave
	:wxMutex_Create
	:wxMutex_Delete
	:wxMutex_Lock
	:wxMutex_TryLock
	:wxMutex_Unlock
	:wxMutex_IsLocked
	:wxCondition_Create
	:wxCondition_Delete
	:wxCondition_Wait
	:wxCondition_WaitFor
	:wxCondition_Signal
	:wxCondition_Broadcast
	:wxMutexGui_Enter
	:wxMutexGui_Leave))

(in-package :wxThread)

(ffi:default-foreign-language :stdc)

(ffi:c-lines "#include <wxc.h>~%")

(ffi:def-call-out wxCriticalSection_Create
	(:name "wxCriticalSection_Create")
	(:return-type (ffi:c-pointer NIL))
	) ;; (:library +library-name+))

(ffi:def-call-out wxCriticalSection_Delete
	(:name "wxCriticalSection_Delete")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type NIL)
	) ;; (:library +library-name+))

(ffi:def-call-out wxCriticalSection_Enter
	(:name "wxCriticalSection_Enter")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type NIL)
	) ;; (:library +library-name+))

(ffi:def-call-out wxCriticalSection_Leave
	(:name "wxCriticalSection_Leave")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type NIL)
	) ;; (:library +library-name+))

(ffi:def-call-out wxMutex_Create
	(:name "wxMutex_Create")
	(:return-type (ffi:c-pointer NIL))
	) ;; (:library +library-name+))

(ffi:def-call-out wxMutex_Delete
	(:name "wxMutex_Delete")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type NIL)
	) ;; (:library +library-name+))

(ffi:def-call-out wxMutex_Lock
	(:name "wxMutex_Lock")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	) ;; (:library +library-name+))

(ffi:def-call-out wxMutex_TryLock
	(:name "wxMutex_TryLock")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	) ;; (:library +library-name+))

(ffi:def-call-out wxMutex_Unlock
	(:name "wxMutex_Unlock")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	) ;; (:library +library-name+))

(ffi:def-call-out wxMutex_IsLocked
	(:name "wxMutex_IsLocked")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	) ;; (:library +library-name+))

(ffi:def-call-out wxCondition_Create
	(:name "wxCondition_Create")
	(:arguments (_mutex (ffi:c-pointer NIL)))
	(:return-type (ffi:c-pointer NIL))
	) ;; (:library +library-name+))

(ffi:def-call-out wxCondition_Delete
	(:name "wxCondition_Delete")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type NIL)
	) ;; (:library +library-name+))

(ffi:def-call-out wxCondition_Wait
	(:name "wxCondition_Wait")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type NIL)
	) ;; (:library +library-name+))

(ffi:def-call-out wxCondition_WaitFor
	(:name "wxCondition_WaitFor")
	(:arguments (_obj (ffi:c-pointer NIL))
		(sec ffi:int)
		(nsec ffi:int))
	(:return-type ffi:int)
	) ;; (:library +library-name+))

(ffi:def-call-out wxCondition_Signal
	(:name "wxCondition_Signal")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type NIL)
	) ;; (:library +library-name+))

(ffi:def-call-out wxCondition_Broadcast
	(:name "wxCondition_Broadcast")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type NIL)
	) ;; (:library +library-name+))

(ffi:def-call-out wxMutexGui_Enter
	(:name "wxMutexGui_Enter")
	(:return-type NIL)
	) ;; (:library +library-name+))

(ffi:def-call-out wxMutexGui_Leave
	(:name "wxMutexGui_Leave")
	(:return-type NIL)
	) ;; (:library +library-name+))

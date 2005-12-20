;;;wxThread.lisp
;;;License  : wxWindows License 3.1
;;;Author(s) : Surendra Singhi (surendra@asu.edu) 
;;;Copyright (C) 2005 Surendra Singhi 
;;;See the file LICENSE for information on usage and redistribution.
;;;
;;; $Header$
;;;

(in-package :wxcl-misc)

(defcfun ("wxCriticalSection_Create" wxCriticalSection_Create) :pointer)

(defcfun ("wxCriticalSection_Delete" wxCriticalSection_Delete) :void
  (_obj :pointer))

(defcfun ("wxCriticalSection_Enter" wxCriticalSection_Enter) :void
  (_obj :pointer))

(defcfun ("wxCriticalSection_Leave" wxCriticalSection_Leave) :void
  (_obj :pointer))

(defcfun ("wxMutex_Create" wxMutex_Create) :pointer)

(defcfun ("wxMutex_Delete" wxMutex_Delete) :void
  (_obj :pointer))

(defcfun ("wxMutex_Lock" wxMutex_Lock) :int
  (_obj :pointer))

(defcfun ("wxMutex_TryLock" wxMutex_TryLock) :int
  (_obj :pointer))

(defcfun ("wxMutex_Unlock" wxMutex_Unlock) :int
  (_obj :pointer))

(defcfun ("wxMutex_IsLocked" wxMutex_IsLocked) :int
  (_obj :pointer))

(defcfun ("wxCondition_Create" wxCondition_Create) :pointer
  (_mutex :pointer))

(defcfun ("wxCondition_Delete" wxCondition_Delete) :void
  (_obj :pointer))

(defcfun ("wxCondition_Wait" wxCondition_Wait) :void
  (_obj :pointer))

(defcfun ("wxCondition_WaitFor" wxCondition_WaitFor) :int
  (_obj :pointer)
  (sec :int)
  (nsec :int))

(defcfun ("wxCondition_Signal" wxCondition_Signal) :void
  (_obj :pointer))

(defcfun ("wxCondition_Broadcast" wxCondition_Broadcast) :void
  (_obj :pointer))

(defcfun ("wxMutexGui_Enter" wxMutexGui_Enter) :void)

(defcfun ("wxMutexGui_Leave" wxMutexGui_Leave) :void)

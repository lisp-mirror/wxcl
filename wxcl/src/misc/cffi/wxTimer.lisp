;;;wxTimer.lisp
;;;License  : wxWindows License 3.1
;;;Author(s) : Surendra Singhi (surendra@asu.edu) 
;;;Copyright (C) 2005 Surendra Singhi 
;;;See the file LICENSE for information on usage and redistribution.
;;;
;;; $Header$
;;;

(in-package :wxcl-misc)

(defcfun ("wxTimer_Create" wxTimer_Create) :pointer
  (_prt :pointer)
  (_id :int))

(defcfun ("wxTimer_Delete" wxTimer_Delete) :void
  (_obj :pointer))

(defcfun ("wxTimer_Start" wxTimer_Start) :int
  (_obj :pointer)
  (_int :int)
  (_one :int))

(defcfun ("wxTimer_Stop" wxTimer_Stop) :void
  (_obj :pointer))

(defcfun ("wxTimer_IsRuning" wxTimer_IsRuning) :int
  (_obj :pointer))

(defcfun ("wxTimer_IsOneShot" wxTimer_IsOneShot) :int
  (_obj :pointer))

(defcfun ("wxTimer_GetInterval" wxTimer_GetInterval) :int
  (_obj :pointer))

(defcfun ("wxStopWatch_Create" wxStopWatch_Create) :pointer)

(defcfun ("wxStopWatch_Delete" wxStopWatch_Delete) :void
  (_obj :pointer))

(defcfun ("wxStopWatch_Start" wxStopWatch_Start) :void
  (_obj :pointer)
  (_t :int))

(defcfun ("wxStopWatch_Pause" wxStopWatch_Pause) :void
  (_obj :pointer))

(defcfun ("wxStopWatch_Resume" wxStopWatch_Resume) :void
  (_obj :pointer))

(defcfun ("wxStopWatch_Time" wxStopWatch_Time) :int
  (_obj :pointer))

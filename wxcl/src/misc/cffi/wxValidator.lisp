;;;wxValidator.lisp
;;;License  : wxWindows License 3.1
;;;Author(s) : Surendra Singhi (surendra@asu.edu) 
;;;Copyright (C) 2005 Surendra Singhi 
;;;See the file LICENSE for information on usage and redistribution.
;;;
;;; $Header$
;;;

(in-package :wxcl-misc)

(defcfun ("wxValidator_Create" wxValidator_Create) :pointer)

(defcfun ("wxValidator_Delete" wxValidator_Delete) :void
  (_obj :pointer))

(defcfun ("wxValidator_Validate" wxValidator_Validate) :int
  (_obj :pointer)
  (parent :pointer))

(defcfun ("wxValidator_TransferToWindow" wxValidator_TransferToWindow) :int
  (_obj :pointer))

(defcfun ("wxValidator_TransferFromWindow" wxValidator_TransferFromWindow) :int
  (_obj :pointer))

(defcfun ("wxValidator_GetWindow" wxValidator_GetWindow) :pointer
  (_obj :pointer))

(defcfun ("wxValidator_SetWindow" wxValidator_SetWindow) :void
  (_obj :pointer)
  (win :pointer))

(defcfun ("wxValidator_IsSilent" wxValidator_IsSilent) :int)

(defcfun ("wxValidator_SetBellOnError" wxValidator_SetBellOnError) :void
  (doIt :int))

(defcfun ("wxTextValidator_Create" wxTextValidator_Create) :pointer
  (style :int)
  (val :pointer))

(defcfun ("wxTextValidator_GetStyle" wxTextValidator_GetStyle) :int
  (_obj :pointer))

(defcfun ("wxTextValidator_SetStyle" wxTextValidator_SetStyle) :void
  (_obj :pointer)
  (style :int))

(defcfun ("wxTextValidator_SetIncludes" wxTextValidator_SetIncludes) :void
  (_obj :pointer)
  (list :pointer)
  (count :int))

(defcfun ("wxTextValidator_GetIncludes" wxTextValidator_GetIncludes) :int
  (_obj :pointer)
  (_ref :pointer))

(defcfun ("wxTextValidator_SetExcludes" wxTextValidator_SetExcludes) :void
  (_obj :pointer)
  (list :pointer)
  (count :int))

(defcfun ("wxTextValidator_GetExcludeList" wxTextValidator_GetExcludeList) :int
  (_obj :pointer)
  (_ref :pointer))

(defcfun ("wxTextValidator_OnChar" wxTextValidator_OnChar) :void
  (_obj :pointer)
  (event :pointer))

(defcfun ("ELJTextValidator_Create" ELJTextValidator_Create) :pointer
  (_obj :pointer)
  (_fnc :pointer)
  (_txt :pointer)
  (_stl :long))

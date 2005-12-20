;;;wxFileHist.lisp
;;;License  : wxWindows License 3.1
;;;Author(s) : Surendra Singhi (surendra@asu.edu) 
;;;Copyright (C) 2005 Surendra Singhi 
;;;See the file LICENSE for information on usage and redistribution.
;;;
;;; $Header$
;;;

(in-package :wxcl-misc)

(defcfun ("wxFileHistory_Create" wxFileHistory_Create) :pointer
  (maxFiles :int))

(defcfun ("wxFileHistory_Delete" wxFileHistory_Delete) :void
  (_obj :pointer))

(defcfun ("wxFileHistory_AddFileToHistory" wxFileHistory_AddFileToHistory) :void
  (_obj :pointer)
  (file :pointer))

(defcfun ("wxFileHistory_RemoveFileFromHistory" wxFileHistory_RemoveFileFromHistory) :void
  (_obj :pointer)
  (i :int))

(defcfun ("wxFileHistory_GetMaxFiles" wxFileHistory_GetMaxFiles) :int
  (_obj :pointer))

(defcfun ("wxFileHistory_UseMenu" wxFileHistory_UseMenu) :void
  (_obj :pointer)
  (menu :pointer))

(defcfun ("wxFileHistory_RemoveMenu" wxFileHistory_RemoveMenu) :void
  (_obj :pointer)
  (menu :pointer))

(defcfun ("wxFileHistory_Load" wxFileHistory_Load) :void
  (_obj :pointer)
  (config :pointer))

(defcfun ("wxFileHistory_Save" wxFileHistory_Save) :void
  (_obj :pointer)
  (config :pointer))

(defcfun ("wxFileHistory_AddFilesToMenu" wxFileHistory_AddFilesToMenu) :void
  (_obj :pointer)
  (menu :pointer))

(defcfun ("wxFileHistory_GetHistoryFile" wxFileHistory_GetHistoryFile) :int
  (_obj :pointer)
  (i :int)
  (_buf :pointer))

(defcfun ("wxFileHistory_GetCount" wxFileHistory_GetCount) :int
  (_obj :pointer))

(defcfun ("wxFileHistory_GetNoHistoryFiles" wxFileHistory_GetNoHistoryFiles) :int
  (_obj :pointer))

(defcfun ("wxFileHistory_GetMenus" wxFileHistory_GetMenus) :int
  (_obj :pointer)
  (_ref :pointer))

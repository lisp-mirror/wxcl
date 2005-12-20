;;;wxMenuBar.lisp
;;;License  : wxWindows License 3.1
;;;Author(s) : Surendra Singhi (surendra@asu.edu) 
;;;Copyright (C) 2005 Surendra Singhi 
;;;See the file LICENSE for information on usage and redistribution.
;;;
;;; $Header$
;;;

(in-package :wxcl-menus)

(defcfun ("wxMenuBar_Create" wxMenuBar_Create) :pointer
  (_style :int))

(defcfun ("wxMenuBar_DeletePointer" wxMenuBar_DeletePointer) :void
  (_obj :pointer))

(defcfun ("wxMenuBar_Append" wxMenuBar_Append) :int
  (_obj :pointer)
  (menu :pointer)
  (title :string))

(defcfun ("wxMenuBar_Insert" wxMenuBar_Insert) :int
  (_obj :pointer)
  (pos :int)
  (menu :pointer)
  (title :string))

(defcfun ("wxMenuBar_GetMenuCount" wxMenuBar_GetMenuCount) :int
  (_obj :pointer))

(defcfun ("wxMenuBar_GetMenu" wxMenuBar_GetMenu) :pointer
  (_obj :pointer)
  (pos :int))

(defcfun ("wxMenuBar_Replace" wxMenuBar_Replace) :pointer
  (_obj :pointer)
  (pos :int)
  (menu :pointer)
  (title :string))

(defcfun ("wxMenuBar_Remove" wxMenuBar_Remove) :pointer
  (_obj :pointer)
  (pos :int))

(defcfun ("wxMenuBar_EnableTop" wxMenuBar_EnableTop) :void
  (_obj :pointer)
  (pos :int)
  (enable :int))

(defcfun ("wxMenuBar_SetLabelTop" wxMenuBar_SetLabelTop) :void
  (_obj :pointer)
  (pos :int)
  (label :string))

(defcfun ("wxMenuBar_GetLabelTop" wxMenuBar_GetLabelTop) :lisp-string
  (_obj :pointer)
  (pos :int))

(defcfun ("wxMenuBar_FindMenuItem" wxMenuBar_FindMenuItem) :int
  (_obj :pointer)
  (menuString :string)
  (itemString :string))

(defcfun ("wxMenuBar_FindItem" wxMenuBar_FindItem) :pointer
  (_obj :pointer)
  (id :int)
  (menu :pointer))

(defcfun ("wxMenuBar_FindMenu" wxMenuBar_FindMenu) :int
  (_obj :pointer)
  (title :string))

(defcfun ("wxMenuBar_EnableItem" wxMenuBar_EnableItem) :void
  (_obj :pointer)
  (id :int)
  (enable :int))

(defcfun ("wxMenuBar_Check" wxMenuBar_Check) :void
  (_obj :pointer)
  (id :int)
  (check :int))

(defcfun ("wxMenuBar_IsChecked" wxMenuBar_IsChecked) :int
  (_obj :pointer)
  (id :int))

(defcfun ("wxMenuBar_IsEnabled" wxMenuBar_IsEnabled) :int
  (_obj :pointer)
  (id :int))

(defcfun ("wxMenuBar_SetLabel" wxMenuBar_SetLabel) :void
  (_obj :pointer)
  (id :int)
  (label :string))

(defcfun ("wxMenuBar_GetLabel" wxMenuBar_GetLabel) :lisp-string
  (_obj :pointer)
  (id :int))

(defcfun ("wxMenuBar_SetHelpString" wxMenuBar_SetHelpString) :void
  (_obj :pointer)
  (id :int)
  (helpString :string))

(defcfun ("wxMenuBar_GetHelpString" wxMenuBar_GetHelpString) :lisp-string
  (_obj :pointer)
  (id :int))

(defcfun ("wxMenuBar_Enable" wxMenuBar_Enable) :void
  (_obj :pointer)
  (enable :int))

(defcfun ("wxMenuBar_Refresh" wxMenuBar_Refresh) :void
  (_obj :pointer))

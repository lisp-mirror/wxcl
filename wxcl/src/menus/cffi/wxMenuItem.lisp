;;;wxMenuItem.lisp
;;;License  : wxWindows License 3.1
;;;Author(s) : Surendra Singhi (surendra@asu.edu) 
;;;Copyright (C) 2005 Surendra Singhi 
;;;See the file LICENSE for information on usage and redistribution.
;;;
;;; $Header$
;;;

(in-package :wxcl-menus)

(defcfun ("wxMenuItem_Create" wxMenuItem_Create) :pointer
  (parentMenu :pointer)
  (id :int)
  (text :string)
  (helpstr :string)
  (itemkind :int)
  (submenu :pointer))

(defcfun ("wxMenuItem_Delete" wxMenuItem_Delete) :void
  (_obj :pointer))

(defcfun ("wxMenuItem_GetMenu" wxMenuItem_GetMenu) :pointer
  (_obj :pointer))

(defcfun ("wxMenuItem_SetMenu" wxMenuItem_SetMenu) :void
  (_obj :pointer)
  (parent :pointer))

(defcfun ("wxMenuItem_SetId" wxMenuItem_SetId) :void
  (_obj :pointer)
  (id :int))

(defcfun ("wxMenuItem_GetId" wxMenuItem_GetId) :int
  (_obj :pointer))

(defcfun ("wxMenuItem_IsSeparator" wxMenuItem_IsSeparator) :int
  (_obj :pointer))

(defcfun ("wxMenuItem_SetText" wxMenuItem_SetText) :void
  (_obj :pointer)
  (str :pointer))

(defcfun ("wxMenuItem_GetLabel" wxMenuItem_GetLabel) :lisp-string
  (_obj :pointer))

(defcfun ("wxMenuItem_GetText" wxMenuItem_GetText) :lisp-string
  (_obj :pointer))

(defcfun ("wxMenuItem_GetLabelFromText" wxMenuItem_GetLabelFromText) :lisp-string
  (text :string))

(defcfun ("wxMenuItem_SetCheckable" wxMenuItem_SetCheckable) :void
  (_obj :pointer)
  (checkable :int))

(defcfun ("wxMenuItem_IsCheckable" wxMenuItem_IsCheckable) :int
  (_obj :pointer))

(defcfun ("wxMenuItem_IsSubMenu" wxMenuItem_IsSubMenu) :int
  (_obj :pointer))

(defcfun ("wxMenuItem_SetSubMenu" wxMenuItem_SetSubMenu) :void
  (_obj :pointer)
  (menu :pointer))

(defcfun ("wxMenuItem_GetSubMenu" wxMenuItem_GetSubMenu) :pointer
  (_obj :pointer))

(defcfun ("wxMenuItem_Enable" wxMenuItem_Enable) :void
  (_obj :pointer)
  (enable :int))

(defcfun ("wxMenuItem_IsEnabled" wxMenuItem_IsEnabled) :int
  (_obj :pointer))

(defcfun ("wxMenuItem_Check" wxMenuItem_Check) :void
  (_obj :pointer)
  (check :int))

(defcfun ("wxMenuItem_IsChecked" wxMenuItem_IsChecked) :int
  (_obj :pointer))

(defcfun ("wxMenuItem_SetHelp" wxMenuItem_SetHelp) :void
  (_obj :pointer)
  (str :pointer))

(defcfun ("wxMenuItem_GetHelp" wxMenuItem_GetHelp) :lisp-string
  (_obj :pointer))

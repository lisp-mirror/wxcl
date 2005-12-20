;;;wxMDI.lisp
;;;License  : wxWindows License 3.1
;;;Author(s) : Surendra Singhi (surendra@asu.edu) 
;;;Copyright (C) 2005 Surendra Singhi 
;;;See the file LICENSE for information on usage and redistribution.
;;;
;;; $Header$
;;;

(in-package :wxcl-windows)

(defcfun ("wxMDIParentFrame_Create" wxMDIParentFrame_Create) :pointer
  (_prt :pointer)
  (_id :int)
  (_txt :string)
  (_lft :int)
  (_top :int)
  (_wdt :int)
  (_hgt :int)
  (_stl :int))

(defcfun ("wxMDIParentFrame_GetActiveChild" wxMDIParentFrame_GetActiveChild) :pointer
  (_obj :pointer))

(defcfun ("wxMDIParentFrame_GetClientWindow" wxMDIParentFrame_GetClientWindow) :pointer
  (_obj :pointer))

(defcfun ("wxMDIParentFrame_OnCreateClient" wxMDIParentFrame_OnCreateClient) :pointer
  (_obj :pointer))

(defcfun ("wxMDIParentFrame_GetWindowMenu" wxMDIParentFrame_GetWindowMenu) :pointer
  (_obj :pointer))

(defcfun ("wxMDIParentFrame_SetWindowMenu" wxMDIParentFrame_SetWindowMenu) :void
  (_obj :pointer)
  (menu :pointer))

(defcfun ("wxMDIParentFrame_Cascade" wxMDIParentFrame_Cascade) :void
  (_obj :pointer))

(defcfun ("wxMDIParentFrame_Tile" wxMDIParentFrame_Tile) :void
  (_obj :pointer))

(defcfun ("wxMDIParentFrame_ArrangeIcons" wxMDIParentFrame_ArrangeIcons) :void
  (_obj :pointer))

(defcfun ("wxMDIParentFrame_ActivateNext" wxMDIParentFrame_ActivateNext) :void
  (_obj :pointer))

(defcfun ("wxMDIParentFrame_ActivatePrevious" wxMDIParentFrame_ActivatePrevious) :void
  (_obj :pointer))

(defcfun ("wxMDIChildFrame_Create" wxMDIChildFrame_Create) :pointer
  (_prt :pointer)
  (_id :int)
  (_txt :string)
  (_lft :int)
  (_top :int)
  (_wdt :int)
  (_hgt :int)
  (_stl :int))

(defcfun ("wxMDIChildFrame_Activate" wxMDIChildFrame_Activate) :void
  (_obj :pointer))

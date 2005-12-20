(in-package :wxcl-dialogs)

(defcfun ("wxDirDialog_Create" wxDirDialog_Create) :pointer
  (_prt :pointer)
  (_msg :pointer)
  (_dir :pointer)
  (_lft :int)
  (_top :int)
  (_stl :int))

(defcfun ("wxDirDialog_SetMessage" wxDirDialog_SetMessage) :void
  (_obj :pointer)
  (msg :pointer))

(defcfun ("wxDirDialog_SetPath" wxDirDialog_SetPath) :void
  (_obj :pointer)
  (pth :pointer))

(defcfun ("wxDirDialog_SetStyle" wxDirDialog_SetStyle) :void
  (_obj :pointer)
  (style :int))

(defcfun ("wxDirDialog_GetMessage" wxDirDialog_GetMessage) :lisp-string
  (_obj :pointer))

(defcfun ("wxDirDialog_GetPath" wxDirDialog_GetPath) :lisp-string
  (_obj :pointer))

(defcfun ("wxDirDialog_GetStyle" wxDirDialog_GetStyle) :int
  (_obj :pointer))

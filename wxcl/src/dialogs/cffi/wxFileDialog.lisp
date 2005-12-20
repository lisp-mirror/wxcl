(in-package :wxcl-dialogs)

(defcfun ("wxFileDialog_Create" wxFileDialog_Create) :pointer
  (_prt :pointer)
  (_msg :pointer)
  (_dir :pointer)
  (_fle :pointer)
  (_wcd :pointer)
  (_lft :int)
  (_top :int)
  (_stl :int))

(defcfun ("wxFileDialog_SetMessage" wxFileDialog_SetMessage) :void
  (_obj :pointer)
  (message :pointer))

(defcfun ("wxFileDialog_SetPath" wxFileDialog_SetPath) :void
  (_obj :pointer)
  (path :pointer))

(defcfun ("wxFileDialog_SetDirectory" wxFileDialog_SetDirectory) :void
  (_obj :pointer)
  (dir :pointer))

(defcfun ("wxFileDialog_SetFilename" wxFileDialog_SetFilename) :void
  (_obj :pointer)
  (name :pointer))

(defcfun ("wxFileDialog_SetWildcard" wxFileDialog_SetWildcard) :void
  (_obj :pointer)
  (wildCard :pointer))

(defcfun ("wxFileDialog_SetStyle" wxFileDialog_SetStyle) :void
  (_obj :pointer)
  (style :int))

(defcfun ("wxFileDialog_SetFilterIndex" wxFileDialog_SetFilterIndex) :void
  (_obj :pointer)
  (filterIndex :int))

(defcfun ("wxFileDialog_GetMessage" wxFileDialog_GetMessage) :lisp-string
  (_obj :pointer))

(defcfun ("wxFileDialog_GetPath" wxFileDialog_GetPath) :lisp-string
  (_obj :pointer))

(defcfun ("wxFileDialog_GetPaths" wxFileDialog_GetPaths) :pointer
  (_obj :pointer))

(defcfun ("wxFileDialog_GetDirectory" wxFileDialog_GetDirectory) :lisp-string
  (_obj :pointer))

(defcfun ("wxFileDialog_GetFilename" wxFileDialog_GetFilename) :lisp-string
  (_obj :pointer))

(defcfun ("wxFileDialog_GetFilenames" wxFileDialog_GetFilenames) :pointer
  (_obj :pointer))

(defcfun ("wxFileDialog_GetWildcard" wxFileDialog_GetWildcard) :lisp-string
  (_obj :pointer))

(defcfun ("wxFileDialog_GetStyle" wxFileDialog_GetStyle) :int
  (_obj :pointer))

(defcfun ("wxFileDialog_GetFilterIndex" wxFileDialog_GetFilterIndex) :int
  (_obj :pointer))

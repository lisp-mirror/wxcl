(in-package :wxcl-dialogs)

(defcfun ("wxFontDialog_Create" wxFontDialog_Create) :pointer
  (_prt :pointer)
  (fnt :pointer))

(defcfun ("wxFontDialog_GetFontData" wxFontDialog_GetFontData) :void
  (_obj :pointer)
  (_ref :pointer))

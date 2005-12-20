(in-package :wxcl-dialogs)

(defcfun ("wxColourDialog_Create" wxColourDialog_Create) :pointer
  (_prt :pointer)
  (col :pointer))

(defcfun ("wxColourDialog_GetColourData" wxColourDialog_GetColourData) :void
  (_obj :pointer)
  (col :pointer))

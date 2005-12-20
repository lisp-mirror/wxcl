(in-package :wxcl-dialogs)

(defcfun ("wxMessageDialog_Create" wxMessageDialog_Create) :pointer
  (_prt :pointer)
  (_msg :pointer)
  (_cap :pointer)
  (_stl :int))

(defcfun ("wxMessageDialog_Delete" wxMessageDialog_Delete) :void
  (_obj :pointer))

(defcfun ("wxMessageDialog_ShowModal" wxMessageDialog_ShowModal) :int
  (_obj :pointer))

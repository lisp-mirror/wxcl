
(in-package :wxcl)

(defcfun ("wxPreviewFrame_Create" wxPreviewFrame_Create) :pointer
  (preview :pointer)
  (parent :pointer)
  (title :pointer)
  (x :int)
  (y :int)
  (w :int)
  (h :int)
  (style :int)
  (name :pointer))

(defcfun ("wxPreviewFrame_Delete" wxPreviewFrame_Delete) :void
  (self :pointer))

(defcfun ("wxPreviewFrame_Initialize" wxPreviewFrame_Initialize) :void
  (self :pointer))

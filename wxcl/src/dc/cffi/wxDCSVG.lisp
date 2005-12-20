
(in-package :wxcl)

(defcfun ("wxSVGFileDC_Create" wxSVGFileDC_Create) :pointer
  (a_filename :pointer))

(defcfun ("wxSVGFileDC_CreateWithSize" wxSVGFileDC_CreateWithSize) :pointer
  (a_filename :pointer)
  (a_width :int)
  (a_height :int))

(defcfun ("wxSVGFileDC_CreateWithSizeAndResolution" wxSVGFileDC_CreateWithSizeAndResolution) :pointer
  (a_filename :pointer)
  (a_width :int)
  (a_height :int)
  (a_dpi :float))

(defcfun ("wxSVGFileDC_Delete" wxSVGFileDC_Delete) :void
  (_obj :pointer))

(defcfun ("wxSVGFileDC_ComputeScaleAndOrigin" wxSVGFileDC_ComputeScaleAndOrigin) :void
  (_obj :pointer))

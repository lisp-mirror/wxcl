;;;wxGLCanvas.lisp
;;;License  : wxWindows License 3.1
;;;Author(s) : Surendra Singhi (surendra@asu.edu) 
;;;Copyright (C) 2005 Surendra Singhi 
;;;See the file LICENSE for information on usage and redistribution.
;;;
;;; $Header$
;;;

(in-package :wxcl-misc)

(defcfun ("wxGLCanvas_Create" wxGLCanvas_Create) :pointer
  (parent :pointer)
  (windowID :int)
  (x :int)
  (y :int)
  (w :int)
  (h :int)
  (style :int)
  (title :pointer)
  (attributes :int)
  (palette :pointer))

(defcfun ("wxGLCanvas_CreateShared" wxGLCanvas_CreateShared) :pointer
  (parent :pointer)
  (sharedCanvas :pointer)
  (windowID :int)
  (x :int)
  (y :int)
  (w :int)
  (h :int)
  (style :int)
  (title :pointer)
  (attributes :int)
  (palette :pointer))

(defcfun ("wxGLCanvas_SetCurrent" wxGLCanvas_SetCurrent) :void
  (self :pointer))

(defcfun ("wxGLCanvas_SetColour" wxGLCanvas_SetColour) :void
  (self :pointer)
  (colour :pointer))

(defcfun ("wxGLCanvas_SwapBuffers" wxGLCanvas_SwapBuffers) :void
  (self :pointer))

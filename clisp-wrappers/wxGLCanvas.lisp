;;;wxGLCanvas.lisp
;;;License  : GNU General Public License (GPL)
;;;Author(s) : Surendra Singhi (surendra@asu.edu) 
;;;Copyright (C) 2005 Surendra Singhi 
;;;See the file LICENSE for information on usage and redistribution.
;;;
;;; $Header$
;;;

(defpackage :wxGLCanvas
    (:use :common-lisp :ffi :wxCL)
  (:export :wxGLCanvas_Create
	   :wxGLCanvas_CreateShared
	   :wxGLCanvas_SetCurrent
	   :wxGLCanvas_SetColour
	   :wxGLCanvas_SwapBuffers))

(in-package :wxGLCanvas)

(default-foreign-language :stdc)

(ffi:def-call-out wxGLCanvas_Create
    (:name "wxGLCanvas_Create")
  (:arguments (parent (ffi:c-pointer NIL))
	      (windowID ffi:int)
	      (x ffi:int)
	      (y ffi:int)
	      (w ffi:int)
	      (h ffi:int)
	      (style ffi:int)
	      (title ffi:c-string)
	      (attributes (ffi:c-ptr ffi:int))
	      (palette (ffi:c-pointer NIL)))
  (:return-type (ffi:c-pointer NIL))
  (:library +library-name+))

(ffi:def-call-out wxGLCanvas_CreateShared
    (:name "wxGLCanvas_CreateShared")
  (:arguments (parent (ffi:c-pointer NIL))
	      (sharedCanvas (ffi:c-pointer NIL))
	      (windowID ffi:int)
	      (x ffi:int)
	      (y ffi:int)
	      (w ffi:int)
	      (h ffi:int)
	      (style ffi:int)
	      (title ffi:c-string)
	      (attributes (ffi:c-ptr ffi:int))
	      (palette (ffi:c-pointer NIL)))
  (:return-type (ffi:c-pointer NIL))
  (:library +library-name+))

(ffi:def-call-out wxGLCanvas_SetCurrent
    (:name "wxGLCanvas_SetCurrent")
  (:arguments (self (ffi:c-pointer NIL)))
  (:library +library-name+))

(ffi:def-call-out wxGLCanvas_SetColour
    (:name "wxGLCanvas_SetColour")
  (:arguments (self (ffi:c-pointer NIL))
	      (colour (ffi:c-pointer NIL)))
  (:library +library-name+))

(ffi:def-call-out wxGLCanvas_SwapBuffers
    (:name "wxGLCanvas_SwapBuffers")
  (:arguments (self (ffi:c-pointer NIL)))
  (:library +library-name+))

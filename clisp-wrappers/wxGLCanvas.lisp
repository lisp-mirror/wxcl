;;;wxGLCanvas.lisp
;;;License  : GNU General Public License (GPL)
;;;Author(s) : Surendra Singhi (surendra@asu.edu) 
;;;Copyright (C) 2005 Surendra Singhi 
;;;See the file LICENSE for information on usage and redistribution.
;;;
;;; $Header$
;;;
;; This is an automatically generated file. 
;;Make changes as you feel are necessary (but remember if you try to regenerate this file, your changes will be lost). 

(defpackage :wxGLCanvas
  (:use :common-lisp :ffi)
  (:export
	:wxGLCanvas_Create
	:wxGLCanvas_CreateShared
	:wxGLCanvas_SetCurrent
	:wxGLCanvas_SetColour
	:wxGLCanvas_SwapBuffers))

(in-package :wxGLCanvas)

(default-foreign-language :stdc)

(ffi:def-call-out wxGLCanvas_Create
	(:name "wxGLCanvas_Create")
	(:arguments (parent (ffi:c-pointer wxWindow))
		(windowID ffi:int)
		(x ffi:int)
		(y ffi:int)
		(w ffi:int)
		(h ffi:int)
		(style ffi:int)
		(title (ffi:c-pointer wxString))
		(attributes (ffi:c-ptr ffi:int))
		(palette (ffi:c-pointer wxPalette)))
	(:return-type (ffi:c-pointer NIL))
	(:library +library-name+))

(ffi:def-call-out wxGLCanvas_CreateShared
	(:name "wxGLCanvas_CreateShared")
	(:arguments (parent (ffi:c-pointer wxWindow))
		(sharedCanvas (ffi:c-pointer NIL))
		(windowID ffi:int)
		(x ffi:int)
		(y ffi:int)
		(w ffi:int)
		(h ffi:int)
		(style ffi:int)
		(title (ffi:c-pointer wxString))
		(attributes (ffi:c-ptr ffi:int))
		(palette (ffi:c-pointer wxPalette)))
	(:return-type (ffi:c-pointer NIL))
	(:library +library-name+))

(ffi:def-call-out wxGLCanvas_SetCurrent
	(:name "wxGLCanvas_SetCurrent")
	(:arguments (self (ffi:c-pointer NIL)))
	(:library +library-name+))

(ffi:def-call-out wxGLCanvas_SetColour
	(:name "wxGLCanvas_SetColour")
	(:arguments (self (ffi:c-pointer NIL))
		(colour (ffi:c-pointer wxColour)))
	(:library +library-name+))

(ffi:def-call-out wxGLCanvas_SwapBuffers
	(:name "wxGLCanvas_SwapBuffers")
	(:arguments (self (ffi:c-pointer NIL)))
	(:library +library-name+))

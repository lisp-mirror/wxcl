;;;wxFontDialog.lisp
;;;License   : BSD-style
;;;Author(s) : Surendra Singhi (surendra@asu.edu) 
;;;Copyright (C) 2005 Surendra Singhi 
;;;See the file LICENSE for information on usage and redistribution.
;;;
;;; $Header$
;;;
;; This is an automatically generated file. 
;;Make changes as you feel are necessary (but remember if you try to regenerate this file, your changes will be lost). 

(defpackage :wxFontDlg
  (:use :common-lisp :ffi)
  (:export
	:wxFontDialog_Create
	:wxFontDialog_GetFontData))

(in-package :wxFontDlg)

(ffi:def-call-out wxFontDialog_Create
	(:name "wxFontDialog_Create")
	(:arguments (_prt (ffi:c-pointer NIL))
		(fnt (ffi:c-pointer NIL)))
	(:return-type (ffi:c-pointer NIL))
	(:library +library-name+))

(ffi:def-call-out wxFontDialog_GetFontData
	(:name "wxFontDialog_GetFontData")
	(:arguments (_obj (ffi:c-pointer NIL))
		(_ref (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

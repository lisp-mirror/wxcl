;;;wxPreviewFrame.lisp
;;;License  : GNU General Public License (GPL)
;;;Author(s) : Surendra Singhi (surendra@asu.edu) 
;;;Copyright (C) 2005 Surendra Singhi 
;;;See the file LICENSE for information on usage and redistribution.
;;;
;;; $Header$
;;;
;; This is an automatically generated file. 
;;Make changes as you feel are necessary (but remember if you try to regenerate this file, your changes will be lost). 

(defpackage :wxPreviewFrame
  (:use :common-lisp :ffi)
  (:export
	:wxPreviewFrame_Create
	:wxPreviewFrame_Delete
	:wxPreviewFrame_Initialize))

(in-package :wxPreviewFrame)

(default-foreign-language :stdc)

(ffi:def-call-out wxPreviewFrame_Create
	(:name "wxPreviewFrame_Create")
	(:arguments (preview (ffi:c-pointer wxPrintPreview))
		(parent (ffi:c-pointer wxFrame))
		(title (ffi:c-pointer wxString))
		(x ffi:int)
		(y ffi:int)
		(w ffi:int)
		(h ffi:int)
		(style ffi:int)
		(name (ffi:c-pointer wxString)))
	(:return-type (ffi:c-pointer wxPreviewFrame))
	(:library +library-name+))

(ffi:def-call-out wxPreviewFrame_Delete
	(:name "wxPreviewFrame_Delete")
	(:arguments (self (ffi:c-pointer wxPreviewFrame)))
	(:library +library-name+))

(ffi:def-call-out wxPreviewFrame_Initialize
	(:name "wxPreviewFrame_Initialize")
	(:arguments (self (ffi:c-pointer wxPreviewFrame)))
	(:library +library-name+))

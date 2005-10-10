;;;wxPreviewFrame.lisp
;;;License  : wxWindows License 3.1
;;;Author(s) : Surendra Singhi (surendra@asu.edu) 
;;;Copyright (C) 2005 Surendra Singhi 
;;;See the file LICENSE for information on usage and redistribution.
;;;
;;; $Header$
;;;

(defpackage :wxPreviewFrame
    (:use :common-lisp :ffi :wxCL)
  (:export :wxPreviewFrame_Create
	   :wxPreviewFrame_Delete
	   :wxPreviewFrame_Initialize))

(in-package :wxPreviewFrame)

(default-foreign-language :stdc)

(ffi:def-call-out wxPreviewFrame_Create
    (:name "wxPreviewFrame_Create")
  (:arguments (preview (ffi:c-pointer nil))
	      (parent (ffi:c-pointer nil))
	      (title ffi:c-string)
	      (x ffi:int)
	      (y ffi:int)
	      (w ffi:int)
	      (h ffi:int)
	      (style ffi:int)
	      (name ffi:c-string))
  (:return-type (ffi:c-pointer nil))
  (:library +library-name+))

(ffi:def-call-out wxPreviewFrame_Delete
    (:name "wxPreviewFrame_Delete")
  (:arguments (self (ffi:c-pointer nil)))
  (:library +library-name+))

(ffi:def-call-out wxPreviewFrame_Initialize
    (:name "wxPreviewFrame_Initialize")
  (:arguments (self (ffi:c-pointer nil)))
  (:library +library-name+))

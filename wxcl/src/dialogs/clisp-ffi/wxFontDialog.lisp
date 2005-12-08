;;;wxFontDialog.lisp
;;;License  : wxWindows License 3.1
;;;Author(s) : Surendra Singhi (surendra@asu.edu) 
;;;Copyright (C) 2005 Surendra Singhi 
;;;See the file LICENSE for information on usage and redistribution.
;;;
;;; $Header$
;;;

; (defpackage :wxFontDialog
;     (:use :common-lisp :ffi :WxCL :wxWindow :wxDialog :wxFontData)
;   (:export :wxFontDialog_Create
; 	   :wxFontDialog_GetFontData
; 	   :wxcl-get-font-data
; 	   :wxcl-with-font-dialog))

(in-package :wxcl-dialogs)

(ffi:default-foreign-language :stdc)

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



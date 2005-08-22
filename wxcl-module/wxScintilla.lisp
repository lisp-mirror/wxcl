;;;wxScintilla.lisp
;;;License  : GNU General Public License (GPL)
;;;Author(s) : Surendra Singhi (surendra@asu.edu) 
;;;Copyright (C) 2005 Surendra Singhi 
;;;See the file LICENSE for information on usage and redistribution.
;;;
;;; $Header$
;;;

; (defpackage :wxScintilla
;   (:use :common-lisp :ffi :wxCL)
;   (:export
; 	:scintilla_new
; 	:scintilla_set_id
; 	:scintilla_send_message))

; (in-package :wxScintilla)

; (ffi:default-foreign-language :stdc)

(ffi:c-lines "#include <wxc.h>~%")

; (defconstant SCINTILLA_NOTIFY "notify")
; (def-c-type GtkWidget nil)

; (ffi:def-call-out scintilla_new
; 	(:name "scintilla_new")
; 	(:return-type (ffi:c-pointer GtkWidget))
; 	) ;; (:library +library-name+))

; (ffi:def-call-out scintilla_set_id
; 	(:name "scintilla_set_id")
; 	(:arguments (arg0 (ffi:c-pointer GtkWidget))
; 		(id ffi:int))
; 	(:return-type NIL)
; 	) ;; (:library +library-name+))

; (ffi:def-call-out scintilla_send_message
; 	(:name "scintilla_send_message")
; 	(:arguments (arg0 (ffi:c-pointer GtkWidget))
; 		(iMessage ffi:uint)
; 		(wParam ffi:ulong)
; 		(lParam ffi:long))
; 	(:return-type ffi:long)
; 	) ;; (:library +library-name+))

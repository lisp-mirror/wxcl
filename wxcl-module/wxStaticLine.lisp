;;;wxStaticLine.lisp
;;;License  : GNU General Public License (GPL)
;;;Author(s) : Surendra Singhi (surendra@asu.edu) 
;;;Copyright (C) 2005 Surendra Singhi 
;;;See the file LICENSE for information on usage and redistribution.
;;;
;;; $Header$
;;;

(defpackage :wxStaticLine
  (:use :common-lisp :ffi :wxCL)
  (:export
	:wxStaticLine_Create
	:wxStaticLine_IsVertical
	:wxStaticLine_GetDefaultSize
	:wxcl-create-static-line
	:wxLI_HORIZONTAL
	:wxLI_VERTICAL))

(in-package :wxStaticLine)

(ffi:default-foreign-language :stdc)

(ffi:c-lines "#include <wxc.h>~%")

(defconstant wxLI_HORIZONTAL 4)
(defconstant wxLI_VERTICAL 8)

(ffi:def-call-out wxStaticLine_Create
	(:name "wxStaticLine_Create")
	(:arguments (_prt (ffi:c-pointer NIL))
		(_id ffi:int)
		(_lft ffi:int)
		(_top ffi:int)
		(_wdt ffi:int)
		(_hgt ffi:int)
		(_stl ffi:int))
	(:return-type (ffi:c-pointer NIL))
	) ;; (:library +library-name+))

(defmacro wxcl-create-static-line (frame &key (id -1) (left -1) (top -1) (width -1) (height -1)
					(style wxLI_HORIZONTAL))
  "Creates a static line."
  `(wxStaticLine_Create ,frame ,id ,left ,top ,width ,height ,style))

(ffi:def-call-out wxStaticLine_IsVertical
	(:name "wxStaticLine_IsVertical")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	) ;; (:library +library-name+))

(ffi:def-call-out wxStaticLine_GetDefaultSize
	(:name "wxStaticLine_GetDefaultSize")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	) ;; (:library +library-name+))

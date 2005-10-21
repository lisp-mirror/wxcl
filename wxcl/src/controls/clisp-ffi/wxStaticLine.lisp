;;;wxStaticLine.lisp
;;;License  : wxWindows License 3.1
;;;Author(s) : Surendra Singhi (surendra@asu.edu) 
;;;Copyright (C) 2005 Surendra Singhi 
;;;See the file LICENSE for information on usage and redistribution.
;;;
;;; $Header$
;;;

; 	:wxLI_HORIZONTAL
; 	:wxLI_VERTICAL))

(in-package :wxcl-controls)

(ffi:default-foreign-language :stdc)

; (defconstant wxLI_HORIZONTAL 4)
; (defconstant wxLI_VERTICAL 8)

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
	(:library +library-name+))

(ffi:def-call-out wxStaticLine_IsVertical
	(:name "wxStaticLine_IsVertical")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxStaticLine_GetDefaultSize
	(:name "wxStaticLine_GetDefaultSize")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

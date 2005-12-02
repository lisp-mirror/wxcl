;;;wxWizard.lisp
;;;License  : wxWindows License 3.1
;;;Author(s) : Surendra Singhi (surendra@asu.edu) 
;;;Copyright (C) 2005 Surendra Singhi 
;;;See the file LICENSE for information on usage and redistribution.
;;;
;;; $Header$
;;;

; (defpackage :wxWizard
;   (:use :common-lisp :ffi :wxCL)
;   (:export
; 	:wxWizard_Create
; 	:wxWizard_RunWizard
; 	:wxWizard_GetCurrentPage
; 	:wxWizard_Chain
; 	:wxWizard_SetPageSize
; 	:wxWizard_GetPageSize
; 	:wxWizardPageSimple_Create
; 	:wxWizardPageSimple_GetPrev
; 	:wxWizardPageSimple_GetNext
; 	:wxWizardPageSimple_GetBitmap
; 	:wxWizardPageSimple_SetPrev
; 	:wxWizardPageSimple_SetNext
; 	:wxWizardEvent_GetDirection))

(in-package :wxcl-dialogs)

(ffi:default-foreign-language :stdc)

(ffi:def-call-out wxWizard_Create
	(:name "wxWizard_Create")
	(:arguments (_prt (ffi:c-pointer NIL))
		(_id ffi:int)
		(_txt (ffi:c-pointer NIL))
		(_bmp (ffi:c-pointer NIL))
		(_lft ffi:int)
		(_top ffi:int)
		(_wdt ffi:int)
		(_hgt ffi:int))
	(:return-type (ffi:c-pointer NIL))
	(:library +library-name+))

(ffi:def-call-out wxWizard_RunWizard
	(:name "wxWizard_RunWizard")
	(:arguments (_obj (ffi:c-pointer NIL))
		(firstPage (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxWizard_GetCurrentPage
	(:name "wxWizard_GetCurrentPage")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type (ffi:c-pointer NIL))
	(:library +library-name+))

(ffi:def-call-out wxWizard_Chain
	(:name "wxWizard_Chain")
	(:arguments (f (ffi:c-pointer NIL))
		(s (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxWizard_SetPageSize
	(:name "wxWizard_SetPageSize")
	(:arguments (_obj (ffi:c-pointer NIL))
               (w ffi:int :out)
               (h ffi:int :out))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxWizard_GetPageSize
	(:name "wxWizard_GetPageSize")
	(:arguments (_obj (ffi:c-pointer NIL))
		(w (ffi:c-pointer NIL))
		(h (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxWizardPageSimple_Create
	(:name "wxWizardPageSimple_Create")
	(:arguments (_prt (ffi:c-pointer NIL)))
	(:return-type (ffi:c-pointer NIL))
	(:library +library-name+))

(ffi:def-call-out wxWizardPageSimple_GetPrev
	(:name "wxWizardPageSimple_GetPrev")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type (ffi:c-pointer NIL))
	(:library +library-name+))

(ffi:def-call-out wxWizardPageSimple_GetNext
	(:name "wxWizardPageSimple_GetNext")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type (ffi:c-pointer NIL))
	(:library +library-name+))

(ffi:def-call-out wxWizardPageSimple_GetBitmap
	(:name "wxWizardPageSimple_GetBitmap")
	(:arguments (_obj (ffi:c-pointer NIL))
		(_ref (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxWizardPageSimple_SetPrev
	(:name "wxWizardPageSimple_SetPrev")
	(:arguments (_obj (ffi:c-pointer NIL))
		(prev (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxWizardPageSimple_SetNext
	(:name "wxWizardPageSimple_SetNext")
	(:arguments (_obj (ffi:c-pointer NIL))
		(next (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxWizardEvent_GetDirection
	(:name "wxWizardEvent_GetDirection")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxWizardEvent_GetPage
	(:name "wxWizardEvent_GetPage")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type (ffi:c-pointer NIL))
	(:library +library-name+))

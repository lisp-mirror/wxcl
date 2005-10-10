;;;wxMDI.lisp
;;;License  : wxWindows License 3.1
;;;Author(s) : Surendra Singhi (surendra@asu.edu) 
;;;Copyright (C) 2005 Surendra Singhi 
;;;See the file LICENSE for information on usage and redistribution.
;;;
;;; $Header$
;;;

; (defpackage :wxMDI
;   (:use :common-lisp :ffi :wxCL)
;   (:export
; 	:wxMDIParentFrame_Create
; 	:wxMDIParentFrame_GetActiveChild
; 	:wxMDIParentFrame_GetClientWindow
; 	:wxMDIParentFrame_OnCreateClient
; 	:wxMDIParentFrame_GetWindowMenu
; 	:wxMDIParentFrame_SetWindowMenu
; 	:wxMDIParentFrame_Cascade
; 	:wxMDIParentFrame_Tile
; 	:wxMDIParentFrame_ArrangeIcons
; 	:wxMDIParentFrame_ActivateNext
; 	:wxMDIParentFrame_ActivatePrevious
; 	:wxMDIChildFrame_Create
; 	:wxMDIChildFrame_Activate))

(in-package :wxcl-windows)

(ffi:default-foreign-language :stdc)

(ffi:def-call-out wxMDIParentFrame_Create
	(:name "wxMDIParentFrame_Create")
	(:arguments (_prt (ffi:c-pointer NIL))
		(_id ffi:int)
		(_txt ffi:c-string)
		(_lft ffi:int)
		(_top ffi:int)
		(_wdt ffi:int)
		(_hgt ffi:int)
		(_stl ffi:int))
	(:return-type (ffi:c-pointer NIL))
	(:library +library-name+))

(ffi:def-call-out wxMDIParentFrame_GetActiveChild
	(:name "wxMDIParentFrame_GetActiveChild")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type (ffi:c-pointer NIL))
	(:library +library-name+))

(ffi:def-call-out wxMDIParentFrame_GetClientWindow
	(:name "wxMDIParentFrame_GetClientWindow")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type (ffi:c-pointer NIL))
	(:library +library-name+))

(ffi:def-call-out wxMDIParentFrame_OnCreateClient
	(:name "wxMDIParentFrame_OnCreateClient")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type (ffi:c-pointer NIL))
	(:library +library-name+))

(ffi:def-call-out wxMDIParentFrame_GetWindowMenu
	(:name "wxMDIParentFrame_GetWindowMenu")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type (ffi:c-pointer NIL))
	(:library +library-name+))

(ffi:def-call-out wxMDIParentFrame_SetWindowMenu
	(:name "wxMDIParentFrame_SetWindowMenu")
	(:arguments (_obj (ffi:c-pointer NIL))
		(menu (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxMDIParentFrame_Cascade
	(:name "wxMDIParentFrame_Cascade")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxMDIParentFrame_Tile
	(:name "wxMDIParentFrame_Tile")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxMDIParentFrame_ArrangeIcons
	(:name "wxMDIParentFrame_ArrangeIcons")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxMDIParentFrame_ActivateNext
	(:name "wxMDIParentFrame_ActivateNext")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxMDIParentFrame_ActivatePrevious
	(:name "wxMDIParentFrame_ActivatePrevious")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxMDIChildFrame_Create
	(:name "wxMDIChildFrame_Create")
	(:arguments (_prt (ffi:c-pointer NIL))
		(_id ffi:int)
		(_txt ffi:c-string)
		(_lft ffi:int)
		(_top ffi:int)
		(_wdt ffi:int)
		(_hgt ffi:int)
		(_stl ffi:int))
	(:return-type (ffi:c-pointer NIL))
	(:library +library-name+))

(ffi:def-call-out wxMDIChildFrame_Activate
	(:name "wxMDIChildFrame_Activate")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

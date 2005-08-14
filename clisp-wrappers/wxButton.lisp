;;;wxButton.lisp
;;;License  : GNU General Public License (GPL)
;;;Author(s) : Surendra Singhi (surendra@asu.edu) 
;;;Copyright (C) 2005 Surendra Singhi 
;;;See the file LICENSE for information on usage and redistribution.
;;;
;;; $Header$
;;;

(defpackage :wxButton
  (:use :common-lisp :ffi :wxCL)
  (:export
	:wxButton_Create
	:wxButton_SetBackgroundColour
	:wxButton_SetDefault
	:wxBitmapButton_Create
	:wxBitmapButton_GetBitmapLabel
	:wxBitmapButton_GetBitmapSelected
	:wxBitmapButton_GetBitmapFocus
	:wxBitmapButton_GetBitmapDisabled
	:wxBitmapButton_SetBitmapSelected
	:wxBitmapButton_SetBitmapFocus
	:wxBitmapButton_SetBitmapDisabled
	:wxBitmapButton_SetBitmapLabel
	:wxBitmapButton_SetMargins
	:wxBitmapButton_GetMarginX
	:wxBitmapButton_GetMarginY
	:wxBU_LEFT
	:wxBU_TOP
	:wxBU_RIGHT
	:wxBU_BOTTOM
	:wxcl-create-button
	))

(in-package :wxButton)

(ffi:default-foreign-language :stdc)

(defconstant wxBU_LEFT 64)
(defconstant wxBU_TOP 128)
(defconstant wxBU_RIGHT 256)
(defconstant wxBU_BOTTOM 512)

(ffi:def-call-out wxButton_Create
	(:name "wxButton_Create")
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

(defmacro wxcl-create-button (frame label &key (id -1) (left -1) (top -1) (width -1)(height -1)
				       (style 0))
  `(wxButton_Create ,frame ,id ,label ,left ,top ,width ,height ,style))
    
(ffi:def-call-out wxButton_SetBackgroundColour
	(:name "wxButton_SetBackgroundColour")
	(:arguments (_obj (ffi:c-pointer NIL))
		(colour (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxButton_SetDefault
	(:name "wxButton_SetDefault")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxBitmapButton_Create
	(:name "wxBitmapButton_Create")
	(:arguments (_prt (ffi:c-pointer NIL))
		(_id ffi:int)
		(_bmp (ffi:c-pointer NIL))
		(_lft ffi:int)
		(_top ffi:int)
		(_wdt ffi:int)
		(_hgt ffi:int)
		(_stl ffi:int))
	(:return-type (ffi:c-pointer NIL))
	(:library +library-name+))

(ffi:def-call-out wxBitmapButton_GetBitmapLabel
	(:name "wxBitmapButton_GetBitmapLabel")
	(:arguments (_obj (ffi:c-pointer NIL))
		(_ref (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxBitmapButton_GetBitmapSelected
	(:name "wxBitmapButton_GetBitmapSelected")
	(:arguments (_obj (ffi:c-pointer NIL))
		(_ref (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxBitmapButton_GetBitmapFocus
	(:name "wxBitmapButton_GetBitmapFocus")
	(:arguments (_obj (ffi:c-pointer NIL))
		(_ref (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxBitmapButton_GetBitmapDisabled
	(:name "wxBitmapButton_GetBitmapDisabled")
	(:arguments (_obj (ffi:c-pointer NIL))
		(_ref (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxBitmapButton_SetBitmapSelected
	(:name "wxBitmapButton_SetBitmapSelected")
	(:arguments (_obj (ffi:c-pointer NIL))
		(sel (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxBitmapButton_SetBitmapFocus
	(:name "wxBitmapButton_SetBitmapFocus")
	(:arguments (_obj (ffi:c-pointer NIL))
		(focus (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxBitmapButton_SetBitmapDisabled
	(:name "wxBitmapButton_SetBitmapDisabled")
	(:arguments (_obj (ffi:c-pointer NIL))
		(disabled (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxBitmapButton_SetBitmapLabel
	(:name "wxBitmapButton_SetBitmapLabel")
	(:arguments (_obj (ffi:c-pointer NIL))
		(bitmap (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxBitmapButton_SetMargins
	(:name "wxBitmapButton_SetMargins")
	(:arguments (_obj (ffi:c-pointer NIL))
		(x ffi:int)
		(y ffi:int))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxBitmapButton_GetMarginX
	(:name "wxBitmapButton_GetMarginX")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxBitmapButton_GetMarginY
	(:name "wxBitmapButton_GetMarginY")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

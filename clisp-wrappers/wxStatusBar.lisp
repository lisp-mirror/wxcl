;;;wxStatusBar.lisp
;;;License  : GNU General Public License (GPL)
;;;Author(s) : Surendra Singhi (surendra@asu.edu) 
;;;Copyright (C) 2005 Surendra Singhi 
;;;See the file LICENSE for information on usage and redistribution.
;;;
;;; $Header$
;;;

(defpackage :wxStatusBar
    (:use :common-lisp :ffi :wxCL)
  (:export :wxStatusBar_Create
	   :wxStatusBar_SetFieldsCount
	   :wxStatusBar_GetFieldsCount
	   :wxStatusBar_SetStatusText
	   :wxStatusBar_GetStatusText
	   :wxStatusBar_SetStatusWidths
	   :wxStatusBar_SetMinHeight
	   :wxStatusBar_GetBorderX
	   :wxStatusBar_GetBorderY))

(in-package :wxStatusBar)

(ffi:default-foreign-language :stdc)

(ffi:def-call-out wxStatusBar_Create
    (:name "wxStatusBar_Create")
  (:arguments (_prt (ffi:c-pointer NIL))
	      (_id ffi:int)
	      (_lft ffi:int)
	      (_top ffi:int)
	      (_wdt ffi:int)
	      (_hgt ffi:int)
	      (_stl ffi:int))
  (:return-type (ffi:c-pointer NIL))
  (:library +library-name+))

(ffi:def-call-out wxStatusBar_SetFieldsCount
    (:name "wxStatusBar_SetFieldsCount")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (number ffi:int)
	      (widths (ffi:c-ptr ffi:int)))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxStatusBar_GetFieldsCount
    (:name "wxStatusBar_GetFieldsCount")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out wxStatusBar_SetStatusText
    (:name "wxStatusBar_SetStatusText")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (text (ffi:c-pointer NIL))
	      (number ffi:int))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxStatusBar_GetStatusText
    (:name "wxStatusBar_GetStatusText")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (number ffi:int)
	      (_buf (ffi:c-pointer NIL)))
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out wxStatusBar_SetStatusWidths
    (:name "wxStatusBar_SetStatusWidths")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (n ffi:int)
	      (widths (ffi:c-ptr ffi:int)))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxStatusBar_SetMinHeight
    (:name "wxStatusBar_SetMinHeight")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (height ffi:int))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxStatusBar_GetBorderX
    (:name "wxStatusBar_GetBorderX")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out wxStatusBar_GetBorderY
    (:name "wxStatusBar_GetBorderY")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type ffi:int)
  (:library +library-name+))

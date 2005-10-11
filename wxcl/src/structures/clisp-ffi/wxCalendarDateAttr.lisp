;;;wxCalendarDateAttr.lisp
;;;License  : wxWindows License 3.1
;;;Author(s) : Surendra Singhi (surendra@asu.edu) 
;;;Copyright (C) 2005 Surendra Singhi 
;;;See the file LICENSE for information on usage and redistribution.
;;;
;;; $Header$
;;;
(in-package :wxcl-misc)

(ffi:default-foreign-language :stdc)

(ffi:def-call-out wxCalendarDateAttr_CreateDefault
    (:name "wxCalendarDateAttr_CreateDefault")
  (:return-type (ffi:c-pointer NIL))
  (:library +library-name+))

(ffi:def-call-out wxCalendarDateAttr_Delete
    (:name "wxCalendarDateAttr_Delete")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxCalendarDateAttr_SetTextColour
    (:name "wxCalendarDateAttr_SetTextColour")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (col (ffi:c-pointer NIL)))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxCalendarDateAttr_SetBackgroundColour
    (:name "wxCalendarDateAttr_SetBackgroundColour")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (col (ffi:c-pointer NIL)))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxCalendarDateAttr_SetBorderColour
    (:name "wxCalendarDateAttr_SetBorderColour")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (col (ffi:c-pointer NIL)))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxCalendarDateAttr_SetFont
    (:name "wxCalendarDateAttr_SetFont")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (font (ffi:c-pointer NIL)))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxCalendarDateAttr_SetBorder
    (:name "wxCalendarDateAttr_SetBorder")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (border ffi:int))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxCalendarDateAttr_SetHoliday
    (:name "wxCalendarDateAttr_SetHoliday")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (holiday ffi:int))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxCalendarDateAttr_HasTextColour
    (:name "wxCalendarDateAttr_HasTextColour")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out wxCalendarDateAttr_HasBackgroundColour
    (:name "wxCalendarDateAttr_HasBackgroundColour")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out wxCalendarDateAttr_HasBorderColour
    (:name "wxCalendarDateAttr_HasBorderColour")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out wxCalendarDateAttr_HasFont
    (:name "wxCalendarDateAttr_HasFont")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out wxCalendarDateAttr_HasBorder
    (:name "wxCalendarDateAttr_HasBorder")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out wxCalendarDateAttr_IsHoliday
    (:name "wxCalendarDateAttr_IsHoliday")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out wxCalendarDateAttr_GetTextColour
    (:name "wxCalendarDateAttr_GetTextColour")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (_ref (ffi:c-pointer NIL)))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxCalendarDateAttr_GetBackgroundColour
    (:name "wxCalendarDateAttr_GetBackgroundColour")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (_ref (ffi:c-pointer NIL)))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxCalendarDateAttr_GetBorderColour
    (:name "wxCalendarDateAttr_GetBorderColour")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (_ref (ffi:c-pointer NIL)))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxCalendarDateAttr_GetFont
    (:name "wxCalendarDateAttr_GetFont")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (_ref (ffi:c-pointer NIL)))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxCalendarDateAttr_GetBorder
    (:name "wxCalendarDateAttr_GetBorder")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type ffi:int)
  (:library +library-name+))

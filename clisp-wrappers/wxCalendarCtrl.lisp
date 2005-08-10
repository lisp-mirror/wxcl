;;;wxCalendarCtrl.lisp
;;;License   : BSD-style
;;;Author(s) : Surendra Singhi (surendra@asu.edu) 
;;;Copyright (C) 2005 Surendra Singhi 
;;;See the file LICENSE for information on usage and redistribution.
;;;
;;; $Header$
;;;
(defpackage :wxCalendarCtrl
    (:use :common-lisp :ffi :wxCL)
  (:export
   :wxCalendarCtrl_Create
   :wxCalendarCtrl_SetDate
   :wxCalendarCtrl_GetDate
   :wxCalendarCtrl_EnableYearChange
   :wxCalendarCtrl_EnableMonthChange
   :wxCalendarCtrl_EnableHolidayDisplay
   :wxCalendarCtrl_SetHeaderColours
   :wxCalendarCtrl_GetHeaderColourFg
   :wxCalendarCtrl_GetHeaderColourBg
   :wxCalendarCtrl_SetHighlightColours
   :wxCalendarCtrl_GetHighlightColourFg
   :wxCalendarCtrl_GetHighlightColourBg
   :wxCalendarCtrl_SetHolidayColours
   :wxCalendarCtrl_GetHolidayColourFg
   :wxCalendarCtrl_GetHolidayColourBg
   :wxCalendarCtrl_GetAttr
   :wxCalendarCtrl_SetAttr
   :wxCalendarCtrl_SetHoliday
   :wxCalendarCtrl_ResetAttr
   :wxCalendarCtrl_HitTest
   :wxCalendarDateAttr_Create
   :wxCalendarDateAttr_CreateDefault
   :wxCalendarDateAttr_Delete
   :wxCalendarDateAttr_SetTextColour
   :wxCalendarDateAttr_SetBackgroundColour
   :wxCalendarDateAttr_SetBorderColour
   :wxCalendarDateAttr_SetFont
   :wxCalendarDateAttr_SetBorder
   :wxCalendarDateAttr_SetHoliday
   :wxCalendarDateAttr_HasTextColour
   :wxCalendarDateAttr_HasBackgroundColour
   :wxCalendarDateAttr_HasBorderColour
   :wxCalendarDateAttr_HasFont
   :wxCalendarDateAttr_HasBorder
   :wxCalendarDateAttr_IsHoliday
   :wxCalendarDateAttr_GetTextColour
   :wxCalendarDateAttr_GetBackgroundColour
   :wxCalendarDateAttr_GetBorderColour
   :wxCalendarDateAttr_GetFont
   :wxCalendarDateAttr_GetBorder
   :wxCAL_SUNDAY_FIRST
   :wxCAL_MONDAY_FIRST
   :wxCAL_SHOW_HOLIDAYS
   :wxCAL_NO_YEAR_CHANGE
   :wxCAL_NO_MONTH_CHANGE
   :wxCAL_HITTEST_NOWHERE
   :wxCAL_HITTEST_HEADER
   :wxCAL_HITTEST_DAY))

(in-package :wxCalendarCtrl)

(ffi:default-foreign-language :stdc)

(defconstant wxCAL_SUNDAY_FIRST 0)
(defconstant wxCAL_MONDAY_FIRST 1)
(defconstant wxCAL_SHOW_HOLIDAYS 2)
(defconstant wxCAL_NO_YEAR_CHANGE 4)
(defconstant wxCAL_NO_MONTH_CHANGE 12)

(defconstant wxCAL_HITTEST_NOWHERE 0)
(defconstant wxCAL_HITTEST_HEADER 1)
(defconstant wxCAL_HITTEST_DAY 2)

(ffi:def-call-out wxCalendarCtrl_Create
    (:name "wxCalendarCtrl_Create")
  (:arguments (_prt (ffi:c-pointer NIL))
	      (_id ffi:int)
	      (_dat (ffi:c-pointer NIL))
	      (_lft ffi:int)
	      (_top ffi:int)
	      (_wdt ffi:int)
	      (_hgt ffi:int)
	      (_stl ffi:int))
  (:return-type (ffi:c-pointer NIL))
  (:library +library-name+))

(ffi:def-call-out wxCalendarCtrl_SetDate
    (:name "wxCalendarCtrl_SetDate")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (date (ffi:c-pointer NIL)))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxCalendarCtrl_GetDate
    (:name "wxCalendarCtrl_GetDate")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (date (ffi:c-pointer NIL)))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxCalendarCtrl_EnableYearChange
    (:name "wxCalendarCtrl_EnableYearChange")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (enable ffi:int))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxCalendarCtrl_EnableMonthChange
    (:name "wxCalendarCtrl_EnableMonthChange")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (enable ffi:int))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxCalendarCtrl_EnableHolidayDisplay
    (:name "wxCalendarCtrl_EnableHolidayDisplay")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (display ffi:int))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxCalendarCtrl_SetHeaderColours
    (:name "wxCalendarCtrl_SetHeaderColours")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (colFg (ffi:c-pointer NIL))
	      (colBg (ffi:c-pointer NIL)))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxCalendarCtrl_GetHeaderColourFg
    (:name "wxCalendarCtrl_GetHeaderColourFg")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (colour (ffi:c-pointer NIL)))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxCalendarCtrl_GetHeaderColourBg
    (:name "wxCalendarCtrl_GetHeaderColourBg")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (colour (ffi:c-pointer NIL)))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxCalendarCtrl_SetHighlightColours
    (:name "wxCalendarCtrl_SetHighlightColours")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (colFg (ffi:c-pointer NIL))
	      (colBg (ffi:c-pointer NIL)))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxCalendarCtrl_GetHighlightColourFg
    (:name "wxCalendarCtrl_GetHighlightColourFg")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (colour (ffi:c-pointer NIL)))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxCalendarCtrl_GetHighlightColourBg
    (:name "wxCalendarCtrl_GetHighlightColourBg")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (colour (ffi:c-pointer NIL)))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxCalendarCtrl_SetHolidayColours
    (:name "wxCalendarCtrl_SetHolidayColours")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (colFg (ffi:c-pointer NIL))
	      (colBg (ffi:c-pointer NIL)))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxCalendarCtrl_GetHolidayColourFg
    (:name "wxCalendarCtrl_GetHolidayColourFg")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (colour (ffi:c-pointer NIL)))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxCalendarCtrl_GetHolidayColourBg
    (:name "wxCalendarCtrl_GetHolidayColourBg")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (colour (ffi:c-pointer NIL)))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxCalendarCtrl_GetAttr
    (:name "wxCalendarCtrl_GetAttr")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (day ffi:int))
  (:return-type (ffi:c-pointer NIL))
  (:library +library-name+))

(ffi:def-call-out wxCalendarCtrl_SetAttr
    (:name "wxCalendarCtrl_SetAttr")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (day ffi:int)
	      (attr (ffi:c-pointer NIL)))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxCalendarCtrl_SetHoliday
    (:name "wxCalendarCtrl_SetHoliday")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (day ffi:int))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxCalendarCtrl_ResetAttr
    (:name "wxCalendarCtrl_ResetAttr")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (day ffi:int))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxCalendarCtrl_HitTest
    (:name "wxCalendarCtrl_HitTest")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (x ffi:int)
	      (y ffi:int)
	      (date (ffi:c-pointer NIL))
	      (wd (ffi:c-pointer NIL)))
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out wxCalendarDateAttr_Create
    (:name "wxCalendarDateAttr_Create")
  (:arguments (_ctxt (ffi:c-pointer NIL))
	      (_cbck (ffi:c-pointer NIL))
	      (_cbrd (ffi:c-pointer NIL))
	      (_fnt (ffi:c-pointer NIL))
	      (_brd ffi:int))
  (:return-type (ffi:c-pointer NIL))
  (:library +library-name+))

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

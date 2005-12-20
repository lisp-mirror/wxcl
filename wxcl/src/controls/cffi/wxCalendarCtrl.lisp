;;;wxCalendarCtrl.lisp
;;;License  : GNU General Public License (GPL)
;;;Author(s) : Surendra Singhi (surendra@asu.edu) 
;;;Copyright (C) 2005 Surendra Singhi 
;;;See the file LICENSE for information on usage and redistribution.
;;;
;;; $Header$
;;;
(in-package :wxcl-controls)

(defcfun ("wxCalendarCtrl_Create" wxCalendarCtrl_Create) :pointer
  (_prt :pointer)
  (_id :int)
  (_dat :pointer)
  (_lft :int)
  (_top :int)
  (_wdt :int)
  (_hgt :int)
  (_stl :int))

(defcfun ("wxCalendarCtrl_SetDate" wxCalendarCtrl_SetDate) :void
  (_obj :pointer)
  (date :pointer))

(defcfun ("wxCalendarCtrl_GetDate" wxCalendarCtrl_GetDate) :void
  (_obj :pointer)
  (date :pointer))

(defcfun ("wxCalendarCtrl_EnableYearChange" wxCalendarCtrl_EnableYearChange) :void
  (_obj :pointer)
  (enable :int))

(defcfun ("wxCalendarCtrl_EnableMonthChange" wxCalendarCtrl_EnableMonthChange) :void
  (_obj :pointer)
  (enable :int))

(defcfun ("wxCalendarCtrl_EnableHolidayDisplay" wxCalendarCtrl_EnableHolidayDisplay) :void
  (_obj :pointer)
  (display :int))

(defcfun ("wxCalendarCtrl_SetHeaderColours" wxCalendarCtrl_SetHeaderColours) :void
  (_obj :pointer)
  (colFg :pointer)
  (colBg :pointer))

(defcfun ("wxCalendarCtrl_GetHeaderColourFg" wxCalendarCtrl_GetHeaderColourFg) :pointer
  (_obj :pointer))

(defcfun ("wxCalendarCtrl_GetHeaderColourBg" wxCalendarCtrl_GetHeaderColourBg) :pointer
  (_obj :pointer))

(defcfun ("wxCalendarCtrl_SetHighlightColours" wxCalendarCtrl_SetHighlightColours) :void
  (_obj :pointer)
  (colFg :pointer)
  (colBg :pointer))

(defcfun ("wxCalendarCtrl_GetHighlightColourFg" wxCalendarCtrl_GetHighlightColourFg) :pointer
  (_obj :pointer))

(defcfun ("wxCalendarCtrl_GetHighlightColourBg" wxCalendarCtrl_GetHighlightColourBg) :pointer
  (_obj :pointer))

(defcfun ("wxCalendarCtrl_SetHolidayColours" wxCalendarCtrl_SetHolidayColours) :void
  (_obj :pointer)
  (colFg :pointer)
  (colBg :pointer))

(defcfun ("wxCalendarCtrl_GetHolidayColourFg" wxCalendarCtrl_GetHolidayColourFg) :pointer
  (_obj :pointer))

(defcfun ("wxCalendarCtrl_GetHolidayColourBg" wxCalendarCtrl_GetHolidayColourBg) :pointer
  (_obj :pointer))

(defcfun ("wxCalendarCtrl_GetAttr" wxCalendarCtrl_GetAttr) :pointer
  (_obj :pointer)
  (day :int))

(defcfun ("wxCalendarCtrl_SetAttr" wxCalendarCtrl_SetAttr) :void
  (_obj :pointer)
  (day :int)
  (attr :pointer))

(defcfun ("wxCalendarCtrl_SetHoliday" wxCalendarCtrl_SetHoliday) :void
  (_obj :pointer)
  (day :int))

(defcfun ("wxCalendarCtrl_ResetAttr" wxCalendarCtrl_ResetAttr) :void
  (_obj :pointer)
  (day :int))

(defcfun ("wxCalendarCtrl_HitTest" wxCalendarCtrl_HitTest) :int
  (_obj :pointer)
  (x :int)
  (y :int)
  (date :pointer)
  (wd :pointer))

(defcfun ("wxCalendarDateAttr_Create" wxCalendarDateAttr_Create) :pointer
  (_ctxt :pointer)
  (_cbck :pointer)
  (_cbrd :pointer)
  (_fnt :pointer)
  (_brd :int))

(defcfun ("wxCalendarDateAttr_CreateDefault" wxCalendarDateAttr_CreateDefault) :pointer)

(defcfun ("wxCalendarDateAttr_Delete" wxCalendarDateAttr_Delete) :void
  (_obj :pointer))

(defcfun ("wxCalendarDateAttr_SetTextColour" wxCalendarDateAttr_SetTextColour) :void
  (_obj :pointer)
  (col :pointer))

(defcfun ("wxCalendarDateAttr_SetBackgroundColour" wxCalendarDateAttr_SetBackgroundColour) :void
  (_obj :pointer)
  (col :pointer))

(defcfun ("wxCalendarDateAttr_SetBorderColour" wxCalendarDateAttr_SetBorderColour) :void
  (_obj :pointer)
  (col :pointer))

(defcfun ("wxCalendarDateAttr_SetFont" wxCalendarDateAttr_SetFont) :void
  (_obj :pointer)
  (font :pointer))

(defcfun ("wxCalendarDateAttr_SetBorder" wxCalendarDateAttr_SetBorder) :void
  (_obj :pointer)
  (border :int))

(defcfun ("wxCalendarDateAttr_SetHoliday" wxCalendarDateAttr_SetHoliday) :void
  (_obj :pointer)
  (holiday :int))

(defcfun ("wxCalendarDateAttr_HasTextColour" wxCalendarDateAttr_HasTextColour) :int
  (_obj :pointer))

(defcfun ("wxCalendarDateAttr_HasBackgroundColour" wxCalendarDateAttr_HasBackgroundColour) :int
  (_obj :pointer))

(defcfun ("wxCalendarDateAttr_HasBorderColour" wxCalendarDateAttr_HasBorderColour) :int
  (_obj :pointer))

(defcfun ("wxCalendarDateAttr_HasFont" wxCalendarDateAttr_HasFont) :int
  (_obj :pointer))

(defcfun ("wxCalendarDateAttr_HasBorder" wxCalendarDateAttr_HasBorder) :int
  (_obj :pointer))

(defcfun ("wxCalendarDateAttr_IsHoliday" wxCalendarDateAttr_IsHoliday) :int
  (_obj :pointer))

(defcfun ("wxCalendarDateAttr_GetTextColour" wxCalendarDateAttr_GetTextColour) :pointer
  (_obj :pointer))

(defcfun ("wxCalendarDateAttr_GetBackgroundColour" wxCalendarDateAttr_GetBackgroundColour) :pointer
  (_obj :pointer))

(defcfun ("wxCalendarDateAttr_GetBorderColour" wxCalendarDateAttr_GetBorderColour) :pointer
  (_obj :pointer))

(defcfun ("wxCalendarDateAttr_GetFont" wxCalendarDateAttr_GetFont) :pointer
  (_obj :pointer))

(defcfun ("wxCalendarDateAttr_GetBorder" wxCalendarDateAttr_GetBorder) :int
  (_obj :pointer))

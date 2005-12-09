;;;wxCalendarCtrl.lisp
;;;License  : wxWindows License 3.1
;;;Author(s) : Surendra Singhi (surendra@asu.edu) 
;;;Copyright (C) 2005 Surendra Singhi 
;;;See the file LICENSE for information on usage and redistribution.
;;;
;;; $Header$
;;;
(in-package :wxcl-controls)

(ffi:default-foreign-language :stdc)


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
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type (ffi:c-pointer NIL))
  (:library +library-name+))

(ffi:def-call-out wxCalendarCtrl_GetHeaderColourBg
    (:name "wxCalendarCtrl_GetHeaderColourBg")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type (ffi:c-pointer NIL))
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
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type (ffi:c-pointer NIL))
  (:library +library-name+))

(ffi:def-call-out wxCalendarCtrl_GetHighlightColourBg
    (:name "wxCalendarCtrl_GetHighlightColourBg")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type (ffi:c-pointer NIL))
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
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type (ffi:c-pointer NIL))
  (:library +library-name+))

(ffi:def-call-out wxCalendarCtrl_GetHolidayColourBg
    (:name "wxCalendarCtrl_GetHolidayColourBg")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type (ffi:c-pointer NIL))
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

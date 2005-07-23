;;;wxDatetime.lisp
;;;License   : BSD-style
;;;Author(s) : Surendra Singhi (surendra@asu.edu) 
;;;Copyright (C) 2005 Surendra Singhi 
;;;See the file LICENSE for information on usage and redistribution.
;;;
;;; $Header$
;;;
;; This is an automatically generated file. 
;;Make changes as you feel are necessary (but remember if you try to regenerate this file, your changes will be lost). 

(defpackage :wxDatetime
  (:use :common-lisp :ffi)
  (:export
	:wxDateTime_Create
	:wxDateTime_SetCountry
	:wxDateTime_GetCountry
	:wxDateTime_IsWestEuropeanCountry
	:wxDateTime_GetCurrentYear
	:wxDateTime_ConvertYearToBC
	:wxDateTime_GetCurrentMonth
	:wxDateTime_IsLeapYear
	:wxDateTime_GetCentury
	:wxDateTime_GetNumberOfDays
	:wxDateTime_GetNumberOfDaysMonth
	:wxDateTime_GetMonthName
	:wxDateTime_GetWeekDayName
	:wxDateTime_GetAmString
	:wxDateTime_GetPmString
	:wxDateTime_IsDSTApplicable
	:wxDateTime_GetBeginDST
	:wxDateTime_GetEndDST
	:wxDateTime_Now
	:wxDateTime_UNow
	:wxDateTime_Today
	:wxDateTime_SetToCurrent
	:wxDateTime_SetTime
	:wxDateTime_Set
	:wxDateTime_ResetTime
	:wxDateTime_SetYear
	:wxDateTime_SetMonth
	:wxDateTime_SetDay
	:wxDateTime_SetHour
	:wxDateTime_SetMinute
	:wxDateTime_SetSecond
	:wxDateTime_SetMillisecond
	:wxDateTime_SetToWeekDayInSameWeek
	:wxDateTime_GetWeekDayInSameWeek
	:wxDateTime_SetToNextWeekDay
	:wxDateTime_GetNextWeekDay
	:wxDateTime_SetToPrevWeekDay
	:wxDateTime_GetPrevWeekDay
	:wxDateTime_SetToWeekDay
	:wxDateTime_GetWeekDay
	:wxDateTime_SetToLastWeekDay
	:wxDateTime_GetLastWeekDay
	:wxDateTime_SetToTheWeek
	:wxDateTime_GetWeek
	:wxDateTime_SetToLastMonthDay
	:wxDateTime_GetLastMonthDay
	:wxDateTime_ToTimezone
	:wxDateTime_MakeTimezone
	:wxDateTime_ToGMT
	:wxDateTime_MakeGMT
	:wxDateTime_IsDST
	:wxDateTime_IsValid
	:wxDateTime_GetTicks
	:wxDateTime_GetYear
	:wxDateTime_GetMonth
	:wxDateTime_GetDay
	:wxDateTime_GetWeekDayTZ
	:wxDateTime_GetHour
	:wxDateTime_GetMinute
	:wxDateTime_GetSecond
	:wxDateTime_GetMillisecond
	:wxDateTime_GetDayOfYear
	:wxDateTime_GetWeekOfYear
	:wxDateTime_GetWeekOfMonth
	:wxDateTime_IsWorkDay
	:wxDateTime_IsEqualTo
	:wxDateTime_IsEarlierThan
	:wxDateTime_IsLaterThan
	:wxDateTime_IsStrictlyBetween
	:wxDateTime_IsBetween
	:wxDateTime_IsSameDate
	:wxDateTime_IsSameTime
	:wxDateTime_IsEqualUpTo
	:wxDateTime_AddTime
	:wxDateTime_SubtractTime
	:wxDateTime_AddDate
	:wxDateTime_SubtractDate
	:wxDateTime_ParseRfc822Date
	:wxDateTime_ParseFormat
	:wxDateTime_ParseDateTime
	:wxDateTime_ParseDate
	:wxDateTime_ParseTime
	:wxDateTime_Format
	:wxDateTime_FormatDate
	:wxDateTime_FormatTime
	:wxDateTime_FormatISODate
	:wxDateTime_FormatISOTime
	:wxDateTime_wxDateTime
	:wxDateTime_GetValue
	:wxDateTime_GetTimeNow
	:wxDateTime_AddTimeValues
	:wxDateTime_AddDateValues))

(in-package :wxDatetime)

(ffi:def-call-out wxDateTime_Create
	(:name "wxDateTime_Create")
	(:return-type (ffi:c-pointer NIL))
	(:library +library-name+))

(ffi:def-call-out wxDateTime_SetCountry
	(:name "wxDateTime_SetCountry")
	(:arguments (country ffi:int))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxDateTime_GetCountry
	(:name "wxDateTime_GetCountry")
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxDateTime_IsWestEuropeanCountry
	(:name "wxDateTime_IsWestEuropeanCountry")
	(:arguments (country ffi:int))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxDateTime_GetCurrentYear
	(:name "wxDateTime_GetCurrentYear")
	(:arguments (cal ffi:int))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxDateTime_ConvertYearToBC
	(:name "wxDateTime_ConvertYearToBC")
	(:arguments (year ffi:int))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxDateTime_GetCurrentMonth
	(:name "wxDateTime_GetCurrentMonth")
	(:arguments (cal ffi:int))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxDateTime_IsLeapYear
	(:name "wxDateTime_IsLeapYear")
	(:arguments (year ffi:int)
		(cal ffi:int))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxDateTime_GetCentury
	(:name "wxDateTime_GetCentury")
	(:arguments (year ffi:int))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxDateTime_GetNumberOfDays
	(:name "wxDateTime_GetNumberOfDays")
	(:arguments (year ffi:int)
		(cal ffi:int))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxDateTime_GetNumberOfDaysMonth
	(:name "wxDateTime_GetNumberOfDaysMonth")
	(:arguments (month ffi:int)
		(year ffi:int)
		(cal ffi:int))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxDateTime_GetMonthName
	(:name "wxDateTime_GetMonthName")
	(:arguments (month ffi:int)
		(flags ffi:int)
		(_buf (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxDateTime_GetWeekDayName
	(:name "wxDateTime_GetWeekDayName")
	(:arguments (weekday ffi:int)
		(flags ffi:int)
		(_buf (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxDateTime_GetAmString
	(:name "wxDateTime_GetAmString")
	(:arguments (_buf (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxDateTime_GetPmString
	(:name "wxDateTime_GetPmString")
	(:arguments (_buf (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxDateTime_IsDSTApplicable
	(:name "wxDateTime_IsDSTApplicable")
	(:arguments (year ffi:int)
		(country ffi:int))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxDateTime_GetBeginDST
	(:name "wxDateTime_GetBeginDST")
	(:arguments (year ffi:int)
		(country ffi:int)
		(dt (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxDateTime_GetEndDST
	(:name "wxDateTime_GetEndDST")
	(:arguments (year ffi:int)
		(country ffi:int)
		(dt (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxDateTime_Now
	(:name "wxDateTime_Now")
	(:arguments (dt (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxDateTime_UNow
	(:name "wxDateTime_UNow")
	(:arguments (dt (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxDateTime_Today
	(:name "wxDateTime_Today")
	(:arguments (dt (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxDateTime_SetToCurrent
	(:name "wxDateTime_SetToCurrent")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxDateTime_SetTime
	(:name "wxDateTime_SetTime")
	(:arguments (_obj (ffi:c-pointer NIL))
		(hour ffi:int)
		(minute ffi:int)
		(second ffi:int)
		(millisec ffi:int))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxDateTime_Set
	(:name "wxDateTime_Set")
	(:arguments (_obj (ffi:c-pointer NIL))
		(day ffi:int)
		(month ffi:int)
		(year ffi:int)
		(hour ffi:int)
		(minute ffi:int)
		(second ffi:int)
		(millisec ffi:int))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxDateTime_ResetTime
	(:name "wxDateTime_ResetTime")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxDateTime_SetYear
	(:name "wxDateTime_SetYear")
	(:arguments (_obj (ffi:c-pointer NIL))
		(year ffi:int))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxDateTime_SetMonth
	(:name "wxDateTime_SetMonth")
	(:arguments (_obj (ffi:c-pointer NIL))
		(month ffi:int))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxDateTime_SetDay
	(:name "wxDateTime_SetDay")
	(:arguments (_obj (ffi:c-pointer NIL))
		(day ffi:int))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxDateTime_SetHour
	(:name "wxDateTime_SetHour")
	(:arguments (_obj (ffi:c-pointer NIL))
		(hour ffi:int))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxDateTime_SetMinute
	(:name "wxDateTime_SetMinute")
	(:arguments (_obj (ffi:c-pointer NIL))
		(minute ffi:int))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxDateTime_SetSecond
	(:name "wxDateTime_SetSecond")
	(:arguments (_obj (ffi:c-pointer NIL))
		(second ffi:int))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxDateTime_SetMillisecond
	(:name "wxDateTime_SetMillisecond")
	(:arguments (_obj (ffi:c-pointer NIL))
		(millisecond ffi:int))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxDateTime_SetToWeekDayInSameWeek
	(:name "wxDateTime_SetToWeekDayInSameWeek")
	(:arguments (_obj (ffi:c-pointer NIL))
		(weekday ffi:int))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxDateTime_GetWeekDayInSameWeek
	(:name "wxDateTime_GetWeekDayInSameWeek")
	(:arguments (_obj (ffi:c-pointer NIL))
		(weekday ffi:int)
		(_ref (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxDateTime_SetToNextWeekDay
	(:name "wxDateTime_SetToNextWeekDay")
	(:arguments (_obj (ffi:c-pointer NIL))
		(weekday ffi:int))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxDateTime_GetNextWeekDay
	(:name "wxDateTime_GetNextWeekDay")
	(:arguments (_obj (ffi:c-pointer NIL))
		(weekday ffi:int)
		(_ref (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxDateTime_SetToPrevWeekDay
	(:name "wxDateTime_SetToPrevWeekDay")
	(:arguments (_obj (ffi:c-pointer NIL))
		(weekday ffi:int))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxDateTime_GetPrevWeekDay
	(:name "wxDateTime_GetPrevWeekDay")
	(:arguments (_obj (ffi:c-pointer NIL))
		(weekday ffi:int)
		(_ref (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxDateTime_SetToWeekDay
	(:name "wxDateTime_SetToWeekDay")
	(:arguments (_obj (ffi:c-pointer NIL))
		(weekday ffi:int)
		(n ffi:int)
		(month ffi:int)
		(year ffi:int))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxDateTime_GetWeekDay
	(:name "wxDateTime_GetWeekDay")
	(:arguments (_obj (ffi:c-pointer NIL))
		(weekday ffi:int)
		(n ffi:int)
		(month ffi:int)
		(year ffi:int)
		(_ref (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxDateTime_SetToLastWeekDay
	(:name "wxDateTime_SetToLastWeekDay")
	(:arguments (_obj (ffi:c-pointer NIL))
		(weekday ffi:int)
		(month ffi:int)
		(year ffi:int))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxDateTime_GetLastWeekDay
	(:name "wxDateTime_GetLastWeekDay")
	(:arguments (_obj (ffi:c-pointer NIL))
		(weekday ffi:int)
		(month ffi:int)
		(year ffi:int)
		(_ref (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxDateTime_SetToTheWeek
	(:name "wxDateTime_SetToTheWeek")
	(:arguments (_obj (ffi:c-pointer NIL))
		(numWeek ffi:int)
		(weekday ffi:int))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxDateTime_GetWeek
	(:name "wxDateTime_GetWeek")
	(:arguments (_obj (ffi:c-pointer NIL))
		(numWeek ffi:int)
		(weekday ffi:int)
		(_ref (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxDateTime_SetToLastMonthDay
	(:name "wxDateTime_SetToLastMonthDay")
	(:arguments (_obj (ffi:c-pointer NIL))
		(month ffi:int)
		(year ffi:int))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxDateTime_GetLastMonthDay
	(:name "wxDateTime_GetLastMonthDay")
	(:arguments (_obj (ffi:c-pointer NIL))
		(month ffi:int)
		(year ffi:int)
		(_ref (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxDateTime_ToTimezone
	(:name "wxDateTime_ToTimezone")
	(:arguments (_obj (ffi:c-pointer NIL))
		(tz ffi:int)
		(noDST ffi:int))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxDateTime_MakeTimezone
	(:name "wxDateTime_MakeTimezone")
	(:arguments (_obj (ffi:c-pointer NIL))
		(tz ffi:int)
		(noDST ffi:int))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxDateTime_ToGMT
	(:name "wxDateTime_ToGMT")
	(:arguments (_obj (ffi:c-pointer NIL))
		(noDST ffi:int))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxDateTime_MakeGMT
	(:name "wxDateTime_MakeGMT")
	(:arguments (_obj (ffi:c-pointer NIL))
		(noDST ffi:int))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxDateTime_IsDST
	(:name "wxDateTime_IsDST")
	(:arguments (_obj (ffi:c-pointer NIL))
		(country ffi:int))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxDateTime_IsValid
	(:name "wxDateTime_IsValid")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxDateTime_GetTicks
	(:name "wxDateTime_GetTicks")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type time_t)
	(:library +library-name+))

(ffi:def-call-out wxDateTime_GetYear
	(:name "wxDateTime_GetYear")
	(:arguments (_obj (ffi:c-pointer NIL))
		(tz ffi:int))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxDateTime_GetMonth
	(:name "wxDateTime_GetMonth")
	(:arguments (_obj (ffi:c-pointer NIL))
		(tz ffi:int))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxDateTime_GetDay
	(:name "wxDateTime_GetDay")
	(:arguments (_obj (ffi:c-pointer NIL))
		(tz ffi:int))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxDateTime_GetWeekDayTZ
	(:name "wxDateTime_GetWeekDayTZ")
	(:arguments (_obj (ffi:c-pointer NIL))
		(tz ffi:int))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxDateTime_GetHour
	(:name "wxDateTime_GetHour")
	(:arguments (_obj (ffi:c-pointer NIL))
		(tz ffi:int))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxDateTime_GetMinute
	(:name "wxDateTime_GetMinute")
	(:arguments (_obj (ffi:c-pointer NIL))
		(tz ffi:int))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxDateTime_GetSecond
	(:name "wxDateTime_GetSecond")
	(:arguments (_obj (ffi:c-pointer NIL))
		(tz ffi:int))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxDateTime_GetMillisecond
	(:name "wxDateTime_GetMillisecond")
	(:arguments (_obj (ffi:c-pointer NIL))
		(tz ffi:int))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxDateTime_GetDayOfYear
	(:name "wxDateTime_GetDayOfYear")
	(:arguments (_obj (ffi:c-pointer NIL))
		(tz ffi:int))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxDateTime_GetWeekOfYear
	(:name "wxDateTime_GetWeekOfYear")
	(:arguments (_obj (ffi:c-pointer NIL))
		(flags ffi:int)
		(tz ffi:int))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxDateTime_GetWeekOfMonth
	(:name "wxDateTime_GetWeekOfMonth")
	(:arguments (_obj (ffi:c-pointer NIL))
		(flags ffi:int)
		(tz ffi:int))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxDateTime_IsWorkDay
	(:name "wxDateTime_IsWorkDay")
	(:arguments (_obj (ffi:c-pointer NIL))
		(country ffi:int))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxDateTime_IsEqualTo
	(:name "wxDateTime_IsEqualTo")
	(:arguments (_obj (ffi:c-pointer NIL))
		(datetime (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxDateTime_IsEarlierThan
	(:name "wxDateTime_IsEarlierThan")
	(:arguments (_obj (ffi:c-pointer NIL))
		(datetime (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxDateTime_IsLaterThan
	(:name "wxDateTime_IsLaterThan")
	(:arguments (_obj (ffi:c-pointer NIL))
		(datetime (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxDateTime_IsStrictlyBetween
	(:name "wxDateTime_IsStrictlyBetween")
	(:arguments (_obj (ffi:c-pointer NIL))
		(t1 (ffi:c-pointer NIL))
		(t2 (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxDateTime_IsBetween
	(:name "wxDateTime_IsBetween")
	(:arguments (_obj (ffi:c-pointer NIL))
		(t1 (ffi:c-pointer NIL))
		(t2 (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxDateTime_IsSameDate
	(:name "wxDateTime_IsSameDate")
	(:arguments (_obj (ffi:c-pointer NIL))
		(dt (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxDateTime_IsSameTime
	(:name "wxDateTime_IsSameTime")
	(:arguments (_obj (ffi:c-pointer NIL))
		(dt (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxDateTime_IsEqualUpTo
	(:name "wxDateTime_IsEqualUpTo")
	(:arguments (_obj (ffi:c-pointer NIL))
		(dt (ffi:c-pointer NIL))
		(ts (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxDateTime_AddTime
	(:name "wxDateTime_AddTime")
	(:arguments (_obj (ffi:c-pointer NIL))
		(diff (ffi:c-pointer NIL))
		(_ref (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxDateTime_SubtractTime
	(:name "wxDateTime_SubtractTime")
	(:arguments (_obj (ffi:c-pointer NIL))
		(diff (ffi:c-pointer NIL))
		(_ref (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxDateTime_AddDate
	(:name "wxDateTime_AddDate")
	(:arguments (_obj (ffi:c-pointer NIL))
		(diff (ffi:c-pointer NIL))
		(_ref (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxDateTime_SubtractDate
	(:name "wxDateTime_SubtractDate")
	(:arguments (_obj (ffi:c-pointer NIL))
		(diff (ffi:c-pointer NIL))
		(_ref (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxDateTime_ParseRfc822Date
	(:name "wxDateTime_ParseRfc822Date")
	(:arguments (_obj (ffi:c-pointer NIL))
		(date (ffi:c-pointer NIL)))
	(:return-type (ffi:c-pointer NIL))
	(:library +library-name+))

(ffi:def-call-out wxDateTime_ParseFormat
	(:name "wxDateTime_ParseFormat")
	(:arguments (_obj (ffi:c-pointer NIL))
		(date (ffi:c-pointer NIL))
		(format (ffi:c-pointer NIL))
		(dateDef (ffi:c-pointer NIL)))
	(:return-type (ffi:c-pointer NIL))
	(:library +library-name+))

(ffi:def-call-out wxDateTime_ParseDateTime
	(:name "wxDateTime_ParseDateTime")
	(:arguments (_obj (ffi:c-pointer NIL))
		(datetime (ffi:c-pointer NIL)))
	(:return-type (ffi:c-pointer NIL))
	(:library +library-name+))

(ffi:def-call-out wxDateTime_ParseDate
	(:name "wxDateTime_ParseDate")
	(:arguments (_obj (ffi:c-pointer NIL))
		(date (ffi:c-pointer NIL)))
	(:return-type (ffi:c-pointer NIL))
	(:library +library-name+))

(ffi:def-call-out wxDateTime_ParseTime
	(:name "wxDateTime_ParseTime")
	(:arguments (_obj (ffi:c-pointer NIL))
		(time (ffi:c-pointer NIL)))
	(:return-type (ffi:c-pointer NIL))
	(:library +library-name+))

(ffi:def-call-out wxDateTime_Format
	(:name "wxDateTime_Format")
	(:arguments (_obj (ffi:c-pointer NIL))
		(format (ffi:c-pointer NIL))
		(tz ffi:int)
		(_buf (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxDateTime_FormatDate
	(:name "wxDateTime_FormatDate")
	(:arguments (_obj (ffi:c-pointer NIL))
		(_buf (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxDateTime_FormatTime
	(:name "wxDateTime_FormatTime")
	(:arguments (_obj (ffi:c-pointer NIL))
		(_buf (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxDateTime_FormatISODate
	(:name "wxDateTime_FormatISODate")
	(:arguments (_obj (ffi:c-pointer NIL))
		(_buf (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxDateTime_FormatISOTime
	(:name "wxDateTime_FormatISOTime")
	(:arguments (_obj (ffi:c-pointer NIL))
		(_buf (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxDateTime_wxDateTime
	(:name "wxDateTime_wxDateTime")
	(:arguments (hi_long ffi:long)
		(lo_long ffi:ulong))
	(:return-type (ffi:c-pointer NIL))
	(:library +library-name+))

(ffi:def-call-out wxDateTime_GetValue
	(:name "wxDateTime_GetValue")
	(:arguments (_obj (ffi:c-pointer NIL))
		(hi_long (ffi:c-ptr ffi:long))
		(lo_long (ffi:c-pointer ffi:ulong)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxDateTime_GetTimeNow
	(:name "wxDateTime_GetTimeNow")
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxDateTime_AddTimeValues
	(:name "wxDateTime_AddTimeValues")
	(:arguments (_obj (ffi:c-pointer NIL))
		(_hrs ffi:int)
		(_min ffi:int)
		(_sec ffi:int)
		(_mls ffi:int))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxDateTime_AddDateValues
	(:name "wxDateTime_AddDateValues")
	(:arguments (_obj (ffi:c-pointer NIL))
		(_yrs ffi:int)
		(_mnt ffi:int)
		(_wek ffi:int)
		(_day ffi:int))
	(:return-type NIL)
	(:library +library-name+))

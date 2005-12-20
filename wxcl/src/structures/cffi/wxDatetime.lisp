;;;wxDatetime.lisp
;;;License  : wxWindows License 3.1
;;;Author(s) : Surendra Singhi (surendra@asu.edu) 
;;;Copyright (C) 2005 Surendra Singhi 
;;;See the file LICENSE for information on usage and redistribution.
;;;
;;; $Header$
;;;

(in-package :wxcl-structures)

(defcfun ("wxDateTime_Create" wxDateTime_Create) :pointer)

(defcfun ("wxDateTime_SetCountry" wxDateTime_SetCountry) :void
  (country :int))

(defcfun ("wxDateTime_GetCountry" wxDateTime_GetCountry) :int)

(defcfun ("wxDateTime_IsWestEuropeanCountry" wxDateTime_IsWestEuropeanCountry) :int
  (country :int))

(defcfun ("wxDateTime_GetCurrentYear" wxDateTime_GetCurrentYear) :int
  (cal :int))

(defcfun ("wxDateTime_ConvertYearToBC" wxDateTime_ConvertYearToBC) :int
  (year :int))

(defcfun ("wxDateTime_GetCurrentMonth" wxDateTime_GetCurrentMonth) :int
  (cal :int))

(defcfun ("wxDateTime_IsLeapYear" wxDateTime_IsLeapYear) :int
  (year :int)
  (cal :int))

(defcfun ("wxDateTime_GetCentury" wxDateTime_GetCentury) :int
  (year :int))

(defcfun ("wxDateTime_GetNumberOfDays" wxDateTime_GetNumberOfDays) :int
  (year :int)
  (cal :int))

(defcfun ("wxDateTime_GetNumberOfDaysMonth" wxDateTime_GetNumberOfDaysMonth) :int
  (month :int)
  (year :int)
  (cal :int))

(defcfun ("wxDateTime_GetMonthName" wxDateTime_GetMonthName) :int
  (month :int)
  (flags :int)
  (_buf :pointer))

(defcfun ("wxDateTime_GetWeekDayName" wxDateTime_GetWeekDayName) :int
  (weekday :int)
  (flags :int)
  (_buf :pointer))

(defcfun ("wxDateTime_GetAmString" wxDateTime_GetAmString) :int
  (_buf :pointer))

(defcfun ("wxDateTime_GetPmString" wxDateTime_GetPmString) :int
  (_buf :pointer))

(defcfun ("wxDateTime_IsDSTApplicable" wxDateTime_IsDSTApplicable) :int
  (year :int)
  (country :int))

(defcfun ("wxDateTime_GetBeginDST" wxDateTime_GetBeginDST) :void
  (year :int)
  (country :int)
  (dt :pointer))

(defcfun ("wxDateTime_GetEndDST" wxDateTime_GetEndDST) :void
  (year :int)
  (country :int)
  (dt :pointer))

(defcfun ("wxDateTime_Now" wxDateTime_Now) :void
  (dt :pointer))

(defcfun ("wxDateTime_UNow" wxDateTime_UNow) :void
  (dt :pointer))

(defcfun ("wxDateTime_Today" wxDateTime_Today) :void
  (dt :pointer))

(defcfun ("wxDateTime_SetToCurrent" wxDateTime_SetToCurrent) :void
  (_obj :pointer))

(defcfun ("wxDateTime_SetTime" wxDateTime_SetTime) :void
  (_obj :pointer)
  (hour :int)
  (minute :int)
  (second :int)
  (millisec :int))

(defcfun ("wxDateTime_Set" wxDateTime_Set) :void
  (_obj :pointer)
  (day :int)
  (month :int)
  (year :int)
  (hour :int)
  (minute :int)
  (second :int)
  (millisec :int))

(defcfun ("wxDateTime_ResetTime" wxDateTime_ResetTime) :void
  (_obj :pointer))

(defcfun ("wxDateTime_SetYear" wxDateTime_SetYear) :void
  (_obj :pointer)
  (year :int))

(defcfun ("wxDateTime_SetMonth" wxDateTime_SetMonth) :void
  (_obj :pointer)
  (month :int))

(defcfun ("wxDateTime_SetDay" wxDateTime_SetDay) :void
  (_obj :pointer)
  (day :int))

(defcfun ("wxDateTime_SetHour" wxDateTime_SetHour) :void
  (_obj :pointer)
  (hour :int))

(defcfun ("wxDateTime_SetMinute" wxDateTime_SetMinute) :void
  (_obj :pointer)
  (minute :int))

(defcfun ("wxDateTime_SetSecond" wxDateTime_SetSecond) :void
  (_obj :pointer)
  (second :int))

(defcfun ("wxDateTime_SetMillisecond" wxDateTime_SetMillisecond) :void
  (_obj :pointer)
  (millisecond :int))

(defcfun ("wxDateTime_SetToWeekDayInSameWeek" wxDateTime_SetToWeekDayInSameWeek) :void
  (_obj :pointer)
  (weekday :int))

(defcfun ("wxDateTime_GetWeekDayInSameWeek" wxDateTime_GetWeekDayInSameWeek) :void
  (_obj :pointer)
  (weekday :int)
  (_ref :pointer))

(defcfun ("wxDateTime_SetToNextWeekDay" wxDateTime_SetToNextWeekDay) :void
  (_obj :pointer)
  (weekday :int))

(defcfun ("wxDateTime_GetNextWeekDay" wxDateTime_GetNextWeekDay) :void
  (_obj :pointer)
  (weekday :int)
  (_ref :pointer))

(defcfun ("wxDateTime_SetToPrevWeekDay" wxDateTime_SetToPrevWeekDay) :void
  (_obj :pointer)
  (weekday :int))

(defcfun ("wxDateTime_GetPrevWeekDay" wxDateTime_GetPrevWeekDay) :void
  (_obj :pointer)
  (weekday :int)
  (_ref :pointer))

(defcfun ("wxDateTime_SetToWeekDay" wxDateTime_SetToWeekDay) :int
  (_obj :pointer)
  (weekday :int)
  (n :int)
  (month :int)
  (year :int))

(defcfun ("wxDateTime_GetWeekDay" wxDateTime_GetWeekDay) :void
  (_obj :pointer)
  (weekday :int)
  (n :int)
  (month :int)
  (year :int)
  (_ref :pointer))

(defcfun ("wxDateTime_SetToLastWeekDay" wxDateTime_SetToLastWeekDay) :int
  (_obj :pointer)
  (weekday :int)
  (month :int)
  (year :int))

(defcfun ("wxDateTime_GetLastWeekDay" wxDateTime_GetLastWeekDay) :void
  (_obj :pointer)
  (weekday :int)
  (month :int)
  (year :int)
  (_ref :pointer))

(defcfun ("wxDateTime_SetToTheWeek" wxDateTime_SetToTheWeek) :int
  (_obj :pointer)
  (numWeek :int)
  (weekday :int))

(defcfun ("wxDateTime_GetWeek" wxDateTime_GetWeek) :void
  (_obj :pointer)
  (numWeek :int)
  (weekday :int)
  (_ref :pointer))

(defcfun ("wxDateTime_SetToLastMonthDay" wxDateTime_SetToLastMonthDay) :void
  (_obj :pointer)
  (month :int)
  (year :int))

(defcfun ("wxDateTime_GetLastMonthDay" wxDateTime_GetLastMonthDay) :void
  (_obj :pointer)
  (month :int)
  (year :int)
  (_ref :pointer))

(defcfun ("wxDateTime_ToTimezone" wxDateTime_ToTimezone) :void
  (_obj :pointer)
  (tz :int)
  (noDST :int))

(defcfun ("wxDateTime_MakeTimezone" wxDateTime_MakeTimezone) :void
  (_obj :pointer)
  (tz :int)
  (noDST :int))

(defcfun ("wxDateTime_ToGMT" wxDateTime_ToGMT) :void
  (_obj :pointer)
  (noDST :int))

(defcfun ("wxDateTime_MakeGMT" wxDateTime_MakeGMT) :void
  (_obj :pointer)
  (noDST :int))

(defcfun ("wxDateTime_IsDST" wxDateTime_IsDST) :int
  (_obj :pointer)
  (country :int))

(defcfun ("wxDateTime_IsValid" wxDateTime_IsValid) :int
  (_obj :pointer))

(defcfun ("wxDateTime_GetTicks" wxDateTime_GetTicks) :pointer
  (_obj :pointer))

(defcfun ("wxDateTime_GetYear" wxDateTime_GetYear) :int
  (_obj :pointer)
  (tz :int))

(defcfun ("wxDateTime_GetMonth" wxDateTime_GetMonth) :int
  (_obj :pointer)
  (tz :int))

(defcfun ("wxDateTime_GetDay" wxDateTime_GetDay) :int
  (_obj :pointer)
  (tz :int))

(defcfun ("wxDateTime_GetWeekDayTZ" wxDateTime_GetWeekDayTZ) :int
  (_obj :pointer)
  (tz :int))

(defcfun ("wxDateTime_GetHour" wxDateTime_GetHour) :int
  (_obj :pointer)
  (tz :int))

(defcfun ("wxDateTime_GetMinute" wxDateTime_GetMinute) :int
  (_obj :pointer)
  (tz :int))

(defcfun ("wxDateTime_GetSecond" wxDateTime_GetSecond) :int
  (_obj :pointer)
  (tz :int))

(defcfun ("wxDateTime_GetMillisecond" wxDateTime_GetMillisecond) :int
  (_obj :pointer)
  (tz :int))

(defcfun ("wxDateTime_GetDayOfYear" wxDateTime_GetDayOfYear) :int
  (_obj :pointer)
  (tz :int))

(defcfun ("wxDateTime_GetWeekOfYear" wxDateTime_GetWeekOfYear) :int
  (_obj :pointer)
  (flags :int)
  (tz :int))

(defcfun ("wxDateTime_GetWeekOfMonth" wxDateTime_GetWeekOfMonth) :int
  (_obj :pointer)
  (flags :int)
  (tz :int))

(defcfun ("wxDateTime_IsWorkDay" wxDateTime_IsWorkDay) :int
  (_obj :pointer)
  (country :int))

(defcfun ("wxDateTime_IsEqualTo" wxDateTime_IsEqualTo) :int
  (_obj :pointer)
  (datetime :pointer))

(defcfun ("wxDateTime_IsEarlierThan" wxDateTime_IsEarlierThan) :int
  (_obj :pointer)
  (datetime :pointer))

(defcfun ("wxDateTime_IsLaterThan" wxDateTime_IsLaterThan) :int
  (_obj :pointer)
  (datetime :pointer))

(defcfun ("wxDateTime_IsStrictlyBetween" wxDateTime_IsStrictlyBetween) :int
  (_obj :pointer)
  (t1 :pointer)
  (t2 :pointer))

(defcfun ("wxDateTime_IsBetween" wxDateTime_IsBetween) :int
  (_obj :pointer)
  (t1 :pointer)
  (t2 :pointer))

(defcfun ("wxDateTime_IsSameDate" wxDateTime_IsSameDate) :int
  (_obj :pointer)
  (dt :pointer))

(defcfun ("wxDateTime_IsSameTime" wxDateTime_IsSameTime) :int
  (_obj :pointer)
  (dt :pointer))

(defcfun ("wxDateTime_IsEqualUpTo" wxDateTime_IsEqualUpTo) :int
  (_obj :pointer)
  (dt :pointer)
  (ts :pointer))

(defcfun ("wxDateTime_AddTime" wxDateTime_AddTime) :void
  (_obj :pointer)
  (diff :pointer)
  (_ref :pointer))

(defcfun ("wxDateTime_SubtractTime" wxDateTime_SubtractTime) :void
  (_obj :pointer)
  (diff :pointer)
  (_ref :pointer))

(defcfun ("wxDateTime_AddDate" wxDateTime_AddDate) :void
  (_obj :pointer)
  (diff :pointer)
  (_ref :pointer))

(defcfun ("wxDateTime_SubtractDate" wxDateTime_SubtractDate) :void
  (_obj :pointer)
  (diff :pointer)
  (_ref :pointer))

(defcfun ("wxDateTime_ParseRfc822Date" wxDateTime_ParseRfc822Date) :pointer
  (_obj :pointer)
  (date :pointer))

(defcfun ("wxDateTime_ParseFormat" wxDateTime_ParseFormat) :pointer
  (_obj :pointer)
  (date :pointer)
  (format :pointer)
  (dateDef :pointer))

(defcfun ("wxDateTime_ParseDateTime" wxDateTime_ParseDateTime) :pointer
  (_obj :pointer)
  (datetime :pointer))

(defcfun ("wxDateTime_ParseDate" wxDateTime_ParseDate) :pointer
  (_obj :pointer)
  (date :pointer))

(defcfun ("wxDateTime_ParseTime" wxDateTime_ParseTime) :pointer
  (_obj :pointer)
  (time :pointer))

(defcfun ("wxDateTime_Format" wxDateTime_Format) :int
  (_obj :pointer)
  (format :pointer)
  (tz :int)
  (_buf :pointer))

(defcfun ("wxDateTime_FormatDate" wxDateTime_FormatDate) :int
  (_obj :pointer)
  (_buf :pointer))

(defcfun ("wxDateTime_FormatTime" wxDateTime_FormatTime) :int
  (_obj :pointer)
  (_buf :pointer))

(defcfun ("wxDateTime_FormatISODate" wxDateTime_FormatISODate) :int
  (_obj :pointer)
  (_buf :pointer))

(defcfun ("wxDateTime_FormatISOTime" wxDateTime_FormatISOTime) :int
  (_obj :pointer)
  (_buf :pointer))

(defcfun ("wxDateTime_wxDateTime" wxDateTime_wxDateTime) :pointer
  (hi_long :long)
  (lo_long :unsigned-long))

(defcfun ("wxDateTime_GetValue" wxDateTime_GetValue) :void
  (_obj :pointer)
  (hi_long :pointer)
  (lo_long :pointer))

(defcfun ("wxDateTime_GetTimeNow" wxDateTime_GetTimeNow) :int)

(defcfun ("wxDateTime_AddTimeValues" wxDateTime_AddTimeValues) :void
  (_obj :pointer)
  (_hrs :int)
  (_min :int)
  (_sec :int)
  (_mls :int))

(defcfun ("wxDateTime_AddDateValues" wxDateTime_AddDateValues) :void
  (_obj :pointer)
  (_yrs :int)
  (_mnt :int)
  (_wek :int)
  (_day :int))

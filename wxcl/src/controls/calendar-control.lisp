;;;calendar-control.lisp
;;;License  : wxWindows License 3.1
;;;Author(s) : Surendra Singhi (surendra@asu.edu) 
;;;Copyright (C) 2005 Surendra Singhi 
;;;See the file LICENSE for information on usage and redistribution.
;;;
;;; $Header$
;;;
(in-package :wxcl)

(defun make-calendar-control (parent &key (id -1) (size +default-size+) date
                                     (position +default-position+) (style -1))
  "Fix me, add the styles."
    (make-wx-instance 'calendar-control
                      (wxCalendarCtrl_Create (object-pointer parent) id (when date (object-pointer date))
                                             (point-x +default-position+)(point-y +default-position+)
                                             (size-width +default-position+)(size-length +default-position+) style))

(defmethod (setf date) (date (obj calendar-control))
    (wxCalendarCtrl_SetDate (object-pointer obj) (object-pointer date)))

; (defmethod GetDate ((obj calendar-control))
;   "fix me"
;     (make-wx-instance 'date (wxCalendarCtrl_GetDate (object-pointer obj))
;   (:arguments (_obj (ffi:c-pointer NIL))
; 	      (date (ffi:c-pointer NIL)))
;   (:return-type NIL)
;   (:library +library-name+))

(defmethod enable-year-change ((obj calendar-control) enable)
  (wxCalendarCtrl_EnableYearChange (object-pointer obj) (if enable 1 0)))

(defmethod enable-month-change ((obj calendar-control))
  (wxCalendarCtrl_EnableMonthChange (object-pointer obj) (if enable 1 0)))

(defmethod enable-holiday-display ((obj calendar-control) display)
  (wxCalendarCtrl_EnableHolidayDisplay (object-pointer obj) (if display 1 0)))

(defmethod set-header-colours ((obj calendar-control) col-fg col-bg)
  (wxCalendarCtrl_SetHeaderColours (object-pointer obj) (object-pointer col-fg)(object-pointer col-bg)))

(defmethod header-colour-fg ((obj calendar-control))
  (make-wx-instance 'colour (wxCalendarCtrl_GetHeaderColourFg (object-pointer obj))))

(defmethod header-colour-bg ((obj calendar-control))
  (make-wx-instance 'colour (wxCalendarCtrl_GetHeaderColourBg (object-pointer obj))))

(defmethod set-highlight-colours ((obj calendar-control) col-fg col-bg)
  (wxCalendarCtrl_SetHighlightColours (object-pointer obj) (object-pointer col-fg)(object-pointer col-bg)))

(defmethod highlight-colour-fg ((obj calendar-control))
  (make-wx-instance 'colour (wxCalendarCtrl_GetHighlightColourFg (object-pointer obj))))

(defmethod highlight-colour-bg ((obj calendar-control))
  (make-wx-instance 'colour (wxCalendarCtrl_GetHighlightColourBg (object-pointer obj))))

(defmethod set-holiday-colours ((obj calendar-control) col-fg col-bg)
  (wxCalendarCtrl_SetHolidayColours (object-pointer obj)(object-pointer col-fg)(object-pointer col-bg)))

(defmethod GetHolidayColourFg ((obj calendar-control))
  (make-wx-instance 'colour (wxCalendarCtrl_GetHolidayColourFg (object-pointer obj))))

(defmethod GetHolidayColourBg ((obj calendar-control))
  (make-wx-instance 'colour (wxCalendarCtrl_GetHolidayColourBg (object-pointer obj))))

(defmethod date-attr ((obj calendar-control) day)
  (make-wx-instance 'wxcl-structures:calendar-date-attr (wxCalendarCtrl_GetAttr (object-pointer obj) day)))

(defmethod (setf date-attr) (attr (obj calendar-control) day)
  "Associates the attribute with the specified date (in the range 1...31)."
  (wxCalendarCtrl_SetAttr (object-pointer obj) day (object-pointer attr)))

(defmethod (setf holiday) (holiday (obj calendar-control))
  (wxCalendarCtrl_SetHoliday (object-pointer obj) holiday))

(defmethod reset-attr ((obj calendar-control) day)
  (wxCalendarCtrl_ResetAttr (object-pointer obj) day))

; (defmethod HitTest ((obj calendar-control))
;     (wxCalendarCtrl_HitTest (object-pointer obj))
;   (:arguments (_obj (ffi:c-pointer NIL))
; 	      (x ffi:int)
; 	      (y ffi:int)
; 	      (date (ffi:c-pointer NIL))
; 	      (wd (ffi:c-pointer NIL)))
;   (:return-type ffi:int)
;   (:library +library-name+))



;;;calendar-date-attr.lisp
;;;License  : wxWindows License 3.1
;;;Author(s): Jack Unrue (jdunrue@gmail.com), Surendra Singhi (surendra@asu.edu) 
;;;Copyright (c) 2005 Jack D. Unrue, Surendra Singhi
;;;See the file LICENSE for information on usage and redistribution.
;;;
;;; $Header$
;;;

(in-package :wxcl-controls)

(defclass calendar-date-attr (object)
    (:documentation "This class represents attributes of a calendar control."))

(defconstant +cal-border-none+   0)
(defconstant +cal-border-square+ 1)
(defconstant +cal-border-round+  2)

(defun make-calendar-date-attr ()
    "Create an object representing attributes of a calendar control."
    (make-wx-instance 'calendar-date-attr
        (wxCalendarDateAttr_CreateDefault)))

(defmethod border ((obj calendar-date-attr))
    "Returns the border kind."
    (wxCalendarDateAttr_GetBorder (object-pointer obj)))

(defmethod (setf border) (kind (obj calendar-date-attr))
    "Sets the border kind."
    (wxCalendarDateAttr_SetBorder (object-pointer obj) kind))

(defmethod border-colour ((obj calendar-date-attr))
    "Returns the border colour."
    (let ((colour (make-colour)))
        (wxCalendarDateAttr_GetBorderColour (object-pointer obj) (object-pointer colour))
        colour))

(defmethod (setf border-colour) (colour (obj calendar-date-attr))
    "Sets the border colour."
    (wxCalendarDateAttr_SetBorderColour (object-pointer obj) (object-pointer colour)))

(defmethod background-colour ((obj calendar-date-attr))
    "Returns the text background colour."
    (let ((colour (make-colour)))
        (wxCalendarDateAttr_GetBackgroundColour (object-pointer obj) (object-pointer colour))
        colour))

(defmethod (setf background-colour) (colour (obj calendar-date-attr))
    "Sets the text background colour."
    (wxCalendarDateAttr_SetBackgroundColour (object-pointer obj) (object-pointer colour)))

(defmethod delete ((obj calendar-date-attr))
    "Delete the foreign object."
    (wxCalendarDateAttr_Delete (object-pointer obj)))

(defmethod font ((obj calendar-date-attr))
    "Returns the font to be used."
    (let ((font (make-default-font)))
        (wxCalendarDateAttr_GetFont (object-pointer obj) (object-pointer font))
        font))

(defmethod (setf font) (f (obj calendar-date-attr))
    "Sets the font to be used."
    (wxCalendarDateAttr_SetFont (object-pointer obj) (object-pointer f)))

(defmethod text-colour ((obj calendar-date-attr))
    "Returns the text foreground colour."
    (let ((colour (make-colour)))
        (wxCalendarDateAttr_GetTextColour (object-pointer obj) (object-pointer colour))
        colour))

(defmethod (setf text-colour) (colour (obj calendar-date-attr))
    "Sets the text foreground colour."
    (wxCalendarDateAttr_SetTextColour (object-pointer obj) (object-pointer colour)))

#|
(defmethod background-colour-p ((obj calendar-date-attr))
    "Returns T if this item has a non-default text background colour."
    (not (= (wxCalendarDateAttr_HasBackgroundColour (object-pointer obj)) 0)))

(defmethod background-colour-p ((obj calendar-date-attr))
    "Returns T if this item has a non-default border colour."
    (not (= (wxCalendarDateAttr_HasBorderColour (object-pointer obj)) 0)))

(defmethod (setf holiday) (flag (obj calendar-date-attr))
    "Display the date with this attribute as a holiday."
    (wxCalendarDateAttr_SetHoliday (object-pointer obj) (if flag 1 0)))

(defmethod holiday-p ((obj calendar-date-attr))
    "Returns T if this attribute specifies that this item should be \
displayed as a holiday."
    (not (= (wxCalendarDateAttr_IsHoliday (object-pointer obj)) 0)))

(defmethod text-colour-p ((obj calendar-date-attr))
    "Returns T if this item has a non-default text foreground colour."
    (not (= (wxCalendarDateAttr_HasTextColour (object-pointer obj)) 0)))
|#

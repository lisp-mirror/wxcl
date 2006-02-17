;;;calendar-date-attr.lisp
;;;License  : wxWindows License 3.1
;;;Author(s): Jack Unrue (jdunrue@gmail.com), Surendra Singhi (surendra@asu.edu) 
;;;Copyright (c) 2005 Jack D. Unrue, Surendra Singhi
;;;See the file LICENSE for information on usage and redistribution.
;;;
;;; $Header$
;;;

(in-package :wxcl)

(defconstant +cal-border-none+   0)
(defconstant +cal-border-square+ 1)
(defconstant +cal-border-round+  2)

(defun make-calendar-date-attr (colour-text &key (colour-bg +null-colour+)
                                            (colour-border +null-colour+)
                                            font (border +cal-border-none+))
    "Create an object representing attributes of a calendar control."
    (make-wx-instance 'calendar-date-attr
        (wxCalendarDateAttr_Create (object-pointer colour-text) (object-pointer colour-bg)
                                   (object-pointer colour-border)(object-pointer font) border)))

(defun make-calendar-date-attr-empty ()
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
    (make-wx-instance 'colour (wxCalendarDateAttr_GetBorderColour (object-pointer obj))))

(defmethod (setf border-colour) (colour (obj calendar-date-attr))
    "Sets the border colour."
    (wxCalendarDateAttr_SetBorderColour (object-pointer obj) (object-pointer colour)))

(defmethod background-colour ((obj calendar-date-attr))
    "Returns the text background colour."
    (make-wx-instance 'colour (wxCalendarDateAttr_GetBackgroundColour (object-pointer obj))))

(defmethod (setf background-colour) (colour (obj calendar-date-attr))
    "Sets the text background colour."
    (wxCalendarDateAttr_SetBackgroundColour (object-pointer obj) (object-pointer colour)))

(defmethod delete-object ((obj calendar-date-attr))
    "Delete the foreign object."
    (wxCalendarDateAttr_Delete (object-pointer obj))
    (invalidate-wx-instance obj))

(defmethod font ((obj calendar-date-attr))
    "Returns the font to be used."
  (make-wx-instance 'font (wxCalendarDateAttr_GetFont (object-pointer obj))))

(defmethod (setf font) (f (obj calendar-date-attr))
    "Sets the font to be used."
    (wxCalendarDateAttr_SetFont (object-pointer obj) (object-pointer f)))

(defmethod text-colour ((obj calendar-date-attr))
    "Returns the text foreground colour."
    (make-wx-instance 'colour (wxCalendarDateAttr_GetTextColour (object-pointer obj))))

(defmethod (setf text-colour) (colour (obj calendar-date-attr))
    "Sets the text foreground colour."
    (wxCalendarDateAttr_SetTextColour (object-pointer obj) (object-pointer colour)))

(defmethod background-colour-p ((obj calendar-date-attr))
    "Returns T if this item has a non-default text background colour."
    (= (wxCalendarDateAttr_HasBackgroundColour (object-pointer obj)) 1))

(defmethod border-colour-p ((obj calendar-date-attr))
    "Returns T if this item has a non-default border colour."
    (= (wxCalendarDateAttr_HasBorderColour (object-pointer obj)) 1))

(defmethod (setf holiday) (flag (obj calendar-date-attr))
    "Display the date with this attribute as a holiday."
    (wxCalendarDateAttr_SetHoliday (object-pointer obj) (if flag 1 0)))

(defmethod holiday-p ((obj calendar-date-attr))
    "Returns T if this attribute specifies that this item should be \
displayed as a holiday."
    (= (wxCalendarDateAttr_IsHoliday (object-pointer obj)) 1))

(defmethod text-colour-p ((obj calendar-date-attr))
    "Returns T if this item has a non-default text foreground colour."
    (= (wxCalendarDateAttr_HasTextColour (object-pointer obj)) 1))


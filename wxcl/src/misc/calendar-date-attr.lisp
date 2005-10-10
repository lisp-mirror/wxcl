;;;calendar-date-attr.lisp
;;;License  : wxWindows License 3.1
;;;Author(s): Jack Unrue (jdunrue@gmail.com), Surendra Singhi (surendra@asu.edu) 
;;;Copyright (c) 2005 Jack D. Unrue, Surendra Singhi
;;;See the file LICENSE for information on usage and redistribution.
;;;
;;; $Header$
;;;

;;need to think-over this class

(in-package :wxcl-controls)

(defclass calendar-date-attr ()
    ((bgcolour :initarg :bgcolour :accessor calendar-date-attr-bgcolour)
     (bdrcolour :initarg :bdrcolour :accessor calendar-date-attr-bdrcolour)
     (border :initarg :border :initform wxCAL_BORDER_NONE :type integer :accessor calendar-date-attr-border)
     (font :initarg :font :accessor calendar-date-attr-font)
     (holiday :initarg :holiday :initform 0 :type integer :accessor calendar-date-attr-holiday)
     (txtcolour :initarg :txtcolour :accessor calendar-date-attr-txtcolour))
    (:documentation "This class represents attributes of a calendar control."))

(defmethod print-object ((attr calendar-date-attr) stream)
    (print-unreadable-object (attr stream :identity t)
        (format stream "~S :bgcolour ~A :bdrcolour ~A :border ~A :font ~A :holiday ~A :txtcolour ~A"
            (class-name (class-of attr))
            (calendar-date-attr-bgcolour attr)
            (calendar-date-attr-bdrcolour attr)
            (calendar-date-attr-border attr)
            (calendar-date-attr-font attr)
            (calendar-date-attr-holiday attr)
            (calendar-date-attr-txtcolour attr)))
        attr)

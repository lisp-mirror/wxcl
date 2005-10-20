;;;status-bar.lisp
;;;License  : wxWindows License 3.1
;;;Author(s) : Surendra Singhi (surendra@asu.edu) 
;;;Copyright (C) 2005 Surendra Singhi 
;;;See the file LICENSE for information on usage and redistribution.
;;;
;;; $Header$
;;;

(in-package :wxcl-windows)


(defun make-status-bar (parent id &key (style wxST_SIZEGRIP))
  (let ((st (make-instance 'status-bar)))
    (setf (slot-value st 'object)
	  (wxStatusBar_Create (object-pointer parent) id style))
    st))

(defmethod (setf fields-count) (num (obj status-bar) &optional (width nil))
  "Sets the number of fields, and optionally the field widths which is a vector or arrya."
  (wxStatusBar_SetFieldsCount (object-pointer obj) num width))

(defmethod fields-count ((obj status-bar))
  "Returns the number of fields in the status bar."
  (wxStatusBar_GetFieldsCount (object-pointer obj)))


(defmethod (setf status-text) (text (obj status-bar) &optional (i 0))
  "Sets the text for one field."
  (wxStatusBar_SetStatusText (object-pointer obj) text i))

(defmethod status-text ((obj status-bar) &optional (i 0))
  (wxStatusBar_GetStatusText (object-pointer obj) i))

(defmethod set-status-Widths ((obj status-bar) num widths)
    (wxStatusBar_SetStatusWidths (object-pointer obj) num widths))

(defmethod (setf min-height) (height (obj status-bar))
  (wxStatusBar_SetMinHeight (object-pointer obj) height))

(defmethod border-x ((obj status-bar))
    (wxStatusBar_GetBorderX (object-pointer obj)))

(defmethod border-y ((obj status-bar))
    (wxStatusBar_GetBorderY (object-pointer obj)))


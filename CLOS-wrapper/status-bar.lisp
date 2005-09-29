(in-package :wxCL)

(defclass status-bar (window)
  ()
  (:documentation "Status bar is a narrow window that can be placed along the bottom of\
 a frame to give small amounts of status information. It can contain one or more fields,\
 one or more of which can be variable length according to the size of the window."))


(defun make-status-bar (parent id style)
  (let ((st (make-instance 'status-bar)))
    (setf (slot-value st 'object)
	  (wxStatusBar_Create (object-pointer obj) id style))
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


(defmethod GetBorderX ((obj status-bar))
    (wxStatusBar_GetBorderX (object-pointer obj)))

(defmethod wxStatusBar_GetBorderY ((obj status-bar))
    (wxStatusBar_GetBorderY (object-pointer obj)))


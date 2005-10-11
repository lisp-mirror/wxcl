;;;button.lisp
;;;License  : wxWindows License 3.1
;;;Author(s): Jack Unrue (jdunrue@gmail.com), Surendra Singhi (surendra@asu.edu) 
;;;Copyright (c) 2005 Jack D. Unrue, Surendra Singhi
;;;See the file LICENSE for information on usage and redistribution.
;;;
;;; $Header$
;;;

(in-package :wxcl-controls)

(defclass button (control)
    ()
    (:documentation "A button is a control that contains a text string, and \
is one of the most common elements of a GUI. It may be placed on a dialog \
box or panel, or indeed almost any other window."))

(defun make-button (parent &key (id -1) (label "") (pos default-position) (size default-size) (style 0))
    "Create a button control."
    (make-wx-instance 'button
		      (wxButton_Create (when parent (object-pointer parent))
				       id label (point-x pos) (point-y pos) (size-width size)
				       (size-height size) style)))

(defmethod (setf background-colour) ((c colour) (obj button))
    "FIXME: undocumented method"
    (wxButton_SetBackgroundColour (object-pointer obj) (object-pointer c)))

#|
(defmethod default-size ((obj button))
    "Returns the default size for the button."
    (wxButton_GetDefaultSize (object-pointer obj)))
|#

(defmethod set-default ((obj button))
    "Sets the button to be the default item for the panel or dialog box."
    (wxButton_SetDefault (object-pointer obj)))

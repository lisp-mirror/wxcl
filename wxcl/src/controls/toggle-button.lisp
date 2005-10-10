;;;toggle-button.lisp
;;;License  : wxWindows License 3.1
;;;Author(s): Jack Unrue (jdunrue@gmail.com), Surendra Singhi (surendra@asu.edu) 
;;;Copyright (c) 2005 Jack D. Unrue, Surendra Singhi
;;;See the file LICENSE for information on usage and redistribution.
;;;
;;; $Header$
;;;

(in-package :wxcl-controls)

(defclass toggle-button (control)
    ()
    (:documentation "A toggle button is a button that stays pressed when \
clicked by the user. In other words, it is similar to check-box in \
functionality but looks like a button."))

(defun make-toggle-button (parent &key (id -1) (label "") (pos default-position) (size default-size) (style 0))
    "Create a toggle button control."
    (make-wx-instance 'toggle-button 
		      (wxToggleButton_Create (when parent (object-pointer parent))
					     id label (point-x pos) (point-y pos) (size-width size)
					     (size-height size) style)))

(defmethod value ((obj toggle-button))
    "Gets the state of the toggle button."
    (wxToggleButton_GetValue (object-pointer obj)))

(defmethod (setf value) (state (obj toggle-button))
    "Sets the toggle button to the given state."
    (wxToggleButton_SetValue (object-pointer obj) state))

(defmethod enable ((obj toggle-button) state)
    "FIXME: undocumented method"
    (wxToggleButton_Enable (object-pointer obj) state))

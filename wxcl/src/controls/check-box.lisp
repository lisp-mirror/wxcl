;;;check-box.lisp
;;;License  : wxWindows License 3.1
;;;Author(s): Jack Unrue (jdunrue@gmail.com), Surendra Singhi (surendra@asu.edu) 
;;;Copyright (c) 2005 Jack D. Unrue, Surendra Singhi
;;;See the file LICENSE for information on usage and redistribution.
;;;
;;; $Header$
;;;

(in-package :wxcl)

(defconstant +chk-2state                    #x0000)
(defconstant +chk-3state                    #x1000)
(defconstant +chk-allow-3rd-state-for-user+ #x2000)

(defun make-check-box (parent &key (id -1) (label "") (pos +default-position+)
                              (size +default-size+) (style 0))
    "Create a checkbox control."
    (make-wx-instance 'check-box
		      (wxCheckBox_Create (when parent (object-pointer parent))
					 id label (point-x pos) (point-y pos) (size-width size)
					 (size-height size) style)))

(defmethod value ((obj check-box))
    "Gets the state of the checkbox."
    (wxCheckBox_GetValue (object-pointer obj)))

(defmethod (setf value) (state (obj check-box))
    "Sets the checkbox to the given state."
    (wxCheckBox_SetValue (object-pointer obj) state))

#|
(defmethod 3-state-value ((obj check-box))
    "Returns wxCHK_UNCHECKED when the checkbox is unchecked, \
wxCHK_CHECKED when it is checked and wxCHK_UNDETERMINED when \
it's in the undetermined state."
    ;; FIXME: do we check for 2-state checkbox mode ourselves
    ;; and throw an error, or can we somehow catch the assertion \
    ;; that wxWidgets fires when it makes the check itself?
    ;;
    (wxCheckBox_Get3StateValue (object-pointer obj)))

(defmethod (setf 3-state-value) ((obj checkbox) state)
    "Sets the checkbox to the given state. This does not cause a \
wxEVT_COMMAND_CHECKBOX_CLICKED event to get emitted."
    ;; FIXME: do we check for 2-state checkbox mode ourselves
    ;; and throw an error, or can we somehow catch the assertion \
    ;; that wxWidgets fires when it makes the check itself?
    ;;
    (wxCheckBox_Set3StateValue (object-pointer obj) state))

(defmethod 3rd-state-allowed ((obj checkbox))
    "Returns T if the user can set the checkbox to the third \
state, or nil if not."
    (wxCheckBox_Is3rdStateAllowedForUser (object-pointer obj)))

(defmethod is-3-state ((obj checkbox))
    "Returns T if the checkbox is a 3-state checkbox, or \
nil if not."
    (wxCheckBox_Is3State (object-pointer obj)))
|#

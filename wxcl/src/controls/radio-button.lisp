;;;radio-button.lisp
;;;License  : wxWindows License 3.1
;;;Author(s): Jack Unrue (jdunrue@gmail.com), Surendra Singhi (surendra@asu.edu) 
;;;Copyright (c) 2005 Jack D. Unrue, Surendra Singhi
;;;See the file LICENSE for information on usage and redistribution.
;;;
;;; $Header$
;;;

(in-package :wxcl-controls)

(defclass radio-button (control)
    ()
    (:documentation "A radio button is a control which usually denotes one \
of several mutually exclusive options."))

(defconstant +rb-group+        #x0004)
(defconstant +rb-single+       #x0008)
(defconstant +rb-use-checkbox+ #x0010) ; PalmOS only

(defun make-radio-button (parent &key (id -1) (label "") (pos default-position) (size default-size) (style 0))
    "Create a radio button control."
    (make-wx-instance 'radio-button
		      (wxRadioButton_Create (when parent (object-pointer parent))
				       id label (point-x pos) (point-y pos) (size-width size)
				       (size-height size) style)))

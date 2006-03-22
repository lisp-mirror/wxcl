;;;button.lisp
;;;License  : wxWindows License 3.1
;;;Author(s): Jack Unrue (jdunrue@gmail.com), Surendra Singhi (surendra@asu.edu) 
;;;Copyright (c) 2005 Jack D. Unrue, Surendra Singhi
;;;See the file LICENSE for information on usage and redistribution.
;;;
;;; $Header$
;;;

(in-package :wxcl)

(defconstant +bu-exactfit+ #x0001)
(defconstant +bu-left+     #x0040)
(defconstant +bu-top+      #x0080)
(defconstant +bu-right+    #x0100)
(defconstant +bu-bottom+   #x0200)

(defun make-button (parent &key (id -1) (label "") (pos +default-position+) (size +default-size+) (style 0))
    "Create a button control."
    (make-wx-instance 'button
		      (wxButton_Create (cffi-object-pointer parent)
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

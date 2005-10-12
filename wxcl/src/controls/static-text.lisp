;;;static-text.lisp
;;;License  : wxWindows License 3.1
;;;Author(s): Jack Unrue (jdunrue@gmail.com), Surendra Singhi (surendra@asu.edu) 
;;;Copyright (c) 2005 Jack D. Unrue, Surendra Singhi
;;;See the file LICENSE for information on usage and redistribution.
;;;
;;; $Header$
;;;

(in-package :wxcl-controls)

(defclass static-text (control)
    ()
    (:documentation "A static text control displays one or more lines of \
read-only text."))

(defun make-static-text (parent text &key (id -1) (pos default-position) (size default-size) (style 0))
    "Create a static text control."
    (make-wx-instance 'static-text
		      (wxStaticText_Create (when parent (object-pointer parent))
				       id text (point-x pos) (point-y pos) (size-width size)
				       (size-height size) style)))

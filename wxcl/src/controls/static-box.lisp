;;;static-box.lisp
;;;License  : wxWindows License 3.1
;;;Author(s): Jack Unrue (jdunrue@gmail.com), Surendra Singhi (surendra@asu.edu) 
;;;Copyright (c) 2005 Jack D. Unrue, Surendra Singhi
;;;See the file LICENSE for information on usage and redistribution.
;;;
;;; $Header$
;;;

(in-package :wxcl-controls)

(defclass static-box (control)
    ()
    (:documentation "A static box is a rectangle drawn around other panel \
items to denote a logical grouping of items.  A static box should NOT be \
used as the parent for the controls it contains."))

(defun make-static-box (parent text &key (id -1) (pos default-position) (size default-size) (style 0))
    "Create a static box control."
    (make-wx-instance 'static-box
		      (wxStaticBox_Create (when parent (object-pointer parent))
				       id text (point-x pos) (point-y pos) (size-width size)
				       (size-height size) style)))
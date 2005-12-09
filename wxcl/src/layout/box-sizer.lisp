;;;box-sizer.lisp
;;;License  : wxWindows License 3.1
;;;Author(s) : Surendra Singhi (surendra@asu.edu) 
;;;Copyright (C) 2005 Surendra Singhi 
;;;See the file LICENSE for information on usage and redistribution.
;;;
;;; $Header$
;;;

(in-package :wxcl-layout)

(defun make-box-sizer (orientation)
  (let ((bs (make-instance 'box-sizer)))
    (setf (slot-value bs 'object)
	  (wxBoxSizer_Create orientation))
    bs))

(defmethod orientation ((obj box-sizer))
  (wxBoxSizer_GetOrientation (object-pointer obj)))


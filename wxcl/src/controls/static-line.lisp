;;;static-line.lisp
;;;License  : wxWindows License 3.1
;;;Author(s) : Surendra Singhi (surendra@asu.edu) 
;;;Copyright (C) 2005 Surendra Singhi 
;;;See the file LICENSE for information on usage and redistribution.
;;;
;;; $Header$
;;;

(in-package :wxcl)

(defconstant +li-horizontal+ 4)
(defconstant +li-vertical+ 8)

(defun make-static-line (parent &key (id -1) (size +default-size+) (position +default-position+) (style +li-horizontal+))
	(make-wx-instance 'static-line
                     (wxStaticLine_Create (object-pointer parent) id (point-x +default-position+)
                                          (point-y +default-position+) (size-width +default-position+)
                                          (size-length +default-position+) style)))

(defmethod vertical-p ((obj static-line))
  (= 1 (wxStaticLine_IsVertical (object-pointer obj))))

(defmethod default-size ((obj static-line))
  (wxStaticLine_GetDefaultSize (object-pointer obj)))

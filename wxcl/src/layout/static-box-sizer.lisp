;;;static-box-sizer.lisp
;;;License  : wxWindows License 3.1
;;;Author(s) : Surendra Singhi (surendra@asu.edu) 
;;;Copyright (C) 2005 Surendra Singhi 
;;;See the file LICENSE for information on usage and redistribution.
;;;
;;; $Header$
;;;

(in-package :wxcl)

(defun make-static-box-sizer (static-box orient)
  "Create a static box sizer."
    (make-wx-instance 'static-box-sizer
                      (wxStaticBoxSizer_Create (object-pointer static-box) orient)))


(defmethod GetStaticBox ((obj static-box-sizer))
  (make-wx-instance 'static-box 
                    (wxStaticBoxSizer_GetStaticBox (object-pointer obj))))

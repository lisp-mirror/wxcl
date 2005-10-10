;;;closure.lisp
;;;License  : wxWindows License 3.1
;;;Author(s) : Surendra Singhi (surendra@asu.edu) 
;;;Copyright (C) 2005 Surendra Singhi 
;;;See the file LICENSE for information on usage and redistribution.
;;;
;;; $Header$
;;;

(in-package :wxCL)

(defclass closure (object)
  ()
  (:documentation ""))

(defun make-closure (fun &key (data nil))
  (make-wx-instance 'closure (wxClosure_Create fun data)))

(defun start-app (closure &key (arguments nil))
  (ELJApp_InitializeC (object-pointer closure) (length arguments) arguments))




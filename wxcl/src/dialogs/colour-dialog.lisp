;;;colour-dialog.lisp
;;;License  : wxWindows License 3.1
;;;Author(s) : Surendra Singhi (surendra@asu.edu) 
;;;Copyright (C) 2005 Surendra Singhi 
;;;See the file LICENSE for information on usage and redistribution.
;;;
;;; $Header$
;;;

(in-package :wxcl)

(defun make-colour-dialog (parent &optional (colour nil))
  (make-wx-instance 'colour-dialog
                    (wxColourDialog_Create (object-pointer parent)
                                           (cffi-object-pointer colour))))

(defmethod colour-data ((obj colour-dialog) &optional (data (make-colour-data)))
  (wxColourDialog_GetColourData (object-pointer obj) (object-pointer data)))

(defmacro with-colour-dialog ((dialog parent &optional (colour-data nil)) &body body)
  `(let (,dialog) 
    (unwind-protect
         (progn
           (setf ,dialog (make-colour-dialog ,parent ,colour-data))
           ,@body)
      (wxWindow_destroy (object-pointer ,dialog)))))


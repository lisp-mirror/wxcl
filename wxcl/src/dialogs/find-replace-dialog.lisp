;;;find-replace-dialog.lisp
;;;License  : wxWindows License 3.1
;;;Author(s) : Surendra Singhi (surendra@asu.edu) 
;;;Copyright (C) 2005 Surendra Singhi 
;;;See the file LICENSE for information on usage and redistribution.
;;;
;;; $Header$
;;;

(in-package :wxcl)

(defun make-find-replace-dialog (parent data &key (title "") (style 0))
  (make-wx-instance 'find-replace-dialog 
                    (wxFindReplaceDialog_Create (object-pointer parent)
                                                (object-pointer data)
                                                title style)))

(defmethod data ((obj find-replace-dialog))
  (make-wx-instance 'find-replace-data
                    (wxFindReplaceDialog_GetData (object-pointer obj))))

(defmethod (setf data) (data (obj find-replace-dialog))
  (wxFindReplaceDialog_SetData (object-pointer obj) (object-pointer data)))


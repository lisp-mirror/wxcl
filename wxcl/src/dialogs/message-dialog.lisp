;;;message-dialog.lisp
;;;License  : wxWindows License 3.1
;;;Author(s) : Surendra Singhi (surendra@asu.edu) 
;;;Copyright (C) 2005 Surendra Singhi 
;;;See the file LICENSE for information on usage and redistribution.
;;;
;;; $Header$
;;;

(in-package :wxcl-dialogs)

(defconstant +yes-no+ 10)
(defconstant +no-default+ 128)
(defconstant +yes-default+ 0)
(defconstant +icon-exclamation+ 256)
(defconstant +icon-hand+ 512)
(defconstant +icon-question+ 1024)
(defconstant +icon-information+ 2048)

(defun make-message-dialog (parent &key (message "") (caption "Message Box") (style 0))
  (make-wx-instance 'message-dialog
                    (wxMessageDialog_Create (object-pointer parent) message caption style)))

(defmethod delete-dialog ((obj message-dialog))
  (wxMessageDialog_Delete (object-pointer obj))
  (invalidate-wx-instance obj))

(defmacro show-message-dialog (parent message caption &optional (style +yes-default+))
  (let ((dialog (gensym)))
    `(unwind-protect
      (progn
        (setf ,dialog (make-message-dialog ,parent :message ,message :caption ,caption :style ,style))
        (show-modal ,dialog))
      (delete-dialog ,dialog))))

(in-package :wxcl-dialogs)

(defconstant +yes-no+ 10)
(defconstant +no-default+ 128)
(defconstant +yes-default+ 0)
(defconstant +icon-exclamation+ 256)
(defconstant +icon-hand+ 512)
(defconstant +icon-question+ 1024)
(defconstant +icon-information+ 2048)

(defun make-message-dialog (parent &key (message "") (caption "") (style 0))
  (make-wx-instance 'message-dialog
                    (wxMessageDialog_Create (object-pointer parent) message caption style)))

(defmethod delete-dialog ((obj message-dialog))
  (wxMessageDialog_Delete (object-pointer obj)))

(defmacro show-message-dialog (parent message caption &optional (style wxYES_DEFAULT))
  (let ((dialog (gensym)))
    `(unwind-protect
      (progn
        (setf ,dialog (wxMessageDialog_Create ,parent ,message ,caption ,style))
        (wxMessageDialog_ShowModal ,dialog))
      (wxMessageDialog_Delete ,dialog))))

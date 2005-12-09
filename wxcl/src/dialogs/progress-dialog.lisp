(in-package :wxcl-dialogs)

(defun make-progress-dialog (title message &key (max 100) (parent nil) (style 0))
  (make-wx-instance 'progress-dialog
                    (wxProgressDialog_Create title  message max (when parent (object-pointer parent)) style)))

(defmethod update ((obj progress-dialog) value &optional (message ""))
  (wxProgressDialog_Update (object-pointer obj) value message))


(defmethod resume ((obj progress-dialog))
  (wxProgressDialog_Resume (object-pointer obj)))

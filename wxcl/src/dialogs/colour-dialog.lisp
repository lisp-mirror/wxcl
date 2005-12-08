(in-package :wxcl-dialogs)

(defun make-colour-dialog (parent &optional (colour nil))
  (make-wx-instance 'colour-dialog
                    (wxColourDialog_Create (object-pointer parent)
                                           (when colour (object-pointer colour)))))

(defmethod colour-data ((obj colour-dialog) &optional (data (wxcl-structures:make-colour-data)))
  (wxColourDialog_GetColourData (object-pointer obj) (object-pointer data)))

(defmacro with-colour-dialog ((dialog parent &optional (colour-data nil)) &body body)
  `(let (,dialog) 
    (unwind-protect
         (progn
           (setf ,dialog (make-colour-dialog ,parent ,colour-data))
           ,@body)
      (wxWindow_destroy (object-pointer ,dialog)))))


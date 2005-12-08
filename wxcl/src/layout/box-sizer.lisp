(in-package :wxcl-layout)

(defun make-box-size (orientation)
  (let ((bs (make-instance 'box-sizer)))
    (setf (slot-value bs 'object)
	  (wxBoxSizer_Create orientation))
    bs))

(defmethod orientation ((obj box-sizer))
  (wxBoxSizer_GetOrientation (object-pointer obj)))


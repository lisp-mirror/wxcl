(in-package :wxCL)

(use-package :wxSizer)

(defclass box-sizer (sizer)
  ()
  (:documentation "The basic idea behind a box sizer is that windows will most often\
 be laid out in rather simple basic geometry, typically in a row or a column or several hierarchies of either."))

(defun make-box-size (orientation)
  (let ((bs (make-instance 'box-sizer)))
    (setf (slot-value bs 'object)
	  (wxBoxSizer_Create orientation))
    bs))

(defmethod orientation ((obj box-sizer))
  (wxBoxSizer_GetOrientation (object-pointer obj)))


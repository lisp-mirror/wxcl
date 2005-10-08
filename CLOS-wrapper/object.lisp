(in-package :wxCL)

(defclass object ()
  ((obj :reader object-pointer))
  (:documentation "The foundation of all wxCL classes. Should not be directly instantiated."))

(defun make-wx-instance (class foreign-pointer)
  (when foreign-pointer
    (let ((obj (make-instance class)))
      (setf (slot-value obj 'object) foreign-pointer)
      obj)))

(defun invalidate-wx-instance (obj)
  (setf (slot-value obj 'object) nil))
  

(defclass point ()
  ((x :initarg :x :initform -1 :type integer :accessor point-x)
   (y :initarg :y :initform -1 :type integer :accessor point-y)))

(defmethod print-object ((pt point) stream)
  (print-unreadable-object (pt stream :identity t)
    (format stream "~S :x ~A :y ~A"
	    (class-name (class-of pt))
	    (point-x pt)
	    (point-y pt)))
    pt)
	  
(eval-when (:compile-toplevel :load-toplevel :execute)
  (defconstant default-position
    (make-instance 'point)))



(defclass size ()
  ((height :initarg :height :initform -1 :type integer :accessor size-height)
   (width :initarg :width :initform -1 :type integer :accessor size-width)))

(defmethod print-object ((sz size) stream)
  (print-unreadable-object (sz stream :identity t)
    (format stream "~S :height ~A :width ~A"
	    (class-name (class-of sz))
	    (size-height sz)
	    (size-width sz)))
    sz)

(eval-when (:compile-toplevel :load-toplevel :execute)
  (defconstant default-size
    (make-instance 'size)))


(defclass rect ()
  ((position :initarg :position :accessor rect-position)
   (size :initarg :size :accessor rect-size)))

  



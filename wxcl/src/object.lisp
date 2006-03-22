;;;object.lisp
;;;License  : wxWindows License 3.1
;;;Author(s) : Surendra Singhi (surendra@asu.edu) 
;;;Copyright (C) 2005 Surendra Singhi 
;;;See the file LICENSE for information on usage and redistribution.
;;;
;;; $Header$
;;;

(in-package :wxCL)

(defclass object ()
  ((object :reader object-pointer))
  (:documentation "The foundation of all wxCL classes. Should not be directly instantiated."))

(defun make-wx-instance (class foreign-pointer)
  (when foreign-pointer
    (let ((obj (make-instance class)))
      (setf (slot-value obj 'object) foreign-pointer)
      obj)))

(defun invalidate-wx-instance (obj)
  (setf (slot-value obj 'object) nil))

(defmacro cffi-object-pointer (obj)
  `(if ,obj (object-pointer ,obj) (cffi:null-pointer)))

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

(defun make-point (x y)
  (make-instance 'point :x x :y y))
   
(defvar +default-position+
  (make-instance 'point))

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

(defun make-size (width height)
  (make-instance 'size :width width :height height))

(defvar +default-size+
  (make-instance 'size))

(defconstant +size-auto-width+ 1)
(defconstant +size-auto-height+ 2)
(defconstant +size-use-existing+ 0)
(defconstant +size-allow-minus-one+ 4)
(defconstant +size-no-adjustments+ 8)


(defclass rect ()
  ((position :initarg :position :accessor rect-position)
   (size :initarg :size :accessor rect-size)))

  
(defun make-rect (x y w h)
  (make-instance 'rect
                 :position (make-point x y)
                 :size (make-size w h)))
                 


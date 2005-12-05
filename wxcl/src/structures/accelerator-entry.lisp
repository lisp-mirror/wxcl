(in-package :wxcl-structures)

(defconstant +accel-alt+ 1)
(defconstant +accel-ctrl+ 2)
(defconstant +accel-shift+ 4)
(defconstant +accel-normal+ 0)

(defclass accelerator-entry ()
;  ((object))
  ((cmd :accessor command :initarg :command :type integer)
    (flags :accessor flags :initarg :flags :type integer)
    (key-code :accessor key-code :initarg :key-code :type integer))
  (:documentation "An object used by an application wishing to create an accelerator table."))

(defun make-accelerator-entry (flags key-code cmd)
  (make-instance 'accelerator-entry :command cmd :flags flags :key-code key-code))
;   (let ((inst (make-instance 'accelerator-entry
;                              (wxAcceleratorEntry_Create flags key-code cmd))))
;     inst))

(defmethod print-object ((ae accelerator-entry) stream)
   (print-unreadable-object (ae stream :identity t)
     (format stream "~S :flags ~A :key-code ~A :command ~A"
 	    (class-name (class-of pt))
 	    (flags ae)
        (key-code ae)
        (command ae)))
   ae)

;(defmethod flags ((

(in-package :wxcl)

(defclass accelerator-table (object)
  ((accelerator-entries :reader accelerator-entries))
  (:documentation "An accelerator table allows the application to specify a table\
 of keyboard shortcuts for menus or other commands. On Windows, menu or button\
 commands are supported; on GTK, only menu commands are supported."))

(defun make-accelerator-table (&rest entries)
  (let* ((ent (make-array (length entries) :initial-contents
                          (loop for entry in entries
                                collect (wxAcceleratorEntry_Create (flags entry)(key-code entry)(command entry)))))
         (obj (make-wx-instance 'accelerator-table
                                (wxAcceleratorTable_Create (length ent) ent))))
    (setf (slot-value obj 'accelerator-entries) entries)
    obj))
  

(defmethod delete-object ((obj accelerator-table))
  (wxAcceleratorTable_Delete (object-pointer obj))
  (setf (slot-value obj 'accelerator-entries) nil)
  (invalidate-wx-instance obj))

; (defmacro define-accelerator-table (name &body body)
;   (let ((size (length body)))
;     `(defparameter name (make-wx-instance 'accelerator-table
;                          (wxAcceleratorTable_Create size
;                           (make-array ,size :initial-contents
;                                       (list ,@(mapcar (lambda (x) `(wxAcceleratorEntry_Create ,@x)) body))))))))


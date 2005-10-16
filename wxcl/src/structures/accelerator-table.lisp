
(in-package :wxcl-structures)

(defclass accelerator-table (object)
  ((accelerator-entries :reader accelerator-entries))
  (:documentation "An accelerator table allows the application to specify a table\
 of keyboard shortcuts for menus or other commands. On Windows, menu or button\
 commands are supported; on GTK, only menu commands are supported."))

(defun make-accelerator-table (&optional (entries nil))
  (let ((ent (make-array (length entries) :initial-contents
                         (loop for entry in entries
                               collect (wxAcceleratorEntry_Create (flags entry)(key-code entry)(command entry))))))
    (setf (slot-value obj 'accelerator-entries) entries)
    (make-wx-instance 'accelerator-table
                      (wxAcceleratorTable_Create (length ent) ent))))

(defmethod delete-pointer ((obj accelerator-table))
  (wxAcceleratorTable_Delete (object-pointer obj))
  (setf (slot-value obj 'accelerator-entries) nil))

(defmacro define-accelerator-table (name &body body)
  (let ((size (length body)))
    `(defvar name (make-wx-instance 'accelerator-table
                   (wxAcceleratorTable_Create size
                    (make-array ,size :initial-contents
                                (list ,@(mapcar (lambda (x) `(wxAcceleratorEntry_Create ,@x)) body))))))))


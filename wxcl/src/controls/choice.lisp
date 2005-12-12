;;;choice.lisp
;;;License  : wxWindows License 3.1
;;;Author(s): Jack Unrue (jdunrue@gmail.com), Surendra Singhi (surendra@asu.edu) 
;;;Copyright (c) 2005 Jack D. Unrue, Surendra Singhi
;;;See the file LICENSE for information on usage and redistribution.
;;;
;;; $Header$
;;;

(in-package :wxcl-controls)

(defun make-choice (parent choices &key (id -1) (pos +default-position+)
                    (size +default-size+) (style 0))
    "Create a choice control."
    (make-wx-instance 'choice
        (wxChoice_Create (when parent (object-pointer parent))
            id (point-x pos) (point-y pos) (size-width size) (size-height size)
            (length choices) choices style)))

(defmethod columns ((obj choice))
    "Gets the number of columns. Note: implemented for Motif only; always \
returns 1 for the other platforms."
    (wxChoice_GetColumns (object-pointer obj)))

(defmethod (setf columns) (n (obj choice))
    "Sets the number of columns. Note: implemented for Motif only; this \
method is a no-op for the other platforms."
    (wxChoice_SetColumns (object-pointer obj) n))

(defmethod current-selection ((obj choice))
    "FIXME: undocumented method"
    (wxChoice_GetCurrentSelection (object-pointer obj)))

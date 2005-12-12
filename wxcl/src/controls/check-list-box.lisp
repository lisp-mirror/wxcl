;;;check-list-box.lisp
;;;License  : wxWindows License 3.1
;;;Author(s): Jack Unrue (jdunrue@gmail.com), Surendra Singhi (surendra@asu.edu) 
;;;Copyright (c) 2005 Jack D. Unrue, Surendra Singhi
;;;See the file LICENSE for information on usage and redistribution.
;;;
;;; $Header$
;;;

(in-package :wxcl-controls)

(defun make-check-list-box (parent choices &key (id -1) (pos +default-position+)
                            (size +default-size+) (style 0))
    "Create a checklistbox control."
    (make-wx-instance 'check-list-box
        (wxCheckListBox_Create (when parent (object-pointer parent))
            id (point-x pos) (point-y pos) (size-width size) (size-height size)
            (length choices) choices style)))

(defmethod check ((obj check-list-box) item &optional (check 1))
    "Checks the given item. Calling this method does not result in \
wxEVT_COMMAND_CHECKLISTBOX_TOGGLE being emitted."
    (wxCheckListBox_Check (object-pointer obj) item check))

(defmethod checked ((obj check-list-box) item)
    "Returns T if the given item is checked, nil otherwise."
    (wxCheckListBox_IsChecked (object-pointer obj) item))

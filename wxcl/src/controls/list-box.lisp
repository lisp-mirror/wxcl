;;;list-box.lisp
;;;License  : wxWindows License 3.1
;;;Author(s): Surendra Singhi (surendra@asu.edu), Jack Unrue (jdunrue@gmail.com)
;;;Copyright (c) 2005 Surendra Singhi, Jack D. Unrue
;;;See the file LICENSE for information on usage and redistribution.
;;;
;;; $Header$
;;;

(in-package :wxcl-controls)

(defconstant +lb-sort+       #x0010)
(defconstant +lb-single+     #x0020)
(defconstant +lb-multiple+   #x0040)
(defconstant +lb-extended+   #x0080)
(defconstant +lb-ownerdraw+  #x0100) ; Windows-only
(defconstant +lb-needed-sb+  #x0200)
(defconstant +lb-always-sb+  #x0400)
(defconstant +lb-int-height+ #x0800)
(defconstant +lb-hscroll+    #x40000000) ; #define'd to wxHSCROLL in defs.h

(defun make-list-box (parent choices &key (id -1) (pos +default-position+) (size +default-size+) (style 0))
  (make-wx-instance 'list-box
                    (wxListBox_Create (when parent (object-pointer parent))
                                      id (point-x pos) (point-y pos) (size-width size) (size-height size)
                                      (length choices) choices style)))

(defmethod deselect ((obj list-box) n)
    (wxListBox_Deselect (object-pointer obj) n))

(defmethod set-choices ((obj list-box) n choices)
    (wxListBox_Set (object-pointer obj) n choices))

(defmethod selected-p ((obj list-box) n)
    (= 1 (wxListBox_IsSelected (object-pointer obj) n)))

(defmethod selections ((obj list-box))
  (wxListBox_GetSelections (object-pointer obj)))

(defmethod insert-items ((obj list-box) items pos)
  (wxListBox_InsertItems (object-pointer obj)  items pos (length items)))

(defmethod (setf first-item) (n (obj list-box))
  (wxListBox_SetFirstItem (object-pointer obj) n))


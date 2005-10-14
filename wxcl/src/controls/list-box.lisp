;;;list-box.lisp
;;;License  : wxWindows License 3.1
;;;Author(s): Surendra Singhi (surendra@asu.edu), Jack Unrue (jdunrue@gmail.com)
;;;Copyright (c) 2005 Surendra Singhi, Jack D. Unrue
;;;See the file LICENSE for information on usage and redistribution.
;;;
;;; $Header$
;;;

(in-package :wxcl-controls)

(defclass list-box (control-with-items)
  ()
  (:documentation "A listbox is used to select one or more of a list of strings.The strings\
 are displayed in a scrolling box, with the selected string(s) marked in reverse video. A\
 listbox can be single selection (if an item is selected, the previous selection is removed)\
 or multiple selection (clicking an item toggles the item on or off independently of other selections)."))

(defconstant +lb-sort+       #x0010)
(defconstant +lb-single+     #x0020)
(defconstant +lb-multiple+   #x0040)
(defconstant +lb-extended+   #x0080)
(defconstant +lb-ownerdraw+  #x0100) ; Windows-only
(defconstant +lb-needed-sb+  #x0200)
(defconstant +lb-always-sb+  #x0400)
(defconstant +lb-int-height+ #x0800)
(defconstant +lb-hscroll+    #x40000000) ; #define'd to wxHSCROLL in defs.h

(defun make-list-box (parent choices &key (id -1) (pos default-position) (size default-size) (choices nil)
			    (style 0))
    (let ((lb (make-instance 'list-box)))
      (setf (slot-value lb 'object)
	    (wxListBox_Create (when parent (object-pointer parent))
			      id (point-x pos) (point-y pos) (size-width size) (size-height size)
			      (length choices) choices style))
    lb))

(defmethod deselect ((obj list-box) n)
    (wxListBox_Deselect (object-pointer obj) n))

(defmethod set ((obj list-box) n choices)
    (wxListBox_SetString (object-pointer obj) n choices))

(defmethod selected-p ((obj list-box) n)
    (= 1 (wxListBox_IsSelected (object-pointer obj) n)))

(defmethod selections ((obj list-box))
  (wxListBox_GetSelections (object-pointer obj)))

(defmethod insert-items ((obj list-box) items pos)
  (wxListBox_InsertItems (object-pointer obj)  items pos (length items)))

(defmethod (setf first-item) (n (obj list-box))
  (wxListBox_SetFirstItem (object-pointer obj) n))


(in-package :wxCL)

(defclass list-box (control-with-items)
  ()
  (:documentation "A listbox is used to select one or more of a list of strings.The strings\
 are displayed in a scrolling box, with the selected string(s) marked in reverse video. A\
 listbox can be single selection (if an item is selected, the previous selection is removed)\
 or multiple selection (clicking an item toggles the item on or off independently of other selections)."))

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


;;;combo-box.lisp
;;;License  : wxWindows License 3.1
;;;Author(s): Jack Unrue (jdunrue@gmail.com), Surendra Singhi (surendra@asu.edu) 
;;;Copyright (c) 2005 Jack D. Unrue, Surendra Singhi
;;;See the file LICENSE for information on usage and redistribution.
;;;
;;; $Header$
;;;

(in-package :wxcl-controls)

(defconstant +cb-simple+   #x0004)
(defconstant +cb-sort+     #x0008)
(defconstant +cb-readonly+ #x0010)
(defconstant +cb-dropdown+ #x0020)

(defun make-combo-box (parent choices &key (id -1) (text "") (pos +default-position+)
                              (size +default-size+) (style 0))
    "Create a combobox control."
    (make-wx-instance 'combo-box
        (wxComboBox_Create (when parent (object-pointer parent))
            id text (point-x pos) (point-y pos) (size-width size) (size-height size)
            (length choices) choices style)))

(defmethod copy ((obj combo-box))
    "Copies the selected text to the clipboard."
    (wxComboBox_Copy (object-pointer obj)))

(defmethod cut ((obj combo-box))
    "Copies the selected text to the clipboard and removes the selection."
    (wxComboBox_Cut (object-pointer obj)))

(defmethod (setf editable) (editable (obj combo-box))
    "FIXME: undocumented method"
    (wxComboBox_SetEditable (object-pointer obj) editable))

(defmethod insertion-point ((obj combo-box))
    "Returns the insertion point for the combobox's text field."
    (wxComboBox_GetInsertionPoint (object-pointer obj)))

(defmethod (setf insertion-point) (pos (obj combo-box))
    "Sets the insertion point in the combobox text field."
    (wxComboBox_SetInsertionPoint (object-pointer obj) pos))

(defmethod last-position ((obj combo-box))
    "Returns the last position in the combobox text field."
    (wxComboBox_GetLastPosition (object-pointer obj)))

(defmethod paste ((obj combo-box))
    "Pastes text from the clipboard to the text field."
    (wxComboBox_Paste (object-pointer obj)))

(defmethod remove ((obj combo-box) from to)
    "Removes the text between the two positions in the combobox \
text field."
    (wxComboBox_Remove (object-pointer obj) from to))

(defmethod replace ((obj combo-box) from to text)
    "Replaces the text between two positions with the given text in \
the combobox text field."
    (wxComboBox_Replace (object-pointer obj) from to text))

(defmethod (setf selection) (to from (obj combo-box))
    "Selects the text between the two positions in the combobox text field."
    (wxComboBox_SetSelection (object-pointer obj) from to))

(defmethod set-insertion-point-end ((obj combo-box))
    "Sets the insertion point at the end of the combobox text field."
    (wxComboBox_SetInsertionPointEnd (object-pointer obj)))

(defmethod (setf text-selection) (to from (obj combo-box))
    "FIXME: undocumented method; could be synonym for wxComboBox_SetSelection"
    (wxComboBox_SetTextSelection (object-pointer obj) from to))

(defmethod value ((obj combo-box))
    "Returns the current value in the combobox text field."
    (wxComboBox_GetValue (object-pointer obj)))

(defmethod (setf value) (text (obj combo-box))
    "Sets the text for the combobox text field. For a combobox with \
wxCB_READONLY style the string must be in the combobox choice list, \
otherwise this method is ignored."
    (wxComboBox_SetValue (object-pointer obj) text))

(defmethod undo ((obj combo-box))
    "Undoes the last edit in the text field. This method is ignored \
on platforms other than Windows(tm)."
    (wxComboBox_Undo (object-pointer obj)))

#|
(defmethod can-copy ((obj combo-box))
    "Returns T if the combobox is editable and there is a text \
selection to copy to the clipboard. Only available on Windows(tm)."
    (wxComboBox_CanCopy (object-pointer obj)))

(defmethod can-cut ((obj combo-box))
    "Returns T if the combobox is editable and there is a text \
selection to copy to the clipboard. Only available on Windows(tm)."
    (wxComboBox_CanCut (object-pointer obj)))

(defmethod can-paste ((obj combo-box))
    "Returns T if the combobox is editable and there is a text \
on the clipboard that can be pasted into the text field.  Only \
available on Windows(tm)."
    (wxComboBox_CanPaste (object-pointer obj)))

(defmethod can-redo ((obj combo-box))
    "Returns T if the combobox is editable and the last undo can
be redone. Only available on Windows(tm)."
    (wxComboBox_CanRedo (object-pointer obj)))

(defmethod can-undo ((obj combo-box))
    "Returns T if the combobox is editable and the last edit can
be undone. Only available on Windows(tm)."
    (wxComboBox_CanUndo (object-pointer obj)))

(defmethod redo ((obj combo-box))
    "Redoes the last undo in the text field. Only available on \
Windows(tm)."
    (wxComboBox_Redo (object-pointer obj)))
|#

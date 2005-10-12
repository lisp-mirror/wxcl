;;;radio-box.lisp
;;;License  : wxWindows License 3.1
;;;Author(s): Jack Unrue (jdunrue@gmail.com), Surendra Singhi (surendra@asu.edu) 
;;;Copyright (c) 2005 Jack D. Unrue, Surendra Singhi
;;;See the file LICENSE for information on usage and redistribution.
;;;
;;; $Header$
;;;

(in-package :wxcl-controls)

(defclass radio-box (control)
    ()
    (:documentation "A radio box item is used to select one of a number of \
mutually exclusive choices, displayed as a column or row of labelled buttons."))

(defun make-radio-box (parent &key choices (id -1) (label "") (dimension 0) (pos default-position) (size default-size) (style 0))
    "Create a radio box control."
    (make-wx-instance 'radio-box
		      (wxRadioBox_Create (when parent (object-pointer parent))
				       id label (point-x pos) (point-y pos) (size-width size)
				       (size-height size) (length choices) choices dim style)))

#|
;; NOTE: the wxWidgets API docs state that wxRadioBox.Number() is
;; obsolete and is only available if WXWIN_COMPATIBILITY_2_2 is
;; defined, and that one should call GetCount() instead.  However,
;; the wxC wrapper does not currently wrap GetCount().  I'm going
;; to uncomment the following count method when wxC is updated
;; (and skip the number method altogether).
;;
(defmethod count ((obj radio-box))
    "Returns the number of items in the radio box."
    (wxRadioBox_GetCount (object-pointer obj)))

(defmethod enable ((obj radio-box) &key (enable t))
    "Enables or disables the entire control."
    (wxRadioBox_Enable (object-pointer obj) (if enable 1 0)))

(defmethod show ((obj radio-box) &key (show t))
    "Shows or hides the entire control."
    (wxRadioBox_Show (object-pointer obj) (if show 1 0)))
|#

(defmethod enable-item ((obj radio-box) index &key (enable t))
    "Enables or disables the button at the specified index."
    (wxRadioBox_EnableItem (object-pointer obj) index (if enable 1 0)))

(defmethod find-string ((obj radio-box) text)
    "Finds a button matching the given string, returning the position \
if found, or -1 if not found."
    (wxRadioBox_FindString (object-pointer obj) text))

(defmethod (setf item-bitmap) (bitmap index (obj radio-box))
    "FIXME: undocumented method"
    (wxRadioBox_SetItemBitmap (object-pointer obj) index bitmap))

(defmethod item-label ((obj radio-box) index)
    "Returns the label of the button at the specified index."
    ;; FIXME: confirm that wxRadioBox_GetItemLabel is correct wrt _buf being a parameter,
    ;; then fix the following call.
    (wxRadioBox_GetItemLabel (object-pointer obj) index))

(defmethod number-of-rows-or-cols ((obj radio-box))
    "FIXME: undocumented method"
    (wxRadioBox_GetNumberOfRowsOrCols (object-pointer obj)))

(defmethod (setf number-of-rows-or-cols) (count (obj radio-box))
    "FIXME: undocumented method"
    (wxRadioBox_SetNumberOfRowsOrCols (object-pointer obj) count))

(defmethod (setf item-label) (label index (obj radio-box))
    "Sets the label of the button at the specified index."
    (wxRadioBox_SetItemLabel (object-pointer obj) index label))

(defmethod selection ((obj radio-box))
    "Returns the zero-based position of the selected button."
    (wxRadioBox_GetSelection (object-pointer obj)))

(defmethod (setf selection) (index (obj radio-box))
    "Selects the button indicated by the specified index. This does not \
cause a wxEVT_COMMAND_RADIOBOX_SELECTED event to get emitted."
    (wxRadioBox_SetSelection (object-pointer obj) index))

(defmethod show-item ((obj radio-box) index &key (show t))
    "Shows or hides the button at the specified index."
    (wxRadioBox_ShowItem (object-pointer obj) index (if show 1 0)))

(defmethod string-selection ((obj radio-box))
    "Returns the selected string."
    ;; FIXME: confirm that wxRadioBox_GetStringSelection is correct wrt _buf being a parameter,
    ;; then fix the following call.
    (wxRadioBox_GetStringSelection (object-pointer obj)))

(defmethod (setf string-selection) (str (obj radio-box))
    "Selects the button whose label is the specified string. This does not \
cause a wxEVT_COMMAND_RADIOBOX_SELECTED event to get emitted."
    (wxRadioBox_SetStringSelection (object-pointer obj) str))

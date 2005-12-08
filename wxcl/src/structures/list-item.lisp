;;;list-item.lisp
;;;License  : wxWindows License 3.1
;;;Author(s): Jack Unrue (jdunrue@gmail.com), Surendra Singhi (surendra@asu.edu) 
;;;Copyright (c) 2005 Jack D. Unrue, Surendra Singhi
;;;See the file LICENSE for information on usage and redistribution.
;;;
;;; $Header$
;;;

(in-package :wxcl-structures)

(defconstant +list-mask-state+        #x0001)
(defconstant +list-mask-text+         #x0002)
(defconstant +list-mask-image+        #x0004)
(defconstant +list-mask-data+         #x0008)
(defconstant +list-set-item+          #x0010) ;defined in listbase.h, but is it used?
(defconstant +list-mask-width         #x0020)
(defconstant +list-mask-format+       #x0040)

(defconstant +list-state-dontcare+    #x0000)
(defconstant +list-state-drophilited+ #x0001)
(defconstant +list-state-focused+     #x0002)
(defconstant +list-state-selected+    #x0004)
(defconstant +list-state-cut+         #x0008)

(defun make-list-item ()
    "Create a list item data structure, for use with list-ctrl."
    (make-wx-instance 'list-item
        (wxListItem_Create)))

(defmethod align ((obj list-item))
    "Returns the alignment for this item."
    (wxListItem_GetAlign (object-pointer obj)))

(defmethod (setf align) (format (obj list-item))
    "Sets the alignment for this item."
    (wxListItem_SetAlign (object-pointer obj) format))

(defmethod background-colour ((obj list-item))
    "Returns the background colour for this item."
    (make-wx-instance 'wxcl-gdi:colour (wxListItem_GetBackgroundColour (object-pointer obj) (object-pointer colour))))

(defmethod (setf background-colour) (colour (obj list-item))
    "Sets the background colour for this item."
    (wxListItem_SetBackgroundColour (object-pointer obj) (object-pointer colour)))

(defmethod clear ((obj list-item))
    "Resets the item state to the default."
    (wxListItem_Clear (object-pointer obj)))

(defmethod clear-attributes ((obj list-item))
    "FIXME: undocumented method"
    (wxListItem_ClearAttributes (object-pointer obj)))

(defmethod column ((obj list-item))
    "Returns the zero-based column; meaningful only in report mode."
    (wxListItem_GetColumn (object-pointer obj)))

(defmethod (setf column) (column (obj list-item))
    "Sets the zero-based column; meaningful only in report mode."
    (wxListItem_SetColumn (object-pointer obj) column))

(defmethod data ((obj list-item))
    "Returns the client data set for the item."
    ;; FIXME: I think the wxWidgets interface here is incomplete
    ;; for our purposes, since in Lisp you wouldn't try to coerce
    ;; a 'long' to a pointer.  Yes, there is wxListItem_SetDataPointer,
    ;; but there is currently no wxListItem_GetDataPointer ?
    ;;
    (wxListItem_GetData (object-pointer obj)))

(defmethod (setf data) (value (obj list-item))
    "Sets client data for the item."
    ;; FIXME: I think the wxWidgets interface here is incomplete
    ;; for our purposes, since in Lisp you wouldn't try to coerce
    ;; a 'long' to a pointer.  Yes, there is wxListItem_SetDataPointer,
    ;; but there is currently no wxListItem_GetDataPointer ?
    ;;
    (wxListItem_SetData (object-pointer obj) value))

#|
(defmethod data-pointer ((obj list-item))
    "Returns the client data set for the item."
    (wxListItem_GetDataPointer (object-pointer obj)))
|#

(defmethod (setf data-pointer) (value (obj list-item))
    "Sets client data for the item."
    ;; FIXME: need the corresponding wxListItem_GetDataPointer.
    ;;
    (wxListItem_SetDataPointer (object-pointer obj) value))

(defmethod delete-object ((obj list-item))
    "FIXME: undocumented method"
    (wxListItem_Delete (object-pointer obj)))

(defmethod font ((obj list-item))
    "Returns the font for the item."
    (make-wx-instance 'wxcl-gdi:font (wxListItem_GetFont (object-pointer obj))))

(defmethod (setf font) (font (obj list-item))
    "Sets the font for the item."
    (wxListItem_SetFont (object-pointer obj) (object-pointer font)))

(defmethod id ((obj list-item))
    "Returns the zero-based item position."
    (wxListItem_GetId (object-pointer obj)))

(defmethod (setf id) (pos (obj list-item))
    "Sets the zero-based item position."
    (wxListItem_SetId (object-pointer obj) pos))

(defmethod image ((obj list-item))
    "Returns the zero-based index of the image associated with the \
item in the image list."
    (wxListItem_GetImage (object-pointer obj)))

(defmethod (setf image) (index (obj list-item))
    "Sets the zero-based index of the image associated with the \
item into the image list."
    (wxListItem_SetImage (object-pointer obj) index))

(defmethod mask ((obj list-item))
    "Returns a bit mask indicating which fields of the structure are \
valid."
    (wxListItem_GetMask (object-pointer obj)))

(defmethod (setf mask) (mask (obj list-item))
    "Sets the mask of valid fields."
    (wxListItem_SetMask (object-pointer obj) mask))

(defmethod state ((obj list-item))
    "Returns a bit field representing the state of the item."
    (wxListItem_GetState (object-pointer obj)))

(defmethod (setf state) (bits (obj list-item))
    "Sets the item state flags (note that the valid state flags are \
influenced by the value of the state mask."
    (wxListItem_SetState (object-pointer obj) bits))

(defmethod (setf state-mask) (mask (obj list-item))
    "Sets the bitmask that is used to determine which of the state \
flags are to be set."
    (wxListItem_SetStateMask (object-pointer obj) mask))

(defmethod text ((obj list-item))
    "Returns the label/header text."
    (wxListItem_GetText (object-pointer obj)))

(defmethod (setf text) (text (obj list-item))
    "Sets the label/header text."
     ;FIXME: need to create wxString?
    (wxListItem_SetText (object-pointer obj) text))

(defmethod text-colour ((obj list-item))
    "Returns the text colour for this item."
    (make-wx-instance 'wxcl-gdi:colour (wxListItem_GetTextColour (object-pointer obj))))

(defmethod (setf text-colour) (colour (obj list-item))
    "Sets the text colour for the item."
    (wxListItem_SetTextColour (object-pointer obj) (object-pointer colour)))

(defmethod width ((obj list-item))
    "Returns the column width, meaningful only for column headers in report mode."
    (wxListItem_GetWidth (object-pointer obj)))

(defmethod (setf width) (value (obj list-item))
    "Sets the column width, meaningful only for column headers in report mode."
    (wxListItem_SetWidth (object-pointer obj) value))

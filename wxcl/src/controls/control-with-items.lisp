;;;control-with-items.lisp
;;;License  : wxWindows License 3.1
;;;Author(s): Surendra Singhi (surendra@asu.edu), Jack Unrue (jdunrue@gmail.com)
;;;Copyright (c) 2005 Surendra Singhi, Jack D. Unrue
;;;See the file LICENSE for information on usage and redistribution.
;;;
;;; $Header$
;;;

(in-package :wxcl-controls)

(defclass control-with-items (window)
  ()
  (:documentation "This class is an abstract base class for some wxWidgets controls which contain several items, such as wxListBox and wxCheckListBox derived from it, wxChoice and wxComboBox."))

(defmethod clear ((obj control-with-items))
    (wxControlWithItems_Clear (object-pointer obj)))

(defmethod delete ((obj control-with-items) n)
    (wxControlWithItems_Delete (object-pointer obj) n))

(defmethod count ((obj control-with-items))
    (wxControlWithItems_GetCount (object-pointer obj)))

(defmethod string ((obj control-with-items) n)
    (wxControlWithItems_GetString (object-pointer obj) n))

(defmethod (setf string) (str (obj control-with-items) n)
  (wxControlWithItems_SetString (object-pointer obj) n str))

(defmethod find-string ((obj control-with-items) str)
  (wxControlWithItems_FindString (object-pointer obj) str))

(defmethod (setf selection) (n (obj control-with-items))
  (wxControlWithItems_SetSelection (object-pointer obj) n))

(defmethod selection ((obj control-with-items))
  (wxControlWithItems_GetSelection (object-pointer obj)))

(defmethod append ((obj control-with-items)item) 
    (wxControlWithItems_Append (object-pointer obj) item))

(defmethod append-data ((obj control-with-items) item data)
  (wxControlWithItems_AppendData (object-pointer obj) item data))

(defmethod insert ((obj control-with-items) item pos)
    (wxControlWithItems_Insert (object-pointer obj) item pos))

(defmethod insert-data ((obj control-with-items))
  (wxControlWithItems_InsertItems (object-pointer obj) item pos data))

(defmethod (setf client-data) (data (obj control-with-items) n)
  (wxControlWithItems_SetClientData (object-pointer obj) n data))

(defmethod client-data ((obj control-with-items) n)
  (wxControlWithItems_GetClientData (object-pointer obj) n))

(defmethod string-selection ((obj control-with-items))
  (wxControlWithItems_GetStringSelection (object-pointer obj)))

(defmethod (setf string-selection) (str (obj control-with-items))
  (= 1 (wxControlWithItems_SetStringSelection (object-pointer obj) str)))

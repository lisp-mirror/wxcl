(in-package :wxcl)

(defun make-menu-bar (&optional (menus nil) (title nil) (style 0))
  (let ((mb (make-wx-instance 'menu-bar (wxMenuBar_Create style))))
    (loop for mn in menus and str in title do
	  (wxMenuBar_Append (object-pointer mb) (object-pointer mn) (if str str "")))
    mb))

(defmethod delete-menu-bar ((obj menu-bar))
  (wxMenuBar_DeletePointer (object-pointer obj))
  (setf (slot-value obj 'object) nil))

(defmethod menu-bar-append ((obj menu-bar) (mn menu) title)
  (= 1 (wxMenuBar_Append (object-pointer obj) (object-pointer mn) title)))

(defmethod menu-bar-insert ((obj menu-bar) pos (mn menu) title)
  (= 1 (wxMenuBar_Insert (object-pointer obj) pos (object-pointer mn) title)))

(defmethod menu-count ((obj menu-bar))
  (wxMenuBar_GetMenuCount (object-pointer obj)))

(defmethod menu-at-index ((obj menu-bar) pos)
  (make-wx-instance 'menu (wxMenuBar_GetMenu (object-pointer obj) pos)))

(defmethod menu-bar-replace ((obj menu-bar) pos (mn menu) title)
  (make-wx-instance 'menu (wxMenuBar_Replace  (object-pointer obj) pos (object-pointer mn) title)))

(defmethod menu-bar-remove ((obj menu-bar) pos)
  (make-wx-instance 'menu (wxMenuBar_Remove (object-pointer obj) pos)))

(defmethod enable-top ((obj menu-bar) pos flag)
  (wxMenuBar_EnableTop (object-pointer obj) pos (if flag 1 0)))

(defmethod (setf label-top) (str (obj menu-bar) pos)
  (wxMenuBar_SetLabelTop (object-pointer obj) pos str))

(defmethod label-top ((obj menu-bar) pos)
  (wxMenuBar_GetLabelTop (object-pointer obj) pos))

(defmethod find-menu-item ((obj menu-bar) menu-string item-string)
  (wxMenuBar_FindMenuItem (object-pointer obj) menu-string item-string))


;fix me
;;menu should be a pointer to pointer
(defmethod find-item ((obj menu-bar) id &optional (menu nil))
  (make-wx-instance 'menu-item (wxMenuBar_FindItem (object-pointer obj) id (cffi-object-pointer menu))))

(defmethod find-menu ((obj menu-bar) title) 
  (wxMenuBar_FindMenu (object-pointer obj) title))

(defmethod enable-item ((obj menu-bar) id flag)
  (wxMenuBar_EnableItem (object-pointer obj) id (if flag 1 0)))

(defmethod check-item ((obj menu-bar) id &optional (flag t))
  (wxMenuBar_Check (object-pointer obj) id (if flag 1 0)))

(defmethod item-checked-p ((obj menu-bar) id)
  (= 1 (wxMenuBar_IsChecked (object-pointer obj) id)))

(defmethod item-enabled-p ((obj menu-bar) id)
  (= 1 (wxMenuBar_IsEnabled (object-pointer obj) id)))

(defmethod (setf item-label) (str (obj menu-bar) id)
  (wxMenuBar_SetLabel (object-pointer obj) id str))

(defmethod item-label ((obj menu-bar) id)
  (wxMenuBar_GetLabel (object-pointer obj) id))

(defmethod (setf help-string) (help-str (obj menu-bar) id)
    (wxMenuBar_SetHelpString (object-pointer obj) id help-str))

(defmethod help-string ((obj menu-bar) id)
  (wxMenuBar_GetHelpString (object-pointer obj) id))

(defmethod enable ((obj menu-bar) flag) 
  (wxMenuBar_Enable (object-pointer obj) (if flag 1 0)))

(defmethod refresh ((obj menu-bar)) 
  (wxMenuBar_Refresh (object-pointer obj)))

(defmethod frame ((obj menu-bar))
  (make-wx-instance 'frame (wxMenuBar_GetFrame (object-pointer obj))))


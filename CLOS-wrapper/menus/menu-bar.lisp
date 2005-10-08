(in-package :wxcl-menus)

(use-package :wxFrame)

(defclass menu-bar (object)
  ()
  (:documentation "A menu is a popup (or pull down) list of items,\
 one of which may be selected before the menu goes away (clicking\
 elsewhere dismisses the menu). Menus may be used to construct either\
 menu bars or popup menus."))

(defun make-menu-bar (:key (style 0) (menus nil) (title nil))
  
  (let ((mb (make-wx-instance 'menu-bar (wxMenuBar_Create style))))
    (loop for mn in menus and str in title do
	  (wxMenuBar_Append (object-pointer mb) (object-pointer mn) (if str str "")))
    mb))

(defmethod delete-pointer ((obj menu-bar))
  (wxMenuBar_DeletePointer (object-pointer obj))
  (setf (slot-value obj 'object) nil))

(defmethod append ((obj menu-bar) (mn menu) title)
  (= 1 (wxMenuBar_Append (object-pointer obj) (object-pointer mn) title)))

(defmethod insert ((obj menu-bar) pos (mn menu) title)
  (= 1 (wxMenuBar_Insert (object-pointer obj) pos (object-pointer mn) title)))

(defmethod menu-count ((obj menu-bar))
  (wxMenuBar_GetMenuCount (object-pointer obj)))

(defmethod menu ((obj menu-bar) pos)
  (make-wx-instance 'menu (wxMenuBar_GetMenu (object-pointer obj) pos)))

(defmethod replace ((obj menu-bar) pos (mn menu) title)
  (make-wx-instance 'menu (wxMenuBar_Replace  (object-pointer obj) pos (object-pointer mn) title)))

(defmethod remove ((obj menu-bar) pos)
  (make-wx-instance 'menu (wxMenuBar_Replace (object-pointer obj) pos)))

(defmethod enable-top ((obj menu-bar) pos flag)
  (wxMenuBar_EnableTop (object-pointer obj) pos (if flag 1 0)))

(defmethod (setf label-top) (str (obj menu-bar) pos)
  (wxMenuBar_SetLabelTop (object-pointer obj) pos str))

(defmethod label-top ((obj menu-bar) pos)
  (wxMenuBar_GetLabelTop pos))

(defmethod find-menu-item ((obj menu-bar) menu-string item-string)
  (wxMenuBar_FindMenuItem (object-pointer obj) menu-string item-string))


;fix me
;;menu should be a pointer to pointer
(defmethod find-item ((obj menu-bar) id &key (menu nil))
  (make-wx-instance 'menu-item (wxMenuBar_FindItem (object-pointer obj) id (when menu (object-pointer menu)))))

(defmethod find-menu ((obj menu-bar) title) 
  (wxMenuBar_FindMenu (object-pointer obj) title))

(defmethod enable ((obj menu-bar) id flag)
  (wxMenuBar_EnableItem (object-pointer obj) id (if flag 1 0)))

(defmethod check ((obj menu-bar) id flag)
  (wxMenuBar_Check (object-pointer obj) id (if flag 1 0)))

(defmethod checked-p ((obj menu-bar))
  (= 1 (wxMenuBar_IsChecked (object-pointer obj) id)))

(defmethod enabled-p ((obj menu-bar) id)
  (= 1 (wxMenuBar_IsEnabled (object-pointer obj))))

(defmethod (setf label) (str (obj menu-bar) id)
  (wxMenuBar_SetItemLabel (object-pointer obj) id str))

(defmethod label ((obj menu-bar) id)
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
  (make-wx-instance 'wxcl-windows:frame (wxMenuBar_GetFrame (object-pointer obj))))

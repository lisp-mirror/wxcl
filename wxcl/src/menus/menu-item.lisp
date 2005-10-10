(in-package :wxcl-menus)

(defconstant wxITEM_SEPARATOR -1)
(defconstant wxITEM_NORMAL 0)
(defconstant wxITEM_CHECK 1)
(defconstant wxITEM_RADIO 2)

(defclass menu (object)
  ()
  (:documentation "A menu is a popup (or pull down) list of items,\
 one of which may be selected before the menu goes away (clicking\
 elsewhere dismisses the menu). Menus may be used to construct either\
 menu bars or popup menus."))

(defun make-menu-item (&key (parent nil) (id wxITEM_SEPARATOR) (text "") (help-string "") (kind wxITEM_SEPARATOR)
		       (sub nil))
  (make-wx-instance 'menu-item (wxMenuItem_Create (when parent (object-pointer parent))
						  id
						  text
						  help-string
						  kind
						  (when sub (object-pointer parent)))))

(defmethod delete ((obj menu-item))
  (wxMenuItem_Delete (object-pointer obj))
  (invakidate-wx-instance obj))

(defmethod menu ((obj menu-item))
  (make-wx-instance 'menu  (wxMenuItem_GetMenu (object-pointer obj))))

(defmethod (setf menu) ((obj menu-item)(parent menu))
  (wxMenuItem_SetMenu (object-pointer obj)(object-pointer parent))))

(defmethod id ((obj menu-item))
  (wxMenuItem_GetId (object-pointer obj)))

(defmethod (setf id) (id (obj menu-item))
  (wxMenuItem_SetId (object-pointer obj) id))

(defmethod separator-p ((obj menu-item))
  (= 1 (wxMenuItem_IsSeparator (object-pointer obj))))

(defmethod text ((obj menu-item))
  (wxMenuItem_GetText (object-pointer obj)))

(defmethod (setf text) (str (obj menu-item))
  (wxMenuItem_SetText (object-pointer obj) str))

(defmethod label ((obj menu-item))
  (wxMenuItem_GetLabel (object-pointer obj)))

(defmethod label-from-text ((obj menu-item))
  (wxMenuItem_GetLabelFromText (object-pointer obj)))

(defmethod (setf checkable) (flag (obj menu-item))
  (wxMenuItem_SetCheckable (object-pointer obj) (if flag 1 0)))

(defmethod checkable-p ((obj menu-item))
  (= 1 (wxMenuItem_IsCheckable (object-pointer obj))))

(defmethod sub-menu-p ((obj menu-item))
  (= 1 (wxMenuItem_IsSubMenu (object-pointer obj))))

(defmethod (setf sub-menu) ((sub menu) (obj menu-item))
  (wxMenuItem_SetSubMenu (object-pointer obj) (object-pointer sub)))

(defmethod sub-menu ((obj menu-item))
  (make-wx-instance 'menu (wxMenuItem_GetSubMenu (object-pointer obj))))

(defmethod enable ((obj menu-item) flag)
  (wxMenuItem_Enable (object-pointer obj) (if flag 1 0)))

(defmethod enabled-p ((obj menu-item))
  (= 1 (wxMenuItem_IsEnabled (object-pointer obj))))

(defmethod check ((obj menu-item) flag)
  (wxMenuItem_Check (object-pointer obj) (if flag 1 0)))

(defmethod checked-p ((obj menu-item))
  (= 1 (wxMenuItem_IsChecked (object-pointer obj))))

(defmethod (setf help) (str (obj menu-item))
  (wxMenuItem_SetHelp (object-pointer obj) str))

(defmethod help ((obj menu-item)) wxMenuItem_GetHelp
    (wxMenuItem_GetHelp (object-pointer obj)))

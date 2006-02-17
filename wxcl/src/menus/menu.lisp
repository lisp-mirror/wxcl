(in-package :wxcl)

(defun make-menu (&key (title "") (style 0))
  (make-wx-instance 'menu (wxMenu_Create title style)))

(defmacro make-menu-with-items (&rest items)
  (let ((menu (gensym)))
  `(let  ((,menu (make-menu)))
    ,@(loop for (type . params) in items collect
            (case type
              (string `(append-string ,menu ,@params))
              (separator `(append-separator ,menu))
              (check-item `(append-check-item ,menu ,@params))
              (radio-item `(append-radio-item ,menu ,@params))
              (sub-menu `(append-sub-menu ,menu ,@params))
              (menu-items `(append-sub-menu ,menu ,@params))))
    ,menu)))



  
(defmethod delete-menu ((obj menu))
  (wxMenu_DeletePointer (object-pointer obj))
  (setf (slot-value obj 'object) nil))

(defmethod append-separator ((obj menu))
  (wxMenu_AppendSeparator (object-pointer obj)))

(defmethod append-string ((obj menu) id item &key (help-string "")) 
  (wxMenu_Append (object-pointer obj) id item help-string))

(defmethod append-check-item ((obj menu) id item &key (help-string "")) 
  (wxMenu_AppendCheckItem (object-pointer obj) id item help-string))

(defmethod append-radio-item ((obj menu) id item &key (help-string "")) 
  (wxMenu_AppendRadioItem (object-pointer obj) id item help-string))

(defmethod append-sub-menu ((obj menu) id item (sub-menu menu) &key (help-string "")) 
    (wxMenu_AppendSub (object-pointer obj) id item (object-pointer sub-menu) help-string))

(defmethod append-menu-item ((obj menu) (item menu-item))
  (wxMenu_AppendItem (object-pointer obj) (object-pointer item)))

(defmethod menu-break ((obj menu))
  (wxMenu_Break (object-pointer obj)))

(defmethod insert-string ((obj menu) pos id item &key (help-string "")) 
  (wxMenu_Insert (object-pointer obj) pos id item help-string))

(defmethod insert-check-item ((obj menu) pos id item &key (help-string "")) 
  (wxMenu_InsertCheckItem (object-pointer obj) pos id item help-string))

(defmethod insert-radio-item ((obj menu) pos id item &key (help-string "")) 
  (wxMenu_InsertRadioItem (object-pointer obj) pos id item help-string))

(defmethod insert-sub-menu ((obj menu) pos id item (sub-menu menu) &key (help-string "")) 
    (wxMenu_InsertSub (object-pointer obj) pos id item (object-pointer sub-menu) help-string))

(defmethod insert-menu-item ((obj menu) pos (item menu-item))
  (wxMenu_InsertItem (object-pointer obj) pos (object-pointer item)))

(defmethod prepend-string ((obj menu) pos id item &key (help-string "")) 
  (wxMenu_Prepend (object-pointer obj) pos id item help-string))

(defmethod prepend-check-item ((obj menu) id item &key (help-string "")) 
  (wxMenu_PrependCheckItem (object-pointer obj) id item help-string))

(defmethod prepend-radio-item ((obj menu) id item &key (help-string "")) 
  (wxMenu_PrependRadioItem (object-pointer obj) id item help-string))

(defmethod prepend-sub-menu ((obj menu) id item (sub-menu menu) &key (help-string "")) 
    (wxMenu_PrependSub (object-pointer obj) id item (object-pointer sub-menu) help-string))

(defmethod prepend-menu-item ((obj menu) (item menu-item))
  (wxMenu_PrependItem (object-pointer obj) (object-pointer item)))

(defmethod menu-remove ((obj menu) (item menu-item)) 
  (wxMenu_RemoveByItem (object-pointer obj) (object-pointer item)))

(defmethod menu-remove ((obj menu) (id integer))
  (wxMenu_RemoveById (object-pointer obj) id)) ;;this function and all
;;;the other function returns wxMenuItem* we are currently ignoring it

(defmethod menu-delete ((obj menu) (item menu-item)) 
  (wxMenu_DeleteByItem (object-pointer obj) (object-pointer item)))

(defmethod menu-delete ((obj menu) (id integer))
  (wxMenu_DeleteById (object-pointer obj) id))

(defmethod destroy-item ((obj menu) (item menu-item)) 
  (wxMenu_DestroyByItem (object-pointer obj) (object-pointer item)))

(defmethod destroy-item ((obj menu) (id integer))
  (wxMenu_DestroyById (object-pointer obj) id))

(defmethod menu-item-count ((obj menu))
  (wxMenu_GetMenuItemCount (object-pointer obj)))

; (defmethod ((obj menu)) wxMenu_GetMenuItems
;     (:name "wxMenu_GetMenuItems")
;   (:arguments (_obj (ffi:c-pointer NIL))
; 	      (_lst (ffi:c-pointer NIL)))
;   (:return-type ffi:int)
;   (:library +library-name+))

(defmethod find-items-by-label ((obj menu) label)
  (wxMenu_FindItemByLabel (object-pointer obj) label))

(defmethod find-item ((obj menu) id &optional (menu nil))
  (make-wx-instance 'menu-item (wxMenu_FindItem (object-pointer obj) id (when menu (object-pointer menu)))))

(defmethod enable-item ((obj menu) id bool)
    (wxMenu_Enable (object-pointer obj) id (if bool 1 0)))

(defmethod item-enabled-p ((obj menu) id)
  (= 1 (wxMenu_IsEnabled (object-pointer obj) id)))

(defmethod check-menu-item ((obj menu) id check)
  (wxMenu_Check (object-pointer obj) id (if check 1 0)))

(defmethod item-checked-p ((obj menu) id)
  (= 1 (wxMenu_IsChecked  (object-pointer obj) id)))

(defmethod (setf item-label) (label (obj menu) id)
  (wxMenu_SetLabel (object-pointer obj) id label))

(defmethod item-label ((obj menu) id)
  (wxMenu_GetLabel (object-pointer obj) id))

(defmethod (setf item-help-string) (str (obj menu) id)
    (wxMenu_SetHelpString (object-pointer obj) id str))

(defmethod item-help-string ((obj menu) id)
    (wxMenu_GetHelpString (object-pointer obj) id))

(defmethod (setf title) (str (obj menu))
    (wxMenu_SetTitle (object-pointer obj) str))

(defmethod title ((obj menu))
  (wxMenu_GetTitle (object-pointer obj)))

; (defmethod ((obj menu)) wxMenu_SetEventHandler
;     (:name "wxMenu_SetEventHandler")
;   (:arguments (_obj (ffi:c-pointer NIL))
; 	      (handler (ffi:c-pointer NIL)))
;   (:library +library-name+))

; (defmethod ((obj menu)) wxMenu_SetInvokingWindow
;     (:name "wxMenu_SetInvokingWindow")
;   (:arguments (_obj (ffi:c-pointer NIL))
; 	      (win (ffi:c-pointer NIL)))
;   (:library +library-name+))

; (defmethod ((obj menu)) wxMenu_GetInvokingWindow
;     (:name "wxMenu_GetInvokingWindow")
;   (:arguments (_obj (ffi:c-pointer NIL)))
;   (:return-type (ffi:c-pointer NIL))
;   (:library +library-name+))

(defmethod style ((obj menu))
  (wxMenu_GetStyle (object-pointer obj)))

(defmethod update-ui ((obj menu) &optional (source nil))
  (wxMenu_UpdateUI (object-pointer obj) (when source (object-pointer source))))

; (defmethod ((obj menu)) wxMenu_IsAttached
;     (:name "wxMenu_IsAttached")
;   (:arguments (_obj (ffi:c-pointer NIL)))
;   (:return-type ffi:int)
;   (:library +library-name+))

; (defmethod ((obj menu)) wxMenu_SetParent
;     (:name "wxMenu_SetParent")
;   (:arguments (_obj (ffi:c-pointer NIL))
; 	      (parent (ffi:c-pointer NIL)))
;   (:library +library-name+))

; (defmethod ((obj menu)) wxMenu_GetParent
;     (:name "wxMenu_GetParent")
;   (:arguments (_obj (ffi:c-pointer NIL)))
;   (:return-type (ffi:c-pointer NIL))
;   (:library +library-name+))

; (defmethod ((obj menu)) wxMenu_GetMenuBar
;     (:name "wxMenu_GetMenuBar")
;   (:arguments (_obj (ffi:c-pointer NIL)))
;   (:return-type (ffi:c-pointer NIL))
;   (:library +library-name+))

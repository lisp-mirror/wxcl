(in-package :wxcl-dialogs)

(defun make-find-replace-data (&optional (flags 0))
	(make-wx-instance 'find-replace-data (wxFindReplaceData_Create flags)))

(defmethod delete-data ((obj find-replace-data))
  (wxFindReplaceData_Delete (object-pointer obj)))

(defmethod wxFindReplaceData_GetFindString
	(:name "wxFindReplaceData_GetFindString")
	(:arguments (_obj (c-pointer NIL))
		(_ref (c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(defmethod wxFindReplaceData_GetReplaceString
	(:name "wxFindReplaceData_GetReplaceString")
	(:arguments (_obj (c-pointer NIL))
		(_ref (c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(defmethod wxFindReplaceData_GetFlags
	(:name "wxFindReplaceData_GetFlags")
	(:arguments (_obj (c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(defmethod wxFindReplaceData_SetFlags
	(:name "wxFindReplaceData_SetFlags")
	(:arguments (_obj (c-pointer NIL))
		(flags ffi:int))
	(:library +library-name+))

(defmethod wxFindReplaceData_SetFindString
	(:name "wxFindReplaceData_SetFindString")
	(:arguments (_obj (c-pointer NIL))
		(str (c-pointer NIL)))
	(:library +library-name+))

(defmethod wxFindReplaceData_SetReplaceString
	(:name "wxFindReplaceData_SetReplaceString")
	(:arguments (_obj (c-pointer NIL))
		(str (c-pointer NIL)))
	(:library +library-name+))

(defmethod wxFindDialogEvent_GetFlags
	(:name "wxFindDialogEvent_GetFlags")
	(:arguments (_obj (c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(defmethod wxFindDialogEvent_GetFindString
	(:name "wxFindDialogEvent_GetFindString")
	(:arguments (_obj (c-pointer NIL))
		(_ref (c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(defmethod wxFindDialogEvent_GetReplaceString
	(:name "wxFindDialogEvent_GetReplaceString")
	(:arguments (_obj (c-pointer NIL))
		(_ref (c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(defun make-find-replace-dialog (parent data &key (title "") (style 0))
  (make-wx-instance 'find-replace-dialog 
                    (wxFindReplaceDialog_Create (object-pointer parent)
                                                (object-pointer data)
                                                title style)))

(defmethod data ((obj find-replace-dialog))
  (make-wx-instance 'find-replace-data
                    (wxFindReplaceDialog_GetData (object-pointer obj))))

(defmethod (setf data) (data (obj find-replace-dialog))
  (wxFindReplaceDialog_SetData (object-pointer obj) (object-pointer data)))

(defmethod expEVT_COMMAND_FIND
	(:name "expEVT_COMMAND_FIND")
	(:return-type ffi:int)
	(:library +library-name+))

(defmethod expEVT_COMMAND_FIND_NEXT
	(:name "expEVT_COMMAND_FIND_NEXT")
	(:return-type ffi:int)
	(:library +library-name+))

(defmethod expEVT_COMMAND_FIND_REPLACE
	(:name "expEVT_COMMAND_FIND_REPLACE")
	(:return-type ffi:int)
	(:library +library-name+))

(defmethod expEVT_COMMAND_FIND_REPLACE_ALL
	(:name "expEVT_COMMAND_FIND_REPLACE_ALL")
	(:return-type ffi:int)
	(:library +library-name+))

(defmethod expEVT_COMMAND_FIND_CLOSE
	(:name "expEVT_COMMAND_FIND_CLOSE")
	(:return-type ffi:int)
	(:library +library-name+))

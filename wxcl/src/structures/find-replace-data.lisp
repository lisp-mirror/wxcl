(defun make-find-replace-data (&optional (flags 0))
	(make-wx-instance 'find-replace-data (wxFindReplaceData_Create flags)))

(defmethod delete-data ((obj find-replace-data))
  (wxFindReplaceData_Delete (object-pointer obj)))

;;;dir-dialog.lisp
;;;License  : wxWindows License 3.1
;;;Author(s) : Surendra Singhi (surendra@asu.edu) 
;;;Copyright (C) 2005 Surendra Singhi 
;;;See the file LICENSE for information on usage and redistribution.
;;;
;;; $Header$
;;;

(in-package :wxcl-dialogs)

(defun make-dir-dialog (parent &key (message "") (dir "") (position +default-position+) (style 0))
  (make-wx-instance 'dir-dialog
                    (wxDirDialog_Create (object-pointer parent)
                                        message dir (point-x position) (point-y position) style)))

(defmethod (setf message) (str (obj dir-dialog))
  (wxDirDialog_SetMessage (object-pointer obj) str))

(defmethod (setf path) (str (obj dir-dialog))
  (wxDirDialog_SetPath (object-pointer obj) str))

(defmethod (setf style) (style (obj dir-dialog))
  (wxDirDialog_SetStyle (object-pointer obj) style))

(defmethod message ((obj dir-dialog))
  (wxDirDialog_GetMessage (object-pointer obj)))

(defmethod path ((obj dir-dialog))
  (wxDirDialog_GetPath (object-pointer obj)))

(defmethod style ((obj dir-dialog))  
  (wxDirDialog_GetStyle  (object-pointer obj)))

(defmacro with-dir-dialog ((dialog parent &key (message "Choose a directory") (dir "")
                                   (pos +default-position+) (style 0)) &body body)
  `(let (,dialog) 
    (unwind-protect
	 (progn
	   (setf ,dialog (wxDirDialog_Create ,parent ,message ,dir (point-x ,pos) (point-y ,pos) ,style))
	   ,@body)
      (wxcl-windows::wxWindow_destroy ,dialog))))

(defun wxcl-get-dir (parent &key (message "Choose a directory") (dir "") (pos +default-position+) (style 0))
  (with-dir-dialog (dialog parent :message message :dir dir :pos pos :style style)
    (when (= (wxDialog_ShowModal dialog) +id-ok+)
      (wxDirDialog_GetPath dialog))))

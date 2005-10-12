(in-package :wxcl-dialogs)

(defclass dialog (window)
  (:documentation "A dialog box is a window with a title bar and sometimes a system menu,\
 which can be moved around the screen. It can contain controls and other windows and is\
 usually used to allow the user to make some choice or to answer a question."))


(defconstant +dialog-modal+ 32)
(defconstant +dialog-modeless+ 0)

(defconstant +caption+ 536870912)
(defconstant +resize-border+ 64)
(defconstant +thick-frame+ +resize-border) ;deprecated

(defconstant +stay-on-top+ 32768)
(defconstant +maximize+ 8192)
(defconstant +close-box+ 6)
(defconstant +no-border+ 2097152)

(defconstant +default-dialog-style+ (logior +caption+ +maximize+ +close-box+ +no-border+))

(defmethod make-dialog (parent id title &key (position +default-position+) (size +default-size+)
			        (style +default-dialog-style+))
  (make-wx-instance 'dialog
		    (wxDialog_Create (when parent (object-pointer parent))
				     id title (point-x position) (point-y position)
				     (size-width size) (size-height size) style)))

(defmethod modal-p ((obj dialog))
  (= 1 (wxDialog_IsModal (object-pointer obj))))

(defmethod show-modal ((obj dialog))
  (= 1 (wxDialog_ShowModal (object-pointer obj))))

(defmethod end-modal ((obj dialog) ret-code)
  (wxDialog_EndModal (object-pointer obj) ret-code))

(defmethod (setf return-code) (code (obj dialog))
  (wxDialog_SetReturnCode (object-pointer obj) code))

(defmethod return-code ((obj dialog))
  (wxDialog_GetReturnCode (object-pointer obj)))

(defmacro with-dialog ((dialog parent id title &key (left -1) (top -1)
			       (width -1) (height -1) (style +default-dialog-style+)) &body body)
  `(let (,dialog)
    (unwind-protect
	 (progn
	   (setf ,dialog (make-dialog ,parent ,id ,title (make-position ,left ,top) (make-size ,width ,height) ,style))
	   ,@body)
      (destroy ,dialog))))

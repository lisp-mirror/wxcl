;;;file-dialog.lisp
;;;License  : wxWindows License 3.1
;;;Author(s) : Surendra Singhi (surendra@asu.edu) 
;;;Copyright (C) 2005 Surendra Singhi 
;;;See the file LICENSE for information on usage and redistribution.
;;;
;;; $Header$
;;;

(in-package :wxcl-dialogs)

(defun make-file-dialog (parent &key (message "") (dir "") (filename "")
				(wildcard "*.*") (position +default-position+) (style 0))
  (make-wx-instance 'file-dialog (wxFileDialog_Create (object-pointer parent) message dir filename wildcard
						      (point-x position) (point-y position) style)))

(defmethod (setf message) (str (obj file-dialog))
  (wxFileDialog_SetMessage (object-pointer obj) str))

(defmethod (setf path) (str (obj file-dialog))
  (wxFileDialog_SetPath (object-pointer obj) str))

(defmethod (setf directory) (str (obj file-dialog))
  (wxFileDialog_SetDirectory (object-pointer obj) str))

(defmethod (setf filename) (str (obj file-dialog))
  (wxFileDialog_SetFilename (object-pointer obj) str))

(defmethod (setf wildcard) (str (obj file-dialog))
  (wxFileDialog_SetWildcard (object-pointer obj) str))

(defmethod (setf style) (style (obj file-dialog))
  (wxFileDialog_SetStyle (object-pointer obj) style))

(defmethod (setf filter-index)(index (obj file-dialog))
  (wxFileDialog_SetFilterIndex (object-pointer obj) index))


(defmethod message ((obj file-dialog))
  (wxFileDialog_GetMessage (object-pointer obj)))

(defmethod path ((obj file-dialog))
  (wxFileDialog_GetPath (object-pointer obj)))

;;the C code for this function is severly broken,
;;needs to be fixed, not very scalable
;;
; (defmethod ((obj file-dialog)) _wxFileDialog_GetPaths
;     (:name "wxFileDialog_GetPaths")
;   (:arguments (_obj (ffi:c-pointer wxFileDialog))
; 	      (paths (ffi:c-pointer (ffi:c-array-ptr character))))
;   (:return-type ffi:int)
;   (:library +library-name+))


; (defun wxFileDialog_GetPaths (_obj &optional (nos 256) (max_length 512))
;   (with-c-var (path `(c-array-max character '(,nos ,max_length)))
;     (setf nos (_wxFileDialog_GetPaths _obj (c-var-address path)))
;     (unless (= nos 0)
;       (values nos path))))
      
;;      (OFFSET path 0 `(c-array character ,max_length)))))

(defmethod directory ((obj file-dialog))
  (wxFileDialog_GetDirectory (object-pointer obj)))

(defmethod filename ((obj file-dialog))
  (wxFileDialog_GetFilename (object-pointer obj)))

;;the C code for this function is severly broken,
;;needs to be fixed, not very scalable

; (defmethod ((obj file-dialog)) _wxFileDialog_GetFilenames
;     (:name "wxFileDialog_GetFilenames")
;   (:arguments (_obj (ffi:c-pointer wxFileDialog))
; 	      (names (ffi:c-pointer (ffi:c-array-ptr character))))
;   (:return-type ffi:int)
;   (:library +library-name+))

; (defun wxFileDialog_GetFileNames (_obj &optional (nos 256) (max_length 512))
;   (with-c-var (files `(c-array-max character '(,nos ,max_length)))
;     (setf nos (_wxFileDialog_GetFileNames _obj (c-var-address files)))
;     (unless (= nos 0)
;       (values nos files))))

;;Redeclaring using variable length array,
;;C-code can be improved to handle such
;;types of declaration 

(defmethod wildcard ((obj file-dialog))
  (wxFileDialog_GetWildcard (object-pointer obj)))

(defmethod style ((obj file-dialog))
  (wxFileDialog_GetStyle (object-pointer obj)))

(defmethod filter-index ((obj file-dialog))
  (wxFileDialog_GetFilterIndex (object-pointer obj)))


(defmacro with-file-dialog ((dialog parent &key (message "") (dir "") (file "")
				    (wildcard "*.*") (position +default-position+) (style 0)) &body body)
  `(let (,dialog) 
    (unwind-protect
         (progn
           (setf ,dialog (make-file-dialog ,parent :message ,message :dir ,dir :file ,file
                                           :wildcard ,wildcard :position ,position :style ,style))
           ,@body)
      (wxcl-windows:destroy ,dialog))))




;;;colour-data.lisp
;;;License  : wxWindows License 3.1
;;;Author(s) : Surendra Singhi (surendra@asu.edu) 
;;;Copyright (C) 2005 Surendra Singhi 
;;;See the file LICENSE for information on usage and redistribution.
;;;
;;; $Header$
;;;

(in-package :wxcl)

(defun make-colour-data ()
  (make-wx-instance 'colour-data
		    (wxColourData_Create)))

(defmethod delete-object ((obj colour-data))
	(wxColourData_Delete (object-pointer obj))
   (invalidate-wx-instance obj))

(defmethod (setf choose-full) (flag (obj colour-data))
  (wxColourData_SetChooseFull (object-pointer obj) (if flag 1 0)))

(defmethod choose-full ((obj colour-data))
  (= 1 (wxColourData_GetChooseFull (object-pointer obj))))

(defmethod (setf colour) (col (obj colour-data))
  (wxColourData_SetColour (object-pointer obj) (object-pointer col)))

(defmethod colour ((obj colour-data))
  (make-wx-instance 'colour (wxColourData_GetColour (object-pointer obj))))

(defmethod (setf custom-colour) (col (obj colour-data) i)
	(wxColourData_SetCustomColour (object-pointer obj) i (object-pointer col)))

(defmethod custom-colour ((obj colour-data) i)
  (make-wx-instance 'colour (wxColourData_GetCustomColour (object-pointer obj) i)))

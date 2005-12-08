;;;font-data.lisp
;;;License  : wxWindows License 3.1
;;;Author(s) : Surendra Singhi (surendra@asu.edu) 
;;;Copyright (C) 2005 Surendra Singhi 
;;;See the file LICENSE for information on usage and redistribution.
;;;
;;; $Header$
;;;

(in-package :wxcl-structures)

(ffi:default-foreign-language :stdc)

(defun make-font-data ()
  (make-wx-instance 'font-data
		    (wxFontData_Create)))

(defmethod delete-object ((obj font-data))
	(wxFontData_Delete (object-pointer obj))
   (invalidate-wx-instance obj))

(defmethod (setf allow-symbols) (flag (obj font-data))
  (wxFontData_SetAllowSymbols (object-pointer obj) (if flag 1 0)))

(defmethod allow-symbols ((obj font-data))
  (= 1 (wxFontData_GetAllowSymbols (object-pointer obj))))

(defmethod (setf colour) (col (obj font-data))
  (wxFontData_SetColour (object-pointer obj) (object-pointer col)))

(defmethod colour ((obj font-data))
  (make-wx-instance 'wxcl-gdi:colour (wxFontData_GetColour (object-pointer obj))))

(defmethod (setf show-help) (flag (obj font-data))
  (wxFontData_SetShowHelp (object-pointer obj) (if flag 1 0)))

(defmethod show-help ((obj font-data))
  (= 1 (wxFontData_GetShowHelp (object-pointer obj))))

(defmethod (setf enable-effects) (enable (obj font-data))
  (wxFontData_EnableEffects (object-pointer obj) (if enable 1 0)))

(defmethod enable-effects ((obj font-data))
  (= 1 (wxFontData_GetEnableEffects (object-pointer obj))))

(defmethod (setf initial-font) (font (obj font-data))
  (wxFontData_SetInitialFont (object-pointer obj) (object-pointer font)))

(defmethod initial-font ((obj font-data))
  (make-wx-instance 'wxcl-gdi:font (wxFontData_GetInitialFont (object-pointer obj))))

(defmethod (setf chosen-font) (font (obj font-data))
  (wxFontData_SetChosenFont (object-pointer obj) (object-pointer font)))

(defmethod chosen-font ((obj font-data))
  (make-wx-instance 'wxcl-gdi:font (wxFontData_GetChosenFont (object-pointer obj))))

(defmethod set-range ((obj font-data) min max)
  (wxFontData_SetRange (object-pointer obj) min max))

(defmethod encoding ((obj font-data))
  (wxFontData_GetEncoding (object-pointer obj)))

(defmethod (setf encoding) (encoding (obj font-data))
  (wxFontData_SetEncoding (object-pointer obj) encoding))

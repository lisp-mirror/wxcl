;;;icon.lisp
;;;License  : wxWindows License 3.1
;;;Author(s) : Surendra Singhi (surendra@asu.edu) 
;;;Copyright (C) 2005 Surendra Singhi 
;;;See the file LICENSE for information on usage and redistribution.
;;;
;;; $Header$
;;;

(in-package :wxcl-gdi)

(defun make-icon ()
  (make-wx-instance 'icon (wxIcon_CreateDefault)))

(defmethod delete-object ((obj icon))
  (wxIcon_Delete (object-pointer obj))
    (invalidate-wx-instance obj))

(defun make-icon-raw (data width height)
  (make-wx-instance 'icon (wxIcon_FromRaw data width height)))

(defun make-icon-from-xpm (data)
  (make-wx-instance 'icon (wxIcon_FromXPM data)))

(defun make-icon-from-file (name type &key (size +default-size+))
  (make-wx-instance 'icon (wxIcon_CreateLoad name type (size-width size) (size-height size))))

(defmethod load--from-file ((obj icon) name type &key (size +default-size+))
  (= 1 (wxIcon_Load (object-pointer obj) name type (size-width size) (size-height size))))

(defmethod copy-from-bitmap ((obj icon) (bmp bitmap))
  (wxIcon_CopyFromBitmap (object-pointer obj) (object-pointer bmp)))

(defmethod ok-p ((obj icon))
  (= 1 (wxIcon_Ok (object-pointer obj))))

(defmethod depth ((obj icon))
  (wxIcon_GetDepth (object-pointer obj)))

(defmethod width ((obj icon))
  (wxIcon_GetWidth (object-pointer obj)))

(defmethod height ((obj icon))
  (wxIcon_GetHeight (object-pointer obj)))

(defmethod assign ((obj icon) (ic icon))
  (wxIcon_Assign (object-pointer obj) (object-pointer obj)))

(defmethod equal-p ((obj icon) (ic icon))
  (= 1 (wxIcon_IsEqual (object-pointer obj) (object-pointer ic))))

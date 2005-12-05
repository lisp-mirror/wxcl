;;;static-bitmap.lisp
;;;License  : wxWindows License 3.1
;;;Author(s) : Surendra Singhi (surendra@asu.edu) 
;;;Copyright (C) 2005 Surendra Singhi 
;;;See the file LICENSE for information on usage and redistribution.
;;;
;;; $Header$
;;;

(in-package :wxcl-gdi)

(defun make-static-bitmap (parent id label &key (position +default-position+)(size +default-size+)(style 0))
  (make-wx-instance 'static-bitmap                            
                    (wxStaticBitmap_Create (when parent (object-pointer parent))
                                           id (object-pointer label) (point-x position)(point-y position)
                                           (size-width size) (size-height size) style)))

(defmethod (setf icon) ((ic icon) (obj static-bitmap))
  (wxStaticBitmap_SetIcon (object-pointer obj) (object-pointer ic)))

(defmethod (setf bitmap) ((bmp bitmap) (obj static-bitmap))
    (wxStaticBitmap_SetBitmap (object-pointer obj) (object-pointer bmp)))

(defmethod icon ((obj static-bitmap))
  (make-wx-instance 'icon (wxStaticBitmap_GetIcon (object-pointer obj))))

(defmethod bitmap ((obj static-bitmap))
  (make-wx-instance 'bitmap (wxStaticBitmap_GetBitmap (object-pointer obj))))

(defmethod delete-object ((obj static-bitmap))
  (wxStaticBitmap_Delete (object-pointer obj))
  (invalidate-wx-instance obj))

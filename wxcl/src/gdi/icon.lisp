(in-package :wxcl-gdi)

(defclass icon (bitmap)
  ()
  (:documentation "An icon is a small rectangular bitmap usually used for\
 denoting a minimized application. It differs from a wxBitmap in always\
 having a mask associated with it for transparent drawing."))

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
  (make-wx-instance 'icon (wxIcon_CreateLoad name type (size-width +default-size+) (size-height +default-size+))))

(defmethod load ((obj icon) name type &key (size +default-size+))
  (= 1 (wxIcon_Load name type (size-width +default-size+) (size-height +default-size+))))

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

(in-package :wxcl-gdi)

(define-symbol-macro +null-brush+ (make-wx-instance 'brush wxNull_Brush))

(define-symbol-macro +black-brush+ (make-wx-instance 'brush wxBlack_Brush))

(define-symbol-macro +white-brush+ (make-wx-instance 'brush wxWhite_Brush))

(define-symbol-macro +red-brush+ (make-wx-instance 'brush wxRed_Brush))

(define-symbol-macro +blue-brush+ (make-wx-instance 'brush wxBlue_Brush))

(define-symbol-macro +green-brush+ (make-wx-instance 'brush wxGreen_Brush))

(define-symbol-macro +cyan-brush+ (make-wx-instance 'brush wxCyan_Brush))

(define-symbol-macro +grey-brush+ (make-wx-instance 'brush wxGrey_Brush))

(define-symbol-macro +transparent-brush+ (make-wx-instance 'brush wxTransparent_Brush))

(define-symbol-macro +light-grey-brush+ (make-wx-instance 'brush wxLight_Grey_Brush))

(define-symbol-macro +medium-grey-brush+ (make-wx-instance 'brush wxMedium_Grey_Brush))

(defun make-brush ()
  (make-wx-instance 'brush (wxBrush_CreateDefault)))

(defun make-brush-from-bitmap (bitmap)
  (make-wx-instance 'brush (wxBrush_CreateFromBitmap (object-pointer bitmap))))

(defun make-brush-from-colour (colour style)
  (make-wx-instance 'colour (wxBrush_CreateFromColour (object-pointer colour) style)))

(defmethod delete-object ((obj brush))
  (wxBrush_Delete (object-pointer obj))
  (invalidate-wx-instance obj))

(defmethod (setf colour) ((col colour) (obj brush))
  (wxBrush_SetColour (object-pointer obj) (object-pointer col)))

(defmethod (setf colour) (name (obj brush))
  (wxBrush_SetColourString (object-pointer obj) colour))
              
(defmethod set-colour-rgb ((obj brush) r g b)
  (wxBrush_SetColourSingle (object-pointer obj) r g b))

(defmethod (setf style) (sty (obj brush))
  (wxBrush_SetStyle (object-pointer obj) sty))

(defmethod (setf stipple) (bmp (obj brush))
  (wxBrush_SetStipple (object-pointer obj) (object-pointer bmp)))

(defmethod assign ((obj brush) brush)
  (wxBrush_Assign (object-pointer obj) (object-pointer brush)))

(defmethod equal-p ((obj brush) brush)
  (= 1 (wxBrush_IsEqual (object-pointer obj) (object-pointer brush))))

(defmethod colour ((obj brush))
  (make-wx-instance 'brush (wxBrush_GetColour (object-pointer obj))))

(defmethod style ((obj brush))
  (wxBrush_GetStyle (object-pointer obj)))

(defmethod stipple ((obj brush))
  (make-wx-instance 'stipple (wxBrush_GetStipple (object-pointer obj))))

(defmethod ok-p ((obj brush))
  (= 1 (wxBrush_Ok (object-pointer obj))))

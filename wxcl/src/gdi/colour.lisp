(in-package :wxcl)

(define-symbol-macro +null-colour+ (make-wx-instance 'colour wxNull_Colour))

(define-symbol-macro +black+ (make-wx-instance 'colour wxBlack))

(define-symbol-macro +white+ (make-wx-instance 'colour wxWhite))

(define-symbol-macro +red+ (make-wx-instance 'colour wxRed))

(define-symbol-macro +blue+ (make-wx-instance 'colour wxBlue))

(define-symbol-macro +green+ (make-wx-instance 'colour wxGreen))

(define-symbol-macro +cyan+ (make-wx-instance 'colour wxCyan))

(define-symbol-macro +light-grey+ (make-wx-instance 'colour wxLight_Grey))

(defun make-colour(&key (red 0) (green 0) (blue 0))
  (make-wx-instance 'colour (wxColour_CreateRGB red green blue)))

(defun make-colour-from-name (name)
  (make-wx-instance 'colour (wxColour_CreateByName name)))

(defun make-colour-from-rgb (r g b)
  (make-wx-instance 'colour (wxColour_CreateRGB r g b)))

(defmethod delete-object ((obj colour))
  (wxColour_Delete (object-pointer obj))
  (invalidate-wx-instance obj))

(defmethod set-colour ((obj colour) red green blue)
  (wxColour_Set (object-pointer obj) red green blue))

(defmethod ok-p ((obj colour))
  (= 1 (wxColour_Ok (object-pointer obj))))

(defmethod red ((obj colour))
  (wxColour_Red (object-pointer obj)))

(defmethod green ((obj colour))
  (wxColour_Green (object-pointer obj)))

(defmethod blue ((obj colour))
    (wxColour_Blue (object-pointer obj)))

(defmethod pixel ((obj colour))
  (wxColour_GetPixel (object-pointer obj)))

(defmethod copy ((obj colour))
  (make-wx-instance 'colour (wxColour_Copy (object-pointer obj))))

(defmethod set-by-name ((obj colour) name)
  (wxColour_SetByName (object-pointer obj) name))

(defun valid-colour-name-p (name)
  (= 1 (wxColour_ValidName name)))



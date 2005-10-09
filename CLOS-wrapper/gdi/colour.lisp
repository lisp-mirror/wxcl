(defclass colour (object)
  ()
  (:documentation "A colour is an object representing a combination of Red, Green,\
 and Blue (RGB) intensity values, and is used to determine drawing colours."))

(defun make-colour(&key (red 0) (green 0) (blue 0))
  (make-wx-instance 'colour (wxColour_CreateRGB red green blue)))

(defun make-colour-from-name (name)
  (make-wx-instance 'colour (wxColour_CreateByName name)))

(defmethod delete ((obj colour))
  (wxColour_Delete (object-pointer obj))
  (invalidate-wx-instance obj))

(defmethod set ((obj colour) red green blue)
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


(defmethod valid-name-p ((obj colour) name)
  (= 1 (wxColour_ValidName (object-pointer obj) name)))

(defconstant +green+
  (make-wx-instance 'colour wxGreen))

(defconstant +red+
  (make-wx-instance 'colour wxRed))

(defconstant +blue+
  (make-wx-instance 'colour wxBlue))

(defconstant +white+
  (make-wx-instance 'colour wxWhite))

(defconstant +black+
  (make-wx-instance 'colour wxBlack))

(defconstant +cyan+
  (make-wx-instance 'colour wxCyan))

(defconstant +green+
  (make-wx-instance 'colour wxGreen))

(defconstant +light-grey+
  (make-wx-instance 'colour wxLight_Grey))


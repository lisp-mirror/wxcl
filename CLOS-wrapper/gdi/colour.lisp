(defclass colour (object)
  ()
  (:documentation "A colour is an object representing a combination of Red, Green,\
 and Blue (RGB) intensity values, and is used to determine drawing colours."))

(defun make-colour(&key (red 0) (green 0) (blue 0))
  (let ((cl (make-instance 'colour)))
    (setf (slot-value cl 'object)
	  (wxColour_CreateRGB red green blue))))

(defun make-colour-from-name (name)
  (let ((cl (make-instance 'colour)))
    (setf (slot-value cl 'object)
	  (wxColour_CreateByName name))))

(defun make-colouffi:def-call-out wxColour_CreateFromStock
    (:name "wxColour_CreateFromStock")
  (:arguments (_id ffi:int))
  (:return-type (ffi:c-pointer NIL))
  (:library +library-name+))

(ffi:def-call-out wxColour_Delete
    (:name "wxColour_Delete")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxColour_Set
    (:name "wxColour_Set")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (_red uint8)
	      (_green uint8)
	      (_blue uint8))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxColour_Assign
    (:name "wxColour_Assign")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (other (ffi:c-pointer NIL)))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxColour_Ok
    (:name "wxColour_Ok")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out wxColour_Red
    (:name "wxColour_Red")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type ffi:uint8)
  (:library +library-name+))

(ffi:def-call-out wxColour_Green
    (:name "wxColour_Green")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type ffi:uint8)
  (:library +library-name+))

(ffi:def-call-out wxColour_Blue
    (:name "wxColour_Blue")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type ffi:uint8)
  (:library +library-name+))

(ffi:def-call-out wxColour_GetPixel
    (:name "wxColour_GetPixel")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out wxColour_Copy
    (:name "wxColour_Copy")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (_other (ffi:c-pointer NIL)))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxColour_SetByName
    (:name "wxColour_SetByName")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (_name (ffi:c-pointer NIL)))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxColour_ValidName
    (:name "wxColour_ValidName")
  (:arguments (_name (ffi:c-pointer NIL)))
  (:return-type ffi:int)
  (:library +library-name+))

(in-package :wxCL)

(defclass control (window)
  ()
  (:documentation "This is the base class for a control or 'widget'.\
 A control is generally a small window which processes user input and/or displays one or more item of data."))

(defmethod (setf label) (str (obj control))
  (wxControl_SetLabel (object-pointer obj) str))


(defmethod label ((obj control))
  (wxControl_GetLabel (object-pointer obj)))

; (defmethod wxControl_Command
; 	(:name "wxControl_Command")
; 	(:arguments (_obj (ffi:c-pointer NIL))
; 		(event (ffi:c-pointer NIL)))
; 	(:return-type NIL)
; 	(:library +library-name+))



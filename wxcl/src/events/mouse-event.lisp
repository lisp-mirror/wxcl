(in-package :wxcl)

(defmethod button-p ((obj mouse-event))
  (= 1 (wxMouseEvent_IsButton (object-pointer obj))))

(defmethod button-down ((obj mouse-event) &optional (but -1))
  (= 1 (wxMouseEvent_ButtonDown (object-pointer obj) but)))

(defmethod button-d-click ((obj mouse-event) &optional (but -1)) 
  (= 1 (wxMouseEvent_ButtonDClick (object-pointer obj) but)))

(defmethod button-up ((obj mouse-event) &optional (but -1))
  (= 1 (wxMouseEvent_ButtonUp (object-pointer obj) but)))

(defmethod button ((obj mouse-event) but)
  (= 1 (wxMouseEvent_Button (object-pointer obj) but)))

; (defmethod ((obj mouse-event)) wxMouseEvent_ButtonIsDown
;     (:name "wxMouseEvent_ButtonIsDown")
;   (:arguments (_obj (ffi:c-pointer NIL))
; 	      (but ffi:int))
;   (:return-type ffi:int)
;   (:library +library-name+))

; (defmethod ((obj mouse-event)) wxMouseEvent_ControlDown
;     (:name "wxMouseEvent_ControlDown")
;   (:arguments (_obj (ffi:c-pointer NIL)))
;   (:return-type ffi:int)
;   (:library +library-name+))

; (defmethod ((obj mouse-event)) wxMouseEvent_MetaDown
;     (:name "wxMouseEvent_MetaDown")
;   (:arguments (_obj (ffi:c-pointer NIL)))
;   (:return-type ffi:int)
;   (:library +library-name+))

; (defmethod ((obj mouse-event)) wxMouseEvent_AltDown
;     (:name "wxMouseEvent_AltDown")
;   (:arguments (_obj (ffi:c-pointer NIL)))
;   (:return-type ffi:int)
;   (:library +library-name+))

; (defmethod ((obj mouse-event)) wxMouseEvent_ShiftDown
;     (:name "wxMouseEvent_ShiftDown")
;   (:arguments (_obj (ffi:c-pointer NIL)))
;   (:return-type ffi:int)
;   (:library +library-name+))

; (defmethod ((obj mouse-event)) wxMouseEvent_LeftDown
;     (:name "wxMouseEvent_LeftDown")
;   (:arguments (_obj (ffi:c-pointer NIL)))
;   (:return-type ffi:int)
;   (:library +library-name+))

; (defmethod ((obj mouse-event)) wxMouseEvent_MiddleDown
;     (:name "wxMouseEvent_MiddleDown")
;   (:arguments (_obj (ffi:c-pointer NIL)))
;   (:return-type ffi:int)
;   (:library +library-name+))

; (defmethod ((obj mouse-event)) wxMouseEvent_RightDown
;     (:name "wxMouseEvent_RightDown")
;   (:arguments (_obj (ffi:c-pointer NIL)))
;   (:return-type ffi:int)
;   (:library +library-name+))

; (defmethod ((obj mouse-event)) wxMouseEvent_LeftUp
;     (:name "wxMouseEvent_LeftUp")
;   (:arguments (_obj (ffi:c-pointer NIL)))
;   (:return-type ffi:int)
;   (:library +library-name+))

; (defmethod ((obj mouse-event)) wxMouseEvent_MiddleUp
;     (:name "wxMouseEvent_MiddleUp")
;   (:arguments (_obj (ffi:c-pointer NIL)))
;   (:return-type ffi:int)
;   (:library +library-name+))

; (defmethod ((obj mouse-event)) wxMouseEvent_RightUp
;     (:name "wxMouseEvent_RightUp")
;   (:arguments (_obj (ffi:c-pointer NIL)))
;   (:return-type ffi:int)
;   (:library +library-name+))

; (defmethod ((obj mouse-event)) wxMouseEvent_LeftDClick
;     (:name "wxMouseEvent_LeftDClick")
;   (:arguments (_obj (ffi:c-pointer NIL)))
;   (:return-type ffi:int)
;   (:library +library-name+))

; (defmethod ((obj mouse-event)) wxMouseEvent_MiddleDClick
;     (:name "wxMouseEvent_MiddleDClick")
;   (:arguments (_obj (ffi:c-pointer NIL)))
;   (:return-type ffi:int)
;   (:library +library-name+))

; (defmethod ((obj mouse-event)) wxMouseEvent_RightDClick
;     (:name "wxMouseEvent_RightDClick")
;   (:arguments (_obj (ffi:c-pointer NIL)))
;   (:return-type ffi:int)
;   (:library +library-name+))

; (defmethod ((obj mouse-event)) wxMouseEvent_LeftIsDown
;     (:name "wxMouseEvent_LeftIsDown")
;   (:arguments (_obj (ffi:c-pointer NIL)))
;   (:return-type ffi:int)
;   (:library +library-name+))

; (defmethod ((obj mouse-event)) wxMouseEvent_MiddleIsDown
;     (:name "wxMouseEvent_MiddleIsDown")
;   (:arguments (_obj (ffi:c-pointer NIL)))
;   (:return-type ffi:int)
;   (:library +library-name+))

; (defmethod ((obj mouse-event)) wxMouseEvent_RightIsDown
;     (:name "wxMouseEvent_RightIsDown")
;   (:arguments (_obj (ffi:c-pointer NIL)))
;   (:return-type ffi:int)
;   (:library +library-name+))

; (defmethod ((obj mouse-event)) wxMouseEvent_Dragging
;     (:name "wxMouseEvent_Dragging")
;   (:arguments (_obj (ffi:c-pointer NIL)))
;   (:return-type ffi:int)
;   (:library +library-name+))

; (defmethod ((obj mouse-event)) wxMouseEvent_Moving
;     (:name "wxMouseEvent_Moving")
;   (:arguments (_obj (ffi:c-pointer NIL)))
;   (:return-type ffi:int)
;   (:library +library-name+))

; (defmethod ((obj mouse-event)) wxMouseEvent_Entering
;     (:name "wxMouseEvent_Entering")
;   (:arguments (_obj (ffi:c-pointer NIL)))
;   (:return-type ffi:int)
;   (:library +library-name+))

; (defmethod ((obj mouse-event)) wxMouseEvent_Leaving
;     (:name "wxMouseEvent_Leaving")
;   (:arguments (_obj (ffi:c-pointer NIL)))
;   (:return-type ffi:int)
;   (:library +library-name+))

; (defmethod ((obj mouse-event)) wxMouseEvent_GetPosition
;     (:name "wxMouseEvent_GetPosition")
;   (:arguments (_obj (ffi:c-pointer NIL))
; 	      (xpos (ffi:c-ptr ffi:int))
; 	      (ypos (ffi:c-ptr ffi:int)))
;   (:return-type NIL)
;   (:library +library-name+))

; (defmethod ((obj mouse-event)) wxMouseEvent_GetLogicalPosition
;     (:name "wxMouseEvent_GetLogicalPosition")
;   (:arguments (_obj (ffi:c-pointer NIL))
; 	      (dc (ffi:c-pointer NIL))
; 	      (xpos (ffi:c-ptr ffi:int))
; 	      (ypos (ffi:c-ptr ffi:int)))
;   (:return-type NIL)
;   (:library +library-name+))

; (defmethod ((obj mouse-event)) wxMouseEvent_GetX
;     (:name "wxMouseEvent_GetX")
;   (:arguments (_obj (ffi:c-pointer NIL)))
;   (:return-type ffi:int)
;   (:library +library-name+))

; (defmethod ((obj mouse-event)) wxMouseEvent_GetY
;     (:name "wxMouseEvent_GetY")
;   (:arguments (_obj (ffi:c-pointer NIL)))
;   (:return-type ffi:int)
;   (:library +library-name+))

; (defmethod ((obj mouse-event)) wxcGetMousePosition
;     (:name "wxcGetMousePosition")
;   (:arguments (x (ffi:c-ptr ffi:int))
; 	      (y (ffi:c-ptr ffi:int)))
;   (:library +library-name+))

; (defmethod ((obj mouse-event)) wxMouseEvent_GetWheelDelta
;     (:name "wxMouseEvent_GetWheelDelta")
;   (:arguments (_obj (ffi:c-pointer NIL)))
;   (:return-type ffi:int)
;   (:library +library-name+))

; (defmethod ((obj mouse-event)) wxMouseEvent_GetWheelRotation
;     (:name "wxMouseEvent_GetWheelRotation")
;   (:arguments (_obj (ffi:c-pointer NIL)))
;   (:return-type ffi:int)
;   (:library +library-name+))

; (defmethod ((obj mouse-event)) wxMouseEvent_GetButton
;     (:name "wxMouseEvent_GetButton")
;   (:arguments (_obj (ffi:c-pointer NIL)))
;   (:return-type ffi:int)
;   (:library +library-name+))

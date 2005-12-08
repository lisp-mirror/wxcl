(in-package :wxcl-events)

(defun make-event-object (pointer)
  (make-wx-instance 'event pointer))
    
(defmethod skip ((obj event))
  (wxEvent_Skip (object-pointer obj)))

(defmethod event-type ((obj event))
  (wxEvent_GetEventType (object-pointer obj)))

(defmethod (setf event-type) (type (obj event))
  (wxEvent_SetEventType (object-pointer obj) type))

(defmethod event-object ((obj event))
  (make-wx-instance 'object (wxEvent_GetEventObject (object-pointer obj))))

(defmethod (setf event-object) ((evt-object object) (obj event))
  (wxEvent_SetEventObject (object-pointer obj) (object-pointer evt-object)))

(defmethod timestamp ((obj event))
  (wxEvent_GetTimestamp (object-pointer obj)))

(defmethod (setf timestamp) (time-stamp (obj event))
  (wxEvent_SetTimestamp (object-pointer obj) time-stamp))

(defmethod id ((obj event))
  (wxEvent_GetId (object-pointer obj)))

(defmethod (setf id) (new-id (obj event))
  (wxEvent_SetId (object-pointer obj) new-id))


(defmethod skipped-p ((obj event))
    (= 1 (wxEvent_GetSkipped (object-pointer obj))))

(defmethod command-event-p ((obj event))
  (= 1 (wxEvent_IsCommandEvent (object-pointer obj))))

(defmethod clone ((obj event))
  (make-wx-instance 'event (wxEvent_CopyObject (object-pointer obj))))

; (defmethod ((obj event)) wxEvent_SetCallbackUserData
;     (:name "wxEvent_SetCallbackUserData")
;   (:arguments (_obj (ffi:c-pointer NIL))
; 	      (obj (ffi:c-pointer NIL))) ;wxObject
;   (:return-type NIL)
;   (:library +library-name+))

; (defmethod ((obj event)) wxEvent_GetCallbackUserData
;     (:name "wxEvent_GetCallbackUserData")
;   (:arguments (_obj (ffi:c-pointer NIL)))
;   (:return-type (ffi:c-pointer NIL))
;   (:library +library-name+))

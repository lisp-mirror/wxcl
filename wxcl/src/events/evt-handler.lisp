(in-package :wxcl)

; (defmethod ((obj evt-handler)) wxEvtHandler_Create
;     (:name "wxEvtHandler_Create")
;   (:return-type (ffi:c-pointer NIL))
;   (:library +library-name+))

; (defmethod ((obj evt-handler)) wxEvtHandler_Delete
;     (:name "wxEvtHandler_Delete")
;   (:arguments (_obj (ffi:c-pointer NIL)))
;   (:return-type NIL)
;   (:library +library-name+))

;;code courtesy Pascal Bourguignon

(defmacro debugging-errors (&body body)
  `(restart-CASE (progn ,@body)
     (abort-eval ()
       :report "Back to the program."
       nil)))

; (defmethod connect ((obj evt-handler) id type func &key last-id)
;   (wxEvtHandler_Connect (object-pointer obj) id (if last-id last-id id) type (wxcl::wxClosure_Create
;                                                                               (lambda (x) (debugging-errors
;                                                                                            (funcall func x))))))
(cffi:defcallback handle-events :void ((evt :pointer) (wxcl-event-id :unsigned-int))
                  (let ((func (getf *events-table* wxcl-event-id)))
                    (when func
                      (funcall func evt))))
                  
(defmethod connect ((obj evt-handler) id type func &key last-id)
  (incf *events-counter*)
  (setf (getf *events-table* *events-counter*) func) 
  (wxEvtHandler_Connect (object-pointer obj) id (if last-id last-id id) type
                        (wxClosure_Create (cffi:callback handle-events) gensym))))


(defmethod disconnect ((obj evt-handler) id type data &key last-id)
  (= 1 (wxEvtHandler_Disconnect (object-pointer obj) id (if last-id last-id id) type data)))

(defmethod next-handler ((obj evt-handler))
  (let ((handler (wxEvtHandler_GetNextHandler (object-pointer obj))))
    (when handler
      (let ((evt (make-instance 'evt-handler)))
	(setf (slot-value evt 'object) handler)))))

(defmethod previous-handler ((obj evt-handler))
  (let ((handler (wxEvtHandler_GetPreviousHandler (object-pointer obj))))
    (when handler
      (let ((evt (make-instance 'evt-handler)))
	(setf (slot-value evt 'object) handler)))))

(defmethod (setf next-handler) ((handler evt-handler) (obj evt-handler))
  (wxEvtHandler_SetNextHandler (object-pointer obj) (object-pointer handler)))

(defmethod (setf previous-handler) ((handler evt-handler) (obj evt-handler))
  (wxEvtHandler_SetPreviousHandler (object-pointer obj) (object-pointer handler)))

(defmethod (setf evt-handler-enabled) (bool (obj evt-handler)) 
  (wxEvtHandler_SetEvtHandlerEnabled (object-pointer obj) (if bool 1 0)))

(defmethod evt-handler-enabled-p ((obj evt-handler))
  (= 1 (wxEvtHandler_GetEvtHandlerEnabled (object-pointer obj))))

(defmethod process-event ((obj evt-handler) (evt event))
  (= 1 (wxEvtHandler_ProcessEvent (object-pointer obj) (object-pointer evt))))

(defmethod add-pending-event ((obj evt-handler) (evt event))
  (wxEvtHandler_AddPendingEvent (object-pointer obj) (object-pointer evt)))

(defmethod process-pending-events ((obj evt-handler))
  (wxEvtHandler_ProcessPendingEvents (object-pointer obj)))



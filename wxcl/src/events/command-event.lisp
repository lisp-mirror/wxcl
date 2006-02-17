(in-package :wxcl)

(defclass command-event (event)
  ()
  (:documentation "An event is a structure holding information about an event passed\
 to a callback or member function."))

; (ffi:def-call-out wxCommandEvent_Create
;     (:name "wxCommandEvent_Create")
;   (:arguments (_typ ffi:int)
; 	      (_id ffi:int))
;   (:return-type (ffi:c-pointer NIL))
;   (:library +library-name+))

; (ffi:def-call-out wxCommandEvent_Delete
;     (:name "wxCommandEvent_Delete")
;   (:arguments (_obj (ffi:c-pointer NIL)))
;   (:return-type NIL)
;   (:library +library-name+))

(defmethod (setf client-data) (data (obj command-event))
  (wxCommandEvent_SetClientData (object-pointer obj) data))

(defmethod client-data ((obj command-event))
  (wxCommandEvent_GetClientData (object-pointer obj)))

(defmethod (setf client-object) (client-obj (obj command-event))
    (wxCommandEvent_SetClientObject (object-pointer obj) client-obj))

(defmethod client-object ((obj command-event))
  (wxCommandEvent_GetClientObject (object-pointer obj)))

(defmethod selection ((obj command-event))
  (wxCommandEvent_GetSelection (object-pointer obj)))

(defmethod (setf string) (str (obj command-event))
  (wxCommandEvent_SetString (object-pointer obj) str))

(defmethod string ((obj command-event))
  (wxCommandEvent_GetString (object-pointer obj)))

(defmethod checked-p ((obj command-event))
  (= 1 (wxCommandEvent_IsChecked (object-pointer obj))))

(defmethod selection-p ((obj command-event))
  (= 1 (wxCommandEvent_IsSelection (object-pointer obj))))

(defmethod (setf extra-long)(extra-long (obj command-event))
  (wxCommandEvent_SetExtraLong (object-pointer obj) extra-long))

(defmethod extra-long ((obj command-event))
  (wxCommandEvent_GetExtraLong (object-pointer obj)))

(defmethod (setf int) (int (obj command-event))
  (wxCommandEvent_SetInt int))

(defmethod int ((obj command-event))
  (wxCommandEvent_GetInt (object-pointer obj)))

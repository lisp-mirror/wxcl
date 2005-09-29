(in-package :wxCL)

(use-package :wxFrame)

(defclass frame (window)
  ()
  (:documentation "The class for creating frames."))


(defmethod wxFrame_CreateStatusBar
    (:name "wxFrame_CreateStatusBar")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (number ffi:int)
	      (style ffi:int))
  (:return-type (ffi:c-pointer NIL))
  (:library +library-name+))

(defmethod maximize ((obj frame))
  (wxFrame_Maximize (object-pointer obj)))

(defmethod restore ((obj frame))
  (wxFrame_Restore (object-pointer obj)))

(defmethod iconize ((obj frame))
  (wxFrame_Iconize (object-pointer obj)))

(defmethod maximized-p ((obj frame))
  (= 1 (wxFrame_IsMaximized (object-pointer obj))))

(defmethod iconized-p ((obj frame))
  (= 1 (wxFrame_IsIconized (object-pointer obj))))


(defmethod wxFrame_GetIcon
    (:name "wxFrame_GetIcon")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type (ffi:c-pointer NIL))
  (:library +library-name+))

(defmethod wxFrame_SetIcon
    (:name "wxFrame_SetIcon")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (_icon (ffi:c-pointer NIL)))
  (:return-type NIL)
  (:library +library-name+))

(defmethod get-client-area-origin-left ((obj frame))
  (wxFrame_GetClientAreaOrigin_left (object-pointer obj)))

(defmethod get-client-area-origin-top ((obj frame)) 
  (wxFrame_GetClientAreaOrigin_top (object-pointer obj)))

(defmethod wxFrame_SetMenuBar
    (:name "wxFrame_SetMenuBar")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (menubar (ffi:c-pointer NIL)))
  (:return-type NIL)
  (:library +library-name+))

(defmethod wxFrame_GetMenuBar
    (:name "wxFrame_GetMenuBar")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type (ffi:c-pointer NIL))
  (:library +library-name+))

(defmethod wxFrame_GetStatusBar
    (:name "wxFrame_GetStatusBar")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type (ffi:c-pointer NIL))
  (:library +library-name+))

(defmethod wxFrame_SetStatusBar
    (:name "wxFrame_SetStatusBar")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (statBar (ffi:c-pointer NIL)))
  (:return-type NIL)
  (:library +library-name+))

; (defmethod wxFrame_SetStatusText
;     (:name "wxFrame_SetStatusText")
;   (:arguments (_obj (ffi:c-pointer NIL))
; 	      (_txt ffi:c-string)
; 	      (_number ffi:int))
;   (:return-type NIL)
;   (:library +library-name+))

; (defmethod wxFrame_SetStatusWidths
;     (:name "wxFrame_SetStatusWidths")
;   (:arguments (_obj (ffi:c-pointer NIL))
; 	      (_n ffi:int)
; 	      (_widths_field (ffi:c-array-ptr ffi:int)))
;   (:return-type NIL)
;   (:library +library-name+))

; (defmethod wxFrame_CreateToolBar
;     (:name "wxFrame_CreateToolBar")
;   (:arguments (_obj (ffi:c-pointer NIL))
; 	      (style ffi:long))
;   (:return-type (ffi:c-pointer NIL))
;   (:library +library-name+))

; (defmethod wxFrame_GetToolBar
;     (:name "wxFrame_GetToolBar")
;   (:arguments (_obj (ffi:c-pointer NIL)))
;   (:return-type (ffi:c-pointer NIL))
;   (:library +library-name+))

; (defmethod wxFrame_SetToolBar
;     (:name "wxFrame_SetToolBar")
;   (:arguments (_obj (ffi:c-pointer NIL))
; 	      (_toolbar (ffi:c-pointer NIL)))
;   (:return-type NIL)
;   (:library +library-name+))

(defmethod GetTitle ((obj frame))
  (wxFrame_GetTitle (object-pointer obj)))

(defmethod SetTitle ((obj frame) title)
  (wxFrame_SetTitle (object-pointer obj) title))

(defmethod wxFrame_SetShape
    (:name "wxFrame_SetShape")
  (:arguments (self (ffi:c-pointer wxFrame))
	      (region (ffi:c-pointer NIL)))
  (:return-type ffi:int)
  (:library +library-name+))

(defmethod wxFrame_ShowFullScreen
    (:name "wxFrame_ShowFullScreen")
  (:arguments (self (ffi:c-pointer wxFrame))
	      (show ffi:int)
	      (style ffi:int))
  (:return-type ffi:int)
  (:library +library-name+))

(defmethod full-screen-p ((obj frame))
  (= 1 (wxFrame_IsFullScreen (object-pointer obj))))

(defmethod centre ((obj frame) (orientation integer))
    (wxFrame_Centre (object-pointer obj) orientation))

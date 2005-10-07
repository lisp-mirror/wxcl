
(defun wx-version-number()
  (wxVersionNumber))

(defun bell()
  (wxcBell))

(defun defined-p(str)
  (= 1 (wxIsDefined str)))

;don't use these, use the one provided by implementation
; (defun wxcMalloc
;     (:name "wxcMalloc")
;   (:arguments (size ffi:int))
;   (:return-type (ffi:c-pointer NIL))
;   (:library +library-name+))

; (defun wxcFree
;     (:name "wxcFree")
;   (:arguments (p (ffi:c-pointer NIL)))
;   (:library +library-name+))

(defun log-error(message)
  (LogError message))

(defun log-fatal-error(message)
  (LogFatalError message))

(defun log-warning()
    (LogWarning message))

(defun log-message()
    (LogMessage message))

(defun log-verbose()
    (LogVerbose message))

(defun log-status()
    (LogStatus message))

(defun log-sys-error()
  (LogSysError message))

(defun log-debug()
  (LogDebug message))

(defun log-trace(mask message)
  "Works only in debug wxWidget builds."
  (LogTrace mask message))

(defun wxcWakeUpIdle()
  (wxcWakeUpIdle))


; (defun wxObject_IsKindOf
;     (:name "wxObject_IsKindOf")
;   (:arguments (_obj (ffi:c-pointer NIL))
; 	      (classInfo (ffi:c-pointer NIL)))
;   (:return-type ffi:int)
;   (:library +library-name+))

; (defun wxObject_GetClassInfo
;     (:name "wxObject_GetClassInfo")
;   (:arguments (_obj (ffi:c-pointer NIL)))
;   (:return-type (ffi:c-pointer NIL))
;   (:library +library-name+))

; (defun wxObject_IsScrolledWindow
;     (:name "wxObject_IsScrolledWindow")
;   (:arguments (_obj (ffi:c-pointer NIL)))
;   (:return-type ffi:int)
;   (:library +library-name+))

; (defun wxObject_Delete
;     (:name "wxObject_Delete")
;   (:arguments (_obj (ffi:c-pointer NIL)))
;   (:library +library-name+))

; (defun wxString_Create
;     (:name "wxString_Create")
;   (:arguments (buffer ffi:c-string))
;   (:return-type (ffi:c-pointer wxString))
;   (:library +library-name+))

; (defun wxString_CreateLen
;     (:name "wxString_CreateLen")
;   (:arguments (buffer ffi:c-string)
; 	      (len ffi:int))
;   (:return-type (ffi:c-pointer wxString))
;   (:library +library-name+))

; (defun wxString_Delete
;     (:name "wxString_Delete")
;   (:arguments (s (ffi:c-pointer wxString)))
;   (:library +library-name+))

; (defun wxString_GetString
;     (:name "wxString_GetString")
;   (:arguments (s (ffi:c-pointer wxString))
; 	      (buffer ffi:c-string))
;   (:return-type ffi:int)
;   (:library +library-name+))

; (defun wxClassInfo_FindClass
;     (:name "wxClassInfo_FindClass")
;   (:arguments (_txt ffi:c-string))
;   (:return-type (ffi:c-pointer NIL))
;   (:library +library-name+))

; (defun wxClassInfo_GetClassNameEx
;     (:name "wxClassInfo_GetClassNameEx")
;   (:arguments (_obj (ffi:c-pointer NIL))
; 	      (_buf (ffi:c-pointer NIL)))
;   (:return-type ffi:int)
;   (:library +library-name+))

; (defun wxClassInfo_GetBaseClassName1
;     (:name "wxClassInfo_GetBaseClassName1")
;   (:arguments (_obj (ffi:c-pointer NIL))
; 	      (_buf (ffi:c-pointer NIL)))
;   (:return-type ffi:int)
;   (:library +library-name+))

; (defun wxClassInfo_GetBaseClassName2
;     (:name "wxClassInfo_GetBaseClassName2")
;   (:arguments (_obj (ffi:c-pointer NIL))
; 	      (_buf (ffi:c-pointer NIL)))
;   (:return-type ffi:int)
;   (:library +library-name+))

; (defun wxClassInfo_IsKindOfEx
;     (:name "wxClassInfo_IsKindOfEx")
;   (:arguments (_obj (ffi:c-pointer NIL))
; 	      (classInfo (ffi:c-pointer NIL)))
;   (:return-type ffi:int)
;   (:library +library-name+))

; (defun wxClassInfo_GetSize
;     (:name "wxClassInfo_GetSize")
;   (:arguments (_obj (ffi:c-pointer NIL)))
;   (:return-type ffi:int)
;   (:library +library-name+))


; (defun wxStreamBase_Delete
;     (:name "wxStreamBase_Delete")
;   (:arguments (stream (ffi:c-pointer NIL)))
;   (:library +library-name+))


(defun get-colour-from-user (parent init-col)
  (let ((cl (wxGetColourFromUser (object-pointer parent) (when init-col (object-pointer init-col)))))
    (when cl
      (let ((obj (make-instance 'colour)))
	(setf (slot-value obj 'object) cl)
	cl))))

(defun get-font-from-user (parent init-col)
  (let ((fnt (wxGetFontFromUser (object-pointer parent) (when init-col (object-pointer init-col)))))
    (when fnt
      (let ((obj (make-instance 'font)))
	(setf (slot-value obj 'object) fnt)
	fnt))))

(defun get-password-from-user (message :key (caption "Input Text")
				  (default-value "") (parent nil) (size +default-size+)
				  (centre t))
  (wxGetPasswordFromUser message caption default-value (when parent (object-pointer parent))
		       (point-x size) (point-y size) (if centre 1 0)))

(defun get-text-from-user (message :key (caption "Input Text")
				  (default-value "") (parent nil) (size +default-size+)
				  (centre t))
    (wxGetTextFromUser message caption default-value (when parent (object-pointer parent))
		       (point-x size) (point-y size) (if centre 1 0)))


(defun get-number-from-user (message prompt caption value :key (min 0) (max 100) (parent nil) (size +default-size+))
  (wxGetNumberFromUser message prompt caption value min max (when parent (object-pointer parent))
		       (point-x size) (point-y size)))


(in-package :wxCL)

; (defun wx-version-number()
;   (wxVersionNumber))

; (defun bell()
;   (wxcBell))

; (defun defined-p(str)
;   (= 1 (wxIsDefined str)))

; ;don't use these, use the one provided by implementation
; ; (defun wxcMalloc
; ;     (:name "wxcMalloc")
; ;   (:arguments (size ffi:int))
; ;   (:return-type (ffi:c-pointer NIL))
; ;   (:library +library-name+))

; ; (defun wxcFree
; ;     (:name "wxcFree")
; ;   (:arguments (p (ffi:c-pointer NIL)))
; ;   (:library +library-name+))

; (defun log-error(message)
;   (LogError message))

; (defun log-fatal-error(message)
;   (LogFatalError message))

; (defun log-warning()
;     (LogWarning message))

; (defun log-message()
;     (LogMessage message))

; (defun log-verbose()
;     (LogVerbose message))

; (defun log-status()
;     (LogStatus message))

; (defun log-sys-error()
;   (LogSysError message))

; (defun log-debug()
;   (LogDebug message))

; (defun log-trace(mask message)
;   "Works only in debug wxWidget builds."
;   (LogTrace mask message))

; (defun wxcWakeUpIdle()
;   (wxcWakeUpIdle))


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


(defun get-colour-from-user (parent &optional (init-col nil))
  (make-wx-instance 'wxcl-gdi:colour
                    (wxcGetColourFromUser (object-pointer parent) (when init-col (object-pointer init-col)))))

(defun get-font-from-user (parent &optional (init-font nil))
  (make-wx-instance 'wxcl-gdi:font
                    (wxcGetFontFromUser (object-pointer parent) (when init-font (object-pointer init-font)))))

(defun get-password-from-user (message &key (caption "Input Password")(default-value "")
                                       (parent nil) (position +default-position+)(centre t))
  (wxcGetPasswordFromUser message caption default-value (when parent (object-pointer parent))
		       (point-x position) (point-y position) (if centre 1 0)))

(defun get-text-from-user (message &key (caption "Input Text") (default-value "")
                                   (parent nil) (position +default-position+)(centre t))
    (wxcGetTextFromUser message caption default-value (when parent (object-pointer parent))
		       (point-x position) (point-y position) (if centre 1 0)))


(defun get-number-from-user (message prompt caption value &key (min 0) (max 100) (parent nil)
                                     (position +default-position+))
  (wxcGetNumberFromUser message prompt caption value min max (when parent (object-pointer parent))
		       (point-x position) (point-y position)))

(defun file-selector (message &key (dir "")(filename "")(extension "")(wildcard "*.*")
                              (style 0)(parent nil)(x -1)(y -1))
  (wxcFileSelector  message dir filename extension wildcard style (when parent (object-pointer parent)) x y))

(defun dir-selector (message &key (dir "")(style 0)(position +default-position+)(parent nil))
  (wxcDirSelector message dir style (point-x position) (point-y position)
                 (when parent (object-pointer parent))))

(defun message-box (message &key (caption "Message") (style +ok+)
                                   (parent nil)(x -1)(y -1))
    (wxcMessageBox message caption style (when parent (object-pointer parent)) x y))

(print "loaded function file")
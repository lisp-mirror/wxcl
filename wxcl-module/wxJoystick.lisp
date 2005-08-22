;;;wxJoystick.lisp
;;;License  : GNU General Public License (GPL)
;;;Author(s) : Surendra Singhi (surendra@asu.edu) 
;;;Copyright (C) 2005 Surendra Singhi 
;;;See the file LICENSE for information on usage and redistribution.
;;;
;;; $Header$
;;;

; (defpackage :wxJoystick
;   (:use :common-lisp :ffi :wxCL)
;   (:export
; 	:wxJoystick_Create
; 	:wxJoystick_Delete
; 	:wxJoystick_GetPosition
; 	:wxJoystick_GetZPosition
; 	:wxJoystick_GetButtonState
; 	:wxJoystick_GetPOVPosition
; 	:wxJoystick_GetPOVCTSPosition
; 	:wxJoystick_GetRudderPosition
; 	:wxJoystick_GetUPosition
; 	:wxJoystick_GetVPosition
; 	:wxJoystick_GetMovementThreshold
; 	:wxJoystick_SetMovementThreshold
; 	:wxJoystick_IsOk
; 	:wxJoystick_GetNumberJoysticks
; 	:wxJoystick_GetManufacturerId
; 	:wxJoystick_GetProductId
; 	:wxJoystick_GetProductName
; 	:wxJoystick_GetXMin
; 	:wxJoystick_GetYMin
; 	:wxJoystick_GetZMin
; 	:wxJoystick_GetXMax
; 	:wxJoystick_GetYMax
; 	:wxJoystick_GetZMax
; 	:wxJoystick_GetNumberButtons
; 	:wxJoystick_GetNumberAxes
; 	:wxJoystick_GetMaxButtons
; 	:wxJoystick_GetMaxAxes
; 	:wxJoystick_GetPollingMin
; 	:wxJoystick_GetPollingMax
; 	:wxJoystick_GetRudderMin
; 	:wxJoystick_GetRudderMax
; 	:wxJoystick_GetUMin
; 	:wxJoystick_GetUMax
; 	:wxJoystick_GetVMin
; 	:wxJoystick_GetVMax
; 	:wxJoystick_HasRudder
; 	:wxJoystick_HasZ
; 	:wxJoystick_HasU
; 	:wxJoystick_HasV
; 	:wxJoystick_HasPOV
; 	:wxJoystick_HasPOV4Dir
; 	:wxJoystick_HasPOVCTS
; 	:wxJoystick_SetCapture
; 	:wxJoystick_ReleaseCapture))

; (in-package :wxJoystick)

; (ffi:default-foreign-language :stdc)

(ffi:c-lines "#include <wxc.h>~%")

; (ffi:def-call-out wxJoystick_Create
; 	(:name "wxJoystick_Create")
; 	(:arguments (joystick ffi:int))
; 	(:return-type (ffi:c-pointer NIL))
; 	) ;; (:library +library-name+))

; (ffi:def-call-out wxJoystick_Delete
; 	(:name "wxJoystick_Delete")
; 	(:arguments (_obj (ffi:c-pointer NIL)))
; 	(:return-type NIL)
; 	) ;; (:library +library-name+))

; (ffi:def-call-out wxJoystick_GetPosition
; 	(:name "wxJoystick_GetPosition")
; 	(:arguments (_obj (ffi:c-pointer NIL))
; 		(_x (ffi:c-pointer NIL))
; 		(_y (ffi:c-pointer NIL)))
; 	(:return-type NIL)
; 	) ;; (:library +library-name+))

; (ffi:def-call-out wxJoystick_GetZPosition
; 	(:name "wxJoystick_GetZPosition")
; 	(:arguments (_obj (ffi:c-pointer NIL)))
; 	(:return-type ffi:int)
; 	) ;; (:library +library-name+))

; (ffi:def-call-out wxJoystick_GetButtonState
; 	(:name "wxJoystick_GetButtonState")
; 	(:arguments (_obj (ffi:c-pointer NIL)))
; 	(:return-type ffi:int)
; 	) ;; (:library +library-name+))

; (ffi:def-call-out wxJoystick_GetPOVPosition
; 	(:name "wxJoystick_GetPOVPosition")
; 	(:arguments (_obj (ffi:c-pointer NIL)))
; 	(:return-type ffi:int)
; 	) ;; (:library +library-name+))

; (ffi:def-call-out wxJoystick_GetPOVCTSPosition
; 	(:name "wxJoystick_GetPOVCTSPosition")
; 	(:arguments (_obj (ffi:c-pointer NIL)))
; 	(:return-type ffi:int)
; 	) ;; (:library +library-name+))

; (ffi:def-call-out wxJoystick_GetRudderPosition
; 	(:name "wxJoystick_GetRudderPosition")
; 	(:arguments (_obj (ffi:c-pointer NIL)))
; 	(:return-type ffi:int)
; 	) ;; (:library +library-name+))

; (ffi:def-call-out wxJoystick_GetUPosition
; 	(:name "wxJoystick_GetUPosition")
; 	(:arguments (_obj (ffi:c-pointer NIL)))
; 	(:return-type ffi:int)
; 	) ;; (:library +library-name+))

; (ffi:def-call-out wxJoystick_GetVPosition
; 	(:name "wxJoystick_GetVPosition")
; 	(:arguments (_obj (ffi:c-pointer NIL)))
; 	(:return-type ffi:int)
; 	) ;; (:library +library-name+))

; (ffi:def-call-out wxJoystick_GetMovementThreshold
; 	(:name "wxJoystick_GetMovementThreshold")
; 	(:arguments (_obj (ffi:c-pointer NIL)))
; 	(:return-type ffi:int)
; 	) ;; (:library +library-name+))

; (ffi:def-call-out wxJoystick_SetMovementThreshold
; 	(:name "wxJoystick_SetMovementThreshold")
; 	(:arguments (_obj (ffi:c-pointer NIL))
; 		(threshold ffi:int))
; 	(:return-type NIL)
; 	) ;; (:library +library-name+))

; (ffi:def-call-out wxJoystick_IsOk
; 	(:name "wxJoystick_IsOk")
; 	(:arguments (_obj (ffi:c-pointer NIL)))
; 	(:return-type ffi:int)
; 	) ;; (:library +library-name+))

; (ffi:def-call-out wxJoystick_GetNumberJoysticks
; 	(:name "wxJoystick_GetNumberJoysticks")
; 	(:arguments (_obj (ffi:c-pointer NIL)))
; 	(:return-type ffi:int)
; 	) ;; (:library +library-name+))

; (ffi:def-call-out wxJoystick_GetManufacturerId
; 	(:name "wxJoystick_GetManufacturerId")
; 	(:arguments (_obj (ffi:c-pointer NIL)))
; 	(:return-type ffi:int)
; 	) ;; (:library +library-name+))

; (ffi:def-call-out wxJoystick_GetProductId
; 	(:name "wxJoystick_GetProductId")
; 	(:arguments (_obj (ffi:c-pointer NIL)))
; 	(:return-type ffi:int)
; 	) ;; (:library +library-name+))

; (ffi:def-call-out wxJoystick_GetProductName
; 	(:name "wxJoystick_GetProductName")
; 	(:arguments (_obj (ffi:c-pointer NIL))
; 		(_buf (ffi:c-pointer NIL)))
; 	(:return-type ffi:int)
; 	) ;; (:library +library-name+))

; (ffi:def-call-out wxJoystick_GetXMin
; 	(:name "wxJoystick_GetXMin")
; 	(:arguments (_obj (ffi:c-pointer NIL)))
; 	(:return-type ffi:int)
; 	) ;; (:library +library-name+))

; (ffi:def-call-out wxJoystick_GetYMin
; 	(:name "wxJoystick_GetYMin")
; 	(:arguments (_obj (ffi:c-pointer NIL)))
; 	(:return-type ffi:int)
; 	) ;; (:library +library-name+))

; (ffi:def-call-out wxJoystick_GetZMin
; 	(:name "wxJoystick_GetZMin")
; 	(:arguments (_obj (ffi:c-pointer NIL)))
; 	(:return-type ffi:int)
; 	) ;; (:library +library-name+))

; (ffi:def-call-out wxJoystick_GetXMax
; 	(:name "wxJoystick_GetXMax")
; 	(:arguments (_obj (ffi:c-pointer NIL)))
; 	(:return-type ffi:int)
; 	) ;; (:library +library-name+))

; (ffi:def-call-out wxJoystick_GetYMax
; 	(:name "wxJoystick_GetYMax")
; 	(:arguments (_obj (ffi:c-pointer NIL)))
; 	(:return-type ffi:int)
; 	) ;; (:library +library-name+))

; (ffi:def-call-out wxJoystick_GetZMax
; 	(:name "wxJoystick_GetZMax")
; 	(:arguments (_obj (ffi:c-pointer NIL)))
; 	(:return-type ffi:int)
; 	) ;; (:library +library-name+))

; (ffi:def-call-out wxJoystick_GetNumberButtons
; 	(:name "wxJoystick_GetNumberButtons")
; 	(:arguments (_obj (ffi:c-pointer NIL)))
; 	(:return-type ffi:int)
; 	) ;; (:library +library-name+))

; (ffi:def-call-out wxJoystick_GetNumberAxes
; 	(:name "wxJoystick_GetNumberAxes")
; 	(:arguments (_obj (ffi:c-pointer NIL)))
; 	(:return-type ffi:int)
; 	) ;; (:library +library-name+))

; (ffi:def-call-out wxJoystick_GetMaxButtons
; 	(:name "wxJoystick_GetMaxButtons")
; 	(:arguments (_obj (ffi:c-pointer NIL)))
; 	(:return-type ffi:int)
; 	) ;; (:library +library-name+))

; (ffi:def-call-out wxJoystick_GetMaxAxes
; 	(:name "wxJoystick_GetMaxAxes")
; 	(:arguments (_obj (ffi:c-pointer NIL)))
; 	(:return-type ffi:int)
; 	) ;; (:library +library-name+))

; (ffi:def-call-out wxJoystick_GetPollingMin
; 	(:name "wxJoystick_GetPollingMin")
; 	(:arguments (_obj (ffi:c-pointer NIL)))
; 	(:return-type ffi:int)
; 	) ;; (:library +library-name+))

; (ffi:def-call-out wxJoystick_GetPollingMax
; 	(:name "wxJoystick_GetPollingMax")
; 	(:arguments (_obj (ffi:c-pointer NIL)))
; 	(:return-type ffi:int)
; 	) ;; (:library +library-name+))

; (ffi:def-call-out wxJoystick_GetRudderMin
; 	(:name "wxJoystick_GetRudderMin")
; 	(:arguments (_obj (ffi:c-pointer NIL)))
; 	(:return-type ffi:int)
; 	) ;; (:library +library-name+))

; (ffi:def-call-out wxJoystick_GetRudderMax
; 	(:name "wxJoystick_GetRudderMax")
; 	(:arguments (_obj (ffi:c-pointer NIL)))
; 	(:return-type ffi:int)
; 	) ;; (:library +library-name+))

; (ffi:def-call-out wxJoystick_GetUMin
; 	(:name "wxJoystick_GetUMin")
; 	(:arguments (_obj (ffi:c-pointer NIL)))
; 	(:return-type ffi:int)
; 	) ;; (:library +library-name+))

; (ffi:def-call-out wxJoystick_GetUMax
; 	(:name "wxJoystick_GetUMax")
; 	(:arguments (_obj (ffi:c-pointer NIL)))
; 	(:return-type ffi:int)
; 	) ;; (:library +library-name+))

; (ffi:def-call-out wxJoystick_GetVMin
; 	(:name "wxJoystick_GetVMin")
; 	(:arguments (_obj (ffi:c-pointer NIL)))
; 	(:return-type ffi:int)
; 	) ;; (:library +library-name+))

; (ffi:def-call-out wxJoystick_GetVMax
; 	(:name "wxJoystick_GetVMax")
; 	(:arguments (_obj (ffi:c-pointer NIL)))
; 	(:return-type ffi:int)
; 	) ;; (:library +library-name+))

; (ffi:def-call-out wxJoystick_HasRudder
; 	(:name "wxJoystick_HasRudder")
; 	(:arguments (_obj (ffi:c-pointer NIL)))
; 	(:return-type ffi:int)
; 	) ;; (:library +library-name+))

; (ffi:def-call-out wxJoystick_HasZ
; 	(:name "wxJoystick_HasZ")
; 	(:arguments (_obj (ffi:c-pointer NIL)))
; 	(:return-type ffi:int)
; 	) ;; (:library +library-name+))

; (ffi:def-call-out wxJoystick_HasU
; 	(:name "wxJoystick_HasU")
; 	(:arguments (_obj (ffi:c-pointer NIL)))
; 	(:return-type ffi:int)
; 	) ;; (:library +library-name+))

; (ffi:def-call-out wxJoystick_HasV
; 	(:name "wxJoystick_HasV")
; 	(:arguments (_obj (ffi:c-pointer NIL)))
; 	(:return-type ffi:int)
; 	) ;; (:library +library-name+))

; (ffi:def-call-out wxJoystick_HasPOV
; 	(:name "wxJoystick_HasPOV")
; 	(:arguments (_obj (ffi:c-pointer NIL)))
; 	(:return-type ffi:int)
; 	) ;; (:library +library-name+))

; (ffi:def-call-out wxJoystick_HasPOV4Dir
; 	(:name "wxJoystick_HasPOV4Dir")
; 	(:arguments (_obj (ffi:c-pointer NIL)))
; 	(:return-type ffi:int)
; 	) ;; (:library +library-name+))

; (ffi:def-call-out wxJoystick_HasPOVCTS
; 	(:name "wxJoystick_HasPOVCTS")
; 	(:arguments (_obj (ffi:c-pointer NIL)))
; 	(:return-type ffi:int)
; 	) ;; (:library +library-name+))

; (ffi:def-call-out wxJoystick_SetCapture
; 	(:name "wxJoystick_SetCapture")
; 	(:arguments (_obj (ffi:c-pointer NIL))
; 		(win (ffi:c-pointer NIL))
; 		(pollingFreq ffi:int))
; 	(:return-type ffi:int)
; 	) ;; (:library +library-name+))

; (ffi:def-call-out wxJoystick_ReleaseCapture
; 	(:name "wxJoystick_ReleaseCapture")
; 	(:arguments (_obj (ffi:c-pointer NIL)))
; 	(:return-type ffi:int)
; 	) ;; (:library +library-name+))

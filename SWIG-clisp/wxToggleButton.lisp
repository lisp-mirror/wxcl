;; This is an automatically generated file. 
;;Make changes as you feel are necessary (but remember if you try to regenerate this file, your changes will be lost). 

(defpackage :wxToggleButton
  (:use :common-lisp :ffi)
  (:export
	:wxToggleButton_Create
	:wxToggleButton_SetValue
	:wxToggleButton_GetValue
	:wxToggleButton_SetLabel
	:wxToggleButton_Enable
	:expEVT_COMMAND_TOGGLEBUTTON_CLICKED))

(in-package :wxToggleButton)

(ffi:def-call-out wxToggleButton_Create
	(:name "wxToggleButton_Create")
	(:arguments (parent (ffi:c-pointer NIL))
		(id ffi:int)
		(label (ffi:c-pointer NIL))
		(x ffi:int)
		(y ffi:int)
		(w ffi:int)
		(h ffi:int)
		(style ffi:int))
	(:return-type (ffi:c-pointer NIL))
	(:library +library-name+))

(ffi:def-call-out wxToggleButton_SetValue
	(:name "wxToggleButton_SetValue")
	(:arguments (_obj (ffi:c-pointer NIL))
		(state ffi:int))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxToggleButton_GetValue
	(:name "wxToggleButton_GetValue")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxToggleButton_SetLabel
	(:name "wxToggleButton_SetLabel")
	(:arguments (_obj (ffi:c-pointer NIL))
		(label (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxToggleButton_Enable
	(:name "wxToggleButton_Enable")
	(:arguments (_obj (ffi:c-pointer NIL))
		(enable ffi:int))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out expEVT_COMMAND_TOGGLEBUTTON_CLICKED
	(:name "expEVT_COMMAND_TOGGLEBUTTON_CLICKED")
	(:return-type ffi:int)
	(:library +library-name+))

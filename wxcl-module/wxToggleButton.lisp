;;;wxToggleButton.lisp
;;;License  : GNU General Public License (GPL)
;;;Author(s) : Surendra Singhi (surendra@asu.edu) 
;;;Copyright (C) 2005 Surendra Singhi 
;;;See the file LICENSE for information on usage and redistribution.
;;;
;;; $Header$
;;;

(defpackage :wxToggleButton
    (:use :common-lisp :ffi :wxCL)
  (:export
   :wxToggleButton_Create
   :wxToggleButton_SetValue
   :wxToggleButton_GetValue
   :wxToggleButton_SetLabel
   :wxToggleButton_Enable
   :wxcl-create-toggle-button
   :expEVT_COMMAND_TOGGLEBUTTON_CLICKED))

(in-package :wxToggleButton)

(ffi:default-foreign-language :stdc)

(ffi:c-lines "#include <wxc.h>~%")

(ffi:def-call-out wxToggleButton_Create
    (:name "wxToggleButton_Create")
  (:arguments (parent (ffi:c-pointer NIL))
	      (id ffi:int)
	      (label ffi:c-string)
	      (x ffi:int)
	      (y ffi:int)
	      (w ffi:int)
	      (h ffi:int)
	      (style ffi:int))
  (:return-type (ffi:c-pointer NIL))
  ) ;; (:library +library-name+))

(defmacro wxcl-create-toggle-button (frame label &key (id -1) (left -1) (top -1) (width -1) (height -1)
					 (style 0))
  "Creates a toggle button."
  `(wxToggleButton_Create ,frame ,id ,label ,left ,top ,width ,height ,style))

(ffi:def-call-out wxToggleButton_SetValue
    (:name "wxToggleButton_SetValue")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (state ffi:int))
  (:return-type NIL)
  ) ;; (:library +library-name+))

(ffi:def-call-out wxToggleButton_GetValue
    (:name "wxToggleButton_GetValue")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type ffi:int)
  ) ;; (:library +library-name+))

(ffi:def-call-out wxToggleButton_SetLabel
    (:name "wxToggleButton_SetLabel")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (label (ffi:c-pointer NIL)))
  (:return-type NIL)
  ) ;; (:library +library-name+))

(ffi:def-call-out wxToggleButton_Enable
    (:name "wxToggleButton_Enable")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (enable ffi:int))
  (:return-type ffi:int)
  ) ;; (:library +library-name+))

(ffi:def-call-out expEVT_COMMAND_TOGGLEBUTTON_CLICKED
    (:name "expEVT_COMMAND_TOGGLEBUTTON_CLICKED")
  (:return-type ffi:int)
  ) ;; (:library +library-name+))

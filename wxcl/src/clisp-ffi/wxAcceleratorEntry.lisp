;;;wxAcceleratorEntry.lisp
;;;License  : wxWindows License 3.1
;;;Author(s) : Surendra Singhi (surendra@asu.edu) 
;;;Copyright (C) 2005 Surendra Singhi 
;;;See the file LICENSE for information on usage and redistribution.
;;;
;;; $Header$
;;;

(in-package :wxcl-misc)

(ffi:default-foreign-language :stdc)

(ffi:def-call-out wxAcceleratorEntry_Create
    (:name "wxAcceleratorEntry_Create")
  (:arguments (flags ffi:int)
	      (keyCode ffi:int)
	      (cmd ffi:int))
  (:return-type (ffi:c-pointer NIL))
  (:library +library-name+))

(ffi:def-call-out wxAcceleratorEntry_Delete
    (:name "wxAcceleratorEntry_Delete")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxAcceleratorEntry_Set
    (:name "wxAcceleratorEntry_Set")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (flags ffi:int)
	      (keyCode ffi:int)
	      (cmd ffi:int))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxAcceleratorEntry_GetFlags
    (:name "wxAcceleratorEntry_GetFlags")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out wxAcceleratorEntry_GetKeyCode
    (:name "wxAcceleratorEntry_GetKeyCode")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out wxAcceleratorEntry_GetCommand
    (:name "wxAcceleratorEntry_GetCommand")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type ffi:int)
  (:library +library-name+))


(defmacro wxCL-create-accelerator-entries (frame &body body)
  (let ((size (length body)))
    `(wxWindow_SetAcceleratorTable ,frame
      (wxAcceleratorTable_Create ,size (make-array ,size :initial-contents
					(list ,@(mapcar (lambda (x) `(wxAcceleratorEntry_Create ,@x)) body)))))))
						   
				 

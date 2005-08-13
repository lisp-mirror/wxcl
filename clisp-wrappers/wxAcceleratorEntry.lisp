;;;wxAcceleratorEntry.lisp
;;;License   : BSD-style
;;;Author(s) : Surendra Singhi (surendra@asu.edu) 
;;;Copyright (C) 2005 Surendra Singhi 
;;;See the file LICENSE for information on usage and redistribution.
;;;
;;; $Header$
;;;

(defpackage :wxAcceleratorEntry
    (:use :common-lisp :ffi :wxCL :wxWindow)
  (:export :wxAcceleratorEntry_Create
	   :wxAcceleratorEntry_Delete
	   :wxAcceleratorEntry_Set
	   :wxAcceleratorEntry_GetFlags
	   :wxAcceleratorEntry_GetKeyCode
	   :wxAcceleratorEntry_GetCommand
	   :wxAcceleratorTable_Create
	   :wxAcceleratorTable_Delete
	   :wxCL-create-accelerator-entries))

(in-package :wxAcceleratorEntry)

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

(ffi:def-call-out wxAcceleratorTable_Create
    (:name "wxAcceleratorTable_Create")
  (:arguments (n ffi:int)
	      (entries (c-array-ptr (ffi:c-pointer NIL))))
  (:return-type (ffi:c-pointer NIL))
  (:library +library-name+))

(ffi:def-call-out wxAcceleratorTable_Delete
    (:name "wxAcceleratorTable_Delete")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type NIL)
  (:library +library-name+))

(defmacro wxCL-create-accelerator-entries (frame &body body)
  (let ((table (gensym))
	(size (length body)))
    `(wxWindow_SetAcceleratorTable ,frame
      (wxAcceleratorTable_Create ,size(make-array ,size :initial-contents
				       (list ,@(mapcar (lambda (x) `(wxAcceleratorEntry_Create ,@x)) body)))))))
						   
				 

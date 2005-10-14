;;;defpackage.lisp
;;;License  : wxWindows License 3.1
;;;Author(s): Surendra Singhi (surendra@asu.edu), Jack Unrue (jdunrue@gmail.com)
;;;Copyright (c) 2005 Surendra Singhi, Jack D. Unrue
;;;See the file LICENSE for information on usage and redistribution.
;;;
;;; $Header$
;;;

(in-package :wxcl-controls)

(defclass control (window)
  ()
  (:documentation "This is the base class for a control or 'widget'.\
 A control is generally a small window which processes user input and/or displays one or more item of data."))

(defmethod (setf label) (str (obj control))
  (wxControl_SetLabel (object-pointer obj) str))

(defmethod label ((obj control))
  (wxControl_GetLabel (object-pointer obj)))

; (defmethod wxControl_Command
; 	(:name "wxControl_Command")
; 	(:arguments (_obj (ffi:c-pointer NIL))
; 		(event (ffi:c-pointer NIL)))
; 	(:return-type NIL)
; 	(:library +library-name+))



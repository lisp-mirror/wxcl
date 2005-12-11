;;;wxTextAttr.lisp
;;;License  : wxWindows License 3.1
;;;Author(s) : Surendra Singhi (surendra@asu.edu) 
;;;Copyright (C) 2005 Surendra Singhi 
;;;See the file LICENSE for information on usage and redistribution.
;;;
;;; $Header$
;;;

(in-package :wxcl-structures)

(ffi:default-foreign-language :stdc)

(def-c-type wxTextAttr NIL)

(ffi:def-call-out wxTextAttr_CreateDefault
    (:name "wxTextAttr_CreateDefault")
  (:return-type (ffi:c-pointer wxTextAttr))
  (:library +library-name+))

(ffi:def-call-out wxTextAttr_Create
    (:name "wxTextAttr_Create")
  (:arguments (colText (ffi:c-pointer NIL))
	      (colBack (ffi:c-pointer NIL))
	      (font (ffi:c-pointer NIL)))
  (:return-type (ffi:c-pointer NIL))
  (:library +library-name+))

(ffi:def-call-out wxTextAttr_Delete
    (:name "wxTextAttr_Delete")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:library +library-name+))

(ffi:def-call-out wxTextAttr_GetBackgroundColour
    (:name "wxTextAttr_GetBackgroundColour")
  (:arguments (_obj (ffi:c-pointer wxTextAttr))
	      (colour (ffi:c-pointer NIL)))
  (:library +library-name+))

(ffi:def-call-out wxTextAttr_GetFont
    (:name "wxTextAttr_GetFont")
  (:arguments (_obj (ffi:c-pointer wxTextAttr))
	      (font (ffi:c-pointer NIL)))
  (:library +library-name+))

(ffi:def-call-out wxTextAttr_GetTextColour
    (:name "wxTextAttr_GetTextColour")
  (:arguments (_obj (ffi:c-pointer wxTextAttr))
	      (colour (ffi:c-pointer NIL)))
  (:library +library-name+))

(ffi:def-call-out wxTextAttr_HasBackgroundColour
    (:name "wxTextAttr_HasBackgroundColour")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out wxTextAttr_HasFont
    (:name "wxTextAttr_HasFont")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out wxTextAttr_HasTextColour
    (:name "wxTextAttr_HasTextColour")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out wxTextAttr_IsDefault
    (:name "wxTextAttr_IsDefault")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out wxTextAttr_SetTextColour
    (:name "wxTextAttr_SetTextColour")
  (:arguments (_obj (ffi:c-pointer wxTextAttr))
	      (colour (ffi:c-pointer NIL)))
  (:library +library-name+))

(ffi:def-call-out wxTextAttr_SetBackgroundColour
    (:name "wxTextAttr_SetBackgroundColour")
  (:arguments (_obj (ffi:c-pointer wxTextAttr))
	      (colour (ffi:c-pointer NIL)))
  (:library +library-name+))

(ffi:def-call-out wxTextAttr_SetFont
    (:name "wxTextAttr_SetFont")
  (:arguments (_obj (ffi:c-pointer wxTextAttr))
	      (font (ffi:c-pointer NIL)))
  (:library +library-name+))

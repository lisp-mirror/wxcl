;;;wxControl.lisp
;;;License  : wxWindows License 3.1
;;;Author(s) : Surendra Singhi (surendra@asu.edu) 
;;;Copyright (C) 2005 Surendra Singhi 
;;;See the file LICENSE for information on usage and redistribution.
;;;
;;; $Header$
;;;
;; This is an automatically generated file. 
;;Make changes as you feel are necessary (but remember if you try to regenerate this file, your changes will be lost). 

(defpackage :wxControl
    (:use :common-lisp :ffi :wxCL)
  (:export :wxControl_SetLabel
	   :wxControl_GetLabel
	   :wxControl_Command
	   :wxControlWithItems_Clear
	   :wxControlWithItems_Delete
	   :wxControlWithItems_GetCount
	   :wxControlWithItems_GetString
	   :wxControlWithItems_SetString
	   :wxControlWithItems_FindString
	   :wxControlWithItems_SetSelection
	   :wxControlWithItems_GetSelection
	   :wxControlWithItems_Append
	   :wxControlWithItems_AppendData
	   :wxControlWithItems_Insert
	   :wxControlWithItems_InsertData
	   :wxControlWithItems_SetClientData
	   :wxControlWithItems_GetClientData
	   :wxControlWithItems_SetStringSelection))

(in-package :wxControl)

(ffi:default-foreign-language :stdc)

(ffi:def-call-out wxControl_SetLabel
    (:name "wxControl_SetLabel")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (text ffi:c-string))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxControl_GetLabel
    (:name "wxControl_GetLabel")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type ffi:c-string :malloc-free)
  (:library +library-name+))

(ffi:def-call-out wxControl_Command
    (:name "wxControl_Command")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (event (ffi:c-pointer NIL)))
  (:return-type NIL)
  (:library +library-name+))


(ffi:def-call-out wxControlWithItems_Clear
    (:name "wxControlWithItems_Clear")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxControlWithItems_Delete
    (:name "wxControlWithItems_Delete")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (n ffi:int))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxControlWithItems_GetCount
    (:name "wxControlWithItems_GetCount")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out wxControlWithItems_GetString
    (:name "wxControlWithItems_GetString")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (n ffi:int))
  (:return-type ffi:c-string :malloc-free)
  (:library +library-name+))

(ffi:def-call-out wxControlWithItems_SetString
    (:name "wxControlWithItems_SetString")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (n ffi:int)
	      (s ffi:c-string))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxControlWithItems_FindString
    (:name "wxControlWithItems_FindString")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (s ffi:c-string))
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out wxControlWithItems_SetSelection
    (:name "wxControlWithItems_SetSelection")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (n ffi:int)
	      (select ffi:int))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxControlWithItems_GetSelection
    (:name "wxControlWithItems_GetSelection")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out wxControlWithItems_Append
    (:name "wxControlWithItems_Append")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (item ffi:c-string))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxControlWithItems_AppendData
    (:name "wxControlWithItems_AppendData")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (item ffi:c-string)
	      (_data (ffi:c-pointer NIL)))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxControlWithItems_Insert
    (:name "wxControlWithItems_InsertItems")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (items ffi:c-string)
	      (pos ffi:int))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxControlWithItems_InsertData
    (:name "wxControlWithItems_InsertItems")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (items ffi:c-string)
	      (pos ffi:int)
	      (data (ffi:c-pointer NIL)))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxControlWithItems_SetFirstItem
    (:name "wxControlWithItems_SetFirstItem")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (n ffi:int))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxControlWithItems_SetClientData
    (:name "wxControlWithItems_SetClientData")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (n ffi:int)
	      (clientData (ffi:c-pointer NIL)))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxControlWithItems_GetClientData
    (:name "wxControlWithItems_GetClientData")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (n ffi:int))
  (:return-type (ffi:c-pointer NIL))
  (:library +library-name+))

(ffi:def-call-out wxControlWithItems_GetStringSelection
    (:name "wxControlWithItems_GetStringSelection")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type ffi:c-string :malloc-free)
  (:library +library-name+))

(ffi:def-call-out wxControlWithItems_SetStringSelection
    (:name "wxControlWithItems_SetStringSelection")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (str ffi:c-string))
  (:return-type NIL)
  (:library +library-name+))

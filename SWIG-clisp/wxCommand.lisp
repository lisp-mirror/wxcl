;;;wxCommand.lisp
;;;License   : BSD-style
;;;Author(s) : Surendra Singhi (surendra@asu.edu) 
;;;Copyright (C) 2005 Surendra Singhi 
;;;See the file LICENSE for information on usage and redistribution.
;;;
;;; $Header$
;;;
;; This is an automatically generated file. 
;;Make changes as you feel are necessary (but remember if you try to regenerate this file, your changes will be lost). 

(defpackage :wxCommand
  (:use :common-lisp :ffi)
  (:export
	:ELJCommand_Create
	:ELJCommand_Delete
	:ELJCommand_GetName
	:ELJCommand_CanUndo
	:wxCommandProcessor_wxCommandProcessor
	:wxCommandProcessor_Delete
	:wxCommandProcessor_Submit
	:wxCommandProcessor_Undo
	:wxCommandProcessor_Redo
	:wxCommandProcessor_CanUndo
	:wxCommandProcessor_CanRedo
	:wxCommandProcessor_SetEditMenu
	:wxCommandProcessor_GetEditMenu
	:wxCommandProcessor_SetMenuStrings
	:wxCommandProcessor_Initialize
	:wxCommandProcessor_GetCommands
	:wxCommandProcessor_GetMaxCommands
	:wxCommandProcessor_ClearCommands))

(in-package :wxCommand)

(ffi:def-call-out ELJCommand_Create
	(:name "ELJCommand_Create")
	(:arguments (_und ffi:int)
		(_nme (ffi:c-pointer NIL))
		(_obj (ffi:c-pointer NIL))
		(_clb (ffi:c-pointer NIL)))
	(:return-type (ffi:c-pointer NIL))
	(:library +library-name+))

(ffi:def-call-out ELJCommand_Delete
	(:name "ELJCommand_Delete")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out ELJCommand_GetName
	(:name "ELJCommand_GetName")
	(:arguments (_obj (ffi:c-pointer NIL))
		(_buf (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out ELJCommand_CanUndo
	(:name "ELJCommand_CanUndo")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxCommandProcessor_wxCommandProcessor
	(:name "wxCommandProcessor_wxCommandProcessor")
	(:arguments (maxCommands ffi:int))
	(:return-type (ffi:c-pointer NIL))
	(:library +library-name+))

(ffi:def-call-out wxCommandProcessor_Delete
	(:name "wxCommandProcessor_Delete")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxCommandProcessor_Submit
	(:name "wxCommandProcessor_Submit")
	(:arguments (_obj (ffi:c-pointer NIL))
		(command (ffi:c-pointer NIL))
		(storeIt ffi:int))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxCommandProcessor_Undo
	(:name "wxCommandProcessor_Undo")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxCommandProcessor_Redo
	(:name "wxCommandProcessor_Redo")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxCommandProcessor_CanUndo
	(:name "wxCommandProcessor_CanUndo")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxCommandProcessor_CanRedo
	(:name "wxCommandProcessor_CanRedo")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxCommandProcessor_SetEditMenu
	(:name "wxCommandProcessor_SetEditMenu")
	(:arguments (_obj (ffi:c-pointer NIL))
		(menu (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxCommandProcessor_GetEditMenu
	(:name "wxCommandProcessor_GetEditMenu")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type (ffi:c-pointer NIL))
	(:library +library-name+))

(ffi:def-call-out wxCommandProcessor_SetMenuStrings
	(:name "wxCommandProcessor_SetMenuStrings")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxCommandProcessor_Initialize
	(:name "wxCommandProcessor_Initialize")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxCommandProcessor_GetCommands
	(:name "wxCommandProcessor_GetCommands")
	(:arguments (_obj (ffi:c-pointer NIL))
		(_ref (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxCommandProcessor_GetMaxCommands
	(:name "wxCommandProcessor_GetMaxCommands")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxCommandProcessor_ClearCommands
	(:name "wxCommandProcessor_ClearCommands")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

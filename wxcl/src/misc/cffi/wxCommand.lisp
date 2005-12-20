;;;wxCommand.lisp
;;;License  : wxWindows License 3.1
;;;Author(s) : Surendra Singhi (surendra@asu.edu) 
;;;Copyright (C) 2005 Surendra Singhi 
;;;See the file LICENSE for information on usage and redistribution.
;;;
;;; $Header$
;;;

(in-package :wxcl-misc)

(defcfun ("ELJCommand_Create" ELJCommand_Create) :pointer
  (_und :int)
  (_nme :pointer)
  (_obj :pointer)
  (_clb :pointer))

(defcfun ("ELJCommand_Delete" ELJCommand_Delete) :void
  (_obj :pointer))

(defcfun ("ELJCommand_GetName" ELJCommand_GetName) :int
  (_obj :pointer)
  (_buf :pointer))

(defcfun ("ELJCommand_CanUndo" ELJCommand_CanUndo) :int
  (_obj :pointer))

(defcfun ("wxCommandProcessor_wxCommandProcessor" wxCommandProcessor_wxCommandProcessor) :pointer
  (maxCommands :int))

(defcfun ("wxCommandProcessor_Delete" wxCommandProcessor_Delete) :void
  (_obj :pointer))

(defcfun ("wxCommandProcessor_Submit" wxCommandProcessor_Submit) :int
  (_obj :pointer)
  (command :pointer)
  (storeIt :int))

(defcfun ("wxCommandProcessor_Undo" wxCommandProcessor_Undo) :int
  (_obj :pointer))

(defcfun ("wxCommandProcessor_Redo" wxCommandProcessor_Redo) :int
  (_obj :pointer))

(defcfun ("wxCommandProcessor_CanUndo" wxCommandProcessor_CanUndo) :int
  (_obj :pointer))

(defcfun ("wxCommandProcessor_CanRedo" wxCommandProcessor_CanRedo) :int
  (_obj :pointer))

(defcfun ("wxCommandProcessor_SetEditMenu" wxCommandProcessor_SetEditMenu) :void
  (_obj :pointer)
  (menu :pointer))

(defcfun ("wxCommandProcessor_GetEditMenu" wxCommandProcessor_GetEditMenu) :pointer
  (_obj :pointer))

(defcfun ("wxCommandProcessor_SetMenuStrings" wxCommandProcessor_SetMenuStrings) :void
  (_obj :pointer))

(defcfun ("wxCommandProcessor_Initialize" wxCommandProcessor_Initialize) :void
  (_obj :pointer))

(defcfun ("wxCommandProcessor_GetCommands" wxCommandProcessor_GetCommands) :int
  (_obj :pointer)
  (_ref :pointer))

(defcfun ("wxCommandProcessor_GetMaxCommands" wxCommandProcessor_GetMaxCommands) :int
  (_obj :pointer))

(defcfun ("wxCommandProcessor_ClearCommands" wxCommandProcessor_ClearCommands) :void
  (_obj :pointer))

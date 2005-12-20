;;;wxTextCtrl.lisp
;;;License  : GNU General Public License (GPL)
;;;Author(s) : Surendra Singhi (surendra@asu.edu) 
;;;Copyright (C) 2005 Surendra Singhi 
;;;See the file LICENSE for information on usage and redistribution.
;;;
;;; $Header$
;;;
(in-package :wxcl-controls)

(defcfun ("wxTextCtrl_Create" wxTextCtrl_Create) :pointer
  (_prt :pointer)
  (_id :int)
  (_txt :string)
  (_lft :int)
  (_top :int)
  (_wdt :int)
  (_hgt :int)
  (_stl :long))

(defcfun ("wxTextCtrl_GetValue" wxTextCtrl_GetValue) :lisp-string
  (_obj :pointer))

(defcfun ("wxTextCtrl_SetValue" wxTextCtrl_SetValue) :void
  (_obj :pointer)
  (value :string))

(defcfun ("wxTextCtrl_GetLineLength" wxTextCtrl_GetLineLength) :int
  (_obj :pointer)
  (lineNo :long))

(defcfun ("wxTextCtrl_GetLineText" wxTextCtrl_GetLineText) :lisp-string
  (_obj :pointer)
  (lineNo :long))

(defcfun ("wxTextCtrl_GetNumberOfLines" wxTextCtrl_GetNumberOfLines) :int
  (_obj :pointer))

(defcfun ("wxTextCtrl_IsModified" wxTextCtrl_IsModified) :int
  (_obj :pointer))

(defcfun ("wxTextCtrl_IsEditable" wxTextCtrl_IsEditable) :int
  (_obj :pointer))

(defcfun ("wxTextCtrl_GetSelection" wxTextCtrl_GetSelection) :void
  (_obj :pointer)
  (from :pointer)
  (to :pointer))

(defcfun ("wxTextCtrl_Clear" wxTextCtrl_Clear) :void
  (_obj :pointer))

(defcfun ("wxTextCtrl_Replace" wxTextCtrl_Replace) :void
  (_obj :pointer)
  (from :long)
  (to :long)
  (value :string))

(defcfun ("wxTextCtrl_Remove" wxTextCtrl_Remove) :void
  (_obj :pointer)
  (from :long)
  (to :long))

(defcfun ("wxTextCtrl_LoadFile" wxTextCtrl_LoadFile) :int
  (_obj :pointer)
  (file :string))

(defcfun ("wxTextCtrl_SaveFile" wxTextCtrl_SaveFile) :int
  (_obj :pointer)
  (file :string))

(defcfun ("wxTextCtrl_DiscardEdits" wxTextCtrl_DiscardEdits) :void
  (_obj :pointer))

(defcfun ("wxTextCtrl_WriteText" wxTextCtrl_WriteText) :void
  (_obj :pointer)
  (text :string))

(defcfun ("wxTextCtrl_AppendText" wxTextCtrl_AppendText) :void
  (_obj :pointer)
  (text :string))

(defcfun ("wxTextCtrl_XYToPosition" wxTextCtrl_XYToPosition) :long
  (_obj :pointer)
  (x :long)
  (y :long))

(defcfun ("wxTextCtrl_PositionToXY" wxTextCtrl_PositionToXY) :int
  (_obj :pointer)
  (pos :long)
  (x :pointer)
  (y :pointer))

(defcfun ("wxTextCtrl_ShowPosition" wxTextCtrl_ShowPosition) :void
  (_obj :pointer)
  (pos :long))

(defcfun ("wxTextCtrl_Copy" wxTextCtrl_Copy) :void
  (_obj :pointer))

(defcfun ("wxTextCtrl_Cut" wxTextCtrl_Cut) :void
  (_obj :pointer))

(defcfun ("wxTextCtrl_Paste" wxTextCtrl_Paste) :void
  (_obj :pointer))

(defcfun ("wxTextCtrl_CanCopy" wxTextCtrl_CanCopy) :int
  (_obj :pointer))

(defcfun ("wxTextCtrl_CanCut" wxTextCtrl_CanCut) :int
  (_obj :pointer))

(defcfun ("wxTextCtrl_CanPaste" wxTextCtrl_CanPaste) :int
  (_obj :pointer))

(defcfun ("wxTextCtrl_Undo" wxTextCtrl_Undo) :void
  (_obj :pointer))

(defcfun ("wxTextCtrl_Redo" wxTextCtrl_Redo) :void
  (_obj :pointer))

(defcfun ("wxTextCtrl_CanUndo" wxTextCtrl_CanUndo) :int
  (_obj :pointer))

(defcfun ("wxTextCtrl_CanRedo" wxTextCtrl_CanRedo) :int
  (_obj :pointer))

(defcfun ("wxTextCtrl_SetInsertionPoint" wxTextCtrl_SetInsertionPoint) :void
  (_obj :pointer)
  (pos :long))

(defcfun ("wxTextCtrl_SetInsertionPointEnd" wxTextCtrl_SetInsertionPointEnd) :void
  (_obj :pointer))

(defcfun ("wxTextCtrl_GetInsertionPoint" wxTextCtrl_GetInsertionPoint) :long
  (_obj :pointer))

(defcfun ("wxTextCtrl_GetLastPosition" wxTextCtrl_GetLastPosition) :long
  (_obj :pointer))

(defcfun ("wxTextCtrl_SetSelection" wxTextCtrl_SetSelection) :void
  (_obj :pointer)
  (from :long)
  (to :long))

(defcfun ("wxTextCtrl_SetEditable" wxTextCtrl_SetEditable) :void
  (_obj :pointer)
  (editable :int))

;;;wxTextCtrl.lisp
;;;License  : GNU General Public License (GPL)
;;;Author(s) : Surendra Singhi (surendra@asu.edu) 
;;;Copyright (C) 2005 Surendra Singhi 
;;;See the file LICENSE for information on usage and redistribution.
;;;
;;; $Header$
;;;
;; This is an automatically generated file. 
;;Make changes as you feel are necessary (but remember if you try to regenerate this file, your changes will be lost). 

(defpackage :wxTextCtrl
    (:use :common-lisp :ffi :wxCL)
  (:export :wxTextCtrl_Create
	   :wxTextCtrl_GetValue
	   :wxTextCtrl_SetValue
	   :wxTextCtrl_GetLineLength
	   :wxTextCtrl_GetLineText
	   :wxTextCtrl_GetNumberOfLines
	   :wxTextCtrl_IsModified
	   :wxTextCtrl_IsEditable
	   :wxTextCtrl_GetSelection
	   :wxTextCtrl_Clear
	   :wxTextCtrl_Replace
	   :wxTextCtrl_Remove
	   :wxTextCtrl_LoadFile
	   :wxTextCtrl_SaveFile
	   :wxTextCtrl_DiscardEdits
	   :wxTextCtrl_WriteText
	   :wxTextCtrl_AppendText
	   :wxTextCtrl_XYToPosition
	   :wxTextCtrl_PositionToXY
	   :wxTextCtrl_ShowPosition
	   :wxTextCtrl_Copy
	   :wxTextCtrl_Cut
	   :wxTextCtrl_Paste
	   :wxTextCtrl_CanCopy
	   :wxTextCtrl_CanCut
	   :wxTextCtrl_CanPaste
	   :wxTextCtrl_Undo
	   :wxTextCtrl_Redo
	   :wxTextCtrl_CanUndo
	   :wxTextCtrl_CanRedo
	   :wxTextCtrl_SetInsertionPoint
	   :wxTextCtrl_SetInsertionPointEnd
	   :wxTextCtrl_GetInsertionPoint
	   :wxTextCtrl_GetLastPosition
	   :wxTextCtrl_SetSelection
	   :wxTextCtrl_SetEditable
	   :wxcl-create-text-control
	   :wxTE_READONLY
	   :wxTE_MULTILINE
	   :wxTE_PROCESS_TAB
	   :wxTE_RICH
	   :wxTE_NO_VSCROLL
	   :wxTE_AUTO_SCROLL))

(in-package :wxTextctrl)

(ffi:default-foreign-language :stdc)

(defconstant wxTE_READONLY 16)
(defconstant wxTE_MULTILINE 32)
(defconstant wxTE_PROCESS_TAB 64)
(defconstant wxTE_RICH 128)
(defconstant wxTE_NO_VSCROLL 256)
(defconstant wxTE_AUTO_SCROLL 512)

(ffi:def-call-out wxTextCtrl_Create
    (:name "wxTextCtrl_Create")
  (:arguments (_prt (ffi:c-pointer NIL))
	      (_id ffi:int)
	      (_txt ffi:c-string)
	      (_lft ffi:int)
	      (_top ffi:int)
	      (_wdt ffi:int)
	      (_hgt ffi:int)
	      (_stl ffi:long))
  (:return-type (ffi:c-pointer NIL))
  (:library +library-name+))

(defmacro wxcl-create-text-control (frame &key (id -1) (text "") (left -1) (top -1) (width -1)(height -1)
					  (style 0))
  `(wxTextCtrl_Create ,frame ,id ,text ,left ,top ,width ,height ,style))


(ffi:def-call-out wxTextCtrl_GetValue
    (:name "wxTextCtrl_GetValue")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (_buf (ffi:c-pointer NIL)))
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out wxTextCtrl_SetValue
    (:name "wxTextCtrl_SetValue")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (value ffi:c-string))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxTextCtrl_GetLineLength
    (:name "wxTextCtrl_GetLineLength")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (lineNo ffi:long))
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out wxTextCtrl_GetLineText
    (:name "wxTextCtrl_GetLineText")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (lineNo ffi:long)
	      (_buf (ffi:c-pointer NIL)))
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out wxTextCtrl_GetNumberOfLines
    (:name "wxTextCtrl_GetNumberOfLines")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out wxTextCtrl_IsModified
    (:name "wxTextCtrl_IsModified")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out wxTextCtrl_IsEditable
    (:name "wxTextCtrl_IsEditable")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out wxTextCtrl_GetSelection
    (:name "wxTextCtrl_GetSelection")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (from (ffi:c-pointer NIL))
	      (to (ffi:c-pointer NIL)))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxTextCtrl_Clear
    (:name "wxTextCtrl_Clear")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxTextCtrl_Replace
    (:name "wxTextCtrl_Replace")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (from ffi:long)
	      (to ffi:long)
	      (value ffi:c-string))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxTextCtrl_Remove
    (:name "wxTextCtrl_Remove")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (from ffi:long)
	      (to ffi:long))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxTextCtrl_LoadFile
    (:name "wxTextCtrl_LoadFile")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (file ffi:c-string))
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out wxTextCtrl_SaveFile
    (:name "wxTextCtrl_SaveFile")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (file ffi:c-string))
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out wxTextCtrl_DiscardEdits
    (:name "wxTextCtrl_DiscardEdits")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxTextCtrl_WriteText
    (:name "wxTextCtrl_WriteText")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (text ffi:c-string))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxTextCtrl_AppendText
    (:name "wxTextCtrl_AppendText")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (text ffi:c-string))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxTextCtrl_XYToPosition
    (:name "wxTextCtrl_XYToPosition")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (x ffi:long)
	      (y ffi:long))
  (:return-type ffi:long)
  (:library +library-name+))

(ffi:def-call-out wxTextCtrl_PositionToXY
    (:name "wxTextCtrl_PositionToXY")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (pos ffi:long)
	      (x (ffi:c-ptr ffi:long))
	      (y (ffi:c-ptr ffi:long)))
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out wxTextCtrl_ShowPosition
    (:name "wxTextCtrl_ShowPosition")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (pos ffi:long))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxTextCtrl_Copy
    (:name "wxTextCtrl_Copy")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxTextCtrl_Cut
    (:name "wxTextCtrl_Cut")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxTextCtrl_Paste
    (:name "wxTextCtrl_Paste")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxTextCtrl_CanCopy
    (:name "wxTextCtrl_CanCopy")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out wxTextCtrl_CanCut
    (:name "wxTextCtrl_CanCut")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out wxTextCtrl_CanPaste
    (:name "wxTextCtrl_CanPaste")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out wxTextCtrl_Undo
    (:name "wxTextCtrl_Undo")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxTextCtrl_Redo
    (:name "wxTextCtrl_Redo")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxTextCtrl_CanUndo
    (:name "wxTextCtrl_CanUndo")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out wxTextCtrl_CanRedo
    (:name "wxTextCtrl_CanRedo")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out wxTextCtrl_SetInsertionPoint
    (:name "wxTextCtrl_SetInsertionPoint")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (pos ffi:long))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxTextCtrl_SetInsertionPointEnd
    (:name "wxTextCtrl_SetInsertionPointEnd")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxTextCtrl_GetInsertionPoint
    (:name "wxTextCtrl_GetInsertionPoint")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type ffi:long)
  (:library +library-name+))

(ffi:def-call-out wxTextCtrl_GetLastPosition
    (:name "wxTextCtrl_GetLastPosition")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type ffi:long)
  (:library +library-name+))

(ffi:def-call-out wxTextCtrl_SetSelection
    (:name "wxTextCtrl_SetSelection")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (from ffi:long)
	      (to ffi:long))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxTextCtrl_SetEditable
    (:name "wxTextCtrl_SetEditable")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (editable ffi:int))
  (:return-type NIL)
  (:library +library-name+))

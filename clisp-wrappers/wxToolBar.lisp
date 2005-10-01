;;;wxToolBar.lisp
;;;License  : wxWindows License 3.1
;;;Author(s) : Surendra Singhi (surendra@asu.edu) 
;;;Copyright (C) 2005 Surendra Singhi 
;;;See the file LICENSE for information on usage and redistribution.
;;;
;;; $Header$
;;;
;; This is an automatically generated file. 
;;Make changes as you feel are necessary (but remember if you try to regenerate this file, your changes will be lost). 

(defpackage :wxToolBar
    (:use :common-lisp :ffi :wxCL)
  (:export :wxToolBar_Create
	   :wxToolBar_AddTool2
	   :wxToolBar_Delete
	   :wxToolBar_AddControl
	   :wxToolBar_AddSeparator
	   :wxToolBar_AddTool
	   :wxToolBar_AddToolEx
	   :wxToolBar_DeleteTool
	   :wxToolBar_DeleteToolByPos
	   :wxToolBar_EnableTool
	   :wxToolBar_GetToolSize
	   :wxToolBar_GetToolBitmapSize
	   :wxToolBar_GetMargins
	   :wxToolBar_GetToolClientData
	   :wxToolBar_GetToolEnabled
	   :wxToolBar_GetToolLongHelp
	   :wxToolBar_GetToolPacking
	   :wxToolBar_GetToolShortHelp
	   :wxToolBar_GetToolState
	   :wxToolBar_InsertControl
	   :wxToolBar_InsertSeparator
	   :wxToolBar_InsertTool
	   :wxToolBar_Realize
	   :wxToolBar_RemoveTool
	   :wxToolBar_SetMargins
	   :wxToolBar_SetToolBitmapSize
	   :wxToolBar_SetToolClientData
	   :wxToolBar_SetToolLongHelp
	   :wxToolBar_SetToolPacking
	   :wxToolBar_SetToolShortHelp
	   :wxToolBar_SetToolSeparation
	   :wxToolBar_ToggleTool
	   :wxTB_HORIZONTAL
	   :wxTB_3DBUTTONS
	   :wxTB_DOCKABLE
	   :wxTB_VERTICAL
	   :wxTB_HORIZONTAL
	   ))

(in-package :wxToolBar)

(defconstant wxTB_3DBUTTONS 16)
(defconstant wxTB_FLAT 32)
(defconstant wxTB_DOCKABLE 64)
(defconstant wxTB_VERTICAL 8)
(defconstant wxTB_HORIZONTAL 4)


(ffi:default-foreign-language :stdc)

(ffi:def-call-out wxToolBar_Create
    (:name "wxToolBar_Create")
  (:arguments (_prt (ffi:c-pointer NIL))
	      (_id ffi:int)
	      (_lft ffi:int)
	      (_top ffi:int)
	      (_wdt ffi:int)
	      (_hgt ffi:int)
	      (_stl ffi:int))
  (:return-type (ffi:c-pointer NIL))
  (:library +library-name+))

(ffi:def-call-out wxToolBar_Delete
    (:name "wxToolBar_Delete")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxToolBar_AddControl
    (:name "wxToolBar_AddControl")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (ctrl (ffi:c-pointer NIL)))
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out wxToolBar_AddSeparator
    (:name "wxToolBar_AddSeparator")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxToolBar_AddTool
    (:name "wxToolBar_AddTool")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (id ffi:int)
	      (bmp (ffi:c-pointer NIL))
	      (shelp ffi:c-string)
	      (lhelp ffi:c-string))
  (:library +library-name+))

(ffi:def-call-out wxToolBar_AddToolEx
    (:name "wxToolBar_AddToolEx")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (id ffi:int)
	      (bmp1 (ffi:c-pointer NIL))
	      (bmp2 (ffi:c-pointer NIL))
	      (tgl ffi:int)
	      (x ffi:int)
	      (y ffi:int)
	      (dat (ffi:c-pointer NIL))
	      (shelp (ffi:c-pointer NIL))
	      (lhelp (ffi:c-pointer NIL)))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxToolBar_DeleteTool
    (:name "wxToolBar_DeleteTool")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (id ffi:int))
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out wxToolBar_DeleteToolByPos
    (:name "wxToolBar_DeleteToolByPos")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (pos ffi:int))
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out wxToolBar_EnableTool
    (:name "wxToolBar_EnableTool")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (id ffi:int)
	      (enb ffi:int))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxToolBar_GetToolSize
    (:name "wxToolBar_GetToolSize")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (x (ffi:c-ptr int) :out)
	      (y (ffi:c-ptr int) :out))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxToolBar_GetToolBitmapSize
    (:name "wxToolBar_GetToolBitmapSize")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (x (ffi:c-ptr int) :out)
	      (y (ffi:c-ptr int) :out))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxToolBar_GetMargins
    (:name "wxToolBar_GetMargins")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (x (ffi:c-ptr int) :out)
	      (y (ffi:c-ptr int) :out))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxToolBar_GetToolClientData
    (:name "wxToolBar_GetToolClientData")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (id ffi:int))
  (:return-type (ffi:c-pointer NIL))
  (:library +library-name+))

(ffi:def-call-out wxToolBar_GetToolEnabled
    (:name "wxToolBar_GetToolEnabled")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (id ffi:int))
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out wxToolBar_GetToolLongHelp
    (:name "wxToolBar_GetToolLongHelp")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (id ffi:int))
  (:return-type  ffi:c-string :malloc-free)
  (:library +library-name+))

(ffi:def-call-out wxToolBar_GetToolPacking
    (:name "wxToolBar_GetToolPacking")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out wxToolBar_GetToolShortHelp
    (:name "wxToolBar_GetToolShortHelp")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (id ffi:int))
  (:return-type ffi:c-string :malloc-free)
  (:library +library-name+))

(ffi:def-call-out wxToolBar_GetToolState
    (:name "wxToolBar_GetToolState")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (id ffi:int))
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out wxToolBar_InsertControl
    (:name "wxToolBar_InsertControl")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (pos ffi:int)
	      (ctrl (ffi:c-pointer NIL)))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxToolBar_InsertSeparator
    (:name "wxToolBar_InsertSeparator")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (pos ffi:int))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxToolBar_InsertTool
    (:name "wxToolBar_InsertTool")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (pos ffi:int)
	      (id ffi:int)
	      (bmp1 (ffi:c-pointer NIL))
	      (bmp2 (ffi:c-pointer NIL))
	      (tgl ffi:int)
	      (dat (ffi:c-pointer NIL))
	      (shelp (ffi:c-pointer NIL))
	      (lhelp (ffi:c-pointer NIL)))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxToolBar_Realize
    (:name "wxToolBar_Realize")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out wxToolBar_RemoveTool
    (:name "wxToolBar_RemoveTool")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (id ffi:int))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxToolBar_SetMargins
    (:name "wxToolBar_SetMargins")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (x ffi:int)
	      (y ffi:int))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxToolBar_SetToolBitmapSize
    (:name "wxToolBar_SetToolBitmapSize")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (x ffi:int)
	      (y ffi:int))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxToolBar_SetToolClientData
    (:name "wxToolBar_SetToolClientData")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (id ffi:int)
	      (dat (ffi:c-pointer NIL)))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxToolBar_SetToolLongHelp
    (:name "wxToolBar_SetToolLongHelp")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (id ffi:int)
	      (str (ffi:c-pointer NIL)))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxToolBar_SetToolPacking
    (:name "wxToolBar_SetToolPacking")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (val ffi:int))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxToolBar_SetToolShortHelp
    (:name "wxToolBar_SetToolShortHelp")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (id ffi:int)
	      (str (ffi:c-pointer NIL)))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxToolBar_SetToolSeparation
    (:name "wxToolBar_SetToolSeparation")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (val ffi:int))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxToolBar_ToggleTool
    (:name "wxToolBar_ToggleTool")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (id ffi:int)
	      (val ffi:int))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxToolBar_AddTool2
    (:name "wxToolBar_AddTool2")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (toolId ffi:int)
	      (label ffi:c-string)
	      (bmp (ffi:c-pointer NIL))
	      (bmpDisabled (ffi:c-pointer NIL))
	      (itemKind ffi:int)
	      (shortHelp ffi:c-string)
	      (longHelp ffi:c-string))
  (:library +library-name+))

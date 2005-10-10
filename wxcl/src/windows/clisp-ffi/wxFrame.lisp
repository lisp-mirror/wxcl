;;;wxFrame.lisp
;;;License  : wxWindows License 3.1
;;;Author(s) : Surendra Singhi (surendra@asu.edu) 
;;;Copyright (C) 2005 Surendra Singhi 
;;;See the file LICENSE for information on usage and redistribution.
;;;
;;; $Header$
;;;

(defpackage :wxFrame
    (:use :common-lisp :ffi :wxCL)
  (:export :wxFrame_Create
	   :wxFrame_CreateStatusBar
	   :wxFrame_Maximize
	   :wxFrame_Restore
	   :wxFrame_Iconize
	   :wxFrame_IsMaximized
	   :wxFrame_IsIconized
	   :wxFrame_GetIcon
	   :wxFrame_SetIcon
	   :wxFrame_GetTitle
	   :wxFrame_SetTitle
	   :wxFrame_SetShape
	   :wxFrame_ShowFullScreen
	   :wxFrame_IsFullScreen
	   :wxFrame_Centre
	   :wxFrame_GetClientAreaOrigin_left
	   :wxFrame_GetClientAreaOrigin_top
	   :wxFrame_SetMenuBar
	   :wxFrame_GetMenuBar
	   :wxFrame_GetStatusBar
	   :wxFrame_SetStatusBar
	   :wxFrame_SetStatusText
	   :wxFrame_SetStatusWidths
	   :wxFrame_CreateToolBar
	   :wxFrame_GetToolBar
	   :wxFrame_SetToolBar
))

(in-package :wxFrame)

(ffi:default-foreign-language :stdc)

(ffi:def-c-type wxFrame NIL)



(ffi:def-call-out wxFrame_Create
    (:name "wxFrame_Create")
  (:arguments (_prt (ffi:c-pointer NIL))
	      (_id ffi:int)
	      (_txt ffi:c-string)
	      (_lft ffi:int)
	      (_top ffi:int)
	      (_wdt ffi:int)
	      (_hgt ffi:int)
	      (_stl ffi:int))
  (:return-type (ffi:c-pointer NIL) :NONE)
  (:library +library-name+))

(ffi:def-call-out wxFrame_CreateStatusBar
    (:name "wxFrame_CreateStatusBar")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (number ffi:int)
	      (style ffi:int))
  (:return-type (ffi:c-pointer NIL))
  (:library +library-name+))

(ffi:def-call-out wxFrame_Maximize
    (:name "wxFrame_Maximize")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxFrame_Restore
    (:name "wxFrame_Restore")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxFrame_Iconize
    (:name "wxFrame_Iconize")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxFrame_IsMaximized
    (:name "wxFrame_IsMaximized")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out wxFrame_IsIconized
    (:name "wxFrame_IsIconized")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out wxFrame_GetIcon
    (:name "wxFrame_GetIcon")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type (ffi:c-pointer NIL))
  (:library +library-name+))

(ffi:def-call-out wxFrame_SetIcon
    (:name "wxFrame_SetIcon")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (_icon (ffi:c-pointer NIL)))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxFrame_GetClientAreaOrigin_left
    (:name "wxFrame_GetClientAreaOrigin_left")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out wxFrame_GetClientAreaOrigin_top
    (:name "wxFrame_GetClientAreaOrigin_top")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out wxFrame_SetMenuBar
    (:name "wxFrame_SetMenuBar")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (menubar (ffi:c-pointer NIL)))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxFrame_GetMenuBar
    (:name "wxFrame_GetMenuBar")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type (ffi:c-pointer NIL))
  (:library +library-name+))

(ffi:def-call-out wxFrame_GetStatusBar
    (:name "wxFrame_GetStatusBar")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type (ffi:c-pointer NIL))
  (:library +library-name+))

(ffi:def-call-out wxFrame_SetStatusBar
    (:name "wxFrame_SetStatusBar")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (statBar (ffi:c-pointer NIL)))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxFrame_SetStatusText
    (:name "wxFrame_SetStatusText")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (_txt ffi:c-string)
	      (_number ffi:int))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxFrame_SetStatusWidths
    (:name "wxFrame_SetStatusWidths")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (_n ffi:int)
	      (_widths_field (ffi:c-array-ptr ffi:int)))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxFrame_CreateToolBar
    (:name "wxFrame_CreateToolBar")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (style ffi:long))
  (:return-type (ffi:c-pointer NIL))
  (:library +library-name+))

(ffi:def-call-out wxFrame_GetToolBar
    (:name "wxFrame_GetToolBar")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type (ffi:c-pointer NIL))
  (:library +library-name+))

(ffi:def-call-out wxFrame_SetToolBar
    (:name "wxFrame_SetToolBar")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (_toolbar (ffi:c-pointer NIL)))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxFrame_GetTitle
    (:name "wxFrame_GetTitle")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type ffi:c-string :malloc-free)
  (:library +library-name+))

(ffi:def-call-out wxFrame_SetTitle
    (:name "wxFrame_SetTitle")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (_txt ffi:c-string))
  (:library +library-name+))

(ffi:def-call-out wxFrame_SetShape
    (:name "wxFrame_SetShape")
  (:arguments (self (ffi:c-pointer wxFrame))
	      (region (ffi:c-pointer NIL)))
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out wxFrame_ShowFullScreen
    (:name "wxFrame_ShowFullScreen")
  (:arguments (self (ffi:c-pointer wxFrame))
	      (show ffi:int)
	      (style ffi:int))
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out wxFrame_IsFullScreen
    (:name "wxFrame_IsFullScreen")
  (:arguments (self (ffi:c-pointer wxFrame)))
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out wxFrame_Centre
    (:name "wxFrame_Centre")
  (:arguments (self (ffi:c-pointer wxFrame))
	      (orientation ffi:int))
  (:library +library-name+))


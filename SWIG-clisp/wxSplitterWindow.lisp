;;;wxSplitterWindow.lisp
;;;License  : wxWindows License 3.1
;;;Author(s) : Surendra Singhi (surendra@asu.edu) 
;;;Copyright (C) 2005 Surendra Singhi 
;;;See the file LICENSE for information on usage and redistribution.
;;;
;;; $Header$
;;;
;; This is an automatically generated file. 
;;Make changes as you feel are necessary (but remember if you try to regenerate this file, your changes will be lost). 

(defpackage :wxSplitterWindow
  (:use :common-lisp :ffi)
  (:export
	:wxSplitterWindow_Create
	:wxSplitterWindow_GetWindow1
	:wxSplitterWindow_GetWindow2
	:wxSplitterWindow_SetSplitMode
	:wxSplitterWindow_GetSplitMode
	:wxSplitterWindow_Initialize
	:wxSplitterWindow_SplitVertically
	:wxSplitterWindow_SplitHorizontally
	:wxSplitterWindow_Unsplit
	:wxSplitterWindow_ReplaceWindow
	:wxSplitterWindow_IsSplit
	:wxSplitterWindow_SetSashSize
	:wxSplitterWindow_SetBorderSize
	:wxSplitterWindow_GetSashSize
	:wxSplitterWindow_GetBorderSize
	:wxSplitterWindow_SetSashPosition
	:wxSplitterWindow_GetSashPosition
	:wxSplitterWindow_SetMinimumPaneSize
	:wxSplitterWindow_GetMinimumPaneSize))

(in-package :wxSplitterWindow)

(ffi:def-call-out wxSplitterWindow_Create
	(:name "wxSplitterWindow_Create")
	(:arguments (_prt (ffi:c-pointer NIL))
		(_id ffi:int)
		(_lft ffi:int)
		(_top ffi:int)
		(_wdt ffi:int)
		(_hgt ffi:int)
		(_stl ffi:int))
	(:return-type (ffi:c-pointer NIL))
	(:library +library-name+))

(ffi:def-call-out wxSplitterWindow_GetWindow1
	(:name "wxSplitterWindow_GetWindow1")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type (ffi:c-pointer NIL))
	(:library +library-name+))

(ffi:def-call-out wxSplitterWindow_GetWindow2
	(:name "wxSplitterWindow_GetWindow2")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type (ffi:c-pointer NIL))
	(:library +library-name+))

(ffi:def-call-out wxSplitterWindow_SetSplitMode
	(:name "wxSplitterWindow_SetSplitMode")
	(:arguments (_obj (ffi:c-pointer NIL))
		(mode ffi:int))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxSplitterWindow_GetSplitMode
	(:name "wxSplitterWindow_GetSplitMode")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxSplitterWindow_Initialize
	(:name "wxSplitterWindow_Initialize")
	(:arguments (_obj (ffi:c-pointer NIL))
		(window (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxSplitterWindow_SplitVertically
	(:name "wxSplitterWindow_SplitVertically")
	(:arguments (_obj (ffi:c-pointer NIL))
		(window1 (ffi:c-pointer NIL))
		(window2 (ffi:c-pointer NIL))
		(sashPosition ffi:int))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxSplitterWindow_SplitHorizontally
	(:name "wxSplitterWindow_SplitHorizontally")
	(:arguments (_obj (ffi:c-pointer NIL))
		(window1 (ffi:c-pointer NIL))
		(window2 (ffi:c-pointer NIL))
		(sashPosition ffi:int))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxSplitterWindow_Unsplit
	(:name "wxSplitterWindow_Unsplit")
	(:arguments (_obj (ffi:c-pointer NIL))
		(toRemove (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxSplitterWindow_ReplaceWindow
	(:name "wxSplitterWindow_ReplaceWindow")
	(:arguments (_obj (ffi:c-pointer NIL))
		(winOld (ffi:c-pointer NIL))
		(winNew (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxSplitterWindow_IsSplit
	(:name "wxSplitterWindow_IsSplit")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxSplitterWindow_SetSashSize
	(:name "wxSplitterWindow_SetSashSize")
	(:arguments (_obj (ffi:c-pointer NIL))
		(width ffi:int))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxSplitterWindow_SetBorderSize
	(:name "wxSplitterWindow_SetBorderSize")
	(:arguments (_obj (ffi:c-pointer NIL))
		(width ffi:int))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxSplitterWindow_GetSashSize
	(:name "wxSplitterWindow_GetSashSize")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxSplitterWindow_GetBorderSize
	(:name "wxSplitterWindow_GetBorderSize")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxSplitterWindow_SetSashPosition
	(:name "wxSplitterWindow_SetSashPosition")
	(:arguments (_obj (ffi:c-pointer NIL))
		(position ffi:int)
		(redraw ffi:int))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxSplitterWindow_GetSashPosition
	(:name "wxSplitterWindow_GetSashPosition")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxSplitterWindow_SetMinimumPaneSize
	(:name "wxSplitterWindow_SetMinimumPaneSize")
	(:arguments (_obj (ffi:c-pointer NIL))
		(min ffi:int))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxSplitterWindow_GetMinimumPaneSize
	(:name "wxSplitterWindow_GetMinimumPaneSize")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

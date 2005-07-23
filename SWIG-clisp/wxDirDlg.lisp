;;;wxDirDlg.lisp
;;;License   : BSD-style
;;;Author(s) : Surendra Singhi (surendra@asu.edu) 
;;;Copyright (C) 2005 Surendra Singhi 
;;;See the file LICENSE for information on usage and redistribution.
;;;
;;; $Header$
;;;
;; This is an automatically generated file. 
;;Make changes as you feel are necessary (but remember if you try to regenerate this file, your changes will be lost). 

(defpackage "wxDirDlg"
  (:use :common-lisp :ffi)
	:wxDirDialog_Create
	:wxDirDialog_SetMessage
	:wxDirDialog_SetPath
	:wxDirDialog_SetStyle
	:wxDirDialog_GetMessage
	:wxDirDialog_GetPath
	:wxDirDialog_GetStyle)

(in-package :wxDirDlg)

(ffi:def-call-out wxDirDialog_Create
	(:name "wxDirDialog_Create")
	(:arguments (_prt (ffi:c-pointer NIL))
		(_msg (ffi:c-pointer NIL))
		(_dir (ffi:c-pointer NIL))
		(_lft ffi:int)
		(_top ffi:int)
		(_stl ffi:int))
	(:return-type (ffi:c-pointer NIL))
	(:library +library-name+))

(ffi:def-call-out wxDirDialog_SetMessage
	(:name "wxDirDialog_SetMessage")
	(:arguments (_obj (ffi:c-pointer NIL))
		(msg (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxDirDialog_SetPath
	(:name "wxDirDialog_SetPath")
	(:arguments (_obj (ffi:c-pointer NIL))
		(pth (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxDirDialog_SetStyle
	(:name "wxDirDialog_SetStyle")
	(:arguments (_obj (ffi:c-pointer NIL))
		(style ffi:int))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxDirDialog_GetMessage
	(:name "wxDirDialog_GetMessage")
	(:arguments (_obj (ffi:c-pointer NIL))
		(_buf (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxDirDialog_GetPath
	(:name "wxDirDialog_GetPath")
	(:arguments (_obj (ffi:c-pointer NIL))
		(_buf (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxDirDialog_GetStyle
	(:name "wxDirDialog_GetStyle")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

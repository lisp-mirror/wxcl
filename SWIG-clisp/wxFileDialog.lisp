;;;wxFileDialog.lisp
;;;License  : wxWindows License 3.1
;;;Author(s) : Surendra Singhi (surendra@asu.edu) 
;;;Copyright (C) 2005 Surendra Singhi 
;;;See the file LICENSE for information on usage and redistribution.
;;;
;;; $Header$
;;;
;; This is an automatically generated file. 
;;Make changes as you feel are necessary (but remember if you try to regenerate this file, your changes will be lost). 

(defpackage :wxFileDialog
  (:use :common-lisp :ffi)
  (:export
	:wxFileDialog_Create
	:wxFileDialog_SetMessage
	:wxFileDialog_SetPath
	:wxFileDialog_SetDirectory
	:wxFileDialog_SetFilename
	:wxFileDialog_SetWildcard
	:wxFileDialog_SetStyle
	:wxFileDialog_SetFilterIndex
	:wxFileDialog_GetMessage
	:wxFileDialog_GetPath
	:wxFileDialog_GetPaths
	:wxFileDialog_GetDirectory
	:wxFileDialog_GetFilename
	:wxFileDialog_GetFilenames
	:wxFileDialog_GetWildcard
	:wxFileDialog_GetStyle
	:wxFileDialog_GetFilterIndex))

(in-package :wxFileDialog)

(ffi:def-call-out wxFileDialog_Create
	(:name "wxFileDialog_Create")
	(:arguments (_prt (ffi:c-pointer NIL))
		(_msg (ffi:c-pointer NIL))
		(_dir (ffi:c-pointer NIL))
		(_fle (ffi:c-pointer NIL))
		(_wcd (ffi:c-pointer NIL))
		(_lft ffi:int)
		(_top ffi:int)
		(_stl ffi:int))
	(:return-type (ffi:c-pointer NIL))
	(:library +library-name+))

(ffi:def-call-out wxFileDialog_SetMessage
	(:name "wxFileDialog_SetMessage")
	(:arguments (_obj (ffi:c-pointer NIL))
		(message (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxFileDialog_SetPath
	(:name "wxFileDialog_SetPath")
	(:arguments (_obj (ffi:c-pointer NIL))
		(path (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxFileDialog_SetDirectory
	(:name "wxFileDialog_SetDirectory")
	(:arguments (_obj (ffi:c-pointer NIL))
		(dir (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxFileDialog_SetFilename
	(:name "wxFileDialog_SetFilename")
	(:arguments (_obj (ffi:c-pointer NIL))
		(name (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxFileDialog_SetWildcard
	(:name "wxFileDialog_SetWildcard")
	(:arguments (_obj (ffi:c-pointer NIL))
		(wildCard (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxFileDialog_SetStyle
	(:name "wxFileDialog_SetStyle")
	(:arguments (_obj (ffi:c-pointer NIL))
		(style ffi:int))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxFileDialog_SetFilterIndex
	(:name "wxFileDialog_SetFilterIndex")
	(:arguments (_obj (ffi:c-pointer NIL))
		(filterIndex ffi:int))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxFileDialog_GetMessage
	(:name "wxFileDialog_GetMessage")
	(:arguments (_obj (ffi:c-pointer NIL))
		(_buf (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxFileDialog_GetPath
	(:name "wxFileDialog_GetPath")
	(:arguments (_obj (ffi:c-pointer NIL))
		(_buf (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxFileDialog_GetPaths
	(:name "wxFileDialog_GetPaths")
	(:arguments (_obj (ffi:c-pointer NIL))
		(paths (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxFileDialog_GetDirectory
	(:name "wxFileDialog_GetDirectory")
	(:arguments (_obj (ffi:c-pointer NIL))
		(_buf (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxFileDialog_GetFilename
	(:name "wxFileDialog_GetFilename")
	(:arguments (_obj (ffi:c-pointer NIL))
		(_buf (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxFileDialog_GetFilenames
	(:name "wxFileDialog_GetFilenames")
	(:arguments (_obj (ffi:c-pointer NIL))
		(paths (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxFileDialog_GetWildcard
	(:name "wxFileDialog_GetWildcard")
	(:arguments (_obj (ffi:c-pointer NIL))
		(_buf (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxFileDialog_GetStyle
	(:name "wxFileDialog_GetStyle")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxFileDialog_GetFilterIndex
	(:name "wxFileDialog_GetFilterIndex")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

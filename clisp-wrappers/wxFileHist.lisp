;;;wxFileHist.lisp
;;;License  : GNU General Public License (GPL)
;;;Author(s) : Surendra Singhi (surendra@asu.edu) 
;;;Copyright (C) 2005 Surendra Singhi 
;;;See the file LICENSE for information on usage and redistribution.
;;;
;;; $Header$
;;;

(defpackage :wxFileHist
  (:use :common-lisp :ffi :wxCL)
  (:export
	:wxFileHistory_Create
	:wxFileHistory_Delete
	:wxFileHistory_AddFileToHistory
	:wxFileHistory_RemoveFileFromHistory
	:wxFileHistory_GetMaxFiles
	:wxFileHistory_UseMenu
	:wxFileHistory_RemoveMenu
	:wxFileHistory_Load
	:wxFileHistory_Save
	:wxFileHistory_AddFilesToMenu
	:wxFileHistory_GetHistoryFile
	:wxFileHistory_GetCount
	:wxFileHistory_GetNoHistoryFiles
	:wxFileHistory_GetMenus))

(in-package :wxFileHist)

(ffi:default-foreign-language :stdc)

(ffi:def-call-out wxFileHistory_Create
	(:name "wxFileHistory_Create")
	(:arguments (maxFiles ffi:int))
	(:return-type (ffi:c-pointer NIL))
	(:library +library-name+))

(ffi:def-call-out wxFileHistory_Delete
	(:name "wxFileHistory_Delete")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxFileHistory_AddFileToHistory
	(:name "wxFileHistory_AddFileToHistory")
	(:arguments (_obj (ffi:c-pointer NIL))
		(file (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxFileHistory_RemoveFileFromHistory
	(:name "wxFileHistory_RemoveFileFromHistory")
	(:arguments (_obj (ffi:c-pointer NIL))
		(i ffi:int))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxFileHistory_GetMaxFiles
	(:name "wxFileHistory_GetMaxFiles")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxFileHistory_UseMenu
	(:name "wxFileHistory_UseMenu")
	(:arguments (_obj (ffi:c-pointer NIL))
		(menu (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxFileHistory_RemoveMenu
	(:name "wxFileHistory_RemoveMenu")
	(:arguments (_obj (ffi:c-pointer NIL))
		(menu (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxFileHistory_Load
	(:name "wxFileHistory_Load")
	(:arguments (_obj (ffi:c-pointer NIL))
		(config (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxFileHistory_Save
	(:name "wxFileHistory_Save")
	(:arguments (_obj (ffi:c-pointer NIL))
		(config (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxFileHistory_AddFilesToMenu
	(:name "wxFileHistory_AddFilesToMenu")
	(:arguments (_obj (ffi:c-pointer NIL))
		(menu (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxFileHistory_GetHistoryFile
	(:name "wxFileHistory_GetHistoryFile")
	(:arguments (_obj (ffi:c-pointer NIL))
		(i ffi:int)
		(_buf (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxFileHistory_GetCount
	(:name "wxFileHistory_GetCount")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxFileHistory_GetNoHistoryFiles
	(:name "wxFileHistory_GetNoHistoryFiles")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxFileHistory_GetMenus
	(:name "wxFileHistory_GetMenus")
	(:arguments (_obj (ffi:c-pointer NIL))
		(_ref (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

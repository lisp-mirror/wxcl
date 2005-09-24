;;;wxCL.lisp
;;;License  : wxWindows License 3.1
;;;Author(s) : Surendra Singhi (surendra@asu.edu) 
;;;Copyright (C) 2005 Surendra Singhi 
;;;See the file LICENSE for information on usage and redistribution.
;;;
;;; $Header$
;;;

(defpackage :wxCL
    (:use :common-lisp :ffi)
  (:export :+library-name+
	   :wxVersionNumber
	   :wxcBell
	   :wxIsDefined
	   :wxcMalloc
	   :wxcFree
	   :LogError
	   :LogFatalError
	   :LogWarning
	   :LogMessage
	   :LogVerbose
	   :LogStatus
	   :LogSysError
	   :LogDebug
	   :LogTrace
	   :wxcWakeUpIdle
	   :wxGetColourFromUser
	   :wxGetFontFromUser
	   :wxGetPasswordFromUser
	   :wxGetTextFromUser
	   :wxGetNumberFromUser
	   :make-SortData
	   :SortData-id
	   :SortData-closure
	   :wxObject_IsKindOf
	   :wxObject_GetClassInfo
	   :wxObject_IsScrolledWindow
	   :wxObject_Delete
	   :wxString_Create
	   :wxString_CreateLen
	   :wxString_Delete
	   :wxString_GetString
	   :wxClassInfo_FindClass
	   :wxClassInfo_GetClassNameEx
	   :wxClassInfo_GetBaseClassName1
	   :wxClassInfo_GetBaseClassName2
	   :wxClassInfo_IsKindOfEx
	   :wxClassInfo_GetSize
	   :wxStreamBase_Delete))

(in-package :wxCL)

(eval-when (:compile-toplevel :load-toplevel :execute)
  (defconstant +library-name+ "../miscellaneous/wxc-msw2.6.2.dll"))

(ffi:default-foreign-language :stdc)

(ffi:def-c-type wxString NIL)

(ffi:def-call-out wxVersionNumber
    (:name "wxVersionNumber")
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out wxcBell
    (:name "wxcBell")
  (:library +library-name+))

(ffi:def-call-out wxIsDefined
    (:name "wxIsDefined")
  (:arguments (s ffi:c-string))
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out wxcMalloc
    (:name "wxcMalloc")
  (:arguments (size ffi:int))
  (:return-type (ffi:c-pointer NIL))
  (:library +library-name+))

(ffi:def-call-out wxcFree
    (:name "wxcFree")
  (:arguments (p (ffi:c-pointer NIL)))
  (:library +library-name+))

(ffi:def-call-out LogError
    (:name "LogError")
  (:arguments (_msg ffi:c-string))
  (:library +library-name+))

(ffi:def-call-out LogFatalError
    (:name "LogFatalError")
  (:arguments (_msg ffi:c-string))
  (:library +library-name+))

(ffi:def-call-out LogWarning
    (:name "LogWarning")
  (:arguments (_msg ffi:c-string))
  (:library +library-name+))

(ffi:def-call-out LogMessage
    (:name "LogMessage")
  (:arguments (_msg ffi:c-string))
  (:library +library-name+))

(ffi:def-call-out LogVerbose
    (:name "LogVerbose")
  (:arguments (_msg ffi:c-string))
  (:library +library-name+))

(ffi:def-call-out LogStatus
    (:name "LogStatus")
  (:arguments (_msg ffi:c-string))
  (:library +library-name+))

(ffi:def-call-out LogSysError
    (:name "LogSysError")
  (:arguments (_msg ffi:c-string))
  (:library +library-name+))

(ffi:def-call-out LogDebug
    (:name "LogDebug")
  (:arguments (_msg ffi:c-string))
  (:library +library-name+))

(ffi:def-call-out LogTrace
    (:name "LogTrace")
  (:arguments (mask ffi:c-string)
	      (_msg ffi:c-string))
  (:library +library-name+))

(ffi:def-call-out wxcWakeUpIdle
    (:name "wxcWakeUpIdle")
  (:library +library-name+))

(ffi:def-call-out wxObject_IsKindOf
    (:name "wxObject_IsKindOf")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (classInfo (ffi:c-pointer NIL)))
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out wxObject_GetClassInfo
    (:name "wxObject_GetClassInfo")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type (ffi:c-pointer NIL))
  (:library +library-name+))

(ffi:def-call-out wxObject_IsScrolledWindow
    (:name "wxObject_IsScrolledWindow")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out wxObject_Delete
    (:name "wxObject_Delete")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:library +library-name+))

(ffi:def-call-out wxString_Create
    (:name "wxString_Create")
  (:arguments (buffer ffi:c-string))
  (:return-type (ffi:c-pointer wxString))
  (:library +library-name+))

(ffi:def-call-out wxString_CreateLen
    (:name "wxString_CreateLen")
  (:arguments (buffer ffi:c-string)
	      (len ffi:int))
  (:return-type (ffi:c-pointer wxString))
  (:library +library-name+))

(ffi:def-call-out wxString_Delete
    (:name "wxString_Delete")
  (:arguments (s (ffi:c-pointer wxString)))
  (:library +library-name+))

(ffi:def-call-out wxString_GetString
    (:name "wxString_GetString")
  (:arguments (s (ffi:c-pointer wxString))
	      (buffer ffi:c-string))
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out wxClassInfo_FindClass
    (:name "wxClassInfo_FindClass")
  (:arguments (_txt ffi:c-string))
  (:return-type (ffi:c-pointer NIL))
  (:library +library-name+))

(ffi:def-call-out wxClassInfo_GetClassNameEx
    (:name "wxClassInfo_GetClassNameEx")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (_buf (ffi:c-pointer NIL)))
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out wxClassInfo_GetBaseClassName1
    (:name "wxClassInfo_GetBaseClassName1")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (_buf (ffi:c-pointer NIL)))
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out wxClassInfo_GetBaseClassName2
    (:name "wxClassInfo_GetBaseClassName2")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (_buf (ffi:c-pointer NIL)))
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out wxClassInfo_IsKindOfEx
    (:name "wxClassInfo_IsKindOfEx")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (classInfo (ffi:c-pointer NIL)))
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out wxClassInfo_GetSize
    (:name "wxClassInfo_GetSize")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type ffi:int)
  (:library +library-name+))


(ffi:def-call-out wxStreamBase_Delete
    (:name "wxStreamBase_Delete")
  (:arguments (stream (ffi:c-pointer NIL)))
  (:library +library-name+))


(ffi:def-call-out wxGetColourFromUser
    (:name "wxGetColourFromUser")
  (:arguments (parent (ffi:c-pointer NIL))
	      (colInit (ffi:c-pointer NIL))
	      (colour (ffi:c-pointer NIL)))
  (:library +library-name+))

(ffi:def-call-out wxGetFontFromUser
    (:name "wxGetFontFromUser")
  (:arguments (parent (ffi:c-pointer NIL))
	      (fontInit (ffi:c-pointer NIL))
	      (font (ffi:c-pointer NIL)))
  (:library +library-name+))

(ffi:def-call-out wxGetPasswordFromUser
    (:name "wxGetPasswordFromUser")
  (:arguments (message ffi:c-string)
	      (caption ffi:c-string)
	      (defaultText ffi:c-string)
	      (parent (ffi:c-pointer NIL))
	      (_buf ffi:c-string))
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out wxGetTextFromUser
    (:name "wxGetTextFromUser")
  (:arguments (message ffi:c-string)
	      (caption ffi:c-string)
	      (defaultText ffi:c-string)
	      (parent (ffi:c-pointer NIL))
	      (x ffi:int)
	      (y ffi:int)
	      (center ffi:int)
	      (_buf ffi:c-string))
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out wxGetNumberFromUser
    (:name "wxGetNumberFromUser")
  (:arguments (message ffi:c-string)
	      (prompt ffi:c-string)
	      (caption ffi:c-string)
	      (value ffi:long)
	      (min ffi:long)
	      (max ffi:long)
	      (parent (ffi:c-pointer NIL))
	      (x ffi:int)
	      (y ffi:int))
  (:return-type ffi:long)
  (:library +library-name+))


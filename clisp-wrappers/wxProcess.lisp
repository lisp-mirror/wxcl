;;;wxProcess.lisp
;;;License  : GNU General Public License (GPL)
;;;Author(s) : Surendra Singhi (surendra@asu.edu) 
;;;Copyright (C) 2005 Surendra Singhi 
;;;See the file LICENSE for information on usage and redistribution.
;;;
;;; $Header$
;;;

(defpackage :wxProcess
    (:use :common-lisp :ffi :wxCL)
  (:export :wxProcess_CreateDefault
	   :wxProcess_CreateRedirect
	   :wxProcess_Delete
	   :wxProcess_Redirect
	   :wxProcess_IsErrorAvailable
	   :wxProcess_IsInputAvailable
	   :wxProcess_IsInputOpened
	   :wxProcess_Open
	   :wxProcess_IsRedirected
	   :wxProcess_Detach
	   :wxProcess_GetInputStream
	   :wxProcess_GetErrorStream
	   :wxProcess_GetOutputStream
	   :wxProcess_CloseOutput
	   :wxProcessEvent_GetPid
	   :wxProcessEvent_GetExitCode
	   :wxStreamBase_GetLastError
	   :wxStreamBase_IsOk
	   :wxStreamBase_GetSize
	   :wxOutputStream_Delete
	   :wxOutputStream_PutC
	   :wxOutputStream_Write
	   :wxOutputStream_Seek
	   :wxOutputStream_Tell
	   :wxOutputStream_LastWrite
	   :wxOutputStream_Sync
	   :wxInputStream_Delete
	   :wxInputStream_Eof
	   :wxInputStream_Peek
	   :wxInputStream_GetC
	   :wxInputStream_Read
	   :wxInputStream_SeekI
	   :wxInputStream_Tell
	   :wxInputStream_LastRead
	   :wxInputStream_UngetBuffer
	   :wxInputStream_Ungetch
	   :wxKill))

(in-package :wxProcess)

(ffi:default-foreign-language :stdc)

(def-c-type wxProcess NIL)

(ffi:def-call-out wxProcess_CreateDefault
    (:name "wxProcess_CreateDefault")
  (:arguments (_prt (ffi:c-pointer NIL))
	      (_id ffi:int))
  (:return-type (ffi:c-pointer NIL))
  (:library +library-name+))

(ffi:def-call-out wxProcess_CreateRedirect
    (:name "wxProcess_CreateRedirect")
  (:arguments (_prt (ffi:c-pointer NIL))
	      (_rdr ffi:int))
  (:return-type (ffi:c-pointer NIL))
  (:library +library-name+))

(ffi:def-call-out wxProcess_Delete
    (:name "wxProcess_Delete")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxProcess_Redirect
    (:name "wxProcess_Redirect")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxProcess_IsRedirected
    (:name "wxProcess_IsRedirected")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out wxProcess_Detach
    (:name "wxProcess_Detach")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxProcess_GetInputStream
    (:name "wxProcess_GetInputStream")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type (ffi:c-pointer NIL))
  (:library +library-name+))

(ffi:def-call-out wxProcess_GetErrorStream
    (:name "wxProcess_GetErrorStream")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type (ffi:c-pointer NIL))
  (:library +library-name+))

(ffi:def-call-out wxProcess_GetOutputStream
    (:name "wxProcess_GetOutputStream")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type (ffi:c-pointer NIL))
  (:library +library-name+))

(ffi:def-call-out wxProcess_CloseOutput
    (:name "wxProcess_CloseOutput")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxProcessEvent_GetPid
    (:name "wxProcessEvent_GetPid")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out wxProcessEvent_GetExitCode
    (:name "wxProcessEvent_GetExitCode")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out wxStreamBase_GetLastError
    (:name "wxStreamBase_GetLastError")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out wxStreamBase_IsOk
    (:name "wxStreamBase_IsOk")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out wxStreamBase_GetSize
    (:name "wxStreamBase_GetSize")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out wxOutputStream_Delete
    (:name "wxOutputStream_Delete")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxOutputStream_PutC
    (:name "wxOutputStream_PutC")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (c character))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxOutputStream_Write
    (:name "wxOutputStream_Write")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (buffer (ffi:c-pointer NIL))
	      (size ffi:int))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxOutputStream_Seek
    (:name "wxOutputStream_Seek")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (pos ffi:int)
	      (mode ffi:int))
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out wxOutputStream_Tell
    (:name "wxOutputStream_Tell")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out wxOutputStream_LastWrite
    (:name "wxOutputStream_LastWrite")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out wxOutputStream_Sync
    (:name "wxOutputStream_Sync")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxInputStream_Delete
    (:name "wxInputStream_Delete")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxInputStream_Eof
    (:name "wxInputStream_Eof")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out wxInputStream_Peek
    (:name "wxInputStream_Peek")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type character)
  (:library +library-name+))

(ffi:def-call-out wxInputStream_GetC
    (:name "wxInputStream_GetC")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type character)
  (:library +library-name+))

(ffi:def-call-out wxInputStream_Read
    (:name "wxInputStream_Read")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (buffer (ffi:c-pointer NIL))
	      (size ffi:int))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxInputStream_SeekI
    (:name "wxInputStream_SeekI")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (pos ffi:int)
	      (mode ffi:int))
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out wxInputStream_Tell
    (:name "wxInputStream_Tell")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out wxInputStream_LastRead
    (:name "wxInputStream_LastRead")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out wxInputStream_UngetBuffer
    (:name "wxInputStream_UngetBuffer")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (buffer (ffi:c-pointer NIL))
	      (size ffi:int))
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out wxInputStream_Ungetch
    (:name "wxInputStream_Ungetch")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (c character))
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out wxProcess_IsErrorAvailable
    (:name "wxProcess_IsErrorAvailable")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out wxProcess_IsInputAvailable
    (:name "wxProcess_IsInputAvailable")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out wxProcess_IsInputOpened
    (:name "wxProcess_IsInputOpened")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out wxProcess_Open
    (:name "wxProcess_Open")
  (:arguments (cmd ffi:c-string)
	      (flags ffi:int))
  (:return-type (ffi:c-pointer wxProcess))
  (:library +library-name+))

(ffi:def-call-out wxKill
	(:name "wxKill")
	(:arguments (pid ffi:int)
		    (signal (ffi:C-pointer NIL)))
	(:return-type (ffi:C-pointer NIL))
	(:library +library-name+))

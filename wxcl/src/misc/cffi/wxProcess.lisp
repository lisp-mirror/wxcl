;;;wxProcess.lisp
;;;License  : wxWindows License 3.1
;;;Author(s) : Surendra Singhi (surendra@asu.edu) 
;;;Copyright (C) 2005 Surendra Singhi 
;;;See the file LICENSE for information on usage and redistribution.
;;;
;;; $Header$
;;;

(in-package :wxcl-misc)

(defcfun ("wxProcess_CreateDefault" wxProcess_CreateDefault) :pointer
  (_prt :pointer)
  (_id :int))

(defcfun ("wxProcess_CreateRedirect" wxProcess_CreateRedirect) :pointer
  (_prt :pointer)
  (_rdr :int))

(defcfun ("wxProcess_Delete" wxProcess_Delete) :void
  (_obj :pointer))

(defcfun ("wxProcess_Redirect" wxProcess_Redirect) :void
  (_obj :pointer))

(defcfun ("wxProcess_IsRedirected" wxProcess_IsRedirected) :int
  (_obj :pointer))

(defcfun ("wxProcess_Detach" wxProcess_Detach) :void
  (_obj :pointer))

(defcfun ("wxProcess_GetInputStream" wxProcess_GetInputStream) :pointer
  (_obj :pointer))

(defcfun ("wxProcess_GetErrorStream" wxProcess_GetErrorStream) :pointer
  (_obj :pointer))

(defcfun ("wxProcess_GetOutputStream" wxProcess_GetOutputStream) :pointer
  (_obj :pointer))

(defcfun ("wxProcess_CloseOutput" wxProcess_CloseOutput) :void
  (_obj :pointer))

(defcfun ("wxProcessEvent_GetPid" wxProcessEvent_GetPid) :int
  (_obj :pointer))

(defcfun ("wxProcessEvent_GetExitCode" wxProcessEvent_GetExitCode) :int
  (_obj :pointer))

(defcfun ("wxStreamBase_GetLastError" wxStreamBase_GetLastError) :int
  (_obj :pointer))

(defcfun ("wxStreamBase_IsOk" wxStreamBase_IsOk) :int
  (_obj :pointer))

(defcfun ("wxStreamBase_GetSize" wxStreamBase_GetSize) :int
  (_obj :pointer))

(defcfun ("wxOutputStream_Delete" wxOutputStream_Delete) :void
  (_obj :pointer))

(defcfun ("wxOutputStream_PutC" wxOutputStream_PutC) :void
  (_obj :pointer)
  (c :char))

(defcfun ("wxOutputStream_Write" wxOutputStream_Write) :void
  (_obj :pointer)
  (buffer :pointer)
  (size :int))

(defcfun ("wxOutputStream_Seek" wxOutputStream_Seek) :int
  (_obj :pointer)
  (pos :int)
  (mode :int))

(defcfun ("wxOutputStream_Tell" wxOutputStream_Tell) :int
  (_obj :pointer))

(defcfun ("wxOutputStream_LastWrite" wxOutputStream_LastWrite) :int
  (_obj :pointer))

(defcfun ("wxOutputStream_Sync" wxOutputStream_Sync) :void
  (_obj :pointer))

(defcfun ("wxInputStream_Delete" wxInputStream_Delete) :void
  (_obj :pointer))

(defcfun ("wxInputStream_Eof" wxInputStream_Eof) :int
  (_obj :pointer))

(defcfun ("wxInputStream_Peek" wxInputStream_Peek) :char
  (_obj :pointer))

(defcfun ("wxInputStream_GetC" wxInputStream_GetC) :char
  (_obj :pointer))

(defcfun ("wxInputStream_Read" wxInputStream_Read) :void
  (_obj :pointer)
  (buffer :pointer)
  (size :int))

(defcfun ("wxInputStream_SeekI" wxInputStream_SeekI) :int
  (_obj :pointer)
  (pos :int)
  (mode :int))

(defcfun ("wxInputStream_Tell" wxInputStream_Tell) :int
  (_obj :pointer))

(defcfun ("wxInputStream_LastRead" wxInputStream_LastRead) :int
  (_obj :pointer))

(defcfun ("wxInputStream_UngetBuffer" wxInputStream_UngetBuffer) :int
  (_obj :pointer)
  (buffer :pointer)
  (size :int))

(defcfun ("wxInputStream_Ungetch" wxInputStream_Ungetch) :int
  (_obj :pointer)
  (c :char))

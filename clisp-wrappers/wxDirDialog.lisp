;;;wxDirDialog.lisp
;;;License   : BSD-style
;;;Author(s) : Surendra Singhi (surendra@asu.edu) 
;;;Copyright (C) 2005 Surendra Singhi 
;;;See the file LICENSE for information on usage and redistribution.
;;;
;;; $Header$
;;;

(defpackage :wxDirDialog
    (:use :common-lisp :ffi :wxCL :wxWindow :wxDialog)
  (:export :wxDirDialog_Create
	   :wxDirDialog_SetMessage
	   :wxDirDialog_SetPath
	   :wxDirDialog_SetStyle
	   :wxDirDialog_GetMessage
	   :wxDirDialog_GetPath
	   :wxDirDialog_GetStyle
	   :wxcl-get-dir))

(in-package :wxDirDialog)

(ffi:default-foreign-language :stdc)

(defconstant wxID_OK 5100)
(defconstant wxID_CANCEL 5101)

(ffi:def-call-out wxDirDialog_Create
    (:name "wxDirDialog_Create")
  (:arguments (_prt (ffi:c-pointer NIL))
	      (_msg ffi:c-string)
	      (_dir ffi:c-string)
	      (_lft ffi:int)
	      (_top ffi:int)
	      (_stl ffi:int))
  (:return-type (ffi:c-pointer NIL))
  (:library +library-name+))

(ffi:def-call-out wxDirDialog_SetMessage
    (:name "wxDirDialog_SetMessage")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (msg ffi:c-string))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxDirDialog_SetPath
    (:name "wxDirDialog_SetPath")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (pth ffi:c-string))
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
	      (_buf (ffi:c-pointer character)))
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out wxDirDialog_GetStyle
    (:name "wxDirDialog_GetStyle")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type ffi:int)
  (:library +library-name+))

(defmacro with-dir-dialog ((dialog parent &key (message "Choose a directory") (dir "")
				   (left -1) (top -1) (style 0)) &body body)
  `(let (,dialog) 
    (unwind-protect
	 (progn
	   (setf ,dialog (wxDirDialog_Create ,parent ,message ,dir ,left ,top ,style))
	   ,@body)
      (wxWindow_destroy ,dialog))))

(defun wxcl-get-dir (parent &key (message "Choose a directory") (dir "")  (left -1) (top -1) (style 0) (max_length 1024))
  (with-dir-dialog (dialog parent :message message :dir dir :left left :top top :style style)
    (when (= (wxDialog_ShowModal dialog) wxID_OK)
      (with-c-var (directory `(c-array character ,max_length))
;	(print "here")
	(setf max_length (wxDirDialog_GetPath parent (c-var-address directory)))
	;(printf max_length)
	;(print directory)
;	(print "here1")
	(unless (= max_length 0)
	  (OFFSET directory 0 `(c-array character ,max_length)))
	))))
; ;        (print "here")))
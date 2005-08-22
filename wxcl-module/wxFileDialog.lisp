;;;wxFileDialog.lisp
;;;License  : GNU General Public License (GPL)
;;;Author(s) : Surendra Singhi (surendra@asu.edu) 
;;;Copyright (C) 2005 Surendra Singhi 
;;;See the file LICENSE for information on usage and redistribution.
;;;
;;; $Header$
;;;

(defpackage :wxFileDialog
    (:use :common-lisp :ffi :wxCL :wxWindow :wxDialog)
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
   :wxFileDialog_GetFilterIndex
   :with-file-dialog
   :wxcl-get-filepath
   :wxOPEN
   :wxSAVE
   :wxHIDE_READONLY
   :wxMULTIPLE
   :wxCHANGE_DIR
   :wxOVERWRITE_PROMPT
   :wxFILE_MUST_EXIST
   ))

(in-package :wxFileDialog)

(ffi:default-foreign-language :stdc)

(ffi:c-lines "#include <wxc.h>~%")

(ffi:def-c-type wxFileDialog nil)

(defconstant wxOPEN 1)
(defconstant wxSAVE 2)
(defconstant wxHIDE_READONLY 8)
(defconstant wxMULTIPLE 32)
(defconstant wxCHANGE_DIR 64)
(defconstant wxOVERWRITE_PROMPT 4)
(defconstant wxFILE_MUST_EXIST 16)
(defconstant wxID_OK 5100)
(defconstant wxID_CANCEL 5101)

(ffi:def-call-out wxFileDialog_Create
    (:name "wxFileDialog_Create")
  (:arguments (_prt (ffi:c-pointer NIL))
	      (_msg ffi:c-string)
	      (_dir ffi:c-string)
	      (_fle ffi:c-string)
	      (_wcd ffi:c-string)
	      (_lft ffi:int)
	      (_top ffi:int)
	      (_stl ffi:int))
  (:return-type (ffi:c-pointer wxFileDialog) :NONE)
  ) ;; (:library +library-name+))

(ffi:def-call-out wxFileDialog_SetMessage
    (:name "wxFileDialog_SetMessage")
  (:arguments (_obj (ffi:c-pointer wxFileDialog))
	      (message ffi:c-string))
  ) ;; (:library +library-name+))

(ffi:def-call-out wxFileDialog_SetPath
    (:name "wxFileDialog_SetPath")
  (:arguments (_obj (ffi:c-pointer wxFileDialog))
	      (path ffi:c-string))
  ) ;; (:library +library-name+))

(ffi:def-call-out wxFileDialog_SetDirectory
    (:name "wxFileDialog_SetDirectory")
  (:arguments (_obj (ffi:c-pointer wxFileDialog))
	      (dir ffi:c-string))
  ) ;; (:library +library-name+))

(ffi:def-call-out wxFileDialog_SetFilename
    (:name "wxFileDialog_SetFilename")
  (:arguments (_obj (ffi:c-pointer wxFileDialog))
	      (name ffi:c-string))
  ) ;; (:library +library-name+))

(ffi:def-call-out wxFileDialog_SetWildcard
    (:name "wxFileDialog_SetWildcard")
  (:arguments (_obj (ffi:c-pointer wxFileDialog))
	      (wildCard ffi:c-string))
  ) ;; (:library +library-name+))

(ffi:def-call-out wxFileDialog_SetStyle
    (:name "wxFileDialog_SetStyle")
  (:arguments (_obj (ffi:c-pointer wxFileDialog))
	      (style ffi:int))
  ) ;; (:library +library-name+))

(ffi:def-call-out wxFileDialog_SetFilterIndex
    (:name "wxFileDialog_SetFilterIndex")
  (:arguments (_obj (ffi:c-pointer wxFileDialog))
	      (filterIndex ffi:int))
  ) ;; (:library +library-name+))



;;Redeclaring using variable length array,
;;C-code can be improved to handle such
;;types of declaration 

(ffi:def-call-out _wxFileDialog_GetMessage
    (:name "wxFileDialog_GetMessage")
  (:arguments (_obj (ffi:c-pointer wxFileDialog))
	      (_buf (ffi:c-pointer character)))
  (:return-type ffi:int)
  ) ;; (:library +library-name+))

(defun wxFileDialog_GetMessage (_obj &optional (max_length 512))
  (with-c-var (message `(c-array-max character ,max_length))
    (_wxFileDialog_GetMessage _obj (c-var-address message))
    message))

;;Redeclaring using variable length array,
;;C-code can be improved to handle such
;;types of declaration 
(ffi:def-call-out _wxFileDialog_GetPath
    (:name "wxFileDialog_GetPath")
  (:arguments (_obj (ffi:c-pointer wxFileDialog))
	      (_buf (ffi:c-pointer character)))
  (:return-type ffi:int)
  ) ;; (:library +library-name+))

(defun wxFileDialog_GetPath (_obj &optional (max_length 1024))
  (with-c-var (path `(c-array-max character ,max_length))
    (_wxFileDialog_GetPath _obj (c-var-address path))
    path))

;;the C code for this function is severly broken,
;;needs to be fixed, not very scalable
;;
(ffi:def-call-out _wxFileDialog_GetPaths
    (:name "wxFileDialog_GetPaths")
  (:arguments (_obj (ffi:c-pointer wxFileDialog))
	      (paths (ffi:c-pointer (ffi:c-array-ptr character))))
  (:return-type ffi:int)
  ) ;; (:library +library-name+))


(defun wxFileDialog_GetPaths (_obj &optional (nos 256) (max_length 512))
  (with-c-var (path `(c-array-max character '(,nos ,max_length)))
    (setf nos (_wxFileDialog_GetPaths _obj (c-var-address path)))
    (unless (= nos 0)
      (values nos path))))
      
;;      (OFFSET path 0 `(c-array character ,max_length)))))

;;Redeclaring using variable length array,
;;C-code can be improved to handle such
;;types of declaration 

(ffi:def-call-out _wxFileDialog_GetDirectory
    (:name "wxFileDialog_GetDirectory")
  (:arguments (_obj (ffi:c-pointer wxFileDialog))
	      (_buf (ffi:c-pointer character)))
  (:return-type ffi:int)
  ) ;; (:library +library-name+))

(defun wxFileDialog_GetDirectory (_obj &optional (max_length 512))
  (with-c-var (directory `(c-array-max character ,max_length))
    (_wxFileDialog_GetDirectory _obj (c-var-address directory))
    directory))

;;Redeclaring using variable length array,
;;C-code can be improved to handle such
;;types of declaration

(ffi:def-call-out _wxFileDialog_GetFileName
    (:name "wxFileDialog_GetFilename")
  (:arguments (_obj (ffi:c-pointer wxFileDialog))
	      (_buf (ffi:c-pointer character)))
  (:return-type ffi:int)
  ) ;; (:library +library-name+))

(defun wxFileDialog_GetFilename (_obj &optional (max_length 256))
  (with-c-var (filename `(c-array-max character ,max_length))
    (_wxFileDialog_GetFileName _obj (c-var-address filename))
    filename))


;;the C code for this function is severly broken,
;;needs to be fixed, not very scalable

(ffi:def-call-out _wxFileDialog_GetFilenames
    (:name "wxFileDialog_GetFilenames")
  (:arguments (_obj (ffi:c-pointer wxFileDialog))
	      (names (ffi:c-pointer (ffi:c-array-ptr character))))
  (:return-type ffi:int)
  ) ;; (:library +library-name+))

(defun wxFileDialog_GetFileNames (_obj &optional (nos 256) (max_length 512))
  (with-c-var (files `(c-array-max character '(,nos ,max_length)))
    (setf nos (_wxFileDialog_GetFileNames _obj (c-var-address files)))
    (unless (= nos 0)
      (values nos files))))

;;Redeclaring using variable length array,
;;C-code can be improved to handle such
;;types of declaration 

(ffi:def-call-out _wxFileDialog_GetWildcard
    (:name "wxFileDialog_GetWildcard")
  (:arguments (_obj (ffi:c-pointer wxFileDialog))
	      (_buf (ffi:c-pointer character)))
  (:return-type ffi:int)
  ) ;; (:library +library-name+))

(defun wxFileDialog_GetWildcard (_obj &optional (max_length 256))
  (with-c-var (wildcard `(c-array character ,max_length))
    (_wxFileDialog_GetWildcard _obj (c-var-address wildcard))
    wildcard))

(ffi:def-call-out wxFileDialog_GetStyle
    (:name "wxFileDialog_GetStyle")
  (:arguments (_obj (ffi:c-pointer wxFileDialog)))
  (:return-type ffi:int)
  ) ;; (:library +library-name+))

(ffi:def-call-out wxFileDialog_GetFilterIndex
    (:name "wxFileDialog_GetFilterIndex")
  (:arguments (_obj (ffi:c-pointer wxFileDialog)))
  (:return-type ffi:int)
  ) ;; (:library +library-name+))


(defmacro with-file-dialog ((dialog parent &key (message "") (dir "") (file "")
				    (wildcard "*.*") (left -1) (top -1) (style 0)) &body body)
  `(let (,dialog) 
    (unwind-protect
	 (progn
	   (setf ,dialog (wxFileDialog_Create ,parent ,message ,dir ,file ,wildcard ,left ,top ,style))
	   ,@body)
      (wxWindow_destroy ,dialog))))

(defun wxcl-get-filepath (parent &key (message "") (dir "") (file "") (wildcard "*.*")
				 (left -1) (top -1) (style 0) (max_length 1024))
  (with-file-dialog (dialog parent :message message :dir dir :file file :wildcard wildcard
 			    :left left :top top :style style)
    (when (= (wxDialog_ShowModal dialog) wxID_OK)
      (with-c-var (path `(c-array-max character ,max_length))
	(_wxFileDialog_GetPath dialog (c-var-address path))
	path))))

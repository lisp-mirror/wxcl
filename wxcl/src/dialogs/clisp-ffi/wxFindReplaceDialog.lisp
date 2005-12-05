;;;wxFindReplaceDialog.lisp
;;;License  : wxWindows License 3.1
;;;Author(s) : Surendra Singhi (surendra@asu.edu) 
;;;Copyright (C) 2005 Surendra Singhi 
;;;See the file LICENSE for information on usage and redistribution.
;;;
;;; $Header$
;;;

(in-package :wxcl-dialogs)

(ffi:default-foreign-language :stdc)

(def-call-out wxFindReplaceDialog_Create
	(:name "wxFindReplaceDialog_Create")
	(:arguments (parent (c-pointer NIL))
		(data (c-pointer NIL))
		(title (c-pointer NIL))
		(style ffi:int))
	(:return-type (c-pointer NIL))
	(:library +library-name+))

(def-call-out wxFindReplaceDialog_GetData
	(:name "wxFindReplaceDialog_GetData")
	(:arguments (_obj (c-pointer NIL)))
	(:return-type (c-pointer NIL))
	(:library +library-name+))

(def-call-out wxFindReplaceDialog_SetData
	(:name "wxFindReplaceDialog_SetData")
	(:arguments (_obj (c-pointer NIL))
		(data (c-pointer NIL)))
	(:library +library-name+))


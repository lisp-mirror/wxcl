;;;wxIcon.lisp
;;;License  : GNU General Public License (GPL)
;;;Author(s) : Surendra Singhi (surendra@asu.edu) 
;;;Copyright (C) 2005 Surendra Singhi 
;;;See the file LICENSE for information on usage and redistribution.
;;;
;;; $Header$
;;;

(defpackage :wxIcon
  (:use :common-lisp :ffi :wxCL)
  (:export
	:wxIcon_CreateDefault
	:wxIcon_Delete
	:wxIcon_FromRaw
	:wxIcon_FromXPM
	:wxIcon_CreateLoad
	:wxIcon_Load
	:wxIcon_CopyFromBitmap
	:wxIcon_Ok
	:wxIcon_GetDepth
	:wxIcon_GetWidth
	:wxIcon_GetHeight
	:wxIcon_Assign
	:wxIcon_IsEqual))

(in-package :wxIcon)

(ffi:default-foreign-language :stdc)

(ffi:def-call-out wxIcon_CreateDefault
	(:name "wxIcon_CreateDefault")
	(:return-type (ffi:c-pointer NIL))
	(:library +library-name+))

(ffi:def-call-out wxIcon_Delete
	(:name "wxIcon_Delete")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxIcon_FromRaw
	(:name "wxIcon_FromRaw")
	(:arguments (data (ffi:c-pointer NIL))
		(width ffi:int)
		(height ffi:int))
	(:return-type (ffi:c-pointer NIL))
	(:library +library-name+))

(ffi:def-call-out wxIcon_FromXPM
	(:name "wxIcon_FromXPM")
	(:arguments (data (ffi:c-pointer NIL)))
	(:return-type (ffi:c-pointer NIL))
	(:library +library-name+))

(ffi:def-call-out wxIcon_CreateLoad
	(:name "wxIcon_CreateLoad")
	(:arguments (name c-string)
		(type ffi:long)
		(width ffi:int)
		(height ffi:int))
	(:return-type (ffi:c-pointer NIL))
	(:library +library-name+))

(ffi:def-call-out wxIcon_Load
	(:name "wxIcon_Load")
	(:arguments (_obj (ffi:c-pointer NIL))
		(name c-string)
		(type ffi:long)
		(width ffi:int)
		(height ffi:int))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxIcon_CopyFromBitmap
	(:name "wxIcon_CopyFromBitmap")
	(:arguments (_obj (ffi:c-pointer NIL))
		(bmp (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxIcon_Ok
	(:name "wxIcon_Ok")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxIcon_GetDepth
	(:name "wxIcon_GetDepth")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxIcon_GetWidth
	(:name "wxIcon_GetWidth")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxIcon_GetHeight
	(:name "wxIcon_GetHeight")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxIcon_Assign
	(:name "wxIcon_Assign")
	(:arguments (_obj (ffi:c-pointer NIL))
		(other (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxIcon_IsEqual
	(:name "wxIcon_IsEqual")
	(:arguments (_obj (ffi:c-pointer NIL))
		(other (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

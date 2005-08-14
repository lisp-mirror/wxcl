;;;wxImageList.lisp
;;;License  : GNU General Public License (GPL)
;;;Author(s) : Surendra Singhi (surendra@asu.edu) 
;;;Copyright (C) 2005 Surendra Singhi 
;;;See the file LICENSE for information on usage and redistribution.
;;;
;;; $Header$
;;;
;; This is an automatically generated file. 
;;Make changes as you feel are necessary (but remember if you try to regenerate this file, your changes will be lost). 

(defpackage :wxImageList
  (:use :common-lisp :ffi)
  (:export
	:wxImageList_Create
	:wxImageList_Delete
	:wxImageList_GetImageCount
	:wxImageList_GetSize
	:wxImageList_AddBitmap
	:wxImageList_AddMasked
	:wxImageList_AddIcon
	:wxImageList_Replace
	:wxImageList_ReplaceIcon
	:wxImageList_Remove
	:wxImageList_RemoveAll
	:wxImageList_Draw))

(in-package :wxImageList)

(ffi:def-call-out wxImageList_Create
	(:name "wxImageList_Create")
	(:arguments (width ffi:int)
		(height ffi:int)
		(mask ffi:int)
		(initialCount ffi:int))
	(:return-type (ffi:c-pointer NIL))
	(:library +library-name+))

(ffi:def-call-out wxImageList_Delete
	(:name "wxImageList_Delete")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxImageList_GetImageCount
	(:name "wxImageList_GetImageCount")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxImageList_GetSize
	(:name "wxImageList_GetSize")
	(:arguments (_obj (ffi:c-pointer NIL))
		(index ffi:int)
		(width (ffi:c-ptr ffi:int))
		(height (ffi:c-ptr ffi:int)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxImageList_AddBitmap
	(:name "wxImageList_AddBitmap")
	(:arguments (_obj (ffi:c-pointer NIL))
		(bitmap (ffi:c-pointer NIL))
		(mask (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxImageList_AddMasked
	(:name "wxImageList_AddMasked")
	(:arguments (_obj (ffi:c-pointer NIL))
		(bitmap (ffi:c-pointer NIL))
		(maskColour (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxImageList_AddIcon
	(:name "wxImageList_AddIcon")
	(:arguments (_obj (ffi:c-pointer NIL))
		(icon (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxImageList_Replace
	(:name "wxImageList_Replace")
	(:arguments (_obj (ffi:c-pointer NIL))
		(index ffi:int)
		(bitmap (ffi:c-pointer NIL))
		(mask (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxImageList_ReplaceIcon
	(:name "wxImageList_ReplaceIcon")
	(:arguments (_obj (ffi:c-pointer NIL))
		(index ffi:int)
		(icon (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxImageList_Remove
	(:name "wxImageList_Remove")
	(:arguments (_obj (ffi:c-pointer NIL))
		(index ffi:int))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxImageList_RemoveAll
	(:name "wxImageList_RemoveAll")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxImageList_Draw
	(:name "wxImageList_Draw")
	(:arguments (_obj (ffi:c-pointer NIL))
		(index ffi:int)
		(dc (ffi:c-pointer NIL))
		(x ffi:int)
		(y ffi:int)
		(flags ffi:int)
		(solidBackground ffi:int))
	(:return-type ffi:int)
	(:library +library-name+))

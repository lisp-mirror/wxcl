;;;wxListItem.lisp
;;;License  : wxWindows License 3.1
;;;Author(s) : Jack Unrue (jdunrue@gmail.com), Surendra Singhi (surendra@asu.edu) 
;;;Copyright (C) 2005 Jack D. Unrue, Surendra Singhi 
;;;See the file LICENSE for information on usage and redistribution.
;;;
;;; $Header$
;;;

(in-package :wxcl-structures)

(ffi:default-foreign-language :stdc)

(ffi:def-call-out wxListItem_Create
    (:name "wxListItem_Create")
  (:return-type (ffi:c-pointer NIL))
  (:library +library-name+))

(ffi:def-call-out wxListItem_Delete
    (:name "wxListItem_Delete")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxListItem_Clear
    (:name "wxListItem_Clear")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxListItem_ClearAttributes
    (:name "wxListItem_ClearAttributes")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxListItem_SetMask
    (:name "wxListItem_SetMask")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (mask ffi:int))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxListItem_SetId
    (:name "wxListItem_SetId")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (id ffi:int))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxListItem_SetColumn
    (:name "wxListItem_SetColumn")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (col ffi:int))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxListItem_SetState
    (:name "wxListItem_SetState")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (state ffi:int))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxListItem_SetStateMask
    (:name "wxListItem_SetStateMask")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (stateMask ffi:int))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxListItem_SetText
    (:name "wxListItem_SetText")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (text (ffi:c-pointer NIL)))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxListItem_SetImage
    (:name "wxListItem_SetImage")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (image ffi:int))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxListItem_SetData
    (:name "wxListItem_SetData")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (data ffi:int))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxListItem_SetDataPointer
    (:name "wxListItem_SetDataPointer")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (data (ffi:c-pointer NIL)))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxListItem_SetWidth
    (:name "wxListItem_SetWidth")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (width ffi:int))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxListItem_SetAlign
    (:name "wxListItem_SetAlign")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (align ffi:int))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxListItem_SetTextColour
    (:name "wxListItem_SetTextColour")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (colText (ffi:c-pointer NIL)))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxListItem_SetBackgroundColour
    (:name "wxListItem_SetBackgroundColour")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (colBack (ffi:c-pointer NIL)))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxListItem_SetFont
    (:name "wxListItem_SetFont")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (font (ffi:c-pointer NIL)))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxListItem_GetMask
    (:name "wxListItem_GetMask")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out wxListItem_GetId
    (:name "wxListItem_GetId")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out wxListItem_GetColumn
    (:name "wxListItem_GetColumn")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out wxListItem_GetState
    (:name "wxListItem_GetState")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out wxListItem_GetText
    (:name "wxListItem_GetText")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type c-string :malloc-free)
  (:library +library-name+))

(ffi:def-call-out wxListItem_GetImage
    (:name "wxListItem_GetImage")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out wxListItem_GetData
    (:name "wxListItem_GetData")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out wxListItem_GetWidth
    (:name "wxListItem_GetWidth")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out wxListItem_GetAlign
    (:name "wxListItem_GetAlign")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out wxListItem_GetAttributes
    (:name "wxListItem_GetAttributes")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type (ffi:c-pointer NIL))
  (:library +library-name+))

(ffi:def-call-out wxListItem_HasAttributes
    (:name "wxListItem_HasAttributes")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out wxListItem_GetTextColour
    (:name "wxListItem_GetTextColour")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type (c-pointer NIL))
  (:library +library-name+))

(ffi:def-call-out wxListItem_GetBackgroundColour
    (:name "wxListItem_GetBackgroundColour")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type (c-pointer NIL))
  (:library +library-name+))

(ffi:def-call-out wxListItem_GetFont
    (:name "wxListItem_GetFont")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type (c-pointer NIL))
  (:library +library-name+))

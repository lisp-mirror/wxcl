;;;wxCombobox.lisp
;;;License  : wxWindows License 3.1
;;;Author(s) : Surendra Singhi (surendra@asu.edu), Jack Unrue (jdunrue@gmail.com)
;;;Copyright (C) 2005 Surendra Singhi, Jack D. Unrue
;;;See the file LICENSE for information on usage and redistribution.
;;;
;;; $Header$
;;;

(in-package :wxcl-controls)

(ffi:default-foreign-language :stdc)

(ffi:def-call-out wxComboBox_Create
	(:name "wxComboBox_Create")
	(:arguments (_prt (ffi:c-pointer NIL))
		(_id ffi:int)
		(_txt ffi:c-string)
		(_lft ffi:int)
		(_top ffi:int)
		(_wdt ffi:int)
		(_hgt ffi:int)
		(_n ffi:int)
		(_str (ffi:c-array-ptr ffi:c-string))
		(_stl ffi:int))
	(:return-type (ffi:c-pointer NIL))
	(:library +library-name+))

(ffi:def-call-out wxComboBox_Copy
	(:name "wxComboBox_Copy")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxComboBox_Cut
	(:name "wxComboBox_Cut")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxComboBox_Paste
	(:name "wxComboBox_Paste")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxComboBox_SetInsertionPoint
	(:name "wxComboBox_SetInsertionPoint")
	(:arguments (_obj (ffi:c-pointer NIL))
		(pos ffi:int))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxComboBox_SetInsertionPointEnd
	(:name "wxComboBox_SetInsertionPointEnd")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxComboBox_GetInsertionPoint
	(:name "wxComboBox_GetInsertionPoint")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxComboBox_GetLastPosition
	(:name "wxComboBox_GetLastPosition")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxComboBox_Replace
	(:name "wxComboBox_Replace")
	(:arguments (_obj (ffi:c-pointer NIL))
		(from ffi:int)
		(to ffi:int)
		(value ffi:c-string))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxComboBox_Remove
	(:name "wxComboBox_Remove")
	(:arguments (_obj (ffi:c-pointer NIL))
		(from ffi:int)
		(to ffi:int))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxComboBox_SetTextSelection
	(:name "wxComboBox_SetTextSelection")
	(:arguments (_obj (ffi:c-pointer NIL))
		(from ffi:int)
		(to ffi:int))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxComboBox_SetEditable
	(:name "wxComboBox_SetEditable")
	(:arguments (_obj (ffi:c-pointer NIL))
		(editable ffi:int))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxComboBox_GetValue
	(:name "wxComboBox_GetValue")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:c-string :malloc-free)
	(:library +library-name+))

(ffi:def-call-out wxComboBox_SetValue
	(:name "wxComboBox_SetValue")
	(:arguments (_obj (ffi:c-pointer NIL))
		(_buf (ffi:c-pointer NIL)))
	(:library +library-name+))

(ffi:def-call-out wxComboBox_SetSelection
	(:name "wxComboBox_SetSelection")
	(:arguments (_obj (ffi:c-pointer NIL))
		    (from ffi:long)
		    (to ffi:long))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxComboBox_Undo
	(:name "wxComboBox_Undo")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:library +library-name+))

;;;wxChoice.lisp
;;;License  : wxWindows License 3.1
;;;Author(s) : Surendra Singhi (surendra@asu.edu), Jack Unrue (jdunrue@gmail.com)
;;;Copyright (C) 2005 Surendra Singhi, Jack D. Unrue
;;;See the file LICENSE for information on usage and redistribution.
;;;
;;; $Header$
;;;

(in-package :wxcl-controls)

(ffi:default-foreign-language :stdc)

(ffi:def-call-out wxChoice_Create
	(:name "wxChoice_Create")
	(:arguments (_prt (ffi:c-pointer NIL))
		(_id ffi:int)
		(_lft ffi:int)
		(_top ffi:int)
		(_wdt ffi:int)
		(_hgt ffi:int)
		(_n ffi:int)
		(_choices (ffi:c-array-ptr ffi:c-string))
		(_stl ffi:int))
	(:return-type (ffi:c-pointer NIL))
	(:library +library-name+))

(ffi:def-call-out wxChoice_Delete
	(:name "wxChoice_Delete")
	(:arguments (_obj (ffi:c-pointer NIL))
		(n ffi:int))
	(:return-type NIL)
	(:library +library-name+))


(ffi:def-call-out wxChoice_GetColumns
	(:name "wxChoice_GetColumns")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxChoice_SetColumns
	(:name "wxChoice_SetColumns")
	(:arguments (_obj (ffi:c-pointer NIL))
		    (n ffi:int))
	(:library +library-name+))

(ffi:def-call-out wxChoice_GetCurrentSelection
	(:name "wxChoice_GetCurrentSelection")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

;;;wxScrollbar.lisp
;;;License  : wxWindows License 3.1
;;;Author(s) : Surendra Singhi (surendra@asu.edu) 
;;;Copyright (C) 2005 Surendra Singhi 
;;;See the file LICENSE for information on usage and redistribution.
;;;
;;; $Header$
;;;
;; This is an automatically generated file. 
;;Make changes as you feel are necessary (but remember if you try to regenerate this file, your changes will be lost). 

(defpackage :wxScrollbar
  (:use :common-lisp :ffi)
  (:export
	:wxScrollBar_Create
	:wxScrollBar_GetThumbPosition
	:wxScrollBar_GetThumbSize
	:wxScrollBar_GetPageSize
	:wxScrollBar_GetRange
	:wxScrollBar_SetThumbPosition
	:wxScrollBar_SetScrollbar))

(in-package :wxScrollbar)

(ffi:def-call-out wxScrollBar_Create
	(:name "wxScrollBar_Create")
	(:arguments (_prt (ffi:c-pointer NIL))
		(_id ffi:int)
		(_lft ffi:int)
		(_top ffi:int)
		(_wdt ffi:int)
		(_hgt ffi:int)
		(_stl ffi:int))
	(:return-type (ffi:c-pointer NIL))
	(:library +library-name+))

(ffi:def-call-out wxScrollBar_GetThumbPosition
	(:name "wxScrollBar_GetThumbPosition")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxScrollBar_GetThumbSize
	(:name "wxScrollBar_GetThumbSize")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxScrollBar_GetPageSize
	(:name "wxScrollBar_GetPageSize")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxScrollBar_GetRange
	(:name "wxScrollBar_GetRange")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxScrollBar_SetThumbPosition
	(:name "wxScrollBar_SetThumbPosition")
	(:arguments (_obj (ffi:c-pointer NIL))
		(viewStart ffi:int))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxScrollBar_SetScrollbar
	(:name "wxScrollBar_SetScrollbar")
	(:arguments (_obj (ffi:c-pointer NIL))
		(position ffi:int)
		(thumbSize ffi:int)
		(range ffi:int)
		(pageSize ffi:int)
		(refresh ffi:int))
	(:return-type NIL)
	(:library +library-name+))

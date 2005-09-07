;;;wxSlider.lisp
;;;License  : wxWindows License 3.1
;;;Author(s) : Surendra Singhi (surendra@asu.edu) 
;;;Copyright (C) 2005 Surendra Singhi 
;;;See the file LICENSE for information on usage and redistribution.
;;;
;;; $Header$
;;;

(defpackage :wxSlider
    (:use :common-lisp :ffi :wxCL)
  (:export :wxSlider_Create
	   :wxSlider_GetValue
	   :wxSlider_SetValue
	   :wxSlider_SetRange
	   :wxSlider_GetMin
	   :wxSlider_GetMax
	   :wxSlider_SetTickFreq
	   :wxSlider_GetTickFreq
	   :wxSlider_SetPageSize
	   :wxSlider_GetPageSize
	   :wxSlider_ClearSel
	   :wxSlider_ClearTicks
	   :wxSlider_SetLineSize
	   :wxSlider_GetLineSize
	   :wxSlider_GetSelEnd
	   :wxSlider_GetSelStart
	   :wxSlider_SetSelection
	   :wxSlider_SetThumbLength
	   :wxSlider_GetThumbLength
	   :wxSlider_SetTick
	   :wxSL_NOTIFY_DRAG
	   :wxSL_AUTOTICKS
	   :wxSL_LABELS
	   :wxSL_LEFT
	   :wxSL_TOP
	   :wxSL_RIGHT
	   :wxSL_BOTTOM
	   :wxSL_BOTH
	   :wxSL_SELRANGE))

(in-package :wxSlider)

(ffi:default-foreign-language :stdc)


(defconstant wxSL_NOTIFY_DRAG 0)
(defconstant wxSL_AUTOTICKS 16)
(defconstant wxSL_LABELS 32)
(defconstant wxSL_LEFT 64)
(defconstant wxSL_TOP 128)
(defconstant wxSL_RIGHT 256)
(defconstant wxSL_BOTTOM 512)
(defconstant wxSL_BOTH 1024)
(defconstant wxSL_SELRANGE 2048)

(ffi:def-call-out wxSlider_Create
    (:name "wxSlider_Create")
  (:arguments (_prt (ffi:c-pointer NIL))
	      (_id ffi:int)
	      (_init ffi:int)
	      (_min ffi:int)
	      (_max ffi:int)
	      (_lft ffi:int)
	      (_top ffi:int)
	      (_wdt ffi:int)
	      (_hgt ffi:int)
	      (_stl ffi:long))
  (:return-type (ffi:c-pointer NIL))
  (:library +library-name+))

(ffi:def-call-out wxSlider_GetValue
    (:name "wxSlider_GetValue")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out wxSlider_SetValue
    (:name "wxSlider_SetValue")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (value ffi:int))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxSlider_SetRange
    (:name "wxSlider_SetRange")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (minValue ffi:int)
	      (maxValue ffi:int))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxSlider_GetMin
    (:name "wxSlider_GetMin")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out wxSlider_GetMax
    (:name "wxSlider_GetMax")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out wxSlider_SetTickFreq
    (:name "wxSlider_SetTickFreq")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (n ffi:int)
	      (pos ffi:int))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxSlider_GetTickFreq
    (:name "wxSlider_GetTickFreq")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out wxSlider_SetPageSize
    (:name "wxSlider_SetPageSize")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (pageSize ffi:int))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxSlider_GetPageSize
    (:name "wxSlider_GetPageSize")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out wxSlider_ClearSel
    (:name "wxSlider_ClearSel")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxSlider_ClearTicks
    (:name "wxSlider_ClearTicks")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxSlider_SetLineSize
    (:name "wxSlider_SetLineSize")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (lineSize ffi:int))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxSlider_GetLineSize
    (:name "wxSlider_GetLineSize")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out wxSlider_GetSelEnd
    (:name "wxSlider_GetSelEnd")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out wxSlider_GetSelStart
    (:name "wxSlider_GetSelStart")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out wxSlider_SetSelection
    (:name "wxSlider_SetSelection")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (minPos ffi:int)
	      (maxPos ffi:int))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxSlider_SetThumbLength
    (:name "wxSlider_SetThumbLength")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (len ffi:int))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxSlider_GetThumbLength
    (:name "wxSlider_GetThumbLength")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out wxSlider_SetTick
    (:name "wxSlider_SetTick")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (tickPos ffi:int))
  (:return-type NIL)
  (:library +library-name+))

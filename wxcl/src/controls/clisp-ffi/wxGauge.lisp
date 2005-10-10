;;;wxGauge.lisp
;;;License  : wxWindows License 3.1
;;;Author(s) : Surendra Singhi (surendra@asu.edu) 
;;;Copyright (C) 2005 Surendra Singhi 
;;;See the file LICENSE for information on usage and redistribution.
;;;
;;; $Header$
;;;

(defpackage :wxGauge
    (:use :common-lisp :ffi :wxCL)
  (:export :wxGauge_Create
	   :wxGauge_SetShadowWidth
	   :wxGauge_SetBezelFace
	   :wxGauge_SetRange
	   :wxGauge_SetValue
	   :wxGauge_GetShadowWidth
	   :wxGauge_GetBezelFace
	   :wxGauge_GetRange
	   :wxGauge_GetValue
	   :wxcl-create-gauge
	   :wxGA_HORIZONTAL
	   :wxGA_VERTICAL
	   :wxGA_PROGRESSBAR
	   :wxGA_SMOOTH
	   ))

(in-package :wxGauge)

(ffi:default-foreign-language :stdc)


(defconstant wxGA_HORIZONTAL 4)
(defconstant wxGA_VERTICAL 8)
(defconstant wxGA_PROGRESSBAR 16)
(defconstant wxGA_SMOOTH 32)


(ffi:def-call-out wxGauge_Create
    (:name "wxGauge_Create")
  (:arguments (_prt (ffi:c-pointer NIL))
	      (_id ffi:int)
	      (_rng ffi:int)
	      (_lft ffi:int)
	      (_top ffi:int)
	      (_wdt ffi:int)
	      (_hgt ffi:int)
	      (_stl ffi:int))
  (:return-type (ffi:c-pointer NIL))
  (:library +library-name+))

(defmacro wxcl-create-gauge (frame range &key (id -1) (left -1) (top -1) (width -1) (height -1)
				   (style wxGA_HORIZONTAL))
  "Creates a gauge."
  `(wxGauge_Create ,frame ,id ,range ,left ,top ,width ,height ,style))

(ffi:def-call-out wxGauge_SetShadowWidth
    (:name "wxGauge_SetShadowWidth")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (w ffi:int))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxGauge_SetBezelFace
    (:name "wxGauge_SetBezelFace")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (w ffi:int))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxGauge_SetRange
    (:name "wxGauge_SetRange")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (r ffi:int))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxGauge_SetValue
    (:name "wxGauge_SetValue")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (pos ffi:int))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxGauge_GetShadowWidth
    (:name "wxGauge_GetShadowWidth")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out wxGauge_GetBezelFace
    (:name "wxGauge_GetBezelFace")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out wxGauge_GetRange
    (:name "wxGauge_GetRange")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out wxGauge_GetValue
    (:name "wxGauge_GetValue")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type ffi:int)
  (:library +library-name+))

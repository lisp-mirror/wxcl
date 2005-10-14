;;;wxGauge.lisp
;;;License  : wxWindows License 3.1
;;;Author(s) : Surendra Singhi (surendra@asu.edu), Jack Unrue (jdunrue@gmail.com)
;;;Copyright (C) 2005 Surendra Singhi, Jack D. Unrue
;;;See the file LICENSE for information on usage and redistribution.
;;;
;;; $Header$
;;;

(in-package :wxcl-controls)

(ffi:default-foreign-language :stdc)

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

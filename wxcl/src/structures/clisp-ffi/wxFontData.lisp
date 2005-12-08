;;;wxFontData.lisp
;;;License  : wxWindows License 3.1
;;;Author(s) : Surendra Singhi (surendra@asu.edu) 
;;;Copyright (C) 2005 Surendra Singhi 
;;;See the file LICENSE for information on usage and redistribution.
;;;
;;; $Header$
;;;

(in-package :wxcl-structures)

(ffi:default-foreign-language :stdc)

(ffi:def-call-out wxFontData_Create
    (:name "wxFontData_Create")
  (:return-type (ffi:c-pointer NIL))
  (:library +library-name+))

(ffi:def-call-out wxFontData_Delete
    (:name "wxFontData_Delete")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxFontData_SetAllowSymbols
    (:name "wxFontData_SetAllowSymbols")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (flag ffi:int))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxFontData_GetAllowSymbols
    (:name "wxFontData_GetAllowSymbols")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out wxFontData_SetColour
    (:name "wxFontData_SetColour")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (colour (ffi:c-pointer NIL)))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxFontData_GetColour
    (:name "wxFontData_GetColour")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (_ref (ffi:c-pointer NIL)))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxFontData_SetShowHelp
    (:name "wxFontData_SetShowHelp")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (flag ffi:int))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxFontData_GetShowHelp
    (:name "wxFontData_GetShowHelp")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out wxFontData_EnableEffects
    (:name "wxFontData_EnableEffects")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (flag ffi:int))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxFontData_GetEnableEffects
    (:name "wxFontData_GetEnableEffects")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out wxFontData_SetInitialFont
    (:name "wxFontData_SetInitialFont")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (font (ffi:c-pointer NIL)))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxFontData_GetInitialFont
    (:name "wxFontData_GetInitialFont")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (ref (ffi:c-pointer NIL)))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxFontData_SetChosenFont
    (:name "wxFontData_SetChosenFont")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (font (ffi:c-pointer NIL)))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxFontData_GetChosenFont
    (:name "wxFontData_GetChosenFont")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (ref (ffi:c-pointer NIL)))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxFontData_SetRange
    (:name "wxFontData_SetRange")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (minRange ffi:int)
	      (maxRange ffi:int))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxFontData_GetEncoding
    (:name "wxFontData_GetEncoding")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out wxFontData_SetEncoding
    (:name "wxFontData_SetEncoding")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (encoding ffi:int))
  (:return-type NIL)
  (:library +library-name+))

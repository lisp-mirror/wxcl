;;;wxFont.lisp
;;;License  : wxWindows License 3.1
;;;Author(s) : Surendra Singhi (surendra@asu.edu), Jack Unrue (jdunrue@gmail.com)
;;;Copyright (C) 2005 Surendra Singhi, Jack D. Unrue
;;;See the file LICENSE for information on usage and redistribution.
;;;
;;; $Header$
;;;

(in-package :wxcl-gdi)

(ffi:default-foreign-language :stdc)

(ffi:def-call-out wxFont_Create
    (:name "wxFont_Create")
  (:arguments (pointSize ffi:int)
	      (family ffi:int)
	      (style ffi:int)
	      (weight ffi:int)
	      (underlined ffi:int)
	      (face ffi:c-string)
	      (enc ffi:int))
  (:return-type (ffi:c-pointer NIL))
  (:library +library-name+))

(ffi:def-call-out wxFont_CreateDefault
    (:name "wxFont_CreateDefault")
  (:return-type (ffi:c-pointer NIL))
  (:library +library-name+))

(ffi:def-call-out wxFont_Delete
    (:name "wxFont_Delete")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxFont_Ok
    (:name "wxFont_Ok")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out wxFont_GetPointSize
    (:name "wxFont_GetPointSize")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out wxFont_GetFamily
    (:name "wxFont_GetFamily")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out wxFont_GetStyle
    (:name "wxFont_GetStyle")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out wxFont_GetWeight
    (:name "wxFont_GetWeight")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out wxFont_GetUnderlined
    (:name "wxFont_GetUnderlined")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out wxFont_GetFaceName
    (:name "wxFont_GetFaceName")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type ffi:c-string :malloc-free)
  (:library +library-name+))

(ffi:def-call-out wxFont_GetEncoding
    (:name "wxFont_GetEncoding")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out wxFont_SetPointSize
    (:name "wxFont_SetPointSize")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (pointSize ffi:int))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxFont_SetFamily
    (:name "wxFont_SetFamily")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (family ffi:int))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxFont_SetStyle
    (:name "wxFont_SetStyle")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (style ffi:int))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxFont_SetWeight
    (:name "wxFont_SetWeight")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (weight ffi:int))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxFont_SetFaceName
    (:name "wxFont_SetFaceName")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (faceName ffi:c-string))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxFont_SetUnderlined
    (:name "wxFont_SetUnderlined")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (underlined ffi:int))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxFont_SetEncoding
    (:name "wxFont_SetEncoding")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (encoding ffi:int))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxFont_GetFamilyString
    (:name "wxFont_GetFamilyString")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type ffi:c-string :malloc-free)
  (:library +library-name+))

(ffi:def-call-out wxFont_GetStyleString
    (:name "wxFont_GetStyleString")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type ffi:c-string :malloc-free)
  (:library +library-name+))

(ffi:def-call-out wxFont_GetWeightString
    (:name "wxFont_GetWeightString")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type ffi:c-string :malloc-free)
  (:library +library-name+))

(ffi:def-call-out wxFont_GetDefaultEncoding
    (:name "wxFont_GetDefaultEncoding")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out wxFont_SetDefaultEncoding
    (:name "wxFont_SetDefaultEncoding")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (encoding ffi:int))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxFontEnumerator_Create
    (:name "wxFontEnumerator_Create")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (_fnc (ffi:c-pointer NIL)))
  (:return-type (ffi:c-pointer NIL))
  (:library +library-name+))

(ffi:def-call-out wxFontEnumerator_Delete
    (:name "wxFontEnumerator_Delete")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxFontEnumerator_EnumerateFacenames
    (:name "wxFontEnumerator_EnumerateFacenames")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (encoding ffi:int)
	      (fixedWidthOnly ffi:int))
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out wxFontEnumerator_EnumerateEncodings
    (:name "wxFontEnumerator_EnumerateEncodings")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (facename (ffi:c-pointer NIL)))
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out wxFontMapper_Create
    (:name "wxFontMapper_Create")
  (:return-type (ffi:c-pointer NIL))
  (:library +library-name+))

(ffi:def-call-out wxFontMapper_GetAltForEncoding
    (:name "wxFontMapper_GetAltForEncoding")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (encoding ffi:int)
	      (alt_encoding (ffi:c-pointer NIL))
	      (_buf (ffi:c-pointer NIL)))
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out wxFontMapper_IsEncodingAvailable
    (:name "wxFontMapper_IsEncodingAvailable")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (encoding ffi:int)
	      (_buf ffi:c-string))
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out wxEncodingConverter_Create
    (:name "wxEncodingConverter_Create")
  (:return-type (ffi:c-pointer NIL))
  (:library +library-name+))

(ffi:def-call-out wxEncodingConverter_Delete
    (:name "wxEncodingConverter_Delete")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxEncodingConverter_Init
    (:name "wxEncodingConverter_Init")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (input_enc ffi:int)
	      (output_enc ffi:int)
	      (method ffi:int))
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out wxEncodingConverter_Convert
    (:name "wxEncodingConverter_Convert")
  (:arguments (_obj (ffi:c-pointer NIL))
              (input ffi:c-string)
              (output ffi:c-string))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxEncodingConverter_GetPlatformEquivalents
    (:name "wxEncodingConverter_GetPlatformEquivalents")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (enc ffi:int)
	      (platform ffi:int)
	      (_lst (ffi:c-pointer NIL)))
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out wxEncodingConverter_GetAllEquivalents
    (:name "wxEncodingConverter_GetAllEquivalents")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (enc ffi:int)
	      (_lst (ffi:c-pointer NIL)))
  (:return-type ffi:int)
  (:library +library-name+))

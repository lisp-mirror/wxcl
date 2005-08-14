;;;wxFont.lisp
;;;License   : BSD-style
;;;Author(s) : Surendra Singhi (surendra@asu.edu) 
;;;Copyright (C) 2005 Surendra Singhi 
;;;See the file LICENSE for information on usage and redistribution.
;;;
;;; $Header$
;;;

(defpackage :wxFont
    (:use :common-lisp :ffi :wxCL)
  (:export :wxFont_Create
	   :wxFont_CreateDefault
	   :wxFont_Delete
	   :wxFont_Ok
	   :wxFont_GetPointSize
	   :wxFont_GetFamily
	   :wxFont_GetStyle
	   :wxFont_GetWeight
	   :wxFont_GetUnderlined
	   :wxFont_GetFaceName
	   :wxFont_GetEncoding
	   :wxFont_SetPointSize
	   :wxFont_SetFamily
	   :wxFont_SetStyle
	   :wxFont_SetWeight
	   :wxFont_SetFaceName
	   :wxFont_SetUnderlined
	   :wxFont_SetEncoding
	   :wxFont_GetFamilyString
	   :wxFont_GetStyleString
	   :wxFont_GetWeightString
	   :wxFont_GetDefaultEncoding
	   :wxFont_SetDefaultEncoding
	   :wxFontEnumerator_Create
	   :wxFontEnumerator_Delete
	   :wxFontEnumerator_EnumerateFacenames
	   :wxFontEnumerator_EnumerateEncodings
	   :wxFontMapper_Create
	   :wxFontMapper_GetAltForEncoding
	   :wxFontMapper_IsEncodingAvailable
	   :wxEncodingConverter_Create
	   :wxEncodingConverter_Delete
	   :wxEncodingConverter_Init
	   :wxEncodingConverter_Convert
	   :wxEncodingConverter_GetPlatformEquivalents
	   :wxEncodingConverter_GetAllEquivalents
	   :wxFONTENCODING_DEFAULT
	   :wxFONTENCODING_ISO8859_1
	   :wxFONTENCODING_ISO8859_2
	   :wxFONTENCODING_ISO8859_3
	   :wxFONTENCODING_ISO8859_4
	   :wxFONTENCODING_ISO8859_5
	   :wxFONTENCODING_ISO8859_6
	   :wxFONTENCODING_ISO8859_7
	   :wxFONTENCODING_ISO8859_8
	   :wxFONTENCODING_ISO8859_9
	   :wxFONTENCODING_ISO8859_10
	   :wxFONTENCODING_ISO8859_11
	   :wxFONTENCODING_ISO8859_12
	   :wxFONTENCODING_ISO8859_13
	   :wxFONTENCODING_ISO8859_14
	   :wxFONTENCODING_ISO8859_15
	   :wxFONTENCODING_ISO8859_MAX
	   :wxFONTENCODING_KOI8
	   :wxFONTENCODING_ALTERNATIVE
	   :wxFONTENCODING_BULGARIAN
	   :wxFONTENCODING_CP437
	   :wxFONTENCODING_CP850
	   :wxFONTENCODING_CP852
	   :wxFONTENCODING_CP855
	   :wxFONTENCODING_CP866
	   :wxFONTENCODING_CP874
	   :wxFONTENCODING_CP1250
	   :wxFONTENCODING_CP1251
	   :wxFONTENCODING_CP1252
	   :wxFONTENCODING_CP1253
	   :wxFONTENCODING_CP1254
	   :wxFONTENCODING_CP1255
	   :wxFONTENCODING_CP1256
	   :wxFONTENCODING_CP1257
	   :wxFONTENCODING_CP12_MAX
	   :wxFONTENCODING_UNICODE
	   :wxFONTENCODING_MAX	
	   ))

(in-package :wxFont)

(ffi:default-foreign-language :stdc)

(defconstant wxFONTENCODING_DEFAULT 0)
(defconstant wxFONTENCODING_ISO8859_1 1)
(defconstant wxFONTENCODING_ISO8859_2 2)
(defconstant wxFONTENCODING_ISO8859_3 3)
(defconstant wxFONTENCODING_ISO8859_4 4)
(defconstant wxFONTENCODING_ISO8859_5 5)
(defconstant wxFONTENCODING_ISO8859_6 6)
(defconstant wxFONTENCODING_ISO8859_7 7)
(defconstant wxFONTENCODING_ISO8859_8 8)
(defconstant wxFONTENCODING_ISO8859_9 9)
(defconstant wxFONTENCODING_ISO8859_10 10)
(defconstant wxFONTENCODING_ISO8859_11 11)
(defconstant wxFONTENCODING_ISO8859_12 12)
(defconstant wxFONTENCODING_ISO8859_13 13)
(defconstant wxFONTENCODING_ISO8859_14 14)
(defconstant wxFONTENCODING_ISO8859_15 15)
(defconstant wxFONTENCODING_ISO8859_MAX 16)
(defconstant wxFONTENCODING_KOI8 17)
(defconstant wxFONTENCODING_ALTERNATIVE 18)
(defconstant wxFONTENCODING_BULGARIAN 19)
(defconstant wxFONTENCODING_CP437 20)
(defconstant wxFONTENCODING_CP850 21)
(defconstant wxFONTENCODING_CP852 22)
(defconstant wxFONTENCODING_CP855 23)
(defconstant wxFONTENCODING_CP866 24)
(defconstant wxFONTENCODING_CP874 25)
(defconstant wxFONTENCODING_CP1250 26)
(defconstant wxFONTENCODING_CP1251 27)
(defconstant wxFONTENCODING_CP1252 28)
(defconstant wxFONTENCODING_CP1253 29)
(defconstant wxFONTENCODING_CP1254 30)
(defconstant wxFONTENCODING_CP1255 31)
(defconstant wxFONTENCODING_CP1256 32)
(defconstant wxFONTENCODING_CP1257 33)
(defconstant wxFONTENCODING_CP12_MAX 34)
(defconstant wxFONTENCODING_UNICODE 35)
(defconstant wxFONTENCODING_MAX 36)

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
  (:arguments (_obj (ffi:c-pointer NIL))
	      (_buf (ffi:c-pointer NIL)))
  (:return-type ffi:int)
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
  (:arguments (_obj (ffi:c-pointer NIL))
	      (_buf (ffi:c-pointer NIL)))
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out wxFont_GetStyleString
    (:name "wxFont_GetStyleString")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (_buf (ffi:c-pointer NIL)))
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out wxFont_GetWeightString
    (:name "wxFont_GetWeightString")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (_buf (ffi:c-pointer NIL)))
  (:return-type ffi:int)
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
	      (_buf (ffi:c-pointer NIL)))
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
	      (input (ffi:c-pointer NIL))
	      (output (ffi:c-pointer NIL)))
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

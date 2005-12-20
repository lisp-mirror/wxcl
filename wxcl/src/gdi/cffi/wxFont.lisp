;;;wxFont.lisp
;;;License  : GNU General Public License (GPL)
;;;Author(s) : Surendra Singhi (surendra@asu.edu) 
;;;Copyright (C) 2005 Surendra Singhi 
;;;See the file LICENSE for information on usage and redistribution.
;;;
;;; $Header$
;;;

(in-package :wxcl-gdi)

(defcvar ("wxNull_Font" wxNull_Font)
 :pointer)

(defcvar ("wxNormal_Font" wxNormal_Font)
 :pointer)

(defcvar ("wxSmall_Font" wxSmall_Font)
 :pointer)

(defcvar ("wxSwiss_Font" wxSwiss_Font)
 :pointer)

(defcvar ("wxItalic_Font" wxItalic_Font)
 :pointer)

(defcfun ("wxFont_Create" wxFont_Create) :pointer
  (pointSize :int)
  (family :int)
  (style :int)
  (weight :int)
  (underlined :int)
  (face :string)
  (enc :int))

(defcfun ("wxFont_CreateDefault" wxFont_CreateDefault) :pointer)

(defcfun ("wxFont_Delete" wxFont_Delete) :void
  (_obj :pointer))

(defcfun ("wxFont_Ok" wxFont_Ok) :int
  (_obj :pointer))

(defcfun ("wxFont_GetPointSize" wxFont_GetPointSize) :int
  (_obj :pointer))

(defcfun ("wxFont_GetFamily" wxFont_GetFamily) :int
  (_obj :pointer))

(defcfun ("wxFont_GetStyle" wxFont_GetStyle) :int
  (_obj :pointer))

(defcfun ("wxFont_GetWeight" wxFont_GetWeight) :int
  (_obj :pointer))

(defcfun ("wxFont_GetUnderlined" wxFont_GetUnderlined) :int
  (_obj :pointer))

(defcfun ("wxFont_GetFaceName" wxFont_GetFaceName) :lisp-string
  (_obj :pointer))

(defcfun ("wxFont_GetEncoding" wxFont_GetEncoding) :int
  (_obj :pointer))

(defcfun ("wxFont_SetPointSize" wxFont_SetPointSize) :void
  (_obj :pointer)
  (pointSize :int))

(defcfun ("wxFont_SetFamily" wxFont_SetFamily) :void
  (_obj :pointer)
  (family :int))

(defcfun ("wxFont_SetStyle" wxFont_SetStyle) :void
  (_obj :pointer)
  (style :int))

(defcfun ("wxFont_SetWeight" wxFont_SetWeight) :void
  (_obj :pointer)
  (weight :int))

(defcfun ("wxFont_SetFaceName" wxFont_SetFaceName) :void
  (_obj :pointer)
  (faceName :string))

(defcfun ("wxFont_SetUnderlined" wxFont_SetUnderlined) :void
  (_obj :pointer)
  (underlined :int))

(defcfun ("wxFont_SetEncoding" wxFont_SetEncoding) :void
  (_obj :pointer)
  (encoding :int))

(defcfun ("wxFont_GetFamilyString" wxFont_GetFamilyString) :lisp-string
  (_obj :pointer))

(defcfun ("wxFont_GetStyleString" wxFont_GetStyleString) :lisp-string
  (_obj :pointer))

(defcfun ("wxFont_GetWeightString" wxFont_GetWeightString) :lisp-string
  (_obj :pointer))

(defcfun ("wxFont_GetDefaultEncoding" wxFont_GetDefaultEncoding) :int
  (_obj :pointer))

(defcfun ("wxFont_SetDefaultEncoding" wxFont_SetDefaultEncoding) :void
  (_obj :pointer)
  (encoding :int))

(defcfun ("wxFontEnumerator_Create" wxFontEnumerator_Create) :pointer
  (_obj :pointer)
  (_fnc :pointer))

(defcfun ("wxFontEnumerator_Delete" wxFontEnumerator_Delete) :void
  (_obj :pointer))

(defcfun ("wxFontEnumerator_EnumerateFacenames" wxFontEnumerator_EnumerateFacenames) :int
  (_obj :pointer)
  (encoding :int)
  (fixedWidthOnly :int))

(defcfun ("wxFontEnumerator_EnumerateEncodings" wxFontEnumerator_EnumerateEncodings) :int
  (_obj :pointer)
  (facename :pointer))

(defcfun ("wxFontMapper_Create" wxFontMapper_Create) :pointer)

(defcfun ("wxFontMapper_GetAltForEncoding" wxFontMapper_GetAltForEncoding) :int
  (_obj :pointer)
  (encoding :int)
  (alt_encoding :pointer)
  (_buf :pointer))

(defcfun ("wxFontMapper_IsEncodingAvailable" wxFontMapper_IsEncodingAvailable) :int
  (_obj :pointer)
  (encoding :int)
  (_buf :string))

(defcfun ("wxEncodingConverter_Create" wxEncodingConverter_Create) :pointer)

(defcfun ("wxEncodingConverter_Delete" wxEncodingConverter_Delete) :void
  (_obj :pointer))

(defcfun ("wxEncodingConverter_Init" wxEncodingConverter_Init) :int
  (_obj :pointer)
  (input_enc :int)
  (output_enc :int)
  (method :int))

(defcfun ("wxEncodingConverter_Convert" wxEncodingConverter_Convert) :void
  (_obj :pointer)
  (input :string)
  (output :string))

(defcfun ("wxEncodingConverter_GetPlatformEquivalents" wxEncodingConverter_GetPlatformEquivalents) :int
  (_obj :pointer)
  (enc :int)
  (platform :int)
  (_lst :pointer))

(defcfun ("wxEncodingConverter_GetAllEquivalents" wxEncodingConverter_GetAllEquivalents) :int
  (_obj :pointer)
  (enc :int)
  (_lst :pointer))

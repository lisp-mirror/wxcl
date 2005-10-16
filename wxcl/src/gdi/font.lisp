;;;font.lisp
;;;License  : wxWindows License 3.1
;;;Author(s) : Jack Unrue (jdunrue@gmail.com), Surendra Singhi (surendra@asu.edu)
;;;Copyright (C) 2005 Jack D. Unrue, Surendra Singhi
;;;See the file LICENSE for information on usage and redistribution.
;;;
;;; $Header$
;;;

(in-package :wxcl-gdi)

(ffi:default-foreign-language :stdc)

(defclass font (object)
    ()
    (:documentation "A font is an object which determines the appearance \
of text. Fonts are used for drawing text to a device context, and setting \
the appearance of a window's text."))

(defconstant +font-encoding-default+      0)
(defconstant +font-encoding-iso8859_1+    1)
(defconstant +font-encoding-iso8859_2+    2)
(defconstant +font-encoding-iso8859_3+    3)
(defconstant +font-encoding-iso8859_4+    4)
(defconstant +font-encoding-iso8859_5+    5)
(defconstant +font-encoding-iso8859_6+    6)
(defconstant +font-encoding-iso8859_7+    7)
(defconstant +font-encoding-iso8859_8+    8)
(defconstant +font-encoding-iso8859_9+    9)
(defconstant +font-encoding-iso8859_10+  10)
(defconstant +font-encoding-iso8859_11+  11)
(defconstant +font-encoding-iso8859_12+  12)
(defconstant +font-encoding-iso8859_13+  13)
(defconstant +font-encoding-iso8859_14+  14)
(defconstant +font-encoding-iso8859_15+  15)
(defconstant +font-encoding-iso8859_max+ 16)
(defconstant +font-encoding-koi8+        17)
(defconstant +font-encoding-alternative+ 18)
(defconstant +font-encoding-bulgarian+   19)
(defconstant +font-encoding-cp437+       20)
(defconstant +font-encoding-cp850+       21)
(defconstant +font-encoding-cp852+       22)
(defconstant +font-encoding-cp855+       23)
(defconstant +font-encoding-cp866+       24)
(defconstant +font-encoding-cp874+       25)
(defconstant +font-encoding-cp1250+      26)
(defconstant +font-encoding-cp1251+      27)
(defconstant +font-encoding-cp1252+      28)
(defconstant +font-encoding-cp1253+      29)
(defconstant +font-encoding-cp1254+      30)
(defconstant +font-encoding-cp1255+      31)
(defconstant +font-encoding-cp1256+      32)
(defconstant +font-encoding-cp1257+      33)
(defconstant +font-encoding-cp12_max+    34)
(defconstant +font-encoding-unicode+     35)
(defconstant +font-encoding-max+         36)

(defconstant +font-family-default+       70) ; defined to wxDEFAULT in font.h
(defconstant +font-family-decorative+    71)
(defconstant +font-family-roman+         72)
(defconstant +font-family-script+        73)
(defconstant +font-family-swiss+         74)
(defconstant +font-family-modern+        75)
(defconstant +font-family-teletype+      76)
(defconstant +font-family-max+           77)

(defconstant +font-style-normal+         90) ; defined to wxNORMAL in font.h
(defconstant +font-style-slant+          93)
(defconstant +font-style-italic+         94)
(defconstant +font-style-max+            95)

(defconstant +font-weight-normal+        90) ; defined to wxNORMAL in font.h
(defconstant +font-weight-light+         91)
(defconstant +font-weight-bold+          92)

(defun make-default-font ()
    "Create a default font (attributes not set to meaningful values)."
    (make-wx-instance 'font
        (wxFont_CreateDefault)))

(defun make-font (ptsize family style weight &key (underlined nil) (facename "") (encoding +font-encoding-default+))
    "Create a font object."
    (make-wx-instance 'font
        (wxFont_Create ptsize family style weight underlined facename encoding)))

(defmethod default-encoding ((obj font))
    "Returns the default encoding."
    (wxFont_GetDefaultEncoding (object-pointer obj)))

(defmethod (setf default-encoding) (encoding (obj font))
    "Sets the default font encoding."
    (wxFont_SetDefaultEncoding (object-pointer obj) encoding))

(defmethod encoding ((obj font))
    "FIXME: undocumented method"
    (wxFont_GetEncoding (object-pointer obj)))

(defmethod (setf encoding) (enc (obj font))
    "FIXME: undocumented method"
    (wxFont_SetEncoding (object-pointer obj) enc))

(defmethod face-name ((obj font))
    "Returns the typeface name associated with the font, or the empty \
string if there is no typeface information."
    ;; FIXME: wxFont_GetFaceName needs to be fixed to return the char*
    (wxFont_GetFaceName (object-pointer obj)))

(defmethod (setf face-name) (name (obj font))
    "Sets the typeface name associated with the font."
    (wxFont_SetFaceName (object-pointer obj) name))

(defmethod font-family ((obj font))
    "Returns the font's family."
    (wxFont_GetFontFamily (object-pointer obj)))

(defmethod (setf font-family) (family (obj font))
    "Sets the font's family."
    (wxFont_SetFontFamily (object-pointer obj) family))

#|
(defmethod native-font-info ((obj font))
    "Returns the platform-dependent string completely describing this \
font or an empty string if the font wasn't constructed using the native \
font description."
    (wxFont_GetNativeFontInfoDesc (object-pointer obj)))

(defmethod (setf native-font-info) (desc (obj font))
    "Creates the font corresponding to the given native font description \
string. If the string is invalid, the font is unchanged."
    (wxFont_SetNativeFontInfo (object-pointer obj) desc))

(defmethod fixed-width-p ((obj font))
    "Returns T if the font is a fixed width (or monospaced) font, nil if \
it is a proportional one or the font is invalid."
    (not (= (wxFont_IsFixedWidth (object-pointer obj)) 0)))
|#

(defmethod ok ((obj font))
    "Returns T if this object is a valid font, nil otherwise."
    (not (= (wxFont_Ok (object-pointer obj)) 0)))

(defmethod point-size ((obj font))
    "Returns the font's point size."
    (wxFont_GetPointSize (object-pointer obj)))

(defmethod (setf point-size) (ptsize (obj font))
    "Sets the font's point size."
    (wxFont_SetPointSize (object-pointer obj) ptsize))

(defmethod style ((obj font))
    "Returns the font's style."
    (wxFont_GetStyle (object-pointer obj)))

(defmethod (setf style) (st (obj font))
    "Sets the font's style."
    (wxFont_SetStyle (object-pointer obj) st))

(defmethod underlined ((obj font))
    "Returns T if the font has the underlining attribute set, nil otherwise."
    (not (= wxFont_GetUnderlined (object-pointer obj) 0)))

(defmethod (setf underlined) (flag (obj font))
    "Pass T if the font should be underlined, or pass nil if it should not."
    (wxFont_SetUnderlined (object-pointer obj) (flag 1 0)))

(defmethod weight ((obj font))
    "Returns the font's weight."
    (wxFont_GetWeight (object-pointer obj)))

(defmethod (setf weight) (weight (obj font))
    "Sets the font's weight."
    (wxFont_SetWeight (object-pointer obj) wt))

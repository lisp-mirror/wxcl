;;;defpackage.lisp
;;;License  : wxWindows License 3.1
;;;Author(s) : Surendra Singhi (surendra@asu.edu), Jack Unrue (jdunrue@gmail.com)
;;;Copyright (C) 2005 Surendra Singhi, Jack D. Unrue
;;;See the file LICENSE for information on usage and redistribution.
;;;
;;; $Header$
;;;

(defpackage :wxcl-gdi
    (:use :common-lisp :ffi :wxcl)
  (:export
   ;; colour
;;colour methods, functions                
   #:colour
   #:make-colour
   #:delete-object
   #:set-colour
   #:ok-p
   #:red
   #:green
   #:blue
   #:pixel
   #:copy
   #:set-by-name
   #:valid-name-p
;;colour constants and symbols      
   #:+null-colour+
   #:+red+
   #:+green+
   #:+blue+
   #:+white+
   #:+black+
   #:+cyan+
   #:+light-grey+
      
;;brush constants and symbols
   #:brush
   #:+null-brush+
   #:+red-brush+
   #:+green-brush+
   #:+blue-brush+
   #:+white-brush+
   #:+black-brush+
   #:+cyan-brush+
   #:+light-grey-brush+
   #:+medium-grey-brush+
   #:+transparent-brush+
;;brush methods, functions
   #:make-brush
   #:make-brush-from-bitmap
   #:make-brush-from-colour
   #:delete-object
   #:colour
   #:set-colour-rgb
   #:style
   #:stipple
   #:assign
   #:equal-p
   #:ok-p
   ;; font class and constants
   ;;
   #:font
   #:+font-encoding-default+
   #:+font-encoding-iso8859_1+
   #:+font-encoding-iso8859_2+
   #:+font-encoding-iso8859_3+
   #:+font-encoding-iso8859_4+
   #:+font-encoding-iso8859_5+
   #:+font-encoding-iso8859_6+
   #:+font-encoding-iso8859_7+
   #:+font-encoding-iso8859_8+
   #:+font-encoding-iso8859_9+
   #:+font-encoding-iso8859_10+
   #:+font-encoding-iso8859_11+
   #:+font-encoding-iso8859_12+
   #:+font-encoding-iso8859_13+
   #:+font-encoding-iso8859_14+
   #:+font-encoding-iso8859_15+
   #:+font-encoding-iso8859_max+
   #:+font-encoding-koi8+
   #:+font-encoding-alternative+
   #:+font-encoding-bulgarian+
   #:+font-encoding-cp437+
   #:+font-encoding-cp850+
   #:+font-encoding-cp852+
   #:+font-encoding-cp855+
   #:+font-encoding-cp866+
   #:+font-encoding-cp874+
   #:+font-encoding-cp1250+
   #:+font-encoding-cp1251+
   #:+font-encoding-cp1252+
   #:+font-encoding-cp1253+
   #:+font-encoding-cp1254+
   #:+font-encoding-cp1255+
   #:+font-encoding-cp1256+
   #:+font-encoding-cp1257+
   #:+font-encoding-cp12_max+
   #:+font-encoding-unicode+
   #:+font-encoding-max+
   #:+font-family-default+
   #:+font-family-decorative+
   #:+font-family-roman+
   #:+font-family-script+
   #:+font-family-swiss+
   #:+font-family-modern+
   #:+font-family-teletype+
   #:+font-family-max+
   #:+font-style-normal+
   #:+font-style-slant+
   #:+font-style-italic+
   #:+font-style-max+
   #:+font-weight-normal+
   #:+font-weight-light+
   #:+font-weight-bold+
   ;; font methods, functions, and macros
   ;;
   #:default-encoding
   #:encoding
   #:face-name
   #:font-family
   #:make-font
   #:ok
   #:point-size
   #:style
   #:underlined
   #:weight
   ))

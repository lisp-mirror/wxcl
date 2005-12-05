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
   ;;common methods, functions
   #:delete-object
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
   #:make-default-font
   #:make-font
   #:ok
   #:point-size
   #:style
   #:underlined
   #:weight
   ;; bitmap constants
   ;;
   #:+null-bitmap+
   #:+bitmap-type-invalid+
   #:+bitmap-type-bmp+
   #:+bitmap-type-bmp-resource+
   #:+bitmap-type-resource+
   #:+bitmap-type-ico+
   #:+bitmap-type-ico-resource+
   #:+bitmap-type-cur+
   #:+bitmap-type-cur-resource+
   #:+bitmap-type-xbm+
   #:+bitmap-type-xbm-data+
   #:+bitmap-type-xpm+
   #:+bitmap-type-xpm-data+
   #:+bitmap-type-tif+
   #:+bitmap-type-tif-resource+
   #:+bitmap-type-gif+
   #:+bitmap-type-gif-resource+
   #:+bitmap-type-png+
   #:+bitmap-type-png-resource+
   #:+bitmap-type-jpeg+
   #:+bitmap-type-jpeg-resource+
   #:+bitmap-type-pnm+
   #:+bitmap-type-pnm-resource+
   #:+bitmap-type-pcx+
   #:+bitmap-type-pcx-resource+
   #:+bitmap-type-pict+
   #:+bitmap-type-pict-resource+
   #:+bitmap-type-icon+
   #:+bitmap-type-icon-resource+
   #:+bitmap-type-maccursor+
   #:+bitmap-type-maccursor-resource+
   #:+bitmap-type-any+
   ;; bitmap class
   ;;
   #:bitmap
   #:static-bitmap
   ;; bitmap methods, functions, and macros
   ;;
   #:make-bitmap
   #:make-bitmap-from-xpm
   #:make-bitmap-empty
   #:make-bitmap-load
   #:make-bitmap-default
   #:sub-bitmap
   #:load-file
   #:wxBitmap_SaveFile
   #:mask
   #:add-handler
   #:insert-handler
   #:remove-handler
   #:find-handler-by-name
   #:find-handler-by-extension
   #:find-handler-by-type
   #:init-standard-handlers
   #:clean-up-handlers
   #:ok-p
   #:width
   #:height
   #:depth
   #:make-static-bitmap
   ;;mask functions
   #:make-mask
   #:make-mask-coloured
   ;;pen class, functions, constants, methods
   #:pen
   #:make-pen
    #:make-pen-from-colour
    #:make-pen-from-bitmap
    #:set-colour-rgb
    #:dashes
    #:cap
    #:join
    #:getdashes
    #:+red-pen+
    #:+black-pen+
    #:+black-dashed-pen+
    #:+white-pen+
    #:+red-pen+
    #:+green-pen+
    #:+cyan-pen+
    #:+light-grey-pen+
    #:+medium-grey-pen+
    #:+transparent-pen+
    #:+grey-pen+))

(in-package :wxcl-gdi)

(defclass colour (object)
  ()
  (:documentation "A colour is an object representing a combination of Red, Green,\
 and Blue (RGB) intensity values, and is used to determine drawing colours."))

(defclass font (object)
    ()
    (:documentation "A font is an object which determines the appearance \
of text. Fonts are used for drawing text to a device context, and setting \
the appearance of a window's text."))

(defclass bitmap (object)
  ()
  (:documentation "This class encapsulates the concept of a platform-dependent bitmap,\
 either monochrome or colour or colour with alpha channel support."))

(defclass icon (bitmap)
  ()
  (:documentation "An icon is a small rectangular bitmap usually used for\
 denoting a minimized application. It differs from a wxBitmap in always\
 having a mask associated with it for transparent drawing."))

(defclass static-bitmap (wxcl-controls:control)
  ()
  (:documentation "A static bitmap control displays a bitmap. It is meant for\
 display of the small icons in the dialog boxes and is not meant to be a general\
 purpose image display control."))


(defclass mask (object)
  ()
  (:documentation "This class encapsulates a monochrome mask bitmap, where the\
 masked area is black and the unmasked area is white.When associated with a bitmap\
 and drawn in a device context, the unmasked area of the bitmap will be drawn, and\
 the masked area will not be drawn."))

(defclass brush (object)
  ()
  (:documentation "A colour is an object representing a combination of Red, Green,\
 and Blue (RGB) intensity values, and is used to determine drawing colours."))

(defclass pen (object)
  ()
  (:documentation "A pen is a drawing tool for drawing outlines. It is used for\
 drawing lines and painting the outline of rectangles, ellipses, etc. It has a\
 colour, a width and a style."))




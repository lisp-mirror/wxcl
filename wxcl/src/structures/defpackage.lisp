;;;defpackage.lisp
;;;License  : wxWindows License 3.1
;;;Author(s) : Surendra Singhi (surendra@asu.edu), Jack Unrue (jdunrue@gmail.com)
;;;Copyright (C) 2005 Surendra Singhi, Jack D. Unrue
;;;See the file LICENSE for information on usage and redistribution.
;;;
;;; $Header$
;;;

(defpackage :wxcl-structures
    (:use :common-lisp :ffi :wxcl)
    (:export
;; symbols common to multiple classes
     #:background-colour
     #:delete-object
     #:font
     #:colour
     #:text-colour
     #:delete-object
;; calendar-date-attr class and constants
     #:calendar-date-attr
     #:+cal-border-none+
     #:+cal-border-square+
     #:+cal-border-round+
;; calendar-date-attr methods and functions
     #:border
     #:border-colour
     #:make-calendar-date-attr
;; list-item class and constants
     #:list-item
	   #:+list-state-dontcare+
	   #:+list-state-drophilited+
	   #:+list-state-focused+ 
	   #:+list-state-selected+
	   #:+list-state-cut+ 
	   #:+list-mask-state+
	   #:+list-mask-text+ 
	   #:+list-mask-image+
	   #:+list-mask-data+
	   #:+list-mask-width+
	   #:+list-mask-format+
;; list-item methods, functions, and macros
     #:align
     #:clear
     #:clear-attributes
     #:column
     #:data
     #:data-pointer
     #:id
     #:image
     #:mask
     #:state
     #:state-mask
     #:text
     #:width
     #:make-list-item
;;accelerator symbols, constants
     #:+accel-alt+
     #:+accel-ctrl+
     #:+accel-shift+
     #:+accel-normal+
     #:accelerator-entry
     #:make-accelerator-entry
     #:accelerator-table
     #:make-accelerator-table
     #:define-accelerator-table
     #:delete-pointer
;;colour data symbols and functions
     #:colour-data
     #:make-colour-data
     #:choose-full
     #:custom-colour
;;font data symbols and functions
     #:font-data
     #:make-font-data
     #:allow-symbols
     #:show-help
     #:enable-effects
     #:initial-font
     #:chosen-font
     #:set-range
     #:encoding
     ))


(in-package :wxcl-structures)

(defclass calendar-date-attr (object)
  ()
  (:documentation "This class represents attributes of a calendar control."))

(defclass list-item (object)
  ()
  (:documentation "Stores information about a list-ctrl item or column."))

(defclass colour-data (object)
  ()
  (:documentation "This class holds a variety of information related to colour dialogs."))

(defclass font-data (object)
  ()
  (:documentation "This class holds a variety of information related to font dialogs."))


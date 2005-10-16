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
     #:delete
     #:font
     #:text-colour
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
	   ))

(in-package :wxcl-structures)

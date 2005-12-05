;;;defpackage.lisp
;;;License  : wxWindows License 3.1
;;;Author(s) : Surendra Singhi (surendra@asu.edu) 
;;;Copyright (C) 2005 Surendra Singhi 
;;;See the file LICENSE for information on usage and redistribution.
;;;
;;; $Header$
;;;

(defpackage :wxCL
    (:use :common-lisp :ffi)
  (:export #:+library-name+
      #:object
      #:size
      #:point
      #:rect)
  (:export 
      #:make-rect
      #:make-point
      #:make-size
      #:object-pointer
      #:start-app
      #:size-height
      #:size-width
      #:rect-position
      #:rect-size
      #:point-x
      #:point-y
      #:+default-size+
      #:+default-position+
      #:make-wx-instance
      #:invalidate-wx-instance
      )
  ;;some constants
  (:export
      #:+st-sizegrip+
      #:+size-auto-width+
      #:+size-auto-height+
      #:+size-use-existing+
      #:+size-allow-minus-one+
      #:+size-no-adjustments+
      #:+id-open+
      #:+id-close+
      #:+id-new+
      #:+id-save+
      #:+id-saveas+
      #:+id-revert+
      #:+id-exit+
      #:+id-undo+
      #:+id-redo+
      #:+id-help+
      #:+id-print+
      #:+id-print-setup+
      #:+id-preview+
      #:+id-about+
      ))

(in-package :wxCL)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (defconstant +library-name+ "../miscellaneous/wxc-msw2.6.2.dll"))

(defconstant +id-open+ 5000)
(defconstant +id-close+ 5001)
(defconstant +id-new+ 5002)
(defconstant +id-save+ 5003)
(defconstant +id-saveas+ 5004)
(defconstant +id-revert+ 5005)
(defconstant +id-exit+ 5006)
(defconstant +id-undo+ 5007)
(defconstant +id-redo+ 5008)
(defconstant +id-help+ 5009)
(defconstant +id-print+ 5010)
(defconstant +id-print-setup+ 5011)
(defconstant +id-preview+ 5012)
(defconstant +id-about+ 5013)

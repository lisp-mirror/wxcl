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
	   ))

(in-package :wxCL)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (defconstant +library-name+ "../miscellaneous/wxc-msw2.6.2.dll"))

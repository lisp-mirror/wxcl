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
	   #:closure
	   #:make-closure
	   #:start-app
	   #:object
	   #:size
	   #:point
	   #:rect
	   #:size-height
	   #:size-width
	   #:rect-position
	   #:rect-size
	   #:point-x
	   #:point-y
	   #:+default-size+
	   #:+default-position+
	   #:make-wx-instance
	   #:object-pointer
	   ))

(in-package :wxCL)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (defconstant +library-name+ "../miscellaneous/wxc-msw2.6.2.dll"))

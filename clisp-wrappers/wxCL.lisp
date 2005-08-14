;;;wxCL.lisp
;;;License  : GNU General Public License (GPL)
;;;Author(s) : Surendra Singhi (surendra@asu.edu) 
;;;Copyright (C) 2005 Surendra Singhi 
;;;See the file LICENSE for information on usage and redistribution.
;;;
;;; $Header$
;;;

(defpackage :wxCL
    (:use :common-lisp :ffi)
  (:export :+library-name+))

(in-package :wxCL)

(eval-when (:compile-toplevel :load-toplevel :execute)
  (defconstant +library-name+ "C:/cvs-synched/commit_access/wxcl/miscellaneous/wxc-msw2.4.2-0.9.4.dll"))



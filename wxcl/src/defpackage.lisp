
(defpackage :wxCL
    (:use :common-lisp :ffi)
  (:export #:+library-name+))

(eval-when (:compile-toplevel :load-toplevel :execute)
  (defconstant +library-name+ "../miscellaneous/wxc-msw2.6.2.dll"))


(defpackage :wxcl-layout
    (:use :common-lisp :ffi :wxcl)
  (:export
    #:box-sizer
    #:sizer
   ))

(in-package :wxcl-layout)

(defclass box-sizer (sizer)
  ()
  (:documentation "The basic idea behind a box sizer is that windows will most often\
 be laid out in rather simple basic geometry, typically in a row or a column or several hierarchies of either."))

(defclass sizer (object)
  ()
  (:documentation "Sizer is the abstract base class used for laying out subwindows in a window."))

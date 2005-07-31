;;; -*- lisp -*-

(in-package :asdf)

(defsystem wxCL
  :components ((:file "wxCL")
	       (:file "constants" :depends-on ("wxCL"))
	       (:file "wx_wrapper" :depends-on ("wxCL"))
	       (:file "wx_main" :depends-on ("wxCL" "wx_wrapper"))
	       (:file "wxBitmap" :depends-on ("wxCL"))
	       (:file "wxImage" :depends-on ("wxCL"))
	       (:file "wxDialog" :depends-on ("wxCL"))
	       (:file "wxFileDialog" :depends-on ("wxCL"))
	       (:file "wxImageList" :depends-on ("wxCL"))	       
	       ))


(defpackage :wxcl-gdi
    (:use :common-lisp :ffi)
  (:export #:colour
	   #:make-colour
	   #:delete
	   #:set
	   #:ok-p
	   #:red
	   #:green
	   #:blue
	   #:pixel
	   #:copy
	   #:set-by-name
	   #:valid-name-p
	   #:+red+
	   #:+green+
	   #:+blue+
	   #:+white+
	   #:+black+
	   #:+cyan+
	   #:+light-grey+

	   ))



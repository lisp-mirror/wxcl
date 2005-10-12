
(defpackage :wxcl-gdi
    (:use :common-lisp :ffi :Wxcl)
  (:export #:colour
	   #:make-colour
	   #:delete-object
	   #:set-colour
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



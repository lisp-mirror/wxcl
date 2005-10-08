
(defpackage :wxcl-controls
    (:use :common-lisp :ffi)
  (:export #:object-pointer
	   #:maximize
	   #:restore
	   #:iconize
	   #:maximized-p
	   #:iconized-p
	   #:icon
	   #:client-area-origin
	   #:status-bar
	   #:set-status-width
	   #:create-status-bar
	   #:title
	   #:shape
	   #:show-full-screen
	   #:full-screen-p
	   #:centre
	   #:default-position
	   #:default-size
	   #:rect
	   #:min-height
	   #:border-x
	   #:border-y))

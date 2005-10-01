
(defpackage :wxCL
    (:use :common-lisp :ffi)
  (:export #:object-pointer
	   #:frame
	   #:make-frame
	   #:maximize
	   #:restore
	   #:iconize
	   #:maximized-p
	   #:iconized-p
	   #:icon
	   #:client-area-origin
	   #:menu-bar
	   #:status-bar
	   #:set-status-width
	   #:create-status-bar
	   #:title
	   #:shape
	   #:show-full-screen
	   #:full-screen-p
	   #:centre
	   #:point
	   #:point-x
	   #:point-y
	   #:default-position
	   #:size
	   #:size-width
	   #:size-height
	   #:default-size
	   #:rect
	   #:position
	   #:size
	   #:make-status-bar
	   #:fields-count
	   #:status-text
	   #:min-height
	   #:border-x
	   #:border-y))
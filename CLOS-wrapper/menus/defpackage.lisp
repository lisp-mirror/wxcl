
(defpackage :wxcl-menus
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
	   #:border-y
	   #:+menu-tearoff
	   #:+item-separator
	   #:+item-normal
	   #:+item-check
	   #:+item-radio
	   #:+item-submenu
))

(defconstant +menu-tearoff 1)
(defconstant +mb-dockable 1)
(defconstant +item-submenu 1000)



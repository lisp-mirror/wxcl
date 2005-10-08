
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
	   #:border-y))



(defpackage :wxcl-windows
    (:use :common-lisp :ffi)
  (:export #:frame
	   #:make-frame
 ))

(defpackage :wxcl-dialogs
    (:use :common-lisp :ffi)
  (:export
   ))

(defpackage :wxcl-controls
    (:use :common-lisp :ffi)
  (:export
   ))

(defpackage :wxcl-menus
    (:use :common-lisp :ffi)
  (:export #:menu-bar
	   ))


(defpackage :wxcl-layout
    (:use :common-lisp :ffi)
  (:export
   ))

(defpackage :wxcl-dc
    (:use :common-lisp :ffi)
  (:export
   ))


(defpackage :wxcl-gdi
    (:use :common-lisp :ffi)
  (:export #:colour
   ))


(defpackage :wxcl-ipc
    (:use :common-lisp :ffi)
  (:export
   ))


(defpackage :wxcl-events
    (:use :common-lisp :ffi)
  (:export
   ))


(defpackage :wxcl-validators
    (:use :common-lisp :ffi)
  (:export
   ))

(defpackage :wxcl-clipboard
    (:use :common-lisp :ffi)
  (:export
   ))


(defpackage :wxcl-logging
    (:use :common-lisp :ffi)
  (:export
   ))


(defpackage :wxcl-net
    (:use :common-lisp :ffi)
  (:export
   ))


(defpackage :wxcl-printing
    (:use :common-lisp :ffi)
  (:export
   ))


(defpackage :wxcl-html
    (:use :common-lisp :ffi)
  (:export
   ))


(defpackage :wxcl-stream
    (:use :common-lisp :ffi)
  (:export
   ))


(defpackage :wxcl-file
    (:use :common-lisp :ffi)
  (:export
   ))


(defpackage :wxcl-thread
    (:use :common-lisp :ffi)
  (:export
   ))


(defpackage :wxcl-xml
    (:use :common-lisp :ffi)
  (:export
   ))


(defpackage :wxcl-db
    (:use :common-lisp :ffi)
  (:export
   ))


(defpackage :wxcl-misc
    (:use :common-lisp :ffi)
  (:export
   ))
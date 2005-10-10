(defpackage :wxcl-windows
    (:use :common-lisp :ffi)
  (:export #:frame
	   #:make-frame
	   #:maximize
	   #:restore
	   #:iconize
	   #:maximized-p
	   #:iconized-p
	   #:icon
	   #:menu-bar
	   #:status-bar
	   #:tool-bar
	   #:set-status-widths
	   #:create-status-bar
	   #:create-tool-bar
	   #:title
	   #:shape
	   #:show-full-screen
	   #:full-screen-p
	   #:centre
	   #:make-status-bar
	   #:fields-count
	   #:status-text
	   #:min-height
	   #:border-x
	   #:border-y
	   #:delete
	   #:add-control
	   #:add-separator
	   #:delete-tool
	   #:delete-tool-by-pos
	   #:enable-tool
	   #:tool-size
	   #:tool-bitmap-size
	   #:margins
	   #:tool-client-data
	   #:tool-enabled
	   #:tool-long-help
	   #:tool-packing
	   #:tool-state
	   #:insert-control
	   #:insert-separator
	   #:realize
	   #:margins
	   #:tool-bitmap-size
	   #:tool-long-help
	   #:tool-packing
	   #:tool-short-help
	   #:tool-separation
	   #:toggle-tool
	   #:+tb-horizontal+
	   #:+tb-3d-buttons+
	   #:+tb-dockable+
	   #:+tb-vertical+
	   #:+tb-horizontal+
	   #:+default-frame-style+
 ))

(defconstant +tb-3dbuttons+ 16)
(defconstant +tb-flat+ 32)
(defconstant +tb-dockable+ 64)
(defconstant +tb-vertical 8)
(defconstant +tb-horizontal 4)

(defconstant +default-frame-style+ 536878656)

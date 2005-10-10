;;;defpackage.lisp
;;;License  : wxWindows License 3.1
;;;Author(s) : Surendra Singhi (surendra@asu.edu) 
;;;Copyright (C) 2005 Surendra Singhi 
;;;See the file LICENSE for information on usage and redistribution.
;;;
;;; $Header$
;;;

(defpackage :wxcl-windows
    (:use :common-lisp :ffi :wxcl)
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
	   #:show
	   #:+tb-horizontal+
	   #:+tb-3d-buttons+
	   #:+tb-dockable+
	   #:+tb-vertical+
	   #:+tb-horizontal+
	   #:+default-frame-style+
	   #:+nb-fixedwidth+
	   #:+nb-left+
	   #:+nb-right+
	   #:+nb-bottom+
	   #:+nb-multiline+
	   #:+nb-top+
 ))




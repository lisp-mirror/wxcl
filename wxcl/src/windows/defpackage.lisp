;;;defpackage.lisp
;;;License  : wxWindows License 3.1
;;;Author(s) : Surendra Singhi (surendra@asu.edu) 
;;;Copyright (C) 2005 Surendra Singhi 
;;;See the file LICENSE for information on usage and redistribution.
;;;
;;; $Header$
;;;

(defpackage :wxcl-windows
    (:use #:common-lisp #:ffi :wxcl)
  ;;classes 
  (:export #:window
           #:frame)
  (:export #:window-size
           #:window-rect
           #:window-position
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
	   #:tool-enabled-p
	   #:tool-long-help
	   #:tool-packing
	   #:tool-state
      #:add-tool
      #:add-tool-ex
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
	   #:panel
 	   #:make-panel
 	   #:default-item
	   #:+tab-traversal+
;;scroll-bar related constants, methods, functions
      #:make-scrolled-window
	   #:scrolled-window
	   #:+vscroll+
	   #:+hscroll+
	   #:target-window
	   #:scroll
      #:set-scroll-bars
	   #:scroll-page-size
	   #:set-scroll-page-size
	   #:scroll-pixel-per-unit
	   #:enable-scrolling
	   #:view-start
	   #:virtual-size
	   #:calc-scrolled-position
	   #:calc-unscrolled-position
	   #:adjust-scrollbars
	   #:set-scroll-rate
      #:destroy
;;frame related constants
      #:+default-frame-style+
      #:+frame-ex-contexthelp+
      #:+frame-shaped+
      #:+frame-float-on-parent+
      #:+frame-tool-window+
      #:+fullscreen-nomenubar+
      #:+fullscreen-notoolbar+
      #:+fullscreen-nostatusbar+
      #:+fullscreen-noborder+
      #:+fullscreen-nocaption+
      #:+fullscreen-all+
;;window related methods, functions, etc
      #:close-window
;;status-bar related constants, methods, functions, etc
	   #:make-status-bar
      #:+sb-normal+
      #:+sb-flat+
      #:+sb-raised+
      #:+st-sizegrip+
	   ))

(in-package :wxcl-windows)

(defclass window (wxcl-events:evt-handler)
  ()
  (:documentation "The base class for all wxCL widgets."))

(defclass frame (window)
  ()
  (:documentation "The class for creating frames."))

(defclass mini-frame (frame)
  ()
  (:documentation "A miniframe is a frame with a small title bar. It is\
 suitable for floating toolbars that must not take up too much screen area."))

(defclass panel (window)
  ()
  (:documentation "A panel is a window on which controls are placed. It\
 is usually placed within a frame. It contains minimal extra functionality\
 over and above its parent class wxWindow; its main purpose is to be similar\
 in appearance and functionality to a dialog, but with the flexibility of\
 having any window as a parent."))

(defclass scrolled-window (panel)
  ()
  (:documentation "The wxScrolledWindow class manages scrolling for its client\
 area, transforming the coordinates according to the scrollbar positions, and\
 setting the scroll positions, thumb sizes and ranges according to the area in view."))

(defclass splitter-window (window)
  ()
  (:documentation "This class manages up to two subwindows. The current view\
 can be split into two programmatically (perhaps from a menu command), and\
 unsplit either programmatically or via the wxSplitterWindow user interface."))

(defclass status-bar (window)
  ()
  (:documentation "Status bar is a narrow window that can be placed along the bottom of\
 a frame to give small amounts of status information. It can contain one or more fields,\
 one or more of which can be variable length according to the size of the window."))

(defclass tool-bar (window)
  ()
  (:documentation "Class defining tool bar. You may also create a toolbar that is managed by\
 the frame, by calling the method create-tool-bar which specializes on a frame object."))

(defclass tip-window (window)
  ()
  (:documentation "Shows simple text in a popup tip window on creation.\
 The window automatically destroys itself when the user clicks on it or it loses the focus."))


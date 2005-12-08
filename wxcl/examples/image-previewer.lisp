;;;image-file.lisp
;;;License  : Public domain
;;;Author(s) : Surendra Singhi (surendra@asu.edu) 
;;;Copyright (C) 2005 Surendra Singhi 
;;;See the file LICENSE for information on usage and redistribution.
;;;
;;; $Header$
;;;

(asdf:operate 'asdf:load-op 'wxcl)

(use-package :wxcl)
(use-package :wxcl-events)
(use-package :wxcl-windows)
(use-package :wxcl-menus)

(defvar OPEN-TOOLBAR-ID 50001)
(defvar CLOSE-TOOLBAR-ID 60001)

(defun create-menu () 
  (let((file-menu (wxcl-menus:make-menu))
       (help-menu (wxcl-menus:make-menu)))
    (wxcl-menus:append-string file-menu +id-open+ "&Open      Ctrl+O" :help-String "Open an image")
    (wxcl-menus:append-string file-menu +id-close+ "&Close      Ctrl+C" :help-string "Close an image")
 	 (wxcl-menus:append-separator file-menu)
    (wxcl-menus:append-string file-menu +id-exit+ "&Quit        Alt+F4" :help-string "Quit the image viewer.")
    (wxcl-menus:append-string help-menu +id-about+ "&About     Ctrl+A" :help-string "About Image Viewer")
    (wxcl-menus:make-menu-bar (list file-menu help-menu) (list "&File" "&Help"))))

; (define-accelrator-table acc-table
;     (wxcl-structures:+accel-ctrl+ (char-int #\o) wxcl:+id-open+)
;     (wxcl-structures:+accel-ctrl+ (char-int #\c) wxcl:+id-close+)
;     (wxcl-structures:+accel-ctrl+ (char-int #\a) wxcl:+id-about+))
  
(defun accelerator-table ()
  (wxcl-structures:make-accelerator-table (wxcl-structures:make-accelerator-entry wxcl-structures:+accel-ctrl+
                                                                                  (char-int #\o) +id-open+)
                                          (wxcl-structures:make-accelerator-entry wxcl-structures:+accel-ctrl+
                                                                                  (char-int #\c) +id-close+)
                                          (wxcl-structures:make-accelerator-entry wxcl-structures:+accel-ctrl+
                                                                                  (char-int #\a) +id-about+)))

(defun add-status-bar(frame)
  (let ((st (wxcl-windows:create-status-bar frame 2 0)))
    (setf (wxcl-windows:fields-count st) 3)))

(defun add-tool-bar(frame)
  (let ((tb (wxcl-windows:create-tool-bar frame
                                          (boole boole-ior wxcl-windows:+tb-3d-buttons+
                                                 wxcl-windows:+tb-horizontal+)))
        (open-ico (wxcl-gdi:make-bitmap-load "f_open.ico" wxcl-gdi:+bitmap-type-ico+))
        (close-ico (wxcl-gdi:make-bitmap-load "f_closed.ico" wxcl-gdi:+bitmap-type-ico+)))
    (wxcl-windows:add-tool tb +id-open+ open-ico :short-help "Open file" :long-help "Opens Image files.")
    (wxcl-windows:add-tool tb +id-close+ close-ico :short-help "Close file" :long-help "Closes Image files.")
    (wxcl-windows:realize tb)))

;(defvar frame nil)

(defun open-image (frame evt)
  (when evt
    (let ((filename
	   (wxcl-get-filepath frame
			      :message "open file"
			      :style (boole boole-ior wxOPEN wxFILE_MUST_EXIST)
			      :wildcard "Image files(*.bmp;*.gif;*.png;*.jpeg;*.jpg)|*.bmp;*.gif;*.png;*.jpeg;*.jpg")))
      (when filename
	(print filename)
	(let* ((bmp (wxbitmap_createload filename wxBITMAP_TYPE_ANY))
	       (fr (wxFrame_create frame -1 filename 10 10 500 500 wxDEFAULT_FRAME_STYLE))
	       (sw (wxScrolledWindow_Create fr -1 -1 -1 -1 -1 (boole boole-ior wxHSCROLL wxVSCROLL)))
	       (bmp-static (wxStaticbitmap_create sw -1 bmp -1 -1 -1 -1 0)))
	  (wxFrame_SetIcon fr (wxicon_createload "wxcl-logo.ico" wxBITMAP_TYPE_ICO -1 -1))
	  (print (wxFrame_gettitle fr))
	  (wxScrolledWindow_SetScrollbars sw 20 20 50 50 -1 -1 0)
	  (wxWindow_Show fr))))))

(defun close-image (data evt)
  (when evt
    (print evt)
    (print data)
    (print "close image")))

(defun about-box (frame evt)
  (when evt
    (show-message-dialog frame
			 "Image viewer demonstrates some of the features of wxCL. All rights reserved, this program is distributed under wxWindows License."
			 "Image Viewer - wxCL"
			 wxOK)))

(defun quit-viewer (frame evt)
  (when evt
    (wxcl-windows:close-window frame t)))

; (defun exit-viewer (fun frame evt)
;   (when evt
;     (wxEvent_Skip evt))) ;skip the event for default handler

(defun register-events (frame)
  (connect frame +id-open+ +event-command-menu-selected+  (lambda (evt) (open-image frame evt)))
  (connect frame +id-close+ +event-command-menu-selected+ (lambda (evt) (close-image frame evt)))
  (connect frame +id-about+ +event-command-menu-selected+ (lambda (evt) (about-box frame evt)))
  (connect frame +id-exit+ +event-command-menu-selected+ (lambda (evt) (quit-viewer frame evt))))
; ;  (wxevthandler_connect frame -1 (expEVT_CLOSE_WINDOW) (wxClosure_Create #'do-nothing frame))
;   )

(defun init-func (evt)
  (let ((fr (wxcl-windows:make-frame nil -1 "wxCL - Image previewer")))
    (let ((panel (wxcl-windows:make-panel fr)))
      (setf (wxcl-windows:menu-bar fr) (create-menu))
;   (add-accelerator-keys frame)
      (add-status-bar fr)
      (add-tool-bar fr)
      (setf (wxcl-windows:icon fr) (wxcl-gdi:make-icon-from-file "wxcl-logo.ico" +bitmap-type-ico+))
;   (register-events frame)
      (wxcl-windows:show fr)
      )))

(wxcl:start-app #'init-func)

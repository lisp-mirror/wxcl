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
  (let((file-menu (wxcl-menus:make-menu-with-items
                   (string +id-open+ "&Open      Ctrl+O" :help-String "Open an image")
                   (string +id-close+ "&Close      Ctrl+C" :help-string "Close an image")
                   (separator)
                   (string +id-exit+ "&Quit        Alt+F4" :help-string "Quit the image viewer.")))
       (help-menu (wxcl-menus:make-menu-with-items
                   (string +id-about+ "&About     Ctrl+A" :help-string "About Image Viewer"))))
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
        (open-ico (wxcl-gdi:make-bitmap-from-file "f_open.ico" wxcl-gdi:+bitmap-type-ico+))
        (close-ico (wxcl-gdi:make-bitmap-from-file "f_closed.ico" wxcl-gdi:+bitmap-type-ico+)))
    (wxcl-windows:add-tool tb +id-open+ open-ico :short-help "Open file" :long-help "Opens Image files.")
    (wxcl-windows:add-tool tb +id-close+ close-ico :short-help "Close file" :long-help "Closes Image files.")
    (wxcl-windows:realize tb)))

;(defvar frame nil)

(defun open-image (frame evt)
  (when evt
    (let ((filename (file-selector "open file"
                                   :style (boole boole-ior +open+ +file-must-exist+)
                                   :wildcard
                                   "Image files(*.bmp;*.gif;*.png;*.jpeg;*.jpg)|*.bmp;*.gif;*.png;*.jpeg;*.jpg")))
      (unless (string= "" filename)
        (let* ((bmp (wxcl-gdi:make-bitmap-from-file filename wxcl-gdi:+bitmap-type-any+))
               (fr (make-frame frame -1 filename))
               (sw (make-scrolled-window fr))
               (bmp-static (wxcl-gdi:make-static-bitmap sw -1 bmp)))
          (setf (icon fr) (wxcl-gdi:make-icon-from-file "wxcl-logo.ico" wxcl-gdi:+bitmap-type-ico+))
          (set-scroll-bars sw 20 20 50 50)
          (show fr))))))

(defun close-image (data evt)
  (when evt
    (print evt)
    (print data)
    (print "close image")))

(defun about-box (evt)
  (when evt
    (message-box "Image viewer demonstrates some of the features of wxCL.\
This program is in public domain."
                 :caption "Image Viewer - wxCL")))

(defun quit-viewer (frame evt)
  (when evt
    (wxcl-windows:close-window frame t)))

; (defun exit-viewer (fun frame evt)
;   (when evt
;     (wxEvent_Skip evt))) ;skip the event for default handler

(defun register-events (frame)
  (connect frame +id-open+ +event-command-menu-selected+  (lambda (evt) (open-image frame evt)))
  (connect frame +id-close+ +event-command-menu-selected+ (lambda (evt) (close-image frame evt)))
  (connect frame +id-about+ +event-command-menu-selected+ #'about-box)
  (connect frame +id-exit+ +event-command-menu-selected+ (lambda (evt) (quit-viewer frame evt))))
; ;  (wxevthandler_connect frame -1 (expEVT_CLOSE_WINDOW) (wxClosure_Create #'do-nothing frame))
;   )

(defun init-func (evt)
  (let* ((fr (make-frame nil -1 "wxCL - Image previewer"))
         (panel (make-panel fr)))
    (setf (menu-bar fr) (create-menu))
;   (add-accelerator-keys frame)
    (add-status-bar fr)
    (add-tool-bar fr)
    (setf (wxcl-windows:icon fr) (wxcl-gdi:make-icon-from-file "wxcl-logo.ico" wxcl-gdi:+bitmap-type-ico+))
    (register-events fr)
    (show fr)))

(wxcl:start-app #'init-func)

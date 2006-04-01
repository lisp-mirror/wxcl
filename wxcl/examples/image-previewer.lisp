;;;image-file.lisp
;;;License  : Public domain
;;;Author(s) : Surendra Singhi (surendra@asu.edu) 
;;;Copyright (C) 2005 Surendra Singhi 
;;;See the file LICENSE for information on usage and redistribution.
;;;
;;; $Header: /cvsroot/wxcl/wxcl/examples/image-previewer.lisp,v 1.7 2005/12/12 07:22:00 efuzzyone Exp $
;;;

(eval-when (:compile-toplevel :load-toplevel :execute)
    (asdf:operate 'asdf:load-op 'wxcl))

(defpackage #:image-viewer
    (:use #:wxcl #:cl))

(in-package #:image-viewer)


(defvar *frame* nil)

(defun create-menu () 
  (let((file-menu (make-menu-with-items (string +id-open+ "&Open      Ctrl+O" :help-String "Open an image")
                                        (string +id-close+ "&Close      Ctrl+C" :help-string "Close an image")
                                        (separator)
                                        (string +id-exit+ "&Quit        Alt+F4" :help-string "Quit the image viewer.")))
       (help-menu (make-menu-with-items (string +id-about+ "&About     Ctrl+A" :help-string "About Image Viewer"))))
    (make-menu-bar (list file-menu help-menu) (list "&File" "&Help"))))

(defun create-accelerator-table ()
  (make-accelerator-table (make-accelerator-entry +accel-ctrl+ (char-int #\O) +id-open+)
                          (make-accelerator-entry +accel-ctrl+ (char-int #\C) +id-close+)
                          (make-accelerator-entry +accel-ctrl+ (char-int #\A) +id-about+)))

(defun add-status-bar()
  (let ((st (create-status-bar *frame* 2 0)))
    (setf (fields-count st) 3)))

(defun add-tool-bar()
  (let ((tb (create-tool-bar *frame* (boole boole-ior +tb-3d-buttons+ +tb-horizontal+)))
        (open-ico (make-bitmap-from-file "f_open.ico" +bitmap-type-ico+))
        (close-ico (make-bitmap-from-file "f_closed.ico" +bitmap-type-ico+)))
    (add-tool tb +id-open+ open-ico :short-help "Open file" :long-help "Opens Image files.")
    (add-tool tb +id-close+ close-ico :short-help "Close file" :long-help "Closes Image files.")
    (realize tb)))



(cffi:defcallback open-image :void ((evt :pointer))
  (when evt
    (let ((filename (file-selector "open file"
                                   :style (boole boole-ior +open+ +file-must-exist+)
                                   :wildcard
                                   "Image files(*.bmp;*.gif;*.png;*.jpeg;*.jpg)|*.bmp;*.gif;*.png;*.jpeg;*.jpg")))
      (unless (string= "" filename)
        (let* ((bmp (make-bitmap-from-file filename +bitmap-type-any+))
               (fr (make-frame *frame* -1 filename))
               (sw (make-scrolled-window fr))
               (bmp-static (make-static-bitmap sw -1 bmp)))
          (setf (icon fr) (make-icon-from-file "wxcl-logo.ico" +bitmap-type-ico+))
          (set-scroll-bars sw 20 20 50 50)
          (show fr))))))

(cffi:defcallback close-image :void ((evt :pointer))
  (when evt
    (print "close image, but which one?")))

(cffi:defcallback about-box :void ((evt :pointer))
  (when evt
    (message-box "Image viewer demonstrates some of the features of wxCL.\
This program is in public domain."
                 :caption "Image Viewer - wxCL")))

(cffi:defcallback quit-viewer :void ((evt :pointer))
  (when evt
    (close-window *frame* t)))


(defun register-events ()
  (connect *frame* +id-open+ +event-command-menu-selected+ (cffi:callback open-image))
  (connect *frame* +id-close+ +event-command-menu-selected+ (cffi:callback close-image))
  (connect *frame* +id-about+ +event-command-menu-selected+ (cffi:callback about-box))
  (connect *frame* +id-exit+ +event-command-menu-selected+ (cffi:callback quit-viewer)))

(defun init-func (evt)
  (setf *frame* (make-frame nil -1 "wxCL - Image previewer"))
  (let* ((panel (make-panel *frame*)))
    (setf (menu-bar *frame*) (create-menu))
;    (setf (accelerator-table *frame*) (create-accelerator-table))
    (add-status-bar)
    (add-tool-bar)
    (setf (icon *frame*) (make-icon-from-file "wxcl-logo.ico" +bitmap-type-ico+))
    (register-events)
    (show *frame*)))

(wxcl:start-app #'init-func)

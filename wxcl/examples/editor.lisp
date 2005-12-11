;;;editor.lisp
;;;License  : Public domain
;;;Author(s) : Surendra Singhi (surendra@asu.edu) 
;;;            Andre Vargas Abs da Cruz (andrev@ele.puc-rio.br)
;;;Copyright (C) 2005 Surendra Singhi, Andre Vargas Abs da Cruz
;;;See the file LICENSE for information on usage and redistribution.
;;;
;;; $Header$
;;;

(asdf:operate 'asdf:load-op 'wxcl)

(use-package :wxCL)
(use-package :wxcl-windows)
(use-package :wxcl-events)

(defconstant +id-font+ 10001)
(defconstant +id-color+ 10002)
  
(defun add-menu ()
  (let ((file-menu (wxcl-menus:make-menu-with-items
                    (string +id-new+ "&New      Ctrl+N" :help-string "Open a new file")
                    (separator)
                    (string +id-open+ "&Open ... Ctrl+O" :help-string "Open an existing file")
                    (string +id-save+ "&Save     Ctrl+S" :help-string "Save file")
                    (string +id-saveas+ "Save &As ..." :help-string "Save file with a different name")
                    (string +id-close+ "&Close    Ctrl+C" :help-string "Open an existing file")
                    (separator)
                    (string +id-exit+ "&Quit" :help-string "Quit the text editor")))
        (help-menu (wxcl-menus:make-menu-with-items
                    (string +id-about+ "&About     Ctrl+A" :help-string "About Image Viewer")))
        (edit-menu (wxcl-menus:make-menu-with-items
                    (string +id-font+ "Change &Font..." :help-string "Opens dialog for selecting new font.")
                    (string +id-color+ "Change &Color..." :help-string "Opens dialog for selecting new color."))))
    (wxcl-menus:make-menu-bar (list file-menu edit-menu help-menu) (list "&File" "&Edit" "&Help"))))

(defun open-file (nb evt)
  (when evt
    (let ((filename (file-selector "open file"
                                   :style (boole boole-ior +open+ +file-must-exist+)
                                   :wildcard "text files(*.txt;*.lisp;*.html)|*.txt;*.lisp;*.html")))
      (unless (string= "" filename)
        (let ((txt-control (wxcl-controls:make-text-control nb :style (logior wxcl-controls:+te-multiline+
                                                                              wxcl-controls:+te-rich+
                                                                              wxcl-controls:+te-rich2+))))
          (wxcl-controls:load-file txt-control filename)
          (wxcl-controls:add-page nb txt-control filename))))))

(defun save-file (nb evt)
  (when evt
    (let ((sel (wxcl-controls:selection nb)))
      (unless (= sel -1)
        (let ((txt-control (change-class (wxcl-controls:get-page nb sel) 'wxcl-controls:text-control))
              (filename (wxcl-controls:page-text nb sel)))
          (when (wxcl-controls:modified-p txt-control)
            (if (string= filename "unknown")
                (saveas-file nb evt)
                (wxcl-controls:save-file txt-control filename))))))))

(defun saveas-file (nb evt)
  (when evt
    (let ((sel (wxcl-controls:selection nb)))
      (unless (= sel -1)
        (let ((txt-control (change-class (wxcl-controls:get-page nb sel) 'wxcl-controls:text-control))
              (filename (file-selector "Save File As"
                                       :style (boole boole-ior +save+ +overwrite-prompt+))))
          (unless (string= "" filename)
            (setf (wxcl-controls:page-text nb sel) filename)
            (wxcl-controls:save-file txt-control filename)))))))

(defun change-font (nb evt)
  (when evt
    (let ((sel (wxcl-controls:selection nb)))
      (unless (= sel -1)
        (let* ((txt-control (change-class (wxcl-controls:get-page nb sel) 'wxcl-controls:text-control))
               (style (wxcl-controls:default-style txt-control))
               (font (wxcl-structures:font style))
               (new-font (get-font-from-user txt-control font)))
          (when (wxcl-gdi:ok-p new-font)
            (setf (wxcl-structures:font style) new-font
                  (wxcl-controls:default-style txt-control) style
                  (wxcl-controls:style txt-control 0 (wxcl-controls:last-position txt-control)) style)))))))

(defun change-color (nb evt)
  (when evt
    (let ((sel (wxcl-controls:selection nb)))
      (unless (= sel -1)
        (let* ((txt-control (change-class (wxcl-controls:get-page nb sel) 'wxcl-controls:text-control))
               (style (wxcl-controls:default-style txt-control))
               (colour (wxcl-structures:text-colour style))
               (new-colour (get-colour-from-user txt-control colour)))
          (when (wxcl-gdi:ok-p new-colour)
            (setf (wxcl-structures:text-colour style) new-colour
                  (wxcl-controls:default-style txt-control) style
                  (wxcl-controls:style txt-control 0 (wxcl-controls:last-position txt-control)) style)))))))

(defun create-accelerator-table ()
  (wxcl-structures:make-accelerator-table (wxcl-structures:make-accelerator-entry wxcl-structures:+accel-ctrl+
                                                                                  (char-int #\N) +id-new+)
                                          (wxcl-structures:make-accelerator-entry wxcl-structures:+accel-ctrl+
                                                                                  (char-int #\O) +id-open+)
                                          (wxcl-structures:make-accelerator-entry wxcl-structures:+accel-ctrl+
                                                                                  (char-int #\x) +id-close+)
                                          (wxcl-structures:make-accelerator-entry wxcl-structures:+accel-ctrl+
                                                                                  (char-int #\X) +id-save+)
                                          (wxcl-structures:make-accelerator-entry wxcl-structures:+accel-ctrl+
                                                                                  (char-int #\A) +id-about+)))


(defun add-tool-bar(frame)
  (let ((tb (create-tool-bar frame (boole boole-ior +tb-3d-buttons+ +tb-horizontal+)))
        (open-ico (wxcl-gdi:make-bitmap-from-file "f_open.ico" wxcl-gdi:+bitmap-type-ico+))
        (close-ico (wxcl-gdi:make-bitmap-from-file "f_closed.ico" wxcl-gdi:+bitmap-type-ico+)))
    (add-tool tb +id-open+ open-ico :short-help "Open file" :long-help "Opens Image files.")
    (add-tool tb +id-close+ close-ico :short-help "Close file" :long-help "Closes Image files.")
    (realize tb)))

(defun new-tab (nb evt)
  (when evt
    (let* ((txtcontrol (wxcl-controls:make-text-control nb :style (logior wxcl-controls:+te-multiline+
                                                                          wxcl-controls:+te-rich+
                                                                          wxcl-controls:+te-rich2+))))
      (wxcl-controls:add-page nb txtcontrol "Unknown"))))

(defun close-tab (nb evt)
  (when evt
    (let ((sel (wxcl-controls:selection nb)))
      (unless (= sel -1)
        (let* ((txtcontrol (wxcl-controls:get-page nb sel)))
          (wxcl-controls:remove-page nb sel)
          (destroy txtcontrol))))))

(defun quit-program (frame evt)
  (when evt
    (close frame t)))

(defun about-box (evt)
  (when evt
    (message-box "Image viewer demonstrates some of the features of wxCL.\
This program is in public domain."
                 :caption "Image Viewer - wxCL")))

(defun register-events (frame nb)
  (connect frame +id-about+ +event-command-menu-selected+ #'about-box)
  (connect frame +id-new+ +event-command-menu-selected+ (lambda (evt) (new-tab nb evt)))
  (connect frame +id-open+ +event-command-menu-selected+ (lambda (evt) (open-file nb evt)))
  (connect frame +id-save+ +event-command-menu-selected+ (lambda (evt) (save-file nb evt)))
  (connect frame +id-saveas+ +event-command-menu-selected+ (lambda (evt) (saveas-file nb evt)))
  (connect frame +id-close+ +event-command-menu-selected+ (lambda (evt) (close-tab nb evt)))
  (connect frame +id-exit+ +event-command-menu-selected+ (lambda (evt) (quit-program frame evt)))
  (connect frame +id-font+ +event-command-menu-selected+ (lambda (evt) (change-font nb evt)))
  (connect frame +id-color+ +event-command-menu-selected+ (lambda (evt) (change-color nb evt))))


(defun init-func (evt)
  (let* ((fr (make-frame nil -1 "wxCL - Simple Text Editor"))
         (nb (wxcl-controls:make-notebook fr)))
    (setf (menu-bar fr) (add-menu))
    (setf (accelerator-table fr) (create-accelerator-table))
    (add-tool-bar fr)
    (setf (wxcl-windows:icon fr) (wxcl-gdi:make-icon-from-file "wxcl-logo.ico" wxcl-gdi:+bitmap-type-ico+))
    (register-events fr nb)
    (show fr)
    (show nb)))

(wxcl:start-app #'init-func)

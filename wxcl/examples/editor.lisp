;;;editor.lisp
;;;License  : Public domain
;;;Author(s) : Surendra Singhi (surendra@asu.edu) 
;;;            Andre Vargas Abs da Cruz (andrev@ele.puc-rio.br)
;;;Copyright (C) 2005 Surendra Singhi, Andre Vargas Abs da Cruz
;;;See the file LICENSE for information on usage and redistribution.
;;;
;;; $Header: /cvsroot/wxcl/wxcl/examples/editor.lisp,v 1.2 2005/12/12 07:22:00 efuzzyone Exp $
;;;

(asdf:operate 'asdf:load-op 'wxcl)

(defpackage #:editor
    (:use #:wxcl #:cl))

(in-package #:editor)

(defconstant +id-font+ 10001)
(defconstant +id-color+ 10002)

(defvar *frame* nil)
(defvar *nb* nil)

; (define-menu file-menu ()
;   (string (+ 1000 +id-new+) "&New      Ctrl+N" :help-string "Open a new file")
;   (separator))

; (define-menu-bar my-menu-bar ()
;   ("&File" ()
;            (string +id-new+ "&New      Ctrl+N" :help-string "Open a new file")
;            (separator)
;            (string +id-open+ "&Open ... Ctrl+O" :help-string "Open an existing file")
;            (string +id-save+ "&Save     Ctrl+S" :help-string "Save file")
;            (string +id-saveas+ "Save &As ..." :help-string "Save file with a different name")
;            (string +id-close+ "&Close    Ctrl+X" :help-string "Open an existing file")
;            (sub-menu -1 "Feil" file-menu)
;            (separator)
;            (string +id-exit+ "&Quit" :help-string "Quit the text editor"))
;   ("&Edit" ()
;            (string +id-font+ "Change &Font..." :help-string "Opens dialog for selecting new font.")
;            (string +id-color+ "Change &Color..." :help-string "Opens dialog for selecting new color."))
;   ("&Help" ()
;            (string +id-about+ "&About     Ctrl+A" :help-string "About Image Viewer")))

; (print wxcl::*function-list*)

(defun add-menu()
  (let ((file-menu (make-menu-with-items
                    (string +id-new+ "&New      Ctrl+N" :help-string "Open a new file")
                    (separator)
                    (string +id-open+ "&Open ... Ctrl+O" :help-string "Open an existing file")
                    (string +id-save+ "&Save     Ctrl+S" :help-string "Save file")
                    (string +id-saveas+ "Save &As ..." :help-string "Save file with a different name")
                    (string +id-close+ "&Close    Ctrl+X" :help-string "Open an existing file")
                    (separator)
                    (string +id-exit+ "&Quit" :help-string "Quit the text editor")))
        (help-menu (make-menu-with-items
                    (string +id-about+ "&About     Ctrl+A" :help-string "About Image Viewer")))
        (edit-menu (make-menu-with-items
                    (string +id-font+ "Change &Font..." :help-string "Opens dialog for selecting new font.")
                    (string +id-color+ "Change &Color..." :help-string "Opens dialog for selecting new color."))))
    (make-menu-bar (list file-menu edit-menu help-menu) (list "&File" "&Edit" "&Help"))))

(defun open-file(evt)
  (when evt
    (print (wxcl::wxObject_GetClassInfo evt))
    (print (wxcl::wxClassInfo_GetClassName (wxcl::wxObject_GetClassInfo evt)))
    (let ((filename (file-selector "open file"
                                   :style (boole boole-ior +open+ +file-must-exist+)
                                   :wildcard "text files(*.txt;*.lisp;*.html)|*.txt;*.lisp;*.html")))
      (unless (string= "" filename)
        (let ((txt-control (make-text-control *nb* :style (logior +te-multiline+
                                                                  +te-rich+
                                                                  +te-rich2+))))
          (load-file-into-text-control txt-control filename)
          (add-page *nb* txt-control filename))))))

(defun save-text-file(evt)
  (when evt
    (let ((sel (selection *nb*)))
      (unless (= sel -1)
        (let ((txt-control (change-class (get-page *nb* sel) 'text-control))
              (filename (page-text *nb* sel)))
          (when (modified-p txt-control)
            (if (string= filename "unknown")
                (%save-file)
                (save-file txt-control filename))))))))

(defun %save-file()
  (let ((sel (selection *nb*)))
    (unless (= sel -1)
      (let ((txt-control (change-class (get-page *nb* sel) 'text-control))
            (filename (file-selector "Save File As"
                                     :style (boole boole-ior +save+ +overwrite-prompt+))))
        (unless (string= "" filename)
          (setf (page-text *nb* sel) filename)
          (save-file txt-control filename))))))

(defun saveas-file (evt)
  (when evt
    (%save-file)))

(defun change-font (evt)
  (when evt
    (let ((sel (selection *nb*)))
      (unless (= sel -1)
        (let* ((txt-control (change-class (get-page *nb* sel) 'text-control))
               (style (default-style txt-control))
               (font (font style))
               (new-font (get-font-from-user txt-control font)))
          (when (ok-p new-font)
            (setf (font style) new-font
                  (default-style txt-control) style)
            (set-range-style txt-control 0 (last-position txt-control) style)))))))

(defun change-color(evt)
  (when evt
    (let ((sel (selection *nb*)))
      (unless (= sel -1)
        (let* ((txt-control (change-class (get-page *nb* sel) 'text-control))
               (style (default-style txt-control))
               (colour (text-colour style))
               (new-colour (get-colour-from-user txt-control colour)))
          (when (ok-p new-colour)
            (setf (text-colour style) new-colour
                  (default-style txt-control) style)
            (set-range-style txt-control 0 (last-position txt-control) style)))))))

(defun create-accelerator-table ()
  (make-accelerator-table (make-accelerator-entry +accel-ctrl+
                                                  (char-int #\N) +id-new+)
                          (make-accelerator-entry +accel-ctrl+
                                                  (char-int #\O) +id-open+)
                          (make-accelerator-entry +accel-ctrl+
                                                  (char-int #\X) +id-close+)
                          (make-accelerator-entry +accel-ctrl+
                                                  (char-int #\S) +id-save+)
                          (make-accelerator-entry +accel-ctrl+
                                                  (char-int #\A) +id-about+)))


(defun add-tool-bar (frame)
  (let ((tb (create-tool-bar frame (boole boole-ior +tb-3d-buttons+ +tb-horizontal+)))
        (open-ico (make-bitmap-from-file "f_open.ico" +bitmap-type-ico+))
        (close-ico (make-bitmap-from-file "f_closed.ico" +bitmap-type-ico+)))
    (add-tool tb +id-open+ open-ico :short-help "Open file" :long-help "Opens Image files.")
    (add-tool tb +id-close+ close-ico :short-help "Close file" :long-help "Closes Image files.")
    (realize tb)))

(defun new-tab(evt)
  (when evt
    (let* ((txtcontrol (make-text-control *nb* :style (logior +te-multiline+
                                                              +te-rich+
                                                              +te-rich2+))))
      (add-page *nb* txtcontrol "Unknown"))))

(defun close-tab(evt)
  (when evt
    (let ((sel (selection *nb*)))
      (unless (= sel -1)
        (let* ((txtcontrol (get-page *nb* sel)))
          (remove-page *nb* sel)
          (destroy txtcontrol))))))

(defun quit-program(evt)
  (when evt
    (close-window *frame* t)))

(defun about-box(evt)
  (when evt
    (message-box "Image viewer demonstrates some of the features of wxCL.\
This program is in public domain."
                 :caption "Image Viewer - wxCL")))

(defun register-events (frame)
  (connect frame +id-about+ +event-command-menu-selected+ #'about-box)
  (connect frame +id-new+ +event-command-menu-selected+ #'new-tab)
  (connect frame +id-open+ +event-command-menu-selected+ #'open-file)
  (connect frame +id-save+ +event-command-menu-selected+ #'save-text-file)
  (connect frame +id-saveas+ +event-command-menu-selected+ #'saveas-file)
  (connect frame +id-close+ +event-command-menu-selected+ #'close-tab)
  (connect frame +id-exit+ +event-command-menu-selected+ #'quit-program)
  (connect frame +id-font+ +event-command-menu-selected+ #'change-font)
  (connect frame +id-color+ +event-command-menu-selected+ #'change-color))


(defun init-func (evt)
  (setf *frame* (make-frame nil -1 "wxCL - Simple Text Editor"))
  (setf *nb* (make-notebook *frame*))
;  (print file-menu)
;  (setf (menu-bar *frame*) my-menu-bar)
  (setf (menu-bar *frame*) (add-menu))
                    
                                        ;(setf (accelerator-table *frame*) (create-accelerator-table))
  (add-tool-bar *frame*)
  (setf (icon *frame*) (make-icon-from-file "wxcl-logo.ico" +bitmap-type-ico+))
  (register-events *frame*)
  (show *frame*)
  (show *nb*)
  )

(start-app #'init-func)

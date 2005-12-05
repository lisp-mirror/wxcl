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
(use-package :wxcl-windows)
(use-package :wxcl-menus)

(defvar OPEN-TOOLBAR-ID 50001)
(defvar CLOSE-TOOLBAR-ID 60001)

(defun create-menu () 
  (let((file-menu (wxcl-menus:make-menu))
       (help-menu (wxcl-menus:make-menu)))
    (wxcl-menus:append-string file-menu wxcl:+ID-OPEN+ "&Open      Ctrl+O" :help-String "Open an image")
    (wxcl-menus:append-string file-menu wxcl:+ID-CLOSE+ "&Close      Ctrl+C" :help-string "Close an image")
 	 (wxcl-menus:append-separator file-menu)
    (wxcl-menus:append-string file-menu wxcl:+ID-EXIT+ "&Quit        Alt+F4" :help-string "Quit the image viewer.")
    (wxcl-menus:append-string help-menu wxcl:+ID-ABOUT+ "&About     Ctrl+A" :help-string "About Image Viewer")
    (wxcl-menus:make-menu-bar (list file-menu help-menu) (list "&File" "&Help"))))

; (define-accelrator-table acc-table
;     (wxcl-structures:+accel-ctrl+ (char-int #\o) wxcl:+id-open+)
;     (wxcl-structures:+accel-ctrl+ (char-int #\c) wxcl:+id-close+)
;     (wxcl-structures:+accel-ctrl+ (char-int #\a) wxcl:+id-about+))
  
(defun accelerator-table ()
  (wxcl-structures:make-accelerator-table (wxcl-structures:make-accelerator-entry wxcl-structures:+accel-ctrl+
                                                                                  (char-int #\o) wxcl:+id-open+)
                                          (wxcl-structures:make-accelerator-entry wxcl-structures:+accel-ctrl+
                                                                                  (char-int #\c) wxcl:+id-close+)
                                          (wxcl-structures:make-accelerator-entry wxcl-structures:+accel-ctrl+
                                                                                  (char-int #\a) wxcl:+id-about+)))

(defun add-status-bar(frame)
  (let ((st (wxcl-windows:create-status-bar frame 2 0)))
    (setf (wxcl-windows:fields-count st) 3)))

(defun add-tool-bar(frame)
  (let ((tb (wxcl-windows:create-tool-bar frame
                                          (boole boole-ior wxcl-windows:+tb-3d-buttons+
                                                 wxcl-windows:+tb-horizontal+))))
    ;(open-ico (wxbitmap_createload "f_open.ico" wxBITMAP_TYPE_ICO))
    ;(close-ico (wxbitmap_createload "f_closed.ico" wxBITMAP_TYPE_ICO)))
;    (wxcl-windows:AddTool tb wxID_OPEN open-ico "Open file" "Opens Image files.")
;    (wxcl-windows:addtool tb wxID_CLOSE close-ico "Close file" "Closes Image files.")
    (wxcl-windows:realize tb)))

(defvar frame nil)

(defun open-image (evt)
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

(defun close-image (fun data evt)
  (when evt
    (print evt)
    (print data)
    (print "close image")))

(defun about-box (fun frame evt)
  (when evt
    (show-message-dialog frame
			 "Image viewer demonstrates some of the features of wxCL. All rights reserved, this program is distributed under wxWindows License."
			 "Image Viewer - wxCL"
			 wxOK)))

(defun quit-viewer (fun frame evt)
  (when evt
    (wxWindow_Close frame 1)))

; (defun exit-viewer (fun frame evt)
;   (when evt
;     (wxEvent_Skip evt))) ;skip the event for default handler

(defun register-events (frame)
  (wxevthandler_connect frame wxID_OPEN wxEVT_COMMAND_MENU_SELECTED (wxClosure_Create #'open-image frame))
  (wxevthandler_connect frame wxID_CLOSE wxEVT_COMMAND_MENU_SELECTED (wxClosure_Create #'close-image frame))
  (wxevthandler_connect frame wxID_ABOUT wxEVT_COMMAND_MENU_SELECTED (wxClosure_Create #'about-box frame))
  (wxevthandler_connect frame wxID_EXIT wxEVT_COMMAND_MENU_SELECTED (wxClosure_Create #'quit-viewer frame)))
; ;  (wxevthandler_connect frame -1 (expEVT_CLOSE_WINDOW) (wxClosure_Create #'do-nothing frame))
;   )

(defun init-func (evt)
  (let ((fr (wxcl-windows:make-frame nil -1 "wxCL - Image previewer")))
    (let ((panel (wxcl-windows:make-panel fr)))
      (setf (wxcl-windows:menu-bar fr) (create-menu))
;   (add-accelerator-keys frame)
      (add-status-bar fr)
      (add-tool-bar fr)
;   (wxFrame_SetIcon frame (wxicon_createload "wxcl-logo.ico" wxBITMAP_TYPE_ICO -1 -1))
;   (register-events frame)
      (wxcl-windows:show fr)
      )))

(wxcl:start-app #'init-func)

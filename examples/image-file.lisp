

(use-package "FFI")
(load "C:/cvs-synched/commit_access/wxcl/clisp-wrappers/wxCL.lisp")
(load "C:/cvs-synched/commit_access/wxcl/clisp-wrappers/constants.lisp")
(load "C:/cvs-synched/commit_access/wxcl/clisp-wrappers/wx_wrapper.lisp")
(load "C:/cvs-synched/commit_access/wxcl/clisp-wrappers/wx_main.lisp")
(load "C:/cvs-synched/commit_access/wxcl/clisp-wrappers/wxImage.lisp")
(load "C:/cvs-synched/commit_access/wxcl/clisp-wrappers/wxWindow.lisp")
(load "../clisp-wrappers/wxFrame.lisp")
(load "C:/cvs-synched/commit_access/wxcl/clisp-wrappers/wxMenuItem.lisp")
(load "C:/cvs-synched/commit_access/wxcl/clisp-wrappers/wxMenu.lisp")
(load "C:/cvs-synched/commit_access/wxcl/clisp-wrappers/wxMenuBar.lisp")
(load "C:/cvs-synched/commit_access/wxcl/clisp-wrappers/wxEvent.lisp")
(load "C:/cvs-synched/commit_access/wxcl/clisp-wrappers/wxEvtHandler.lisp")
(load "../clisp-wrappers/wxFileDialog.lisp")
(load "../clisp-wrappers/wxDialog.lisp")
(load "../clisp-wrappers/wxIcon.lisp")
(load "../clisp-wrappers/wxBitmap.lisp")
(load "../clisp-wrappers/wxMessageDialog.lisp")
(load "C:/cvs-synched/commit_access/wxcl/clisp-wrappers/wxToolBar.lisp")
(load "C:/cvs-synched/commit_access/wxcl/clisp-wrappers/wxStatusBar.lisp")

(use-package :wxImage)
(use-package :wxCL)
(use-package :wxEvent)
(use-package :wx_main)
;(use-package :wximage)
(use-package :wxFrame)
(use-package :wx_wrapper)
(use-package :wxWindow)
(use-package :wxFileDialog)
(use-package :wxDialog)
(use-package :wxMessageDialog)
(use-package :wxEvtHandler)
(use-package :wxMenu)
(use-package :wxMenuBar)
(use-package :wxDialog)
(use-package :wxStatusBar)
(use-package :wxToolBar)
(use-package :wxIcon)
(use-package :wxBitmap)

(ffi:default-foreign-language :c)

(defvar OPEN-COMMAND-ID 10001)
(defvar CLOSE-COMMAND-ID 20001)
(defvar QUIT-COMMAND-ID 30001)
(defvar ABOUT-COMMAND-ID 40001)

(defvar OPEN-TOOLBAR-ID 50001)
(defvar CLOSE-TOOLBAR-ID 60001)

(defun create-menu(frame)
  (let((file-menu (wxmenu_create ()
				 (OPEN-COMMAND-ID "&Open      Ctrl+O" "Open an image" 0)
				 (CLOSE-COMMAND-ID "&Close     Ctrl+C" "Close an image" 0)))
       (help-menu (wxmenu_create ()
				 (ABOUT-COMMAND-ID "&About" "About Image Viewer" 0))))
    (wxmenu_AppendSeparator file-menu)
    (wxmenu_Append file-menu QUIT-COMMAND-ID "&Quit      Alt+F4" "Quit the image viewer." 0)
    (wxframe_setmenubar frame (wxMenuBar_CreateWithMenus (vector file-menu help-menu)
							 (vector "&File" "&Help")))))
(defun create-status-bar(frame)
  (wxframe_createstatusbar frame 1 0))

(defun create-tool-bar(frame)
  (let ((tb (wxframe_createtoolbar frame 0)) ic bmp)
    (print (setf bmp (wxbitmap_createload "f_open.ico" wxBITMAP_TYPE_ICO)))
    (print (setf ic (wxicon_createload "f_open.ico" wxBITMAP_TYPE_ICO -1 -1)))
;    (wxtoolbar_addtool tb OPEN-TOOLBAR-ID  "Open file" "Opens Image files.")
 ;   (wxtoolbar_addtool tb CLOSE-TOOLBAR-ID "f_close.ico" "Close file" "Closes Image files.")
    ))

(defun display-image (frame filename)
  (print frame)
  (print filename)
  (let ((bmp (wxbitmap_createload filename wxBITMAP_TYPE_PNG)))
    (
    (print (wxbitmap_getheight bmp))
    (print (wxbitmap_getwidth bmp))))


(defun open-image (fun frame evt)
  (let (filename)
    (with-file-dialog (dialog frame :message "open file" :style wxfiledialog:wxOPEN)
      (wxDialog_ShowModal dialog)
      (setf filename (concatenate 'string (wxFileDialog_GetDirectory dialog) "\\"
				  (wxFileDialog_GetFileName dialog))))
    (display-image frame filename)
  ))


(defun close-image (fun data evt)
  (print evt)
  (print data)
  (print "close image"))

(defun about-box (fun frame evt)
   (show-message-dialog frame
 		       "This image viewer was written by Surendra Singhi to demonstrate some of the features of wxCL.  All rights reserved, this program is distributed under BSD license."
 		       "Image Viewer - wxCL"
 		       wxOK))

(defun quit-viewer (fun frame evt)
  (wxwindow_close frame 0)
  (eljapp_ExitMainLoop))

(defun register-events (frame)
  (wxevthandler_connect frame OPEN-COMMAND-ID (expEVT_COMMAND_MENU_SELECTED) (wxClosure_Create #'open-image frame))
  (wxevthandler_connect frame CLOSE-COMMAND-ID (expEVT_COMMAND_MENU_SELECTED) (wxClosure_Create #'close-image frame))
  (wxevthandler_connect frame ABOUT-COMMAND-ID (expEVT_COMMAND_MENU_SELECTED) (wxClosure_Create #'about-box frame))
  (wxevthandler_connect frame QUIT-COMMAND-ID (expEVT_COMMAND_MENU_SELECTED) (wxClosure_Create #'quit-viewer frame)))

  
(defun test-closure (fun data evt)
  (let (frame ic)
     (setf frame (wxFrame_create nil -1 "good morning" 10 10 500 500 wxDEFAULT_FRAME_STYLE))
     (create-menu frame)
     (register-events frame)
     (create-tool-bar frame)
     (create-status-bar frame)
;      (setf ic )
;      (print (wxBitmap_getHeight ic))
;      (print (wxBitmap_getwidth ic))     
     (wxFrame_SetIcon frame (wxicon_createload "ImageViewer.ico" wxBITMAP_TYPE_ICO -1 -1))
     (wxWindow_Show frame)))
; ;    (wxFrame_SetTitle y "bye")
;     (print "title set")
; ;    (multiple-value-setq (a b) (wxFrame_GetTitle y))
;     (print 5)
;     (print 6)
;     (sleep 10)
;     (print (wxWindow_Destroy y))
;     (print "maximized")
 ;   (force-output )
;    (ELJApp_ExitMainLoop)



;;Creates the closure
(setf x (wxClosure_Create #'test-closure nil))



;;Starts execution
;(Eljapp_initializeC x 0 nil)

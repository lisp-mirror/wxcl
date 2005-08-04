

(use-package "FFI")
(load "../clisp-wrappers/wxCL.lisp")
(load "../clisp-wrappers/constants.lisp")
(load "../clisp-wrappers/wx_wrapper.lisp")
(load "../clisp-wrappers/wx_main.lisp")
(load "../clisp-wrappers/wxImage.lisp")
(load "../clisp-wrappers/wxWindow.lisp")
(load "../clisp-wrappers/wxScrolledWindow.lisp")
(load "../clisp-wrappers/wxFrame.lisp")
(load "../clisp-wrappers/wxPanel.lisp")
(load "../clisp-wrappers/wxDC.lisp")
(load "../clisp-wrappers/wxMenuItem.lisp")
(load "../clisp-wrappers/wxMenu.lisp")
(load "../clisp-wrappers/wxMenuBar.lisp")
(load "../clisp-wrappers/wxEvent.lisp")
(load "../clisp-wrappers/wxEvtHandler.lisp")
(load "../clisp-wrappers/wxFileDialog.lisp")
(load "../clisp-wrappers/wxDialog.lisp")
(load "../clisp-wrappers/wxIcon.lisp")
(load "../clisp-wrappers/wxBitmap.lisp")
(load "../clisp-wrappers/wxMessageDialog.lisp")
(load "../clisp-wrappers/wxToolBar.lisp")
(load "../clisp-wrappers/wxStatusBar.lisp")
(load "../clisp-wrappers/wxAcceleratorEntry.lisp")

(use-package :wxAcceleratorEntry)
(use-package :wxImage)
(use-package :wxCL)
(use-package :wxEvent)
(use-package :wx_main)
;(use-package :wximage)
(use-package :wxFrame)
(use-package :wxPanel)
(use-package :wxDC)
(use-package :wx_wrapper)
(use-package :wxWindow)
(use-package :wxScrolledWindow)
(use-package :wxFileDialog)
(use-package :wxDialog)
(use-package :wxMessageDialog)
(use-package :wxEvtHandler)
(use-package :wxMenu)
(use-package :wxMenuItem)
(use-package :wxMenuBar)
(use-package :wxDialog)
(use-package :wxStatusBar)
(use-package :wxToolBar)
(use-package :wxIcon)
(use-package :wxBitmap)

(ffi:default-foreign-language :c)

;(defvar OPEN-COMMAND-ID 10001)
;(defvar CLOSE-COMMAND-ID 20001)
;(defvar QUIT-COMMAND-ID 30001)
;(defvar ABOUT-COMMAND-ID 40001)
;wxITEM_SEPARATOR

(defvar OPEN-TOOLBAR-ID 50001)
(defvar CLOSE-TOOLBAR-ID 60001)

(defun add-menu(frame)
  (let((file-menu (create-menu ()
			       (:id wxID_OPEN :item "&Open      Ctrl+O" :helpString "Open an image")
			       (:id wxID_CLOSE :item "&Close      Ctrl+C" :helpstring "Close an image")
			       (:kind wxITEM_SEPARATOR)
			       (:id wxID_EXIT :item "&Quit        Alt+F4" :helpstring "Quit the image viewer.")))
       (help-menu (create-menu ()
			       (:id wxID_ABOUT :item "&About     Ctrl+A" :helpstring "About Image Viewer"))))
    (wxframe_setmenubar frame
			(wxMenuBar_CreateWithMenus (vector file-menu help-menu)
						   (vector "&File" "&Help")))))

(defun add-accelerator-keys (frame)
    (create-accelerator-entries frame
				(wxACCEL_CTRL (char-int #\O) wxID_OPEN)
				(wxACCEL_CTRL (char-int #\C) wxID_CLOSE)
				(wxACCEL_CTRL (char-int #\A) wxID_ABOUT)))
(defun add-status-bar(frame)
  (wxframe_createstatusbar frame 2 0))

(defun add-tool-bar(frame)
  (let ((tb (wxframe_createtoolbar frame (boole boole-ior wxTB_3DBUTTONS wxTB_HORIZONTAL)))
	ic
	(open-ico (wxbitmap_createload "f_open.ico" wxBITMAP_TYPE_ICO))
	(close-ico (wxbitmap_createload "f_close.ico" wxBITMAP_TYPE_ICO)))
    (print (setf ic (wxicon_createload "f_open.ico" wxBITMAP_TYPE_ICO -1 -1)))
    (wxToolBar_AddTool tb wxID_OPEN open-ico "Open file" "Opens Image files.")
    (wxtoolbar_addtool tb CLOSE-TOOLBAR-ID close-ico "Close file" "Closes Image files.")
    (wxToolBar_Realize tb)))

(defun display-image (frame filename)
  (let* ((bmp (wxbitmap_createload filename wxBITMAP_TYPE_ANY))
	 (fr (wxFrame_create frame -1 filename 10 10 500 500 wxDEFAULT_FRAME_STYLE))
	 (sw (wxScrolledWindow_Create fr -1 -1 -1 -1 -1 (boole boole-ior wxHSCROLL wxVSCROLL)))
	 (bmp-static (wxStaticbitmap_create sw -1 bmp -1 -1 -1 -1 0)))
    (wxFrame_SetIcon fr (wxicon_createload "wxcl-logo-60.ico" wxBITMAP_TYPE_ICO -1 -1))
    (wxScrolledWindow_SetScrollbars sw 20 20 50 50 -1 -1 0)
    (wxWindow_Show fr)))

(defun open-image (fun frame evt)
  (with-file-dialog (dialog frame :message "open file"
			    :style (boole boole-ior wxOPEN wxFILE_MUST_EXIST)
			    :wildcard "Image files(*.bmp;*.gif;*.png;*.jpeg;*.jpg)|*.bmp;*.gif;*.png;*.jpeg;*.jpg")
    (when (= (wxDialog_ShowModal dialog) wxID_OK)
      (display-image frame (wxFileDialog_GetPath dialog)))))


(defun close-image (fun data evt)
  (print evt)
  (print data)
  (print "close image"))

(defun about-box (fun frame evt)
   (show-message-dialog frame
 		       "Image viewer demonstrates some of the features of wxCL. All rights reserved, this program is distributed under Open BSD license."
 		       "Image Viewer - wxCL"
 		       wxOK))

(defun quit-viewer (fun frame evt)
  (print frame)
;  (print (wxwindow_close frame 1))
  (wxwindow_Destroy frame 0)
;  (print "ok")
 ; (ELJApp_ExitMainLoop)
  (eljapp_Exit)
  )

; (defun paint-viewer (fun frame evt)
;   (with-paint-dc (dc frame)
;     ;(print "test")
;     ))
;     (with-client-DC (dc frame)
;       (wxScrolledWindow_PrepareDC frame dc)
;       (wxDC_DrawBitmap dc bmp 0 0 0))


(defun register-events (frame)
  (wxevthandler_connect frame wxID_OPEN (expEVT_COMMAND_MENU_SELECTED) (wxClosure_Create #'open-image frame))
  (wxevthandler_connect frame wxID_CLOSE (expEVT_COMMAND_MENU_SELECTED) (wxClosure_Create #'close-image frame))
  (wxevthandler_connect frame wxID_ABOUT (expEVT_COMMAND_MENU_SELECTED) (wxClosure_Create #'about-box frame))
  (wxevthandler_connect frame wxID_EXIT (expEVT_COMMAND_MENU_SELECTED) (wxClosure_Create #'quit-viewer frame))
  (wxevthandler_connect frame -1 (expEVT_CLOSE_WINDOW) (wxClosure_Create #'quit-viewer frame)))

(defun test-closure (fun data evt)
  (let (frame ic panel sw)
     (setf frame (wxFrame_create nil 1000 "wxCL - Image previewer" 10 10 500 500 wxDEFAULT_FRAME_STYLE))
     (add-menu frame)
     (add-accelerator-keys frame)
     (add-status-bar frame)
     (add-tool-bar frame)
     (setf panel (wxPanel_Create frame -1 -1 -1 -1 -1 wxTAB_TRAVERSAL))
     (wxFrame_SetIcon frame (wxicon_createload "wxcl-logo-60.ico" wxBITMAP_TYPE_ICO -1 -1))
     (register-events frame)
     (wxWindow_Show frame)))

;    (ELJApp_ExitMainLoop)

;;Creates the closure
(setf x (wxClosure_Create #'test-closure nil))


;;Starts execution
;(Eljapp_initializeC x 0 nil)

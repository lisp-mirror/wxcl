;;;edit.lisp
;;;License  : Public domain
;;;Author(s) : Surendra Singhi (surendra@asu.edu) 
;;;            Andre Vargas Abs da Cruz (andrev@ele.puc-rio.br)
;;;Copyright (C) 2005 Surendra Singhi, Andre Vargas Abs da Cruz
;;;See the file LICENSE for information on usage and redistribution.
;;;
;;; $Header$
;;;


;;;This program demonstrates some of the features of wxCL library
;;;In particular it uses the wxNotebook Sizer and shows hot to
;;;create panes, each pane contains a text control, files can be opened, edited and saved.
;;;It is possible to change the color and font of text, this change will
;;;be made to the entire text in the file.
;;;The close and save functionality does not work (though saveas works)
;;;the reason why the above two doesn't work is because I am not able to
;;;find a method of comparing two foreign pointers in clisp.
;;;Check out this link for info:
;;;http://thread.gmane.org/gmane.lisp.clisp.general/9967
;;;
;;;It will be possible to correctly implement save and close using
;;;hacks, but I am looking for a more elegant solution. Someday,
;;;when I will have time, I will get back to fixing it :)


; (load "../clisp-wrappers/wxCL.lisp")
; (load "../clisp-wrappers/constants.lisp")
; (load "../clisp-wrappers/wx_wrapper.lisp")
; (load "../clisp-wrappers/wx_main.lisp")
; (load "../clisp-wrappers/wxImage.lisp")
; (load "../clisp-wrappers/wxWindow.lisp")
; (load "../clisp-wrappers/wxFrame.lisp")
; (load "../clisp-wrappers/wxMenuItem.lisp")
; (load "../clisp-wrappers/wxMenu.lisp")
; (load "../clisp-wrappers/wxMenuBar.lisp")
; (load "../clisp-wrappers/wxEvent.lisp")
; (load "../clisp-wrappers/wxEvtHandler.lisp")
; (load "../clisp-wrappers/wxDialog.lisp")
; (load "../clisp-wrappers/wxFileDialog.lisp")
; (load "../clisp-wrappers/wxIcon.lisp")
; (load "../clisp-wrappers/wxPanel.lisp")
; (load "../clisp-wrappers/wxBitmap.lisp")
; (load "../clisp-wrappers/wxMessageDialog.lisp")
; (load "../clisp-wrappers/wxToolBar.lisp")
; (load "../clisp-wrappers/wxStatusBar.lisp")
; (load "../clisp-wrappers/wxTextctrl.lisp")
; (load "../clisp-wrappers/wxNotebook.lisp")
; (load "../clisp-wrappers/wxMenu.lisp")
; (load "../clisp-wrappers/wxMenuBar.lisp")
; (load "../clisp-wrappers/wxAcceleratorEntry.lisp")
; (load "../clisp-wrappers/wxFont.lisp")
; (load "../clisp-wrappers/wxFontData.lisp")
; (load "../clisp-wrappers/wxFontDialog.lisp")
; (load "../clisp-wrappers/wxColour.lisp")
; (load "../clisp-wrappers/wxColourData.lisp")
; (load "../clisp-wrappers/wxColourDialog.lisp")

(asdf:operate 'asdf:load-op 'wxcl)

(use-package "FFI")
(use-package :wxImage)
(use-package :wxCL)
(use-package :wxEvent)
(use-package :wx_main)
(use-package :wxFrame)
(use-package :wx_wrapper)
(use-package :wxPanel)
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
(use-package :wxTextctrl)
(use-package :wxNotebook)
(use-package :wxAcceleratorEntry)


(ffi:default-foreign-language :c)

(defconstant wxID_FONT 10001)
(defconstant wxID_COLOR 10002)
  
(defun add-menu (frame)
  (let ((file-menu (wxcl-create-menu ()
				     (:id wxID_NEW :item   "&New      Ctrl+N" :helpString "Open a new file")
				     (:kind wxITEM_SEPARATOR)
				     (:id wxID_OPEN :item  "&Open ... Ctrl+O" :helpString "Open an existing file")
				     (:id wxID_SAVE :item  "&Save     Ctrl+S" :helpString "Save file")
				     (:id wxID_SAVEAS :item "Save &As ..." :helpString "Save file with a different name")
				     (:id wxID_CLOSE :item "&Close    Ctrl+C" :helpString "Open an existing file")
				     (:kind wxITEM_SEPARATOR)
				     (:id wxID_EXIT :item "&Quit" :helpString "Quit the text editor")))
	(edit-menu (wxcl-create-menu ()
				     (:id wxID_FONT :item "Change &Font..."
					  :helpString "Opens dialog for selecting new font.")
				     (:id wxID_COLOR :item "Change &Color..."
					  :helpString "Opens dialog for selecting new color."))))
    (wxframe_setmenubar frame 
			(wxCL-create-menu-bar (vector file-menu edit-menu)
					      (vector "&File" "&Edit")))))
(defun open-file (fun nb evt)
  (when evt
    (let ((filename
	   (wxcl-get-filepath nb
			      :message "Open File"
			      :style (boole boole-ior wxOPEN wxFILE_MUST_EXIST)
			      :wildcard "Text files(*.txt;*.lisp;*.html)|*.txt;*.lisp;*.html")))
      (when filename
	(let ((txt-control (wxCL-create-text-control nb :style wxTE_MULTILINE)))
;    (push tb tab-list)
	  (wxTextCtrl_LoadFile txt-control filename)
	  (wxNotebook_AddPage nb txt-control (file-namestring (parse-namestring filename)) 1 -1))))))

(defun save-file (fun nb evt)
  (when evt
    (let ((sel (wxNotebook_GetSelection nb)))
      (unless (= sel -1)
	(let ((txt-control (wxNotebook_GetPage nb sel)))
	  (when (wxTextCtrl_IsModified txt-control)
	    (print (wxTextCtrl_SaveFile txt-control filename))))))))

(defun saveas-file (fun nb evt)
  (when evt
    (let ((sel (wxNotebook_GetSelection nb)))
      (unless (= sel -1)
	(let ((txt-control (wxNotebook_GetPage nb sel))
	      (filename (wxcl-get-filepath nb
					   :message "Save File As"
					   :style (boole boole-ior wxSAVE wxOVERWRITE_PROMPT))))
	  (when filename
	    (wxNotebook_SetPageText nb sel (file-namestring (parse-namestring filename)))
	    (print (wxTextCtrl_SaveFile txt-control filename))))))))

(defun change-font (fun nb evt)
  (when evt
    (let ((sel (wxNotebook_GetSelection nb)))
      (unless (= sel -1)
	(let ((txt-control (wxNotebook_GetPage nb sel))
	      (font (wxFont:wxFont_Create -1 -1 -1 -1 -1 "" 0))
	      (font-data (wxFontData:wxFontData_Create)))
	  (wxWindow_GetFont txt-control font)
	  (wxFontData:wxFontData_SetInitialFont font-data font)
	  (setf font-data (wxFontDialog:wxcl-get-font txt-control font-data))
	  (when font-data
	    (wxFontData:wxFontData_GetChosenFont font-data font)
	    (wxWindow_SetFont txt-control font)))))))

(defun change-color (fun nb evt)
  (when evt
    (let ((sel (wxNotebook_GetSelection nb)))
      (unless (= sel -1)
	(let ((txt-control (wxNotebook_GetPage nb sel))
	      (colour (wxColour:wxColour_CreateEmpty))
	      (colour-data (wxColourData:wxColourData_Create)))
	  (wxWindow_GetForegroundColour txt-control colour)
	  (wxColourData:wxColourData_SetColour colour-data colour)
	  (setf colour-data (wxColourDialog:wxcl-get-colour txt-control colour-data))
	  (when colour-data
	    (wxColourData:wxColourData_GetColour colour-data colour)
	    (wxWindow_SetForegroundColour txt-control colour)))))))


(defun add-accelerator-keys (frame)
  (wxCL-create-accelerator-entries frame
				   (wxACCEL_CTRL (char-int #\N) wxID_NEW)
				   (wxACCEL_CTRL (char-int #\O) wxID_OPEN)
				   (wxACCEL_CTRL (char-int #\X) wxID_CLOSE)
				   (wxACCEL_CTRL (char-int #\S) wxID_SAVE)
				   (wxACCEL_CTRL (char-int #\A) wxID_ABOUT)))

(defun add-tool-bar(frame)
  (let ((tb (wxframe_createtoolbar frame (boole boole-ior wxTB_3DBUTTONS wxTB_HORIZONTAL)))
	(open-ico (wxbitmap_createload "f_open.ico" wxBITMAP_TYPE_ICO))
	(close-ico (wxbitmap_createload "f_close.ico" wxBITMAP_TYPE_ICO)))
    (wxToolBar_AddTool tb wxID_OPEN open-ico "Open file" "Opens Image files.")
    (wxtoolbar_addtool tb wxID_CLOSE close-ico "Close file" "Closes Image files.")
    (wxToolBar_Realize tb)))

(defstruct tabs
  (txt-control nil)
  (file-pathname nil))

(defvar tab-list nil)

(defun new-tab (fun nb evt)
  (when evt
    (let* (			       ;(tb (make-tabs :panel panel)))
	   (txtcontrol (wxCL-create-text-control nb :style wxTE_MULTILINE)))
;    (push tb tab-list)
      (wxNotebook_AddPage nb txtcontrol "Unknown" 1 -1))))

(defun close-tab (fun nb evt)
  (when evt
    (let ((sel (wxNotebook_GetSelection nb)))
      (unless (= sel -1)
	(print sel)
	(let* ((txtcontrol (wxNotebook_GetPage nb sel))
	       (tab (find-if (lambda (x) (equal x panel)) tab-list :key #'tabs-panel))
	       temp)
	  (print (equal tab nil))
	  (loop for i from 0 to (1- (length tab-list)) do
		(print (tabs-panel (nth i tab-list)))
		(print (ffi:foreign-value panel))
		(print (equal (ffi:foreign-value panel) (ffi:foreign-value (tabs-panel (nth i tab-list))))))
	  (print (equal panel temp))
	  (print (length tab-list))
	  (remove tab tab-list)
	  (wxNotebook_RemovePage nb sel)
	  )))))
; 	(wxWindows_destroy tc)))))

(defun quit-program (fun frame evt)
  (when evt
    (wxWindow_Close frame 1)))
	
(defun register-events (frame nb)
  (wxevthandler_connect frame wxID_NEW (expEVT_COMMAND_MENU_SELECTED) (wxClosure_Create #'new-tab nb))
  (wxevthandler_connect frame wxID_OPEN (expEVT_COMMAND_MENU_SELECTED) (wxClosure_Create #'open-file nb))
  (wxevthandler_connect frame wxID_SAVE (expEVT_COMMAND_MENU_SELECTED) (wxClosure_Create #'save-file nb))
  (wxevthandler_connect frame wxID_SAVEAS (expEVT_COMMAND_MENU_SELECTED) (wxClosure_Create #'saveas-file nb))
  (wxevthandler_connect frame wxID_CLOSE (expEVT_COMMAND_MENU_SELECTED) (wxClosure_Create #'close-tab nb))
  (wxevthandler_connect frame wxID_EXIT (expEVT_COMMAND_MENU_SELECTED) (wxClosure_Create #'quit-program frame))
  (wxevthandler_connect frame wxID_FONT (expEVT_COMMAND_MENU_SELECTED) (wxClosure_Create #'change-font nb))
  (wxevthandler_connect frame wxID_COLOR (expEVT_COMMAND_MENU_SELECTED) (wxClosure_Create #'change-color nb)))

(defun test-closure (fun data evt)
  (let (frame ic nb)
    (setf frame (wxFrame_create nil -1 "Simple Text Editor" 10 10 500 500 wxDEFAULT_FRAME_STYLE))
    (add-menu frame)
    (add-accelerator-keys frame)
    (add-tool-bar frame)
    ;(wxFrame_SetIcon frame (wxicon_createload "wxcl-logo-60.ico" wxBITMAP_TYPE_ICO -1 -1))
    (setf nb (wxCL-create-notebook frame))
    (register-events frame nb)
    (wxWindow_Show frame)
    (wxWindow_Show nb)
    ))

;;; Creates the closure
(setf x (wxClosure_Create #'test-closure nil))

;;;Starts execution
(Eljapp_initializeC x 0 nil)

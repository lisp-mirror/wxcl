

(use-package "FFI")
(load "C:/cvs-synched/commit_access/wxcl/clisp-wrappers/constants.lisp")
(load "C:/cvs-synched/commit_access/wxcl/clisp-wrappers/wxCL.lisp")
(load "C:/cvs-synched/commit_access/wxcl/clisp-wrappers/wx_wrapper.lisp")
(load "C:/cvs-synched/commit_access/wxcl/clisp-wrappers/wx_main.lisp")
(load "C:/cvs-synched/commit_access/wxcl/clisp-wrappers/wxImage.lisp")
(load "C:/cvs-synched/commit_access/wxcl/clisp-wrappers/wxWindow.lisp")
(load "../clisp-wrappers/wxFrame.lisp")
(load "../clisp-wrappers/wxFileDialog.lisp")
(load "../clisp-wrappers/wxDialog.lisp")

(use-package :wxImage)
(use-package :wxCL)
(use-package :wx_main)
;(use-package :wximage)
(use-package :wxFrame)
(use-package :wx_wrapper)
(use-package :wxWindow)
(use-package :wxFileDialog)
(use-package :wxDialog)
(ffi:default-foreign-language :c)


; (defun test-closure2 (fun data evt)
;   (print "end world"))

; (setf test2 (wxClosure_Create #'test-closure2 nil))

(defun test-closure (fun data evt)
  (let (image (row 43) y filename status)
     (setf y (wxFrame_create nil -1 "good morning" 10 10 500 500 wxDEFAULT_FRAME_STYLE))
     (wxFrame_Maximize y)
     (print (wxFrame_IsMaximized y))
     (print (wxWindow_IsShown y))
     (print (wxWindow_Show y))
     (with-file-dialog (dialog y :message "open file" :style wxfiledialog:wxOPEN)
       (wxDialog_ShowModal dialog)
       (print (wxFileDialog_GetFilename dialog)))

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
    ))


;;Creates the closure
(setf x (wxClosure_Create #'test-closure nil))



;;Starts execution
;(Eljapp_initializeC x 0 nil)

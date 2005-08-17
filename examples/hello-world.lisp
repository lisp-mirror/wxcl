(load "../clisp-wrappers/wxCL.lisp")
(load "../clisp-wrappers/constants.lisp")
(load "../clisp-wrappers/wx_wrapper.lisp")
(load "../clisp-wrappers/wx_main.lisp")
(load "../clisp-wrappers/wxWindow.lisp")
(load "../clisp-wrappers/wxFrame.lisp")

(use-package "FFI")
(use-package :wxCL)
(use-package :wx_main)
(use-package :wxFrame)
(use-package :wx_wrapper)
(use-package :wxWindow)

(ffi:default-foreign-language :c)

(defun test-closure (fun data evt)
  (let (frame ic nb)
    (setf frame (wxFrame_create nil -1 "Hello World" 10 10 500 500 wxDEFAULT_FRAME_STYLE))
    (wxWindow_Show frame)))

;;; Creates the closure
(setf x (wxClosure_Create #'test-closure nil))

;;;Starts execution
(Eljapp_initializeC x 0 nil)

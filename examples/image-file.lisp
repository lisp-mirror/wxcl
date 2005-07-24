

(use-package "FFI")

(load "../clisp-wrappers/wxCL.lisp")
(load "../clisp-wrappers/wxImage.lisp")
(load "../clisp-wrappers/wxFrame.lisp")
(load "../clisp-wrappers/constants.lisp")
(load "../clisp-wrappers/wx_main.lisp")
(load "../clisp-wrappers/wx_wrapper.lisp")

(use-package :wxCL)
(use-package :wximage)
(use-package :wxFrame)
(use-package :wx_main)
(use-package :wx_wrapper)

(ffi:default-foreign-language :stdc)

(FFI:DEF-C-TYPE wxClosure NIL)
    
(FFI:DEF-C-TYPE
    ClosureFun (ffi:c-function (:arguments (_fun (ffi:c-ptr wxClosure))
					   (_data (ffi:c-ptr NIL))
					   (_evt (ffi:c-ptr NIL)))
			       (:return-type NIL)))

(ffi:def-call-out wxClosure_Create (:name "wxClosure_Create")
  (:arguments (fun ClosureFun)
	      (data (ffi:c-pointer NIL)))
  (:return-type (ffi:c-pointer wxClosure))
  (:library +library-name+))
 

(defun test-closure (fun data evt)
  (let (z y f  a b
	  (arr (make-array 100 :element-type 'character)))
    (print "hello world")
    (print (setf z (wximage_createfromfile "C:/Documents and Settings/Owner/Desktop/oxygen.png")))
;    (print (setf f (wximage_loadfile z "C:/Documents and Settings/Owner/Desktop/oxygen.png"  wxBITMAP_TYPE_PNG)))
    (print (wximage_getheight z))
    (print (wximage_getwidth z))
    (wximage_destroy z)
    (ELJApp_Bell)
    (setf y (wxframe_create nil -1 "hello world" 10 10 500 500 32768))
    (print y)
    (print "hello world")
    (wxFrame_Maximize y)
    (print (wxFrame_IsMaximized y))
;    (wxFrame_SetTitle y "hello")
    (print "title set")
;    (multiple-value-setq (a b) (wxFrame_GetTitle y))
;    (print a)
;    (print b)
    (print "maximized")
;    (ELJApp_ExitMainLoop)
    ))


;;Creates the closure
(setf x (wxClosure_Create #'test-closure nil))

;;Starts execution
;(Eljapp_initializeC x 0 nil)

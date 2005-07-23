

(use-package "FFI")
(ffi:default-foreign-language :stdc-stdcall)
(load "../clisp-wrappers/wxImage.lisp")
(load "../clisp-wrappers/constants.lisp")
(load "../clisp-wrappers/wx_main.lisp")

(use-package :wximage)
(use-package :wx_main)

(defconstant +library+ "C:/cvs-synched/commit_access/wxcl/miscellaneous/wxc-msw2.4.2-0.9.4.dll")
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
  (:library +library+))

  

(defun test-closure (fun data evt)
  (let (z y f)
    (print "hello world")
    (print (setf z (wximage_createfromfile "C:/Documents and Settings/Owner/Desktop/oxygen.png")))
;    (print (setf f (wximage_loadfile z "C:/Documents and Settings/Owner/Desktop/oxygen.png"  wxBITMAP_TYPE_PNG)))
    (print (wximage_getheight z))
    (print (wximage_getwidth z))
    (print (wximage_destroy z))
    (print "hello world")
    ))


;;Creates the closure
;(setf x (wxClosure_Create #'test-closure nil))

;;Starts execution
;(Eljapp_initializeC x 0 nil)

;;;wxcl.asd
;;;License  : GNU General Public License (GPL)
;;;Author(s) : Surendra Singhi (surendra@asu.edu) 
;;;Copyright (C) 2005 Surendra Singhi 
;;;See the file LICENSE for information on usage and redistribution.
;;;
;;; $Header$

(defparameter *wxCL-directory*
  (make-pathname :name nil :type nil :version nil
                 :defaults (parse-namestring *load-truename*)))

; (defparameter *wxCL-clisp-directory*
;   (parse-namestring (concatenate 'string (directory-namestring *wxCL-directory*) "clisp-wrappers/")))

(print "Copyright (c) Surendra Singhi 2005")
(print "wxCL = wxWidgets + Common Lisp")




(defsystem wxCL
    :description "wxCL - Common Lisp bindings to wxWidgets Library."
    :version "1.1.2"
    :pathname (concatenate 'string (directory-namestring *wxCL-directory*) "src/")
    :pathname "src"
    :licence "wxWidgets 3.1"
    :properties (((#:albert #:output-dir) . "albert-docs/")
		 ((#:albert #:formats) . ("docbook"))
		 ((#:albert #:docbook #:template) . "book")
		 ((#:albert #:docbook #:bgcolor) . "white")
		 ((#:albert #:docbook #:textcolor) . "black"))
    :components ((:file "defpackage")
		 (:module "clisp-ffi"
			  :depends-on ("defpackage")
			  :components ((:file "wx_main")
				       (:file "wx_wrapper") 
				       (:file "wxCL")))
		 (:file "object" :depends-on ("defpackage"))
		 (:file "app" :depends-on ("object" "clisp-ffi"))
 		 (:module "clipboard")
		 #+never(:module "controls"
				 :depends-on ("object")
				 :components ((:file "defpackage")
				       (:module "clisp-ffi"
						:depends-on ("defpackage")
						:components ((:file "wxControl")
							     (:file "wxButton") 
							     (:file "wxToggleButton")
							     (:file "wxListBox")
							     (:file "wxCheckBox")))
				       (:file "control" :depends-on ("clisp-ffi"))
				       (:file "button" :depends-on ("control"))
				       (:file "bitmap-button" :depends-on ("button"))
				       (:file "toggle-button" :depends-on ("control"))
				       (:file "check-box" :depends-on ("control"))
				       (:file "list-box" :depends-on ("control-with-items"))
				       (:file "control-with-items" :depends-on ("control"))))
 		 (:module "db")
 		 (:module "dc")
 		 (:module "dialogs")
 		 (:module "structures"
				 :depends-on ("object")
				 :components ((:file "defpackage")
				       (:module "clisp-ffi"
						:depends-on ("defpackage")
						:components ((:file "wxAcceleratorEntry")))
				       (:file "accelerator-table" :depends-on ("accelerator-entry" "clisp-ffi"))
				       (:file "accelerator-entry" :depends-on ("clisp-ffi"))))
 		 #+never(:module "events"
			  :depends-on ("object")				 
			  :components ((:file "defpackage")
				       (:module "clisp-ffi"
						:depends-on ("defpackage")
						:components ((:file "wxEvtHandler")))
 				       (:file "evt-handler" :depends-on ("clisp-ffi"))))
 		 (:module "gdi"
			  :depends-on ("object")				 
			  :components ((:file "defpackage")
				       (:module "clisp-ffi"
						:depends-on ("defpackage")
						:components ((:file "wxColour")))
 				       (:file "colour" :depends-on ("clisp-ffi"))))
 		 (:module "help")
 		 #+never(:module "layout"
			  :depends-on ("object")				 
			  :components ((:file "defpackage")
				       (:module "clisp-ffi"
						:depends-on ("defpackage")
						:components ((:file "wxSizer")))
 				       (:file "sizer" :depends-on ("clisp-ffi"))
 				       (:file "box-sizer" :depends-on ("sizer"))))
 		 (:module "menus"
			  :depends-on ("object" "windows")
			  :components ((:file "defpackage")
				       (:module "clisp-ffi"
						:depends-on ("defpackage")
						:components ((:file "wxMenu")
							     (:file "wxMenuBar")
							     (:file "wxMenuItem")))
 				       (:file "menu" :depends-on ("clisp-ffi" "menu-item"))
                   (:file "menu-item" :depends-on ("clisp-ffi"))   
 				       (:file "menu-bar" :depends-on ("clisp-ffi"))))
 		 (:module "misc")
 		 (:module "net")
 		 (:module "printing")
		 (:module "windows"
			  :depends-on ("object")
			  :components ((:file "defpackage")
				       (:module "clisp-ffi"
						:depends-on ("defpackage")
						:components ((:file "wxFrame")
							     (:file "wxWindow")
							     (:file "wxToolBar")
							     (:file "wxPanel")
							     (:file "wxStatusBar")))
 				       (:file "window" :depends-on ("clisp-ffi"))
				       (:file "frame" :depends-on ("window"))
                   (:file "panel" :depends-on ("window")) 
				       (:file "status-bar" :depends-on ("window")))
		 )))

;(push :wxcl *features*)

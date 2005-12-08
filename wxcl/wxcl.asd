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
    :licence "wxWidgets 3.1"
    :properties (((#:albert #:output-dir) . "albert-docs/")
                 ((#:albert #:formats) . ("docbook"))
                 ((#:albert #:docbook #:template) . "book")
                 ((#:albert #:docbook #:bgcolor) . "white")
                 ((#:albert #:docbook #:textcolor) . "black"))
    :components
    ((:module "wxcl"
              :pathname ""
              :components ((:file "defpackage")
                           (:file "object" :depends-on ("defpackage"))
                           (:module "clisp-ffi" :depends-on ("defpackage")
                                    :components ((:file "wx_main")
                                                 (:file "wx_wrapper")
                                                 (:file "wxCL")))
                           (:file "app" :depends-on ("object" "clisp-ffi"))))
     (:module "defpackage"
              :depends-on ("wxcl")
              :pathname ""
              :components ((:file "windows-defpackage" :depends-on ("events-defpackage") :pathname "windows/defpackage")
                           (:file "gdi-defpackage" :depends-on ("controls-defpackage")
                                  :pathname "gdi/defpackage")
                           (:file "menus-defpackage" :depends-on ("windows-defpackage")
                                     :pathname "menus/defpackage")
                           (:file "controls-defpackage" 
                                     :depends-on ("structures-defpackage" "windows-defpackage")
                                     :pathname "controls/defpackage")
                           (:file "structures-defpackage" :pathname "structures/defpackage")
                           (:file "events-defpackage" :pathname "events/defpackage")
                           (:file "layout-defpackage" :pathname "layout/defpackage")
                           (:file "dialogs-defpackage"
                                  :depends-on ("windows-defpackage")
                                  :pathname "dialogs/defpackage"
                                  )))
     (:module "clipboard"
                      :depends-on ("wxcl" "defpackage"))
     (:module "controls"
                     :depends-on ("wxcl" "defpackage")
                     :components ((:module "clisp-ffi"
                                           :components ((:file "wxControl")
                                                        (:file "wxControlWithItems")
                                                        (:file "wxListCtrl")
                                                        (:file "wxRadioBox")
                                                        (:file "wxStaticBox")
                                                        (:file "wxStaticLine")
                                                        (:file "wxStaticText")
                                                        (:file "wxSlider")
                                                        (:file "wxButton") 
                                                        (:file "wxRadioButton")
                                                        (:file "wxToggleButton")
                                                        (:file "wxListBox")
                                                        (:file "wxComboBox")
                                                        (:file "wxCheckBox")
                                                        (:file "wxNotebook")))
                                  (:file "control" :depends-on ("clisp-ffi"))
                                  (:file "button" :depends-on ("clisp-ffi"))
                                  (:file "bitmap-button" :depends-on ("clisp-ffi"))
                                  (:file "toggle-button" :depends-on ("clisp-ffi"))
                                  (:file "check-box" :depends-on ("clisp-ffi"))
                                  (:file "list-box" :depends-on ("clisp-ffi"))
                                  (:file "list-ctrl" :depends-on ("clisp-ffi"))
                                  (:file "radio-box" :depends-on ("clisp-ffi"))
                                  (:file "radio-button" :depends-on ("clisp-ffi"))
                                  (:file "slider" :depends-on ("clisp-ffi"))
                                  (:file "notebook" :depends-on ("clisp-ffi"))
                                  (:file "static-text" :depends-on ("clisp-ffi"))
                                  (:file "static-box" :depends-on ("clisp-ffi"))
                                  (:file "control-with-items" :depends-on ("clisp-ffi"))))
     (:module "db"
              :depends-on ("wxcl" "defpackage")
              :components ((:module "clisp-ffi")))
     (:module "dc"
              :depends-on ("wxcl" "defpackage")
              :components ((:module "clisp-ffi")))
     (:module "dialogs"
              :depends-on ("wxcl" "defpackage")
              :components ((:module "clisp-ffi"
                                    :components ((:file "wxDialog")
                                                 (:file "wxColourDialog")
                                                 (:file "wxDirDialog")
                                                 (:file "wxFileDialog")
                                                 (:file "wxFindReplaceDialog")
                                                 (:file "wxFontDialog")
                                                 (:file "wxMessageDialog")
                                                 (:file "wxProgressDialog")
                                                 (:file "wxWizard")))
                           (:file "dialog" :depends-on ("clisp-ffi"))
                           (:file "dir-dialog" :depends-on ("dialog"))
                           (:file "file-dialog" :depends-on ("dialog"))
                           (:file "colour-dialog" :depends-on ("dialog"))
                           (:file "font-dialog" :depends-on ("dialog"))
                           (:file "message-dialog" :depends-on ("dialog"))
                           (:file "progress-dialog" :depends-on ("dialog"))
                           (:file "find-replace-dialog" :depends-on ("dialog"))
                           (:file "wizard" :depends-on ("dialog"))))
     (:module "structures"
              :depends-on ("wxcl" "defpackage")
              :components ((:module "clisp-ffi"
                                    :components ((:file "wxAcceleratorEntry")
                                                 (:file "wxAcceleratorTable")
                                                 (:file "wxListItem")
                                                 (:file "wxColourData")
                                                 (:file "wxFontData")))
                           (:file "accelerator-table" :depends-on ("accelerator-entry" "clisp-ffi"))
                           (:file "accelerator-entry" :depends-on ("clisp-ffi"))
                           (:file "font-data" :depends-on ("clisp-ffi"))
                           (:file "list-item" :depends-on ("clisp-ffi"))
                           (:file "colour-data" :depends-on ("clisp-ffi"))))
     (:module "events"
                     :depends-on ("wxcl" "defpackage")
                     :components ((:module "clisp-ffi"
                                           :components ((:file "wxEvtHandler")
                                                        (:file "wxEvent")))
                                  (:file "evt-handler" :depends-on ("clisp-ffi"))
                                  (:file "event" :depends-on ("clisp-ffi"))))
     (:module "gdi"
              :depends-on ("wxcl" "defpackage")
              :components ((:module "clisp-ffi"
                                    :components ((:file "wxColour")
                                                 (:file "wxBrush")
                                                 (:file "wxPen")
                                                 (:file "wxFont")
                                                 (:file "wxIcon")
                                                 (:file "wxBitmap")
                                                 (:file "wxMask")
                                                 (:file "wxImage")))
                           (:file "colour" :depends-on ("clisp-ffi"))
                           (:file "bitmap" :depends-on ("clisp-ffi"))
                           (:file "font" :depends-on ("clisp-ffi"))
                           (:file "icon" :depends-on ("bitmap"))
                           (:file "pen" :depends-on ("clisp-ffi"))
                           (:file "static-bitmap" :depends-on ("clisp-ffi"))
                           (:file "brush" :depends-on ("clisp-ffi"))
                           (:file "mask" :depends-on ("clisp-ffi"))))
     (:module "help")
     (:module "layout"
                     :depends-on ("wxcl" "defpackage")
                     :components ((:module "clisp-ffi"
                                           :components ((:file "wxSizer")))
                                  (:file "sizer" :depends-on ("clisp-ffi"))
                                  (:file "box-sizer" :depends-on ("sizer"))))
     (:module "menus"
              :depends-on ("wxcl" "defpackage")
              :components ((:module "clisp-ffi"
                                    :components ((:file "wxMenu")
                                                 (:file "wxMenuBar")
                                                 (:file "wxMenuItem")))
                           (:file "menu" :depends-on ("clisp-ffi" "menu-item"))
                           (:file "menu-item" :depends-on ("clisp-ffi"))   
                           (:file "menu-bar" :depends-on ("clisp-ffi"))))
     (:module "misc"
              :depends-on ("wxcl" "defpackage")
              :components ((:module "clisp-ffi")))
     (:module "net"
              :depends-on ("wxcl" "defpackage")
              :components ((:module "clisp-ffi")))
     (:module "printing"
              :depends-on ("wxcl" "defpackage")
              :components ((:module "clisp-ffi")))
     (:module "windows"
              :depends-on ("wxcl" "defpackage")
              :components ((:module "clisp-ffi"
                                    :components ((:file "wxFrame")
                                                 (:file "wxWindow")
                                                 (:file "wxToolBar")
                                                 (:file "wxPanel")
                                                 (:file "wxScrolledWindow")
                                                 (:file "wxSplitterWindow")
                                                 (:file "wxTipWindow")
                                                 (:file "wxStatusBar")))
                           (:file "window" :depends-on ("clisp-ffi"))
                           (:file "frame" :depends-on ("window"))
                           (:file "panel" :depends-on ("window")) 
                           (:file "status-bar" :depends-on ("window"))
                           (:file "tool-bar" :depends-on ("window"))
                           (:file "scrolled-window" :depends-on ("window"))
                           (:file "tip-window" :depends-on ("window"))
                           (:file "splitter-window" :depends-on ("window")))
              )))

;(push :wxcl *features*)

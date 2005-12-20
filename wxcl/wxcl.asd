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
                           (:module "ffi" :pathname #+(and (not cffi) clisp) "clisp-ffi" #+cffi "cffi/"
                                    :depends-on ("defpackage")
                                    :components ((:file "wx_main")
                                                 (:file "wx_wrapper")
                                                 (:file "wxCL")
                                                 ))
                           (:file "app" :depends-on ("object" "ffi"))
                           ))
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
     (:module "utils"
               :depends-on ("wxcl" "defpackage")
               :pathname ""
               :components ((:file "functions")))
     (:module "clipboard"
                      :depends-on ("wxcl" "defpackage"))
     (:module "controls"
                     :depends-on ("wxcl" "defpackage")
                     :components ((:module "ffi" :pathname  #+(and (not cffi) clisp) "clisp-ffi" #+cffi "cffi/"
                                           :components ((:file "wxControl")
                                                        (:file "wxControlWithItems")
                                                        (:file "wxListCtrl")
                                                        (:file "wxTextCtrl") 
                                                        (:file "wxRadioBox")
                                                        (:file "wxStaticBox")
                                                        (:file "wxStaticLine")
                                                        (:file "wxStaticText")
                                                        (:file "wxSlider")
                                                        (:file "wxGauge")
                                                        (:file "wxButton") 
                                                        (:file "wxRadioButton")
                                                        (:file "wxToggleButton")
                                                        (:file "wxListBox")
                                                        (:file "wxCheckListBox")
                                                        (:file "wxChoice")
                                                        (:file "wxComboBox")
                                                        (:file "wxCheckBox")
                                                        (:file "wxNotebook")))
                                  (:file "control" :depends-on ("ffi"))
                                  (:file "button" :depends-on ("ffi"))
                                  (:file "bitmap-button" :depends-on ("ffi"))
                                  (:file "toggle-button" :depends-on ("ffi"))
                                  (:file "text-control" :depends-on ("ffi"))
                                  (:file "check-box" :depends-on ("ffi"))
                                  (:file "choice" :depends-on ("ffi"))
                                  (:file "combo-box" :depends-on ("ffi"))
                                  (:file "check-list-box" :depends-on ("ffi"))                                  
                                  (:file "list-box" :depends-on ("ffi"))
                                  (:file "list-ctrl" :depends-on ("ffi"))
                                  (:file "gauge" :depends-on ("ffi"))
                                  (:file "radio-box" :depends-on ("ffi"))
                                  (:file "radio-button" :depends-on ("ffi"))
                                  (:file "slider" :depends-on ("ffi"))
                                  (:file "notebook" :depends-on ("ffi"))
                                  (:file "static-text" :depends-on ("ffi"))
                                  (:file "static-box" :depends-on ("ffi"))
                                  (:file "control-with-items" :depends-on ("ffi"))))
     (:module "db"
              :depends-on ("wxcl" "defpackage")
              :components ((:module "ffi")))
     (:module "dc"
              :depends-on ("wxcl" "defpackage")
              :components ((:module "ffi")))
     (:module "dialogs"
              :depends-on ("wxcl" "defpackage")
              :components ((:module "ffi" :pathname #+(and (not cffi) clisp) "clisp-ffi" #+cffi "cffi/"
                                    :components ((:file "wxDialog")
                                                 (:file "wxColourDialog")
                                                 (:file "wxDirDialog")
                                                 (:file "wxFileDialog")
                                                 (:file "wxFindReplaceDialog")
                                                 (:file "wxFontDialog")
                                                 (:file "wxMessageDialog")
                                                 (:file "wxProgressDialog")
                                                 (:file "wxWizard")))
                           (:file "dialog" :depends-on ("ffi"))
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
              :components ((:module "ffi" :pathname #+(and (not cffi) clisp) "clisp-ffi" #+cffi "cffi/"
                                    :components ((:file "wxAcceleratorEntry")
                                                 (:file "wxAcceleratorTable")
                                                 (:file "wxListItem")
                                                 (:file "wxColourData")
                                                 (:file "wxFontData")
                                                 (:file "wxCalendarDateAttr")
                                                 (:file "wxTextAttr")))
                           (:file "accelerator-table" :depends-on ("accelerator-entry" "ffi"))
                           (:file "accelerator-entry" :depends-on ("ffi"))
                           (:file "font-data" :depends-on ("ffi"))
                           (:file "list-item" :depends-on ("ffi"))
                           (:file "colour-data" :depends-on ("ffi"))
                           (:file "text-attr" :depends-on ("ffi"))
                           (:file "calendar-date-attr" :depends-on ("ffi"))))
     (:module "events"
                     :depends-on ("wxcl" "defpackage")
                     :components ((:module "ffi" :pathname #+(and (not cffi) clisp) "clisp-ffi" #+cffi "cffi/"
                                           :components ((:file "wxEvtHandler")
                                                        (:file "wxEvent")))
                                  (:file "evt-handler" :depends-on ("ffi"))
                                  (:file "event" :depends-on ("ffi"))))
     (:module "gdi"
              :depends-on ("wxcl" "defpackage")
              :components ((:module "ffi" :pathname #+(and (not cffi) clisp) "clisp-ffi" #+cffi "cffi/"
                                    :components ((:file "wxColour")
                                                 (:file "wxBrush")
                                                 (:file "wxPen")
                                                 (:file "wxFont")
                                                 (:file "wxIcon")
                                                 (:file "wxBitmap")
                                                 (:file "wxMask")
                                                 (:file "wxImage")))
                           (:file "colour" :depends-on ("ffi"))
                           (:file "bitmap" :depends-on ("ffi"))
                           (:file "font" :depends-on ("ffi"))
                           (:file "icon" :depends-on ("bitmap"))
                           (:file "pen" :depends-on ("ffi"))
                           (:file "static-bitmap" :depends-on ("ffi"))
                           (:file "brush" :depends-on ("ffi"))
                           (:file "mask" :depends-on ("ffi"))))
     (:module "help")
     (:module "layout"
                     :depends-on ("wxcl" "defpackage")
                     :components ((:module "ffi" :pathname #+(and (not cffi) clisp) "clisp-ffi" #+cffi "cffi/"
                                           :components ((:file "wxSizer")))
                                  (:file "sizer" :depends-on ("ffi"))
                                  (:file "box-sizer" :depends-on ("sizer"))
                                  (:file "static-box-sizer" :depends-on ("sizer"))))
     (:module "menus"
              :depends-on ("wxcl" "defpackage")
              :components ((:module "ffi" :pathname #+(and (not cffi) clisp) "clisp-ffi" #+cffi "cffi/"
                                    :components ((:file "wxMenu")
                                                 (:file "wxMenuBar")
                                                 (:file "wxMenuItem")))
                           (:file "menu" :depends-on ("ffi" "menu-item"))
                           (:file "menu-item" :depends-on ("ffi"))   
                           (:file "menu-bar" :depends-on ("ffi"))))
     (:module "misc"
              :depends-on ("wxcl" "defpackage")
              :components ((:module "ffi")))
     (:module "net"
              :depends-on ("wxcl" "defpackage")
              :components ((:module "ffi")))
     (:module "printing"
              :depends-on ("wxcl" "defpackage")
              :components ((:module "ffi")))
     (:module "windows"
              :depends-on ("wxcl" "defpackage")
              :components ((:module "ffi" :pathname #+(and (not cffi) clisp) "clisp-ffi" #+cffi "cffi/"
                                    :components ((:file "wxFrame")
                                                 (:file "wxWindow")
                                                 (:file "wxToolBar")
                                                 (:file "wxPanel")
                                                 (:file "wxScrolledWindow")
                                                 (:file "wxSplitterWindow")
                                                 (:file "wxTipWindow")
                                                 (:file "wxStatusBar")))
                           (:file "window" :depends-on ("ffi"))
                           (:file "frame" :depends-on ("window"))
                           (:file "panel" :depends-on ("window")) 
                           (:file "status-bar" :depends-on ("window"))
                           (:file "tool-bar" :depends-on ("window"))
                           (:file "scrolled-window" :depends-on ("window"))
                           (:file "tip-window" :depends-on ("window"))
                           (:file "splitter-window" :depends-on ("window")))
              )))

(push :wxcl *features*)

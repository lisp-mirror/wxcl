;;;wxcl.asd
;;;License  : GNU General Public License (GPL)
;;;Author(s) : Surendra Singhi (surendra@asu.edu) 
;;;Copyright (C) 2005 Surendra Singhi 
;;;See the file LICENSE for information on usage and redistribution.
;;;
;;; $Header: /cvsroot/wxcl/wxcl/wxcl.asd,v 1.17 2005/12/20 09:58:29 efuzzyone Exp $

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
    :depends-on ("cffi")
    :properties (((#:albert #:output-dir) . "albert-docs/")
                 ((#:albert #:formats) . ("docbook"))
                 ((#:albert #:docbook #:template) . "book")
                 ((#:albert #:docbook #:bgcolor) . "white")
                 ((#:albert #:docbook #:textcolor) . "black"))
    :components
    ((:module "wxcl"
              :depends-on ("cffi")
              :pathname ""
              :components ((:file "object")
                           (:file "app")
                           (:file "functions")))
     (:module "cffi"
              :depends-on ("defpackage")
              :pathname "cffi/classes/"
              :serial t
              :components ((:file "wx_main" :pathname "../wx_main")
                           (:file "wx_wrapper" :pathname "../wx_wrapper")
                           (:file "wxControl")
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
                           (:file "wxNotebook")
                           (:file "wxDialog")
                           (:file "wxColourDialog")
                           (:file "wxDirDialog")
                           (:file "wxFileDialog")
                           (:file "wxFindReplaceDialog")
                           (:file "wxFontDialog")
                           (:file "wxMessageDialog")
                           (:file "wxProgressDialog")
                           (:file "wxWizard")
                           (:file "wxColour")
                           (:file "wxBrush")
                           (:file "wxPen")
                           (:file "wxFont")
                           (:file "wxIcon")
                           (:file "wxBitmap")
                           (:file "wxMask")
                           (:file "wxImage")
                           (:file "wxFrame")
                           (:file "wxWindow")
                           (:file "wxToolBar")
                           (:file "wxPanel")
                           (:file "wxScrolledWindow")
                           (:file "wxSplitterWindow")
                           (:file "wxTipWindow")
                           (:file "wxStatusBar")
                           (:file "wxAcceleratorEntry")
                           ;(:file "wxAcceleratorTable")
                           (:file "wxListItem")
                           (:file "wxColourData")
                           (:file "wxFontData")
                           (:file "wxCalendarDateAttr")
                           (:file "wxTextAttr")
                           (:file "wxMenuBar")
                           (:file "wxMenu")
                           (:file "wxMenuItem")
                           (:file "wxSizer")
                           (:file "wxEvent")
                           (:file "wxExtra")))
     (:module "defpackage"
              :pathname ""
              :components ((:file "defpackage")
                           (:file "windows-defpackage" :depends-on ("events-defpackage") :pathname "windows/defpackage")
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
              :depends-on ("wxcl" "defpackage" "cffi"))
     (:module "controls"
              :depends-on ("wxcl" "defpackage" "cffi")
              :components ((:file "control")
                           (:file "button")
                           (:file "bitmap-button")
                           (:file "toggle-button")
                           (:file "text-control")
                           (:file "check-box")
                           (:file "choice")
                           (:file "combo-box")
                           (:file "check-list-box")                                  
                           (:file "list-box")
                           (:file "list-ctrl")
                           (:file "gauge")
                           (:file "radio-box")
                           (:file "radio-button")
                           (:file "slider")
                           (:file "notebook")
                           (:file "static-text")
                           (:file "static-box")
                           (:file "control-with-items")))
     (:module "db"
              :depends-on ("wxcl" "defpackage" "cffi")
              :components ())
     (:module "dc"
              :depends-on ("wxcl" "defpackage" "cffi")
              :components ())
     (:module "dialogs"
              :depends-on ("wxcl" "defpackage" "cffi")
              :components ((:file "dialog")
                           (:file "dir-dialog" :depends-on ("dialog"))
                           (:file "file-dialog" :depends-on ("dialog"))
                           (:file "colour-dialog" :depends-on ("dialog"))
                           (:file "font-dialog" :depends-on ("dialog"))
                           (:file "message-dialog" :depends-on ("dialog"))
                           (:file "progress-dialog" :depends-on ("dialog"))
                           (:file "find-replace-dialog" :depends-on ("dialog"))
                           (:file "wizard" :depends-on ("dialog"))))
     (:module "structures"
              :depends-on ("wxcl" "defpackage" "cffi")
              :components ((:file "accelerator-table" :depends-on ("accelerator-entry"))
                           (:file "accelerator-entry")
                           (:file "font-data")
                           (:file "list-item")
                           (:file "colour-data")
                           (:file "text-attr")
                           (:file "calendar-date-attr")))
     (:module "events"
              :depends-on ("wxcl" "defpackage" "cffi")
              :components ((:file "evt-handler")
                           (:file "event")))
     (:module "gdi"
              :depends-on ("wxcl" "defpackage" "cffi")
              :components ((:file "colour")
                           (:file "bitmap")
                           (:file "font")
                           (:file "icon" :depends-on ("bitmap"))
                           (:file "pen")
                           (:file "static-bitmap")
                           (:file "brush")
                           (:file "mask")))
     (:module "help")
     (:module "layout"
              :depends-on ("wxcl" "defpackage" "cffi")
              :components ((:file "sizer")
                           (:file "box-sizer" :depends-on ("sizer"))
                           (:file "static-box-sizer" :depends-on ("sizer"))))
     (:module "menus"
              :depends-on ("wxcl" "defpackage" "cffi")
              :components ((:file "menu" :depends-on ("menu-item"))
                           (:file "menu-item")   
                           (:file "menu-bar"))) 
     (:module "misc"
              :depends-on ("wxcl" "defpackage" "cffi")
              :components ())
     (:module "net"
              :depends-on ("wxcl" "defpackage" "cffi")
              :components ())
     (:module "printing"
              :depends-on ("wxcl" "defpackage" "cffi")
              :components ())
     (:module "windows"
              :depends-on ("wxcl" "defpackage" "cffi")
              :components ((:file "window")
                           (:file "frame" :depends-on ("window"))
                           (:file "panel" :depends-on ("window")) 
                           (:file "status-bar" :depends-on ("window"))
                           (:file "tool-bar" :depends-on ("window"))
                           (:file "scrolled-window" :depends-on ("window"))
                           (:file "tip-window" :depends-on ("window"))
                           (:file "splitter-window" :depends-on ("window")))
             )))

(push :wxcl *features*)

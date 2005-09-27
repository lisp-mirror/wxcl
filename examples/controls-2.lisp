
;;; generated by wxGlade 0.4cvs on Mon Sep 26 19:14:40 2005

(asdf:operate 'asdf:load-op 'wxcl)
(use-package "FFI")
(ffi:default-foreign-language :stdc)

(use-package :wxFrame)
(use-package :wxWindow)
(use-package :wxListBox)
(use-package :wxEvtHandler)
(use-package :wxStaticText)
(use-package :wx_main)
(use-package :wxGrid)
(use-package :wxSpinCtrl)
(use-package :wxTextCtrl)
(use-package :wx_wrapper)
(use-package :wxNotebook)
(use-package :wxRadioBox)
(use-package :wxEvent)
(use-package :wxPanel)
(use-package :wxCL)
(use-package :wxColour)
(use-package :wxSizer)
(use-package :wxButton)

(defclass Demo_app()
	((top-window :initform nil :accessor slot-top-window)
        (label-1 :initform nil :accessor slot-label-1)
        (text-ctrl-1 :initform nil :accessor slot-text-ctrl-1)
        (label-2 :initform nil :accessor slot-label-2)
        (radio-box-1 :initform nil :accessor slot-radio-box-1)
        (label-3 :initform nil :accessor slot-label-3)
        (spin-ctrl-1 :initform nil :accessor slot-spin-ctrl-1)
        (grid-sizer-1 :initform nil :accessor slot-grid-sizer-1)
        (notebook-1-pane-1 :initform nil :accessor slot-notebook-1-pane-1)
        (label-4 :initform nil :accessor slot-label-4)
        (text-ctrl-2 :initform nil :accessor slot-text-ctrl-2)
        (label-6 :initform nil :accessor slot-label-6)
        (list-box-1 :initform nil :accessor slot-list-box-1)
        (grid-1 :initform nil :accessor slot-grid-1)
        (label-5 :initform nil :accessor slot-label-5)
        (text-ctrl-3 :initform nil :accessor slot-text-ctrl-3)
        (button-1 :initform nil :accessor slot-button-1)
        (grid-sizer-2 :initform nil :accessor slot-grid-sizer-2)
        (notebook-1-pane-2 :initform nil :accessor slot-notebook-1-pane-2)
        (notebook-1 :initform nil :accessor slot-notebook-1)
        (sizer-1 :initform nil :accessor slot-sizer-1)))

(defun make-Demo_app ()
        (let ((obj (make-instance 'Demo_app)))
          (init obj)
          (set-properties obj)
          (do-layout obj)
          obj))

(defmethod init ((obj Demo_app))
"Method creates the objects contained in the class."
        ;;;begin wxGlade: Demo_app.__init__
        (setf (slot-top-window obj) (wxFrame_create nil -1 "" -1 -1 -1 -1 wxDEFAULT_FRAME_STYLE))
        (setf (slot-notebook-1 obj) (wxNotebook_Create (slot-top-window obj) -1 -1 -1 -1 -1 0))
        (setf (slot-notebook-1-pane-2 obj) (wxPanel_Create (slot-notebook-1 obj) -1 -1 -1 -1 -1 wxTAB_TRAVERSAL))
        (setf (slot-notebook-1-pane-1 obj) (wxPanel_Create (slot-notebook-1 obj) -1 -1 -1 -1 -1 wxTAB_TRAVERSAL))
        (setf (slot-label-1 obj) (wxStaticText_Create (slot-notebook-1-pane-1 obj) -1 "Name :" -1 -1 -1 -1 0))
        (setf (slot-text-ctrl-1 obj) (wxTextCtrl_Create (slot-notebook-1-pane-1 obj) -1 "" -1 -1 -1 -1 0))
        (setf (slot-label-2 obj) (wxStaticText_Create (slot-notebook-1-pane-1 obj) -1 "Sex" -1 -1 -1 -1 0))
        (setf (slot-radio-box-1 obj) (wxRadioBox_Create (slot-notebook-1-pane-1 obj) -1 "" -1 -1 -1 -1 2 (vector "Male" "Female") 1 wxRA_SPECIFY_ROWS))
        (setf (slot-label-3 obj) (wxStaticText_Create (slot-notebook-1-pane-1 obj) -1 "Age" -1 -1 -1 -1 0))
        (setf (slot-spin-ctrl-1 obj) (wxSpinCtrl_Create (slot-notebook-1-pane-1 obj) -1 "21" -1 -1 -1 -1 (logior wxSP_ARROW_KEYS) 21 100 21)) ;done  by hand - style moved out, wxCL does not has it wxTE_AUTO_URL, 21 made string
        (setf (slot-label-4 obj) (wxStaticText_Create (slot-notebook-1-pane-2 obj) -1 "Address" -1 -1 -1 -1 0))
        (setf (slot-text-ctrl-2 obj) (wxTextCtrl_Create (slot-notebook-1-pane-2 obj) -1 "" -1 -1 -1 -1 wxTE_MULTILINE))
        (setf (slot-label-6 obj) (wxStaticText_Create (slot-notebook-1-pane-2 obj) -1 "Country" -1 -1 -1 -1 0))
        (setf (slot-list-box-1 obj) (wxListBox_Create (slot-notebook-1-pane-2 obj) -1 -1 -1 -1 -1 6 (vector "United States of America" "Germany" "France" "China" "India" "Russia") 0))
        (setf (slot-grid-1 obj) (wxGrid_Create (slot-notebook-1-pane-2 obj) -1 -1 -1 -1 -1 wxWANTS_CHARS))
        (setf (slot-label-5 obj) (wxStaticText_Create (slot-notebook-1-pane-2 obj) -1 "Notes" -1 -1 -1 -1 0))
        (setf (slot-text-ctrl-3 obj) (wxTextCtrl_Create (slot-notebook-1-pane-2 obj) -1 "" -1 -1 -1 -1 (logior wxTE_MULTILINE wxTE_RICH2 wxTE_WORDWRAP)))   ;style moved out, wxCL does not havewxTE_LINEWRAP
        (setf (slot-button-1 obj) (wxButton_Create (slot-notebook-1-pane-2 obj) -1 "Submit Information." -1 -1 -1 -1 0))
;;;Note: - this portion of code needed correcting by hand
;        (wxEvtHandler_Connect (slot-top-window obj) obj.button-1 (expwxEVT_BUTTON)
;		(wxClosure_Create #'submit obj))
	(wxEvtHandler_Connect (slot-top-window obj) -1 (expEVT_COMMAND_BUTTON_CLICKED)
			      (wxClosure_Create #'submit nil))
        )
        ;;; end wxGlade

(defmethod set-properties ((obj Demo_app))
        ;;;begin wxGlade: Demo_app.__set_properties
        (wxWindow_SetToolTip (slot-radio-box-1 obj)"Select the sex.")
        (wxRadioBox_SetSelection (slot-radio-box-1 obj) 1)
        (wxWindow_SetToolTip (slot-spin-ctrl-1 obj)"Select the age.")
        (wxWindow_SetToolTip (slot-list-box-1 obj)"Select the country.")
        (wxListBox_SetSelection (slot-list-box-1 obj) 0 1)
        (wxGrid_CreateGrid (slot-grid-1 obj) 10 3 0)
        (wxGrid_SetRowLabelSize (slot-grid-1 obj) 15)
        (wxGrid_SetColLabelSize (slot-grid-1 obj) 15)
        (wxGrid_EnableDragColSize (slot-grid-1 obj) 0)
        (wxGrid_SetSelectionMode (slot-grid-1 obj) wxGridSelectCells)
        )
;;;end wxGlade

(defmethod do-layout ((obj Demo_app))
        ;;;begin wxGlade: Demo_app.__do_layout
        (setf (slot-sizer-1 obj) (wxBoxSizer_Create  wxVERTICAL))
        (setf (slot-grid-sizer-2 obj) (wxGridSizer_Create 3 3 20 15))
        (setf (slot-grid-sizer-1 obj) (wxGridSizer_Create 3 2 10 30))
        (wxSizer_AddWindow (slot-grid-sizer-1 obj) (slot-label-1 obj) 0 (logior wxALL wxALIGN_CENTER_VERTICAL wxADJUST_MINSIZE) 0 nil)
        (wxSizer_AddWindow (slot-grid-sizer-1 obj) (slot-text-ctrl-1 obj) 0 (logior wxALIGN_CENTER_VERTICAL wxADJUST_MINSIZE) 0 nil)
        (wxSizer_AddWindow (slot-grid-sizer-1 obj) (slot-label-2 obj) 0 (logior wxALIGN_CENTER_VERTICAL wxADJUST_MINSIZE) 0 nil)
        (wxSizer_AddWindow (slot-grid-sizer-1 obj) (slot-radio-box-1 obj) 1 (logior wxALIGN_CENTER_VERTICAL wxADJUST_MINSIZE) 2 nil)
        (wxSizer_AddWindow (slot-grid-sizer-1 obj) (slot-label-3 obj) 0 (logior wxALIGN_CENTER_VERTICAL wxADJUST_MINSIZE) 0 nil)
        (wxSizer_AddWindow (slot-grid-sizer-1 obj) (slot-spin-ctrl-1 obj) 0 (logior wxALIGN_CENTER_VERTICAL wxADJUST_MINSIZE) 0 nil)
        (wxWindow_SetAutoLayout (slot-notebook-1-pane-1 obj) 1)
        (wxWindow_SetSizer (slot-notebook-1-pane-1 obj) (slot-grid-sizer-1 obj))
        (wxSizer_Fit (slot-grid-sizer-1 obj) (slot-notebook-1-pane-1 obj))
        (wxSizer_SetSizeHints (slot-grid-sizer-1 obj) (slot-notebook-1-pane-1 obj))
        (wxSizer_AddWindow (slot-grid-sizer-2 obj) (slot-label-4 obj) 0 (logior wxALIGN_CENTER_VERTICAL wxADJUST_MINSIZE) 0 nil)
  ;;code corrected/commented by hand as wxGlade cannot handle sizers for wxCL
;        (wxSizer_AddWindow (slot-grid-sizer-2 obj) (slot-(20, 20) obj) 0 wxADJUST_MINSIZE 0 nil)
        (wxSizer_AddWindow (slot-grid-sizer-2 obj) (slot-text-ctrl-2 obj) 0 (logior wxEXPAND wxALIGN_CENTER_HORIZONTAL wxADJUST_MINSIZE) 0 nil)
        (wxSizer_AddWindow (slot-grid-sizer-2 obj) (slot-label-6 obj) 0 (logior wxALIGN_CENTER_VERTICAL wxADJUST_MINSIZE) 0 nil)
        (wxSizer_AddWindow (slot-grid-sizer-2 obj) (slot-list-box-1 obj) 0 wxADJUST_MINSIZE 0 nil)
        (wxSizer_AddWindow (slot-grid-sizer-2 obj) (slot-grid-1 obj) 1 (logior wxEXPAND wxADJUST_MINSIZE) 0 nil)
        (wxSizer_AddWindow (slot-grid-sizer-2 obj) (slot-label-5 obj) 0 wxADJUST_MINSIZE 0 nil)
        (wxSizer_AddWindow (slot-grid-sizer-2 obj) (slot-text-ctrl-3 obj) 0 wxADJUST_MINSIZE 0 nil)
        (wxSizer_AddWindow (slot-grid-sizer-2 obj) (slot-button-1 obj) 0 (logior wxALIGN_CENTER_HORIZONTAL wxALIGN_CENTER_VERTICAL wxADJUST_MINSIZE) 0 nil)
        (wxWindow_SetAutoLayout (slot-notebook-1-pane-2 obj) 1)
        (wxWindow_SetSizer (slot-notebook-1-pane-2 obj) (slot-grid-sizer-2 obj))
        (wxSizer_Fit (slot-grid-sizer-2 obj) (slot-notebook-1-pane-2 obj))
        (wxSizer_SetSizeHints (slot-grid-sizer-2 obj) (slot-notebook-1-pane-2 obj))
        (wxNotebook_AddPage (slot-notebook-1 obj) (slot-notebook-1-pane-1 obj) "Page 1" 1 -1)
        (wxNotebook_AddPage (slot-notebook-1 obj) (slot-notebook-1-pane-2 obj) "Page 2" 1 -1)
        (wxSizer_AddWindow (slot-sizer-1 obj) (slot-notebook-1 obj) 0 (logior wxEXPAND wxALIGN_BOTTOM) 4 nil)
        (wxWindow_SetAutoLayout (slot-top-window obj) 1)
        (wxWindow_SetSizer (slot-top-window obj) (slot-sizer-1 obj))
        (wxSizer_Fit (slot-sizer-1 obj) (slot-top-window obj))
        (wxSizer_SetSizeHints (slot-sizer-1 obj) (slot-top-window obj))
        )
;;;end wxGlade

(defun submit (function data event) ;;;wxGlade: Demo_app.<event_handler>
        (print "Event handler `submit' not implemented!")
        (when event
                (wxEvent:wxEvent_Skip event)))

;;; end of class Demo_app


(defun init-func (fun data evt)
        (let ((Demo (make-Demo_app)))
        (ELJApp_SetTopWindow (slot-top-window Demo))
        (wxWindow_Show (slot-top-window Demo))))
;;; end of class wxGlade_Demo_class


(unwind-protect
	(Eljapp_initializeC (wxclosure_Create #'init-func nil) 0 nil)
  (ffi:close-foreign-library "../miscellaneous/wxc-msw2.6.2.dll"))

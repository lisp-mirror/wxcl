;;;controls.lisp
;;;License  : Public domain
;;;Author(s) : Surendra Singhi (surendra@asu.edu) 
;;;Copyright (C) 2005 Surendra Singhi 
;;;See the file LICENSE for information on usage and redistribution.
;;;
;;; $Header$
;;;

;;;This program demonstrates some of the features of wxCL library.
;;;It uses box sizer and creates different kind of controls lik
;;;list boxes, combo boxes, calendar control, tree control, text
;;;boxes, radio boxes, etc. It also creates a directory chooser when it is
;;;started.
;;;This program doesn't do anything useful, it is just meant for testing the
;;;various controls and to show an instance of how to create them.
;;;Quitting the program is _not_ broken in this samples, because 
;;wxWidget does it automatically


; (load "../clisp-wrappers/wxCL.lisp")
; (load "../clisp-wrappers/constants.lisp")
; (load "../clisp-wrappers/wx_wrapper.lisp")
; (load "../clisp-wrappers/wx_main.lisp")
; (load "../clisp-wrappers/wxWindow.lisp")
; (load "../clisp-wrappers/wxFrame.lisp")
; (load "../clisp-wrappers/wxSizer.lisp")
; (load "../clisp-wrappers/wxPanel.lisp")

; (load "../clisp-wrappers/wxIcon.lisp")
; (load "../clisp-wrappers/wxDialog.lisp")
; (load "../clisp-wrappers/wxDirDialog.lisp")

; (load "../clisp-wrappers/wxButton.lisp")
; (load "../clisp-wrappers/wxCheckListBox.lisp")
; (load "../clisp-wrappers/wxRadioButton.lisp")
; (load "../clisp-wrappers/wxspinCtrl.lisp")
; (load "../clisp-wrappers/wxListBox.lisp")
; (load "../clisp-wrappers/wxListCtrl.lisp")
; (load "../clisp-wrappers/wxTreeCtrl.lisp")
; (load "../clisp-wrappers/wxSpinCtrl.lisp")
; (load "../clisp-wrappers/wxDateTime.lisp")
; (load "../clisp-wrappers/wxCalendarCtrl.lisp")
; (load "../clisp-wrappers/wxNotebook.lisp")
; (load "../clisp-wrappers/wxChoice.lisp")
; (load "../clisp-wrappers/wxComboBox.lisp")
; (load "../clisp-wrappers/wxCheckBox.lisp")
; (load "../clisp-wrappers/wxRadioBox.lisp")
; (load "../clisp-wrappers/wxStaticText.lisp")
; (load "../clisp-wrappers/wxStaticBox.lisp")
; (load "../clisp-wrappers/wxCalendarCtrl.lisp")
; (load "../clisp-wrappers/wxGauge.lisp")
; (load "../clisp-wrappers/wxStaticLine.lisp")
; (load "../clisp-wrappers/wxToggleButton.lisp")
; (load "../clisp-wrappers/wxTextCtrl.lisp")
; (load "../clisp-wrappers/wxStaticLine.lisp")

(asdf:operate 'asdf:load-op 'wxcl)

(use-package :wxCL)
;(use-package :wxEvent)
(use-package :wxframe)
(use-package :wxPanel)
(use-package :wxSizer)
(use-package :wxWindow)
(use-package :wx_wrapper)
(use-package :wx_main)
(use-package :wxIcon)
(use-package :wxButton)
(use-package :wxCheckBox)
(use-package :wxCheckListBox)
(use-package :wxRadioButton)
(use-package :wxRadioBox)
(use-package :wxListBox)
(use-package :wxSpinCtrl)
(use-package :wxNotebook)
(use-package :wxChoice)
(use-package :wxComboBox)
(use-package :wxTreeCtrl)
(use-package :wxListCtrl)

(defun add-top-controls (sizer panel)
   (let* ((lisp-text (wxStaticText:wxcl-create-static-text panel "Choose your lisp"))
	  (static-box (wxStaticBox:wxcl-create-static-box panel "Optional choices" :width 100 :height 100))
	  (rd-clisp (wxradiobutton_create panel -1 "CLISP" -1 -1 -1 -1 wxRB_GROUP))
	  (rd-sbcl (wxradiobutton_create panel -1 "SBCL" -1 -1 -1 -1 0))
	  (chk-verbose (wxcl-create-Check-Box panel "Verbose"))
	  (chk-log (wxcl-create-Check-Box panel "Log"))
	  (lst-vars (wxcl-create-list-box panel (vector "frame" "window" "world")))
	  (top-sizer (wxboxsizer_create wxHORIZONTAL))
	  (bottom-sizer (wxboxsizer_create wxHORIZONTAL))
	  (cal-ctrl (wxCalendarCtrl:wxcl-create-calendar-control panel))
	  (gauge (wxGauge:wxcl-create-gauge panel 300)))
     (wxsizer_addwindow top-sizer lisp-text 0 0 100 nil)
     (wxsizer_addwindow top-sizer rd-clisp 0 0 100 nil)
     (wxsizer_addwindow top-sizer rd-sbcl 0 0 100 nil)
     (wxsizer_addwindow top-sizer static-box 0 0 100 nil)
     (wxsizer_addwindow top-sizer chk-log 0 0 100 nil)
     (wxsizer_addwindow top-sizer chk-verbose 0 0 100 nil)
     (wxsizer_addSizer sizer top-sizer 0 0 0 nil)
     (wxsizer_addSizer sizer bottom-sizer 0 0 0 nil)
     (wxsizer_addwindow bottom-sizer lst-vars 0 0 100 nil)
     (wxsizer_addwindow bottom-sizer cal-ctrl 0 0 100 nil)
     (wxsizer_addwindow bottom-sizer gauge 0 0 100 nil)
     (wxGauge:wxGauge_SetValue gauge 150)))

(defun add-bottom-controls (sizer panel)
  (let ((top-sizer (wxboxsizer_create wxHORIZONTAL))
	(bottom-sizer (wxboxsizer_create wxHORIZONTAL))
	(btn-exec (wxcl-create-button panel "Execute"))
	(btn-clear (wxcl-create-Button panel "Clear"))
	(lisp-group (wxcl-create-radio-box panel "Lisp" (vector "sbcl" "clisp")))
 	(chk-lst (wxcl-create-check-list-box panel (vector "frame" "window" "world")))
 	(spin (wxcl-create-spin-control panel 0 10))
 	(choice (wxcl-create-choice panel (vector "clisp" "sbcl" "allegro")))
 	(combo (wxcl-create-combo-box panel (vector "clisp" "sbcl" "allegro") :value "default"))
 	(root (wxTreeItemID_Create))
 	(branch (wxTreeItemID_Create))
 	(tree (wxcl-create-tree-control panel))
	(tgl (wxToggleButton:wxcl-create-toggle-button panel "Toggle me"))
	)
     (wxTreeCtrl_AddRoot tree "Hello Tree" -1 -1 nil root)
     (wxTreeCtrl_AppendItem tree root "branch1" -1 -1 nil branch)
     (wxsizer_addwindow bottom-sizer btn-clear 0 0 100 nil)
     (wxsizer_addwindow bottom-sizer btn-exec 0 0 100 nil)
     (wxsizer_addwindow top-sizer lisp-group 0 0 100 nil)
     (wxsizer_addWindow top-sizer choice 0 0 100 nil)
     (wxsizer_addWindow top-sizer combo 0 0 100 nil)
     (wxsizer_addwindow top-sizer chk-lst 0 0 100 nil)
     (wxsizer_addwindow top-sizer spin 0 0 100 nil)
     (wxsizer_addwindow top-sizer tree 0 0 100 nil)
     (wxsizer_addwindow bottom-sizer tgl 0 0 100 nil)
     (wxsizer_addSizer sizer top-sizer 0 0 0 nil)
     (wxsizer_addSizer sizer bottom-sizer 0 0 0 nil)))

(defun add-controls(frame)
  (let ((main-sizer (wxboxsizer_create wxVERTICAL))
	(top-sizer (wxboxsizer_create wxVERTICAL))
	(bottom-sizer (wxboxsizer_create wxVERTICAL))
	txt nb line)
    (setf nb (wxCL-create-notebook frame))
    (setf panel (wxPanel_Create nb -1 -1 -1 -1 -1 wxTAB_TRAVERSAL))
    (print (wxNotebook_AddPage nb panel "Unknown" 1 -1))
    (print (wxNotebook_AddPage nb panel "Unknown" 1 -1))
    (wxwindow_setsizer panel main-sizer)
    (add-top-controls top-sizer panel)
    (add-bottom-controls bottom-sizer panel)
    (wxsizer_addSizer main-sizer top-sizer 0 0 0 nil)
    (setf line (wxStaticLine:wxcl-create-static-line panel :height 10))
    (setf txt (wxTextCtrl:wxcl-create-text-control panel :style wxTextCtrl:wxTE_MULTILINE :height 100))
    (wxsizer_addWindow main-sizer line 0 0 0 nil)
    (wxsizer_addSizer main-sizer bottom-sizer 0 0 0 nil)
    (wxsizer_addWindow main-sizer txt 0 0 0 nil)
    (wxsizer_fit main-sizer panel)
    (wxsizer_setsizehints main-sizer panel)))

(defun init-func (fun data evt)
  (let ((frame (wxframe_create nil -1 "wxCL - Controls Demo" 10 10 700 600 wxDefault_Frame_Style)))
    (wxFrame_SetIcon frame (wxicon_createload "wxcl-logo-60.ico" wxBITMAP_TYPE_ICO -1 -1))
    (add-controls frame)
    (wxwindow_show frame)
    (print (wxDirDialog:wxcl-get-dir frame))))


(Eljapp_initializeC (wxclosure_Create (function init-func) nil) 0 nil)


;;;controls.lisp
;;;License  : Public domain
;;;Author(s) : Surendra Singhi (surendra@asu.edu) 
;;;Copyright (C) 2005 Surendra Singhi 
;;;See the file LICENSE for information on usage and redistribution.
;;;
;;; $Header$
;;;

;;;This program demonstrates some of the features of wxCL library.
;;;It uses box sizer and creates different kind of controls like
;;;list boxes, combo boxes, calendar control, tree control, text
;;;boxes, radio boxes, etc. It also creates a directory chooser when it is
;;;started.
;;;This program doesn't do anything useful, it is just meant for testing the
;;;various controls and to show an instance of how to create them.
;;;Quitting the program is _not_ broken in this samples, because 
;;wxWidget does it automatically


(asdf:operate 'asdf:load-op 'wxcl)

(use-package :wxcl)
;(use-package :wxEvent)
(use-package :wxcl-layout)
(use-package :wxcl-windows)

(defun add-top-controls (sizer panel)
   (let* ((lisp-text (wxcl-controls:make-static-text panel "Choose your lisp"))
           (static-box (wxcl-controls:make-static-box panel "Optional choices" :size (make-size 100 100)))
           (rd-clisp (wxcl-controls:make-radio-button panel :label "CLISP" :style wxcl-controls:+rb-group+))
          (rd-sbcl (wxcl-controls:make-radio-button panel :label "SBCL"))
          (chk-verbose (wxcl-controls:make-check-box panel :label "verbose"))
          (chk-log (wxcl-controls:make-check-box panel :label "log"))
          (lst-vars (wxcl-controls:make-list-box panel (vector "frame" "window" "world")))
          (top-sizer (wxcl-layout:make-box-sizer +horizontal+))
          (bottom-sizer (wxcl-layout:make-box-sizer +horizontal+))
;	  (cal-ctrl (wxcl-controls:make-calendar-control panel))
	  (gauge (wxcl-controls:make-gauge panel 300)))
      (wxcl-layout:add top-sizer lisp-text)
      (wxcl-layout:add top-sizer rd-clisp)
      (wxcl-layout:add top-sizer rd-sbcl)
      (wxcl-layout:add top-sizer static-box)
      (wxcl-layout:add top-sizer chk-log)
      (wxcl-layout:add top-sizer chk-verbose)
      (wxcl-layout:add sizer top-sizer)
      (wxcl-layout:add sizer bottom-sizer)
      (wxcl-layout:add bottom-sizer lst-vars)

;     (wxcl-layout:add bottom-sizer cal-ctrl)
     (wxcl-layout:add bottom-sizer gauge)
     (setf (wxcl-controls:value gauge) 150)))

(defun add-bottom-controls (sizer panel)
  (let ((top-sizer (wxcl-layout:make-box-sizer +horizontal+))
	(bottom-sizer (wxcl-layout:make-box-sizer +horizontal+))
	(btn-exec (wxcl-controls:make-button panel :label "Execute"))
	(btn-clear (wxcl-controls:make-button panel :label "Clear"))
	(lisp-group (wxcl-controls:make-radio-box panel "Lisp" (vector "sbcl" "clisp")))
 	(chk-lst (wxcl-controls:make-check-list-box panel (vector "frame" "window" "world")))
; 	(spin (wxcl-controls:make-spin-control panel 0 10))
 	(choice (wxcl-controls:make-choice panel (vector "clisp" "sbcl" "allegro")))
 	(combo (wxcl-controls:make-combo-box panel (vector "clisp" "sbcl" "allegro") :value "default"))
;  	(root (wxTreeItemID_Create))
;  	(branch (wxTreeItemID_Create))
;  	(tree (wxcl-create-tree-control panel))
	(tgl (wxcl-controls:make-toggle-button panel :label "Toggle me"))
	)
;      (wxTreeCtrl_AddRoot tree "Hello Tree" -1 -1 nil root)
;      (wxTreeCtrl_AppendItem tree root "branch1" -1 -1 nil branch)
     (add bottom-sizer btn-clear)
     (add bottom-sizer btn-exec)
     (add top-sizer lisp-group)
     (add top-sizer choice)
     (add top-sizer combo)
     (add top-sizer chk-lst)
;     (add top-sizer spin)
;     (add top-sizer tree)
     (add bottom-sizer tgl)
     (add sizer top-sizer)
     (add sizer bottom-sizer)))

(defun add-controls(frame)
  (let ((main-sizer (make-box-sizer +vertical+))
        (top-sizer (make-box-sizer +vertical+))
        (bottom-sizer (make-box-sizer +vertical+))
        txt ;nb line
        )
;     (setf nb (wxCL-create-notebook frame))
    (setf panel (make-panel frame))
;     (wxNotebook_AddPage nb panel "Unknown" 1 -1)
;     (wxNotebook_AddPage nb panel "Unknown" 1 -1)
    (setf (sizer panel) main-sizer)
    (add-top-controls top-sizer panel)
;    (add-bottom-controls bottom-sizer panel)
    (add main-sizer top-sizer)
;    (setf line (wxcl-controls:make-static-line panel :height 10))
;    (setf txt (wxcl-controls:make-text-control panel :style wxTextCtrl:wxTE_MULTILINE :height 100))
;    (add main-sizer line 0 0 0 nil)
    (add main-sizer bottom-sizer)
 ;   (add main-sizer txt 0 0 0 nil)
    (fit main-sizer panel)
    (setf (size-hints main-sizer) panel)))

(defun init-func (evt)
  (let* ((fr (make-frame nil -1 "wxCL - Controls Demo")))
    (setf (wxcl-windows:icon fr) (wxcl-gdi:make-icon-from-file "wxcl-logo.ico" wxcl-gdi:+bitmap-type-ico+))
    (add-controls fr)
    (show fr)))


(wxcl:start-app #'init-func)

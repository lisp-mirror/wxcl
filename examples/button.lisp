;;;button.lisp
;;;License  : Public Domain
;;;Author(s) : Mark Carter (mcturra2000@yahoo.co.uk)
;;;See the file LICENSE for information on usage and redistribution.
;;;
;;; $Header$
;;;

;;;This program demonstrates wxButton.

(asdf:operate 'asdf:load-op 'wxcl)

(use-package :wxCL)
(use-package :wxEvent)
(use-package :wxEvtHandler)
(use-package :wxframe)
(use-package :wxMessageDialog)
(use-package :wxPanel)
(use-package :wxSizer)
(use-package :wxWindow)
(use-package :wx_wrapper)
(use-package :wx_main)
(use-package :wxButton)

(setq +button-id+ 5000)			; some assigned id

(defun btn-responder-function (fun frame evt)
  (when evt
    (progn
      (print "btn-responder")
      (show-message-dialog frame "You clicked me" "Response")
      )))

(defun init-func (fun data evt)
  (let ( frame sizer panel )
    (setf frame (wxframe_create nil -1 "wxButton" 10 10 100 100
				wxDefault_Frame_Style))
    (setf sizer (wxboxsizer_create wxVERTICAL))
    (setf panel (wxPanel_Create frame -1 -1 -1 -1 -1 wxTAB_TRAVERSAL))
    (wxwindow_setsizer panel sizer)

    (setf btn-responder (wxcl-create-button panel "Click" :id +button-id+))
    (wxsizer_addwindow sizer btn-responder 0 0 100 nil)

    (wxsizer_setsizehints sizer panel)

					; register events
    (wxEvtHandler_Connect frame +button-id+ (expEVT_COMMAND_BUTTON_CLICKED)
			  (wxClosure_Create #'btn-responder-function nil))

    (wxwindow_show frame)
    ))

(unwind-protect
     (Eljapp_initializeC (wxclosure_Create (function init-func) nil) 0 nil)
  (ffi:close-foreign-library "../miscellaneous/wxc-msw2.6.2.dll"))
;;;button.lisp
;;;License  : Public Domain
;;;Author(s) : Mark Carter (mcturra2000@yahoo.co.uk), Surendra Singhi (surendra@asu.edu) 
;;;See the file LICENSE for information on usage and redistribution.
;;;
;;; $Header$
;;;

;;;This program demonstrates wxButton.

(asdf:operate 'asdf:load-op 'wxcl)

(use-package :wxcl)
(use-package :wxcl-windows)

(setq +button-id+ 5000)			; some assigned id

(defun btn-responder-function (evt)
  (when evt
    (print "btn-responder")
    (message-box "You clicked me" :caption "Response")))

(defun init-func (evt)
  (let* ((frame (make-frame nil -1 "Button Demo."))
         (panel (make-panel frame))
         (btn-responder (wxcl-controls:make-button panel :label "Click" :id +button-id+))
         (sizer (wxcl-layout:make-box-sizer +vertical+)))
    (setf (sizer panel) sizer)
    (wxcl-layout:fit sizer panel)
    (wxcl-layout:add sizer btn-responder)
    (setf (wxcl-layout:size-hints sizer) panel)
					; register events
    (wxcl-events:connect btn-responder +button-id+ wxcl-events:+event-command-button-clicked+
                         #'btn-responder-function)
    (show frame)
    ))

(wxcl:start-app #'init-func)

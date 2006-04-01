;;;button.lisp
;;;License  : Public Domain
;;;Author(s) : Mark Carter (mcturra2000@yahoo.co.uk), Surendra Singhi (surendra@asu.edu) 
;;;See the file LICENSE for information on usage and redistribution.
;;;
;;; $Header: /cvsroot/wxcl/wxcl/examples/button.lisp,v 1.5 2005/12/12 09:15:48 efuzzyone Exp $
;;;

;;;This program demonstrates wxButton.

(eval-when (:compile-toplevel :load-toplevel :execute)
  (asdf:operate 'asdf:load-op 'wxcl))

(defparameter +button-id+ 5000)			; some assigned id

(defun btn-responder-function (evt)
  (when evt
    (wxcl:message-box "You clicked me" :caption "Response")))

(defun init-func (evt)
  (let* ((frame (wxcl:make-frame nil -1 "Button Demo."))
         (panel (wxcl:make-panel frame))
         (btn-responder (wxcl:make-button panel :label "Click" :id +button-id+))
         (sizer (wxcl:make-box-sizer wxcl:+vertical+)))
    (setf (wxcl:sizer panel) sizer)
    (wxcl:fit sizer panel)
    (wxcl:add sizer btn-responder)
    (setf (wxcl:size-hints sizer) panel)
      ; register events
    (wxcl:connect btn-responder +button-id+ wxcl:+event-command-button-clicked+
                  #'btn-responder-function)
    (wxcl:show frame)
    ))

(wxcl:start-app #'init-func)

(asdf:operate 'asdf:load-op 'wxcl)

; (defun init-func (evt)
;   (let ((fr (wxcl-windows:make-frame nil -1 "hello world")))
;     (wxcl-windows:show fr)))

(cffi:defcallback init-func :void ((evt :pointer))
  (let ((fr (wxcl-windows:make-frame nil -1 "hello world")))
    (wxcl-windows:show fr)))

;(wxcl:start-app #'init-func)
(wxcl:start-app (cffi:callback init-func))




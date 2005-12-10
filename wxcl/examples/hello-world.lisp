(asdf:operate 'asdf:load-op 'wxcl)

(defun init-func (evt)
  (let ((fr (wxcl-windows:make-frame nil -1 "hello world")))
    (wxcl-windows:show fr)))

(wxcl:start-app #'init-func)




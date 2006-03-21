(asdf:operate 'asdf:load-op 'cffi)
(asdf:operate 'asdf:load-op 'wxcl)

(defun init-func (evt)
  (let ((fr (wxcl:make-frame nil -1 "hello world")) title)
    (print (wxcl:title fr))
    (wxcl:show fr)))

(wxcl:start-app #'init-func)




(asdf:operate 'asdf:load-op 'cffi)
;#+cffi (cffi:load-foreign-library wxcl:+library-name+)

(asdf:operate 'asdf:load-op 'wxcl)

(defun init-func (evt)
  (let ((fr (wxcl:make-frame nil -1 "hello world")) title)
    (print (wxcl:title fr))
;    (print wxcl::wxEVENT_GRID_EDITOR_HIDDEN)
;    (print (cffi:mem-ref wxcl::wxEVENT_GRID_EDITOR_HIDDEN :int))
    (wxcl:show fr)))

(wxcl:start-app #'init-func)




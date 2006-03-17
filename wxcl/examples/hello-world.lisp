(asdf:operate 'asdf:load-op 'cffi)
;#+cffi (cffi:load-foreign-library wxcl:+library-name+)

(asdf:operate 'asdf:load-op 'wxcl)

(defun init-func (evt)
   (let ((fr (wxcl:make-frame nil -1 "hello world")) title)
;     (setf title (wxcl:title fr))
     (print (wxcl::wxString_GetLength title))
     (print (wxcl::wxStringc_str title))
     (print wxcl::wxEVENT_GRID_EDITOR_HIDDEN)
     (print (cffi:mem-ref wxcl::wxEVENT_GRID_EDITOR_HIDDEN :int))
     (wxcl:show fr)))

(wxcl:start-app #'init-func)




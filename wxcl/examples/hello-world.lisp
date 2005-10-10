(asdf:operate 'asdf:load-op 'wxcl)

(use-package :wxcl)
(use-package :wxcl-windows)

(defun init-func (func data evt)
  (let ((fr (make-frame nil "hello world")))
    (show fr)))

(unwind-protect
     (let ((clos (make-closure #'init-func)))
       (start-app clos))
  (ffi:close-foreign-library "../miscellaneous/wxc-msw2.6.2.dll"))




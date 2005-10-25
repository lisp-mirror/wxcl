(asdf:operate 'asdf:load-op 'wxcl)

(use-package :wxcl)
(use-package :wxcl-windows)

(defun init-func (evt)
  (let ((fr (make-frame nil -1 "hello world")))
;    (print wxcl-gdi::wxblack)
    (print wxcl-gdi:+black+)
    (show fr)))

(unwind-protect
     (start-app #'init-func)
  (ffi:close-foreign-library "../miscellaneous/wxc-msw2.6.2.dll"))




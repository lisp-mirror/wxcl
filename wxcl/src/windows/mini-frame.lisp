(in-package :wxcl)

(defun make-mini-frame (parent id title &key (position +default-position+) (size +default-size+)
                               (style +default-frame-style+))
  (make-wx-instance 'mini-frame (wxMiniFrame_Create (cffi-object-pointer parent)
                                                    id title (point-x position) (point-y position)
                                                    (size-width size) (size-height size) style)))

(in-package :wxcl-windows)

(defclass mini-frame (frame)
  ()
  (:documentation "A miniframe is a frame with a small title bar. It is\
 suitable for floating toolbars that must not take up too much screen area."))


(defun make-mini-frame (parent id title &key (position +default-position+) (size +default-size+)
                               (style +default-frame-style+))
  (make-wx-instance 'mini-frame (wxMiniFrame_Create (when parent (object-pointer parent))
                                                    id title (point-x position) (point-y position)
                                                    (size-width size) (size-height size) style)))

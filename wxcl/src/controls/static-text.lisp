;;;static-text.lisp
;;;License  : wxWindows License 3.1
;;;Author(s): Jack Unrue (jdunrue@gmail.com), Surendra Singhi (surendra@asu.edu) 
;;;Copyright (c) 2005 Jack D. Unrue, Surendra Singhi
;;;See the file LICENSE for information on usage and redistribution.
;;;
;;; $Header$
;;;

(in-package :wxcl-controls)

(defconstant +st-no-autoresize+ #x0001)

;;fix me 
; (defconstant wxALIGN_LEFT 0)  ;;SKS - if declared elsewhere then remove
; (defconstant wxALIGN_RIGHT 512)
; (defconstant wxALIGN_CENTRE 2304)


(defun make-static-text (parent text &key (id -1) (pos +default-position+) (size +default-size+) (style 0))
    "Create a static text control."
    (make-wx-instance 'static-text
		      (wxStaticText_Create (when parent (object-pointer parent))
				       id text (point-x pos) (point-y pos) (size-width size)
				       (size-height size) style)))

;;;gauge.lisp
;;;License  : wxWindows License 3.1
;;;Author(s): Jack Unrue (jdunrue@gmail.com), Surendra Singhi (surendra@asu.edu) 
;;;Copyright (c) 2005 Jack D. Unrue, Surendra Singhi
;;;See the file LICENSE for information on usage and redistribution.
;;;
;;; $Header$
;;;

(in-package :wxcl)

(defconstant +ga-progressbar+ #x0000)
(defconstant +ga-horizontal+  #x0004)
(defconstant +ga-vertical+    #x0008)
(defconstant +ga-smooth+      #x0020)

(defun make-gauge (parent range &key (id -1) (pos +default-position+) (size +default-size+) (style 0))
    "Create a gauge control."
    (make-wx-instance 'gauge
		      (wxGauge_Create (cffi-object-pointer parent)
				       id range (point-x pos) (point-y pos) (size-width size) (size-height size) style)))

(defmethod bezel-face ((obj gauge))
    "Returns the width of the 3D bezel face; this method returns 0 for most platforms."
    (wxGauge_GetBezelFace (object-pointer obj)))

(defmethod (setf bezel-face) (width (obj gauge))
    "Sets the 3D bezel face width; this method does nothing on most platforms."
    (wxGauge_SetBezelFace (object-pointer obj) width))

(defmethod range ((obj gauge))
    "Returns the maximum value of the gauge."
    (wxGauge_GetRange (object-pointer obj)))

(defmethod (setf range) (range (obj gauge))
    "Sets the maximum value of the gauge."
    (wxGauge_SetRange (object-pointer obj) range))

(defmethod shadow-width ((obj gauge))
    "Returns the 3D shadow margin width."
    (wxGauge_GetShadowWidth (object-pointer obj)))

(defmethod (setf shadow-width) (width (obj gauge))
    "Sets the 3D shadow margin width."
    (wxGauge_SetShadowWidth (object-pointer obj) width))

(defmethod value ((obj gauge))
    "Returns the current position of the gauge."
    (wxGauge_GetValue (object-pointer obj)))

(defmethod (setf value) (pos (obj gauge))
    "Sets the current position of the gauge."
    (wxGauge_SetValue (object-pointer obj) pos))

#|
(defmethod vertical-p ((obj gauge))
    "Returns T if the gauge is vertical; returns nil otherwise."
    (wxGauge_IsVertical (object-pointer obj)))
|#

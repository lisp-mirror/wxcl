;;;window.lisp
;;;License  : wxWindows License 3.1
;;;Author(s) : Surendra Singhi (surendra@asu.edu) 
;;;Copyright (C) 2005 Surendra Singhi 
;;;See the file LICENSE for information on usage and redistribution.
;;;
;;; $Header$
;;;

(in-package :wxcl-windows)

(defun make-tip-window (parent text	max-length)
  (make-wx-instance 'tip-window
                    (wxTipWindow_Create (object-pointer parent) text max-length)))


(defmethod (setf tip-window-ptr) (win-ptr (obj tip-window))
  (wxTipWindow_SetTipWindowPtr (object-pointer obj) (object-pointer win-ptr)))

(defmethod (setf bounding-rect) ((rc rect) (obj tip-window))
  (wxTipWindow_SetBoundingRect (object-pointer obj) 
                               (point-x (rect-position rc))
                               (point-y (rect-position rc))
                               (size-width (rect-size rc))
                               (size-height (rect-size rc))))

(defmethod close ((obj tip-window))
  (wxTipWindow_Close (object-pointer obj)))




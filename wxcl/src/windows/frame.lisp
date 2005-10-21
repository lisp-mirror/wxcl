;;;frame.lisp
;;;License  : wxWindows License 3.1
;;;Author(s) : Surendra Singhi (surendra@asu.edu) 
;;;Copyright (C) 2005 Surendra Singhi 
;;;See the file LICENSE for information on usage and redistribution.
;;;
;;; $Header$
;;;

(in-package :wxcl-windows)

(defconstant +default-frame-style+ 536878656)
(defconstant +frame-ex-contexthelp+ 4)
(defconstant +frame-shaped+ 6)
(defconstant +frame-float-on-parent+ 8)
(defconstant +frame-tool-window+ 4)


;;fix me
;;a new class called wxtopwindow should be created and all these constants
;;should be there, both frame and dialog class should inherit from that class
(defconstant +fullscreen-nomenubar+ 1)
(defconstant +fullscreen-notoolbar+ 2)
(defconstant +fullscreen-nostatusbar+ 4)
(defconstant +fullscreen-noborder+ 8)
(defconstant +fullscreen-nocaption+ 16)
(defconstant +fullscreen-all+ 1)

(defun make-frame (parent id title &key (position +default-position+) (size +default-size+) (style +default-frame-style+))
  (make-wx-instance 'frame (wxFrame_Create (when parent (object-pointer parent))
                                           id title (point-x position) (point-y position)
                                           (size-width size) (size-height size) style)))

(defmethod maximize ((obj frame))
  (wxFrame_Maximize (object-pointer obj)))

(defmethod restore ((obj frame))
  (wxFrame_Restore (object-pointer obj)))

(defmethod iconize ((obj frame))
  (wxFrame_Iconize (object-pointer obj)))

(defmethod maximized-p ((obj frame))
  (= 1 (wxFrame_IsMaximized (object-pointer obj))))

(defmethod iconized-p ((obj frame))
  (= 1 (wxFrame_IsIconized (object-pointer obj))))

(defmethod icon ((obj frame))
  (let ((ic (make-instance 'icon)))
    (setf (slot-value ic 'object) (wxFrame_GetIcon (object-pointer obj)))
    ic))

(defmethod (setf icon) (ic (obj frame))
    (wxFrame_SetIcon (object-pointer obj) (object-pointer ic)))

(defmethod client-area-origin ((obj frame))
  (make-instance 'point
		 :x (wxFrame_GetClientAreaOrigin_left (object-pointer obj))
		 :y (wxFrame_GetClientAreaOrigin_top (object-pointer obj))))

(defmethod icon ((obj frame))
  (make-wx-instance 'icon (wxFrame_GetIcon (object-pointer obj))))

(defmethod (setf menu-bar) (mb (obj frame))
    (wxFrame_SetMenuBar (object-pointer obj) (object-pointer mb)))

(defmethod menu-bar ((obj frame))
  (make-wx-instance 'menu-bar (wxFrame_GetMenuBar (object-pointer obj))))

(defmethod (setf status-bar) (sb (obj frame))
    (wxFrame_SetStatusBar (object-pointer obj) (object-pointer sb)))

(defmethod status-bar ((obj frame))
  (make-wx-instance 'status-bar (wxFrame_GetStatusBar (object-pointer obj))))

(defmethod (setf tool-bar) (tb tool-bar (obj frame))
  (wxFrame_SetToolBar (object-pointer obj) (object-pointer tb)))

(defmethod tool-bar ((obj frame))
  (make-wx-instance 'tool-bar (wxFrame_GetToolBar (object-pointer obj))))

(defmethod (setf status-text) (text (obj frame) &optional (i 0))
  "Sets the text for one field."
  (wxFrame_SetStatusText (object-pointer obj) text i))

(defmethod set-status-Widths ((obj frame) num widths)
    (wxStatusBar_SetStatusWidths (object-pointer obj) num widths))

(defmethod create-status-bar ((obj frame) num style)
  (make-wx-instance 'status-bar (wxFrame_CreateStatusBar (object-pointer obj) num style)))

(defmethod create-tool-bar ((obj frame) style)
  (make-wx-instance 'tool-bar (wxFrame_CreateToolBar (object-pointer obj) style)))

(defmethod title ((obj frame))
  (wxFrame_GetTitle (object-pointer obj)))

(defmethod (setf title) (str (obj frame))
  (wxFrame_SetTitle (object-pointer obj) str))

(defmethod (setf shape)  (reg (obj frame))
  (= 1 (wxFrame_SetShape (object-pointer obj) (object-pointer reg))))


(defmethod show-full-screen ((obj frame) show &optional (style +fullscreen-all+))
  (= 1 (wxFrame_ShowFullScreen (object-pointer obj)
			       (if show 1 0)
			       style)))

(defmethod full-screen-p ((obj frame))
  (= 1 (wxFrame_IsFullScreen (object-pointer obj))))

(defmethod centre ((obj frame) (orientation integer))
    (wxFrame_Centre (object-pointer obj) orientation))

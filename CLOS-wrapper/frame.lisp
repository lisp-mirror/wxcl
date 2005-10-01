(in-package :wxCL)

(use-package :wxFrame)

(defclass frame (window)
  ()
  (:documentation "The class for creating frames."))


(defun make-frame (parent id title &key (pos default-position) (size default-size) (style wxDEFAULT_FRAME_STYLE))
  (let ((fr (make-instance 'status-bar)))
    (setf (slot-value fr 'object)
	  (wxFrame_Create (when parent (object-pointer parent))
			  id title (point-x pos) (point-y pos)
			  (size-width size) (size-height size) style))
    fr))

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

(defmethod (setf icon) ((ic icon) ((obj frame)))
    (wxFrame_SetIcon (object-pointer obj) (object-pointer ic)))

(defmethod client-area-origin ((obj frame))
  (make-instance 'point
		 :x (wxFrame_GetClientAreaOrigin_left (object-pointer obj))
		 :y (wxFrame_GetClientAreaOrigin_top (object-pointer obj))))

(defmethod icon ((obj frame))
  (let ((ic (make-instance 'icon)))
    (setf (slot-value ic 'object) (wxFrame_GetIcon (object-pointer obj)))
    ic))

(defmethod (setf menu-bar) ((mb menu-bar) ((obj frame)))
    (wxFrame_SetMenuBar (object-pointer obj) (object-pointer mb)))

(defmethod menu-bar ((obj frame))
  (let ((mb (make-instance 'menu-bar)))
    (setf (slot-value mb 'object) (wxFrame_GetMenuBar (object-pointer obj)))
    mb))

(defmethod (setf status-bar) ((sb status-bar) ((obj frame)))
    (wxFrame_SetStatusBar (object-pointer obj) (object-pointer sb)))

(defmethod status-bar ((obj frame))
  (let ((sb (make-instance 'status-bar)))
    (setf (slot-value sb 'object) (wxFrame_GetStatusBar (object-pointer obj)))
    sb))

(defmethod (setf tool-bar) ((tb tool-bar) ((obj frame)))
    (wxFrame_SetToolBar (object-pointer obj) (object-pointer tb)))

(defmethod tool-bar ((obj frame))
  (let ((tb (make-instance 'tool-bar)))
    (setf (slot-value tb 'object) (wxFrame_GetToolBar (object-pointer obj)))
    tb))

(defmethod (setf status-text) (text (obj frame) &optional (i 0))
  "Sets the text for one field."
  (wxFrame_SetStatusText (object-pointer obj) text i))

(defmethod set-status-Widths ((obj frame) num widths)
    (wxStatusBar_SetStatusWidths (object-pointer obj) num widths))

(defmethod create-status-bar ((obj frame) num style)
  (let ((st (make-instance 'status-bar)))
    (setf (slot-value st 'object)
	  (wxFrame_CreateStatusBar (object-pointer obj) num style))
    st))

(defmethod create-tool-bar ((obj frame) style)
  (let ((tb (make-instance 'tool-bar)))
    (setf (slot-value tb 'object)
	  (wxFrame_CreateToolBar (object-pointer obj) style))
    tb))

(defmethod title ((obj frame))
  (wxFrame_GetTitle (object-pointer obj)))

(defmethod (setf title) (str (obj frame))
  (wxFrame_SetTitle (object-pointer obj) str))

(defmethod (setf shape)  ((reg region) (obj frame))
  (= 1 (wxFrame_SetShape (object-pointer obj) (object-pointer reg))))


(defmethod Show-Full-Screen ((obj frame) show &optional (style wxFULLSCREEN_ALL))
  (= 1 (wxFrame_ShowFullScreen (object-pointer obj)
			       (if show 1 0)
			       style)))

(defmethod full-screen-p ((obj frame))
  (= 1 (wxFrame_IsFullScreen (object-pointer obj))))

(defmethod centre ((obj frame) (orientation integer))
    (wxFrame_Centre (object-pointer obj) orientation))

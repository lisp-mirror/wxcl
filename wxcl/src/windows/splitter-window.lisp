
(in-package :wxcl-windows)

(defconstant +sp-noborder+ 0)
(defconstant +sp-nosash+ 16)
(defconstant +sp-border+ 32)
(defconstant +sp-permit-unsplit+ 64)
(defconstant +sp-live-update+ 128)
(defconstant +sp-3dsash+ 256)
(defconstant +sp-3dborder+ 512)
(defconstant +sp-3d+ 768)
(defconstant +sp-fullsash+ 1024)

(defun make-splitter-window (parent &key (id -1) (position +default-position+) (size +default-size+) (style +sp-3d+))
  (make-wx-instance 'splitter-window (wxSplitterWindow_Create (when parent (object-pointer parent))
                                                              id (point-x position) (point-y position)
                                                              (size-width size) (size-height size) style)))

(defmethod window-1 ((obj splitter-window))
  (make-wx-instance 'window (wxSplitterWindow_GetWindow1 (object-pointer obj))))

(defmethod window-2 ((obj splitter-window))
  (make-wx-instance 'window (wxSplitterWindow_GetWindow2 (object-pointer obj))))

(defmethod (setf split-mode) (mode (obj splitter-window)) 
  (wxSplitterWindow_SetSplitMode (object-pointer obj) mode))

(defmethod split-mode ((obj splitter-window))
  (wxSplitterWindow_GetSplitMode (object-pointer obj)))

(defmethod initialize ((obj splitter-window) window)
  (wxSplitterWindow_Initialize (object-pointer obj) (object-pointer window)))

(defmethod split-vertically ((obj splitter-window) (win1 window) (win2 window) &optional (sash-position 0))
  (= 1 (wxSplitterWindow_SplitVertically (object-pointer obj) (object-pointer win1)
                                         (object-pointer win2) sash-position)))

(defmethod split-horizontally ((obj splitter-window) (win1 window) (win2 window) &optional (sash-position 0))
  (= 1 (wxSplitterWindow_SplitHorizontally (object-pointer obj) (object-pointer win1)
                                           (object-pointer win2) sash-position)))

(defmethod unsplit ((obj splitter-window) &optional (win nil))
  (= 1 (wxSplitterWindow_Unsplit (object-pointer obj) (when win (object-pointer win)))))

(defmethod replace-window ((obj splitter-window) (win-old window) (win-new window))
  (= 1 (wxSplitterWindow_ReplaceWindow (object-pointer obj) (object-pointer win-old) (object-pointer win-new))))

(defmethod split-p ((obj splitter-window))
  (= 1 (wxSplitterWindow_IsSplit (object-pointer obj))))

(defmethod (setf sash-size) ((obj splitter-window) width)
  (wxSplitterWindow_SetSashSize (object-pointer obj) width))

(defmethod (setf border-size) (width (obj splitter-window))
  (wxSplitterWindow_SetBorderSize (object-pointer obj) width))

(defmethod sash-size ((obj splitter-window))
  (wxSplitterWindow_GetSashSize (object-pointer obj)))

(defmethod border-size ((obj splitter-window))
  (wxSplitterWindow_GetBorderSize (object-pointer obj)))

(defmethod set-sash-position ((obj splitter-window) position &optional (redraw t))
  (wxSplitterWindow_SetSashPosition (object-pointer obj) position (if redraw 1 0)))

(defmethod sash-positon ((obj splitter-window))
  (wxSplitterWindow_GetSashPosition (object-pointer obj)))

(defmethod (setf minimum-pane-size) (pane-size (obj splitter-window))
  (wxSplitterWindow_SetMinimumPaneSize (object-pointer obj) pane-size))

(defmethod minimum-pane-size ((obj splitter-window))
  (wxSplitterWindow_GetMinimumPaneSize (object-pointer obj)))

; (defmethod sash-gravity ((obj splitter-window))
;   (wxSplitterWindow_GetSashGravity (object-pointer obj)))

(defmethod (setf sash-gravity) (gravity (obj splitter-window))
  (wxSplitterWindow_SetSashGravity (object-pointer obj) gravity))
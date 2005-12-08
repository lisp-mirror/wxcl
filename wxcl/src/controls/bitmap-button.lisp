;;;bitmap-button.lisp
;;;License  : wxWindows License 3.1
;;;Author(s): Jack Unrue (jdunrue@gmail.com), Surendra Singhi (surendra@asu.edu) 
;;;Copyright (c) 2005 Jack D. Unrue, Surendra Singhi
;;;See the file LICENSE for information on usage and redistribution.
;;;
;;; $Header$
;;;

(in-package :wxcl-controls)

(defconstant +bu-autodraw+ #x0004)

(defun make-bitmap-button (parent bmp &key (id -1) (pos +default-position+)
                           (size +default-size+) (style +bu-autodraw+))
    "Create a bitmap button control."
    (make-wx-instance 'bitmap-button
		      (wxBitmapButton_Create (when parent (object-pointer parent))
					     id bmp (point-x pos) (point-y pos) (size-width size)
					     (size-height size) style)))

(defmethod bitmap-disabled ((obj bitmap-button))
    "Returns the bitmap for the disabled state."
    (make-wx-instance 'wxcl-gdi:bitmap (wxBitmapButton_GetBitmapDisabled (object-pointer obj))))

(defmethod (setf bitmap-disabled) (bmp (obj bitmap-button))
    "Sets the bitmap for the disabled button appearance."
    (wxBitmapButton_SetBitmapDisabled (object-pointer obj) bmp))

(defmethod bitmap-focus ((obj bitmap-button))
    "Returns the bitmap for the focused state."
     (make-wx-instance 'wxcl-gdi:bitmap (wxBitmapButton_GetBitmapFocus (object-pointer obj))))

(defmethod (setf bitmap-focus) (bmp (obj bitmap-button))
    "Sets the bitmap for the button when it has the keyboard focus."
    (wxBitmapButton_SetBitmapFocus (object-pointer obj) bmp))

(defmethod bitmap-label ((obj bitmap-button))
    "Returns the label bitmap (the one passed to the constructor)."
    (make-wx-instance 'wxcl-gdi:bitmap (wxBitmapButton_GetBitmapLabel (object-pointer obj))))

(defmethod (setf bitmap-label) (bmp (obj bitmap-button))
    "Sets the bitmap used for the unselected state and for all other states \
if no other bitmaps are provided."
    (wxBitmapButton_SetBitmapLabel (object-pointer obj) bmp))

(defmethod bitmap-selected ((obj bitmap-button))
    "Returns the bitmap for the selected state."
    (make-wx-instance 'wxcl-gdi:bitmap (wxBitmapButton_GetBitmapSelected (object-pointer obj))))

(defmethod (setf bitmap-selected) (bmp (obj bitmap-button))
    "Sets the bitmap for the selected button appearance."
    (wxBitmapButton_SetBitmapSelected (object-pointer obj) bmp))

(defmethod margin-x ((obj bitmap-button))
    "FIXME: undocumented method"
    (wxBitmapButton_GetMarginX (object-pointer obj)))

(defmethod margin-y ((obj bitmap-button))
    "FIXME: undocumented method"
    (wxBitmapButton_GetMarginY (object-pointer obj)))

(defmethod set-margins ((obj bitmap-button) x y)
    "FIXME: undocumented method"
    (wxBitmapButton_SetMargins (object-pointer obj) x y))

;;;slider.lisp
;;;License  : wxWindows License 3.1
;;;Author(s): Jack Unrue (jdunrue@gmail.com), Surendra Singhi (surendra@asu.edu) 
;;;Copyright (c) 2005 Jack D. Unrue, Surendra Singhi
;;;See the file LICENSE for information on usage and redistribution.
;;;
;;; $Header$
;;;

(in-package :wxcl-controls)

(defclass slider (control)
    ()
    (:documentation "A slider is a control which can be pulled back and \
forth to change the value."))

(defun make-slider (parent init-value min-value max-value &key (id -1) (pos default-position) (size default-size) (style 0))
    ;; FIXME: wxC wrapper needs to define wxSL_HORIZONTAL and wxSL_VERTICAL
    ;; then we can set wxSL_HORIZONTAL as the default style
    "Create a slider control."
    (make-wx-instance 'slider
		      (wxSlider_Create (when parent (object-pointer parent))
				       id init-value min-value max-value (point-x pos) (point-y pos) (size-width size)
				       (size-height size) style)))

(defmethod clear-sel ((obj slider))
    "Clears the selection (only for sliders created with the wxSL_SELRANGE style)."
    (wxSlider_ClearSel (object-pointer obj)))

(defmethod line-size ((obj slider))
    "Returns the slider's line size."
    (wxSlider_GetLineSize (object-pointer obj)))

(defmethod (setf line-size) (size (obj slider))
    "Sets the slider's line size."
    (wxSlider_SetLineSize (object-pointer obj) size))

(defmethod max ((obj slider))
    "Returns the maximum slider value."
    (wxSlider_GetMax (object-pointer obj)))

(defmethod min ((obj slider))
    "Returns the minimum slider value."
    (wxSlider_GetMin (object-pointer obj)))

(defmethod page-size ((obj slider))
    "Returns the slider's page size."
    (wxSlider_GetPageSize (object-pointer obj)))

(defmethod (setf page-size) (size (obj slider))
    "Sets the slider's page size."
    (wxSlider_SetPageSize (object-pointer obj) size))

(defmethod (setf range) (min max (obj slider))
    "Sets the minimum and maximum values for the slider."
    (wxSlider_SetRange (object-pointer obj) min max))

#|
(defmethod clear-ticks ((obj slider))
    "Clears the ticks. wxWindows API doc says this is Win95 only."
    (wxSlider_ClearTicks (object-pointer obj)))

(defmethod sel-end ((obj slider))
    "Returns the selection end point. wxWindows API doc says this is Win95 only."
    (wxSlider_GetSelEnd (object-pointer obj)))

(defmethod sel-start ((obj slider))
    "Returns the selection start point. wxWindows API doc says this is Win95 only."
    (wxSlider_GetSelStart (object-pointer obj)))

(defmethod set-selection (start end (obj slider))
    "Sets the selection. wxWindows API doc says this is Win95 only."
    (wxSlider_SetSelection (object-pointer obj) start end))

(defmethod thumb-length ((obj slider))
    "Returns the thumb length. wxWindows API doc says this is Win95 only."
    (wxSlider_GetThumbLength (object-pointer obj)))

(defmethod (setf thumb-length) (len (obj slider))
    "Sets the thumb length. wxWindows API doc says this is Win95 only."
    (wxSlider_SetThumbLength (object-pointer obj) len))

(defmethod (setf tick) (pos (obj slider))
    "Sets a tick position. wxWindows API doc says this is Win95 only."
    (wxSlider_SetTick (object-pointer obj) pos))

(defmethod tick-freq ((obj slider))
    "Returns the tick frequency. wxWindows API doc says this is Win95 only."
    (wxSlider_GetTickFreq (object-pointer obj)))

(defmethod (setf tick-freq) (freq pos (obj slider))
    "Sets the tick frequency. wxWindows API doc says this is Win95 only."
    (wxSlider_SetTickFreq (object-pointer obj) freq pos))
|#

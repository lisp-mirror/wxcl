(in-package :wxcl-windows)

(defclass scrolled-window (panel)
  ()
  (:documentation "The wxScrolledWindow class manages scrolling for its client\
 area, transforming the coordinates according to the scrollbar positions, and\
 setting the scroll positions, thumb sizes and ranges according to the area in view."))

(defconstant +vscroll+ -2147483648)
(defconstant +hscroll+ 1073741824)


(defun make-scrolled-window (parent &key (id -1) (position +default-position+) (size +default-size+)
				    (style (logior +vscroll+ +hscroll+)))
  (make-wx-instance 'scrolled-window (wxScrolledWindow_Create (object-pointer parent) id
							      (point-x position) (point-y position)
							      (size-width size) (size-height size) style)))

(defmethod (setf target-window) ((target window) (obj scrolled-window))
  (wxScrolledWindow_SetTargetWindow (object-pointer obj) (object-pointer target)))

(defmethod target-window ((obj scrolled-window))
  (make-wx-instance 'window (wxScrolledWindow_GetTargetWindow (object-pointer obj))))

(defmethod set-scroll-bars ((obj scrolled-window) pixels-per-unit-x pixels-per-unit-y no-units-x no-units-y
			    &key (x-pos 0)(y-pos 0) (no-refresh nil))
  (wxScrolledWindow_SetScrollbars (object-pointer obj)  pixels-per-unit-x
				  pixels-per-unit-y no-units-x no-units-y
				  x-pos y-pos (if no-refresh 1 0)))

(defmethod scroll ((obj scrolled-window) pt)
  "Scrolls a window so the view start is at the given point."
  (wxScrolledWindow_Scroll (object-pointer obj) (point-x pt) (point-y pt)))

(defmethod scroll-page-size ((obj scrolled-window) orient)
  (wxScrolledWindow_GetScrollPageSize (object-pointer obj) orient))

(defmethod set-scroll-page-size ((obj scrolled-window) orient page-size)
  (wxScrolledWindow_SetScrollPageSize (object-pointer obj) orient page-size))

(defmethod scroll-pixel-per-unit ((obj scrolled-window))
  (wxScrolledWindow_GetScrollPixelsPerUnit (object-pointer obj)))

(defmethod enable-scrolling ((obj scrolled-window) x-scrolling y-scrolling)
  (wxScrolledWindow_EnableScrolling (object-pointer obj) (if x-scrolling 1 0) (if y-scrolling 1 0)))

(defmethod view-start ((obj scrolled-window))
  (wxScrolledWindow_GetViewStart (object-pointer obj)))

(defmethod virtual-size ((obj scrolled-window))
  (wxScrolledWindow_GetVirtualSize (object-pointer obj)))

;;these functions are not present in the manual
;;need to find more about them
; (defmethod ((obj scrolled-window)) wxScrolledWindow_SetScale
;     (:name "wxScrolledWindow_SetScale")
;   (:arguments (_obj (ffi:c-pointer NIL))
; 	      (xs DOUBLE-FLOAT)
; 	      (ys DOUBLE-FLOAT))
;   (:return-type NIL)
;   (:library +library-name+))

; (defmethod ((obj scrolled-window)) wxScrolledWindow_GetScaleX
;     (:name "wxScrolledWindow_GetScaleX")
;   (:arguments (_obj (ffi:c-pointer NIL)))
;   (:return-type DOUBLE-FLOAT)
;   (:library +library-name+))

; (defmethod ((obj scrolled-window)) wxScrolledWindow_GetScaleY
;     (:name "wxScrolledWindow_GetScaleY")
;   (:arguments (_obj (ffi:c-pointer NIL)))
;   (:return-type DOUBLE-FLOAT)
;   (:library +library-name+))

(defmethod calc-scrolled-position ((obj scrolled-window) x y)
  (wxScrolledWindow_CalcScrolledPosition (object-pointer obj) x y))

(defmethod calc-unscrolled-position ((obj scrolled-window) x y)
  (wxScrolledWindow_CalcUnscrolledPosition (object-pointer obj) x y))

(defmethod adjust-scrollbars ((obj scrolled-window))
  (wxScrolledWindow_AdjustScrollbars (object-pointer obj)))

; (defmethod ((obj scrolled-window)) wxScrolledWindow_OnDraw
;     (:name "wxScrolledWindow_OnDraw")
;   (:arguments (_obj (ffi:c-pointer NIL))
; 	      (dc (ffi:c-pointer NIL)))
;   (:return-type NIL)
;   (:library +library-name+))

(defmethod set-scroll-rate ((obj scrolled-window) x-step y-step)
  (wxScrolledWindow_SetScrollRate (object-pointer obj) x-step y-step))

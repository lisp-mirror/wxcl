;;;hypercube.lisp
;;;License  : Public Domain
;;;Author(s) : Surendra Singhi (surendra@asu.edu) 
;;;Copyright (C) 2005 Surendra Singhi
;;;See the file LICENSE for information on usage and redistribution.
;;;
;;; $Header$
;;;

;; Code shamelessly taken from Luis G. Lopez and Pascal Bourguignon

;;;This program demonstrates some of the features of wxCL library
;;;In particular it makes use of device contexts, pens and brushes to draw 
;;;a rectangle. The rectangle is rotated after certain duration.
;;;This example shows how to use, different drawing primitives.


(asdf:operate 'asdf:load-op 'wxcl)

(use-package "FFI")
(use-package :wxCL)
(use-package :wx_main)
(use-package :wxFrame)
(use-package :wxEvent)
(use-package :wxTimer)
(use-package :wxEvtHandler)
(use-package :wxBitmap)
(use-package :wx_wrapper)
(use-package :wxWindow)
(use-package :wxTimer)
(use-package :wxDC)

(ffi:default-foreign-language :c)

(defparameter start 10)
(defparameter timer nil)

(defun position-initial ()
  "Return the initial positions of vertices"
  (let ((result (make-array '(16 4) :initial-element 0)))
    (dotimes (i 16)
      (dotimes (j 4)
        (setf (aref result i j) (if (oddp (ldb (byte 1 j) i)) -100 100))))
    result))

(defconstant +rad+ (/ pi 180.0))

(defparameter *position-actual* (position-initial))

(defun traducir (eje) 
  (if (integerp eje)
      eje			 ; accept a numeric eje specification.
      (position (character eje) "xyzw" :test (function char-equal))))

;(let ((position-rotated (position-initial)))
(defparameter position-rotated (position-initial))

(defun multiplicar (A B)
  "Multiplies matrix A by B"
  (dotimes (i 16)
    (dotimes (j 4)
      (let ((temp 0))
	(dotimes (k 4)
	  (incf temp (* (aref A i k) (aref B k j))))
	(setf (aref position-rotated i j) temp)))))
;  (print position-rotated))

(let ((rotation-matrix (make-array '(4 4) :initial-element 0)))
  (defun rotar (vertices eje1 eje2 grados)
    "Gives the hypercube a rotation of 'grados' degrees in the plane 'eje1-eje2'"
    (let ((eje1   (traducir eje1))
	  (eje2   (traducir eje2))
	  (grados (* grados +rad+)))
      (when (> eje1 eje2)
	(rotatef eje1 eje2))
      (dotimes (i 4)
	(setf (aref rotation-matrix i i) (if (or (= i eje1) (= i eje2))
					     (cos grados)
					     1)))
      (setf (aref rotation-matrix eje1 eje2) (sin grados)
	    (aref rotation-matrix eje2 eje1) (- (sin grados)))
      (multiplicar vertices rotation-matrix))))

; (loop repeat 10 
;       for axis1 = (random 4)
;       for axis2 = (loop for axis = (random 4) 
;                         while (= axis axis1)
;                         finally (return axis))
;       for angle = (random 90)
;       for vertices = (rotar (position-inicial) axis1 axis2 angle)
;                 then (rotar vertices axis1 axis2 angle)
;       do (format t "~2%Rotation ~D degree around ~
;                     plane (~[x~;y~;z~;w~],~[x~;y~;z~;w~])~%" angle axis1 axis2)
;          (loop for i below 16
;                do (loop for j below 4
;                         do (format t "~8,3F " (aref vertices i j))
;                         finally (format t "~%"))))

(defparameter init-vertices (position-initial))

(defparameter angle 0)

(defparameter xs (make-array 32 :element-type 'integer))
(defparameter ys (make-array 32 :element-type 'integer))

(defun draw-image (dc)
  (wxDC_SetBackground dc (wxBrush:wxBrush_CreateFromStock wxBrush:wxWHITE_BRUSH))
  (wxDC_SetPen dc (wxPen:wxPen_CreateFromStock wxPen:wxRED_PEN))
  (wxDC_SetBrush dc (wxBrush:wxBrush_CreateFromStock wxBrush:wxTRANSPARENT_BRUSH))
  (wxDC_Clear dc)
  (wxDC_DrawPolygon dc 32 xs ys 0 0 -1)
  )

(defparameter seq '(0 1 3 2 6 14 10 8 9 11 3 7 15 14 12 13 9 1 5 7 6 4 12 8 0 4 5 13 15 11 10 2 0))
    
(defun write-xs-ys (array)
  (loop for x in seq
	for pos from 0 to 31 do
	(setf (svref xs pos) (round (+ 200 (aref array x 0))))
	(setf (svref ys pos) (round (+ 200 (aref array x 1))))))

(defun paint-image (fun frame evt)
  (when evt
    (with-paint-dc (paintdc frame)
      (draw-image paintdc)
      )
    (wxEvent_Skip evt)))

(defun timer-event (fun frame evt)
  (when evt
;    (let ((vertices
    (rotar init-vertices 0 1 angle);))
      ;(print vertices)
;      (print vertices)
      (write-xs-ys position-rotated)
      (setf angle (+ 1 angle))
      (print angle)
      (when (> angle 89) (setf angle 0))
      (with-client-dc (clientdc frame)
	(draw-image clientdc)
	)));)

(defun test-closure (fun data evt)
  (let (frame ic)
    (setf frame (wxFrame_create nil -1 "Drawing simple images" 10 10 500 500 wxDEFAULT_FRAME_STYLE))
;    (wxWindow_SetForegroundColour frame (wxColour:wxColour_CreateFromStock wxColour:wxWHITE))
    (setq timer (wxTimerEx_Create))
    (wxTimerEx_Connect timer (wxClosure_Create #'timer-event frame))
    (wxevthandler_connect frame -1 (expEVT_PAINT) (wxClosure_Create #'paint-image frame))
    (wxTimer_Start timer 1000 0)
    (write-xs-ys init-vertices)
    (wxWindow_Show frame)
    ))

;;; Creates the closure
(setf x (wxClosure_Create #'test-closure nil))

;;;Starts execution
(Eljapp_initializeC x 0 nil)

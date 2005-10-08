;;;drawing.lisp
;;;License  : Public domain
;;;Author(s) : Surendra Singhi (surendra@asu.edu) 
;;;Copyright (C) 2005 Surendra Singhi
;;;See the file LICENSE for information on usage and redistribution.
;;;
;;; $Header$
;;;

;;;This program demonstrates some of the features of wxCL library
;;;In particular it makes use of device contexts, pens and brushes to draw 
;;;a rectangle. The rectangle is rotated after certain duration.
;;;This example shows how to use, different drawing primitives.


(asdf:operate 'asdf:load-op 'wxcl)

(use-package "FFI")
(use-package :wxCL)
(use-package :wx_main)
(use-package :wxICon)
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

(defun paint-image (fun frame evt)
  (when evt
     (with-paint-dc (paintdc frame)
       (wxDC_SetBackground paintdc wxBrush:wxWHITE_BRUSH)
       (wxDC_SetPen paintdc wxPen:wxRED_PEN)
       (wxDC_SetBrush paintdc wxBrush:wxTRANSPARENT_BRUSH)
       (wxDC_Clear paintdc)
       (wxDC_DrawRectangle paintdc start 20 70 80))
    ))

(defun draw-image (fun frame evt)
  (when evt
    (with-client-dc (clientdc frame)
      (wxDC_SetBackground clientdc wxBrush:wxWHITE_BRUSH)
      (wxDC_SetPen clientdc  wxPen:wxRED_PEN)
      (wxDC_SetBrush clientdc wxBrush:wxTRANSPARENT_BRUSH)
      (wxDC_Clear clientdc)
      (wxDC_DrawRectangle clientdc start 20 70 80)
      (setq start (+ start 1)))
    ))

(defun test-closure (fun data evt)
  (let (frame)
    (setf frame (wxFrame_create nil -1 "Drawing simple images" 10 10 500 500 wxDEFAULT_FRAME_STYLE))
    (wxFrame_SetIcon frame (wxicon_createload "wxcl-logo.ico" wxBITMAP_TYPE_ICO -1 -1))
    (setq timer (wxTimerEx_Create))
    (wxTimerEx_Connect timer (wxClosure_Create #'draw-image frame))
    (wxevthandler_connect frame -1 wxEVT_PAINT (wxClosure_Create #'paint-image frame))
    (wxTimer_Start timer 700 0)
    (wxWindow_Show frame)
    ))

;;; Creates the closure
(setf x (wxClosure_Create #'test-closure nil))

;;;Starts execution
(Eljapp_initializeC x 0 nil)

;;important to close the library, otherwise the static initializers would cause problem
;;when re-executing the program
(ffi:close-foreign-library "../miscellaneous/wxc-msw2.6.2.dll")
;;;edit.lisp
;;;License  : wxWindows License 3.1
;;;Author(s) : Surendra Singhi (surendra@asu.edu) 
;;;            Andre Vargas Abs da Cruz (andrev@ele.puc-rio.br)
;;;Copyright (C) 2005 Surendra Singhi, Andre Vargas Abs da Cruz
;;;See the file LICENSE for information on usage and redistribution.
;;;
;;; $Header$
;;;


;;;This program demonstrates some of the features of wxCL library
;;;In particular it uses the wxNotebook Sizer and shows hot to
;;;create panes, each pane contains a text control, files can be opened, edited and saved.
;;;It is possible to change the color and font of text, this change will
;;;be made to the entire text in the file.
;;;The close and save functionality does not work (though saveas works)
;;;the reason why the above two doesn't work is because I am not able to
;;;find a method of comparing two foreign pointers in clisp.
;;;Check out this link for info:
;;;http://thread.gmane.org/gmane.lisp.clisp.general/9967
;;;
;;;It will be possible to correctly implement save and close using
;;;hacks, but I am looking for a more elegant solution. Someday,
;;;when I will have time, I will get back to fixing it :)


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

(defun paint-image (fun frame evt)
  (when evt
    (with-paint-dc (paintdc frame)
      (wxDC_SetBackground paintdc (wxBrush:wxBrush_CreateFromStock wxBrush:wxWHITE_BRUSH))
      (wxDC_SetPen paintdc (wxPen:wxPen_CreateFromStock wxPen:wxRED_PEN))
      (wxDC_SetBrush paintdc (wxBrush:wxBrush_CreateFromStock wxBrush:wxTRANSPARENT_BRUSH))
      (wxDC_Clear paintdc)
      (wxDC_DrawRectangle paintdc start 20 70 80))))

(defun draw-image (fun frame evt)
  (when evt
    (with-client-dc (clientdc frame)
      (wxDC_SetBackground clientdc (wxBrush:wxBrush_CreateFromStock wxBrush:wxWHITE_BRUSH))
      (wxDC_SetPen clientdc (wxPen:wxPen_CreateFromStock wxPen:wxRED_PEN))
      (wxDC_SetBrush clientdc (wxBrush:wxBrush_CreateFromStock wxBrush:wxTRANSPARENT_BRUSH))
      (wxDC_Clear clientdc)
      (wxDC_DrawRectangle clientdc start 20 70 80)
      (setq start (+ start 1)))))

(defun test-closure (fun data evt)
  (let (frame ic)
    (setf frame (wxFrame_create nil -1 "Drawing simple images" 10 10 500 500 wxDEFAULT_FRAME_STYLE))
;    (wxWindow_SetForegroundColour frame (wxColour:wxColour_CreateFromStock wxColour:wxWHITE))
    (setq timer (wxTimerEx_Create))
    (wxTimerEx_Connect timer (wxClosure_Create #'draw-image frame))
    (wxevthandler_connect frame -1 (expEVT_PAINT) (wxClosure_Create #'paint-image frame))
    (wxTimer_Start timer 500 0)
    (wxWindow_Show frame)
    ))

;;; Creates the closure
(setf x (wxClosure_Create #'test-closure nil))

;;;Starts execution
(Eljapp_initializeC x 0 nil)

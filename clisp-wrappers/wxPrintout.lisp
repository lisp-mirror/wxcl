;;;wxPrintout.lisp
;;;License  : GNU General Public License (GPL)
;;;Author(s) : Surendra Singhi (surendra@asu.edu) 
;;;Copyright (C) 2005 Surendra Singhi 
;;;See the file LICENSE for information on usage and redistribution.
;;;
;;; $Header$
;;;

(defpackage :wxPrintout
    (:use :common-lisp :ffi :wxCL) 
  (:export :wxPrintDialog_GetPrintDialogData
	   :wxcPrintout_Create
	   :wxcPrintout_Delete
	   :wxcPrintout_SetPageLimits
	   :wxcPrintout_GetEvtHandler
	   :wxcPrintEvent_GetPrintout
	   :wxcPrintEvent_GetPage
	   :wxcPrintEvent_GetEndPage
	   :wxcPrintEvent_GetContinue
	   :wxcPrintEvent_SetContinue
	   :wxcPrintEvent_SetPageLimits
	   :wxPrintout_GetTitle
	   :wxPrintout_GetDC
	   :wxPrintout_SetDC
	   :wxPrintout_SetPageSizePixels
	   :wxPrintout_GetPageSizePixels
	   :wxPrintout_SetPageSizeMM
	   :wxPrintout_GetPageSizeMM
	   :wxPrintout_SetPPIScreen
	   :wxPrintout_GetPPIScreen
	   :wxPrintout_SetPPIPrinter
	   :wxPrintout_GetPPIPrinter
	   :wxPrintout_IsPreview
	   :wxPrintout_SetIsPreview))

(in-package :wxPrintout)

(default-foreign-language :stdc)

(def-c-type wxPrintDialog nil)

(def-c-type wxPrintDialogData nil)

(def-c-type wxcPrintout nil)

(def-c-type wxcPrintEvent nil)

(ffi:def-call-out wxPrintDialog_GetPrintDialogData
    (:name "wxPrintDialog_GetPrintDialogData")
  (:arguments (_obj (ffi:c-pointer wxPrintDialog)))
  (:return-type (ffi:c-pointer wxPrintDialogData))
  (:library +library-name+))

(ffi:def-call-out wxcPrintout_Create
    (:name "wxcPrintout_Create")
  (:arguments (title ffi:c-string))
  (:return-type (ffi:c-pointer wxcPrintout))
  (:library +library-name+))

(ffi:def-call-out wxcPrintout_Delete
    (:name "wxcPrintout_Delete")
  (:arguments (self (ffi:c-pointer wxcPrintout)))
  (:library +library-name+))

(ffi:def-call-out wxcPrintout_SetPageLimits
    (:name "wxcPrintout_SetPageLimits")
  (:arguments (self (ffi:c-pointer wxcPrintout))
	      (startPage ffi:int)
	      (endPage ffi:int)
	      (fromPage ffi:int)
	      (toPage ffi:int))
  (:library +library-name+))

(ffi:def-call-out wxcPrintout_GetEvtHandler
    (:name "wxcPrintout_GetEvtHandler")
  (:arguments (self (ffi:c-pointer wxcPrintout)))
  (:return-type (ffi:c-pointer NIL))
  (:library +library-name+))

(ffi:def-call-out wxcPrintEvent_GetPrintout
    (:name "wxcPrintEvent_GetPrintout")
  (:arguments (self (ffi:c-pointer wxcPrintEvent)))
  (:return-type (ffi:c-pointer wxcPrintout))
  (:library +library-name+))

(ffi:def-call-out wxcPrintEvent_GetPage
    (:name "wxcPrintEvent_GetPage")
  (:arguments (self (ffi:c-pointer wxcPrintEvent)))
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out wxcPrintEvent_GetEndPage
    (:name "wxcPrintEvent_GetEndPage")
  (:arguments (self (ffi:c-pointer wxcPrintEvent)))
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out wxcPrintEvent_GetContinue
    (:name "wxcPrintEvent_GetContinue")
  (:arguments (self (ffi:c-pointer wxcPrintEvent)))
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out wxcPrintEvent_SetContinue
    (:name "wxcPrintEvent_SetContinue")
  (:arguments (self (ffi:c-pointer wxcPrintEvent))
	      (cont ffi:int))
  (:library +library-name+))

(ffi:def-call-out wxcPrintEvent_SetPageLimits
    (:name "wxcPrintEvent_SetPageLimits")
  (:arguments (self (ffi:c-pointer wxcPrintEvent))
	      (startPage ffi:int)
	      (endPage ffi:int)
	      (fromPage ffi:int)
	      (toPage ffi:int))
  (:library +library-name+))

(ffi:def-call-out wxPrintout_GetTitle
    (:name "wxPrintout_GetTitle")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (_buf (ffi:c-pointer NIL)))
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out wxPrintout_GetDC
    (:name "wxPrintout_GetDC")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type (ffi:c-pointer NIL))
  (:library +library-name+))

(ffi:def-call-out wxPrintout_SetDC
    (:name "wxPrintout_SetDC")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (dc (ffi:c-pointer NIL)))
  (:library +library-name+))

(ffi:def-call-out wxPrintout_SetPageSizePixels
    (:name "wxPrintout_SetPageSizePixels")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (w ffi:int)
	      (h ffi:int))
  (:library +library-name+))

(ffi:def-call-out wxPrintout_GetPageSizePixels
    (:name "wxPrintout_GetPageSizePixels")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (w (ffi:c-pointer NIL))
	      (h (ffi:c-pointer NIL)))
  (:library +library-name+))

(ffi:def-call-out wxPrintout_SetPageSizeMM
    (:name "wxPrintout_SetPageSizeMM")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (w ffi:int)
	      (h ffi:int))
  (:library +library-name+))

(ffi:def-call-out wxPrintout_GetPageSizeMM
    (:name "wxPrintout_GetPageSizeMM")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (w (ffi:c-pointer NIL))
	      (h (ffi:c-pointer NIL)))
  (:library +library-name+))

(ffi:def-call-out wxPrintout_SetPPIScreen
    (:name "wxPrintout_SetPPIScreen")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (x ffi:int)
	      (y ffi:int))
  (:library +library-name+))

(ffi:def-call-out wxPrintout_GetPPIScreen
    (:name "wxPrintout_GetPPIScreen")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (x (ffi:c-pointer NIL))
	      (y (ffi:c-pointer NIL)))
  (:library +library-name+))

(ffi:def-call-out wxPrintout_SetPPIPrinter
    (:name "wxPrintout_SetPPIPrinter")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (x ffi:int)
	      (y ffi:int))
  (:library +library-name+))

(ffi:def-call-out wxPrintout_GetPPIPrinter
    (:name "wxPrintout_GetPPIPrinter")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (x (ffi:c-pointer NIL))
	      (y (ffi:c-pointer NIL)))
  (:library +library-name+))

(ffi:def-call-out wxPrintout_IsPreview
    (:name "wxPrintout_IsPreview")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out wxPrintout_SetIsPreview
    (:name "wxPrintout_SetIsPreview")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (p ffi:int))
  (:library +library-name+))

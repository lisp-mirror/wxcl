
(in-package :wxcl)

(defcvar ("wxPrintout" wxPrintout)
 :pointer)

(defcvar ("m_printOut" m_printOut)
 :pointer)

(defcvar ("m_page" m_page)
 :int)

(defcvar ("m_lastPage" m_lastPage)
 :int)

(defcvar ("m_continue" m_continue)
 :pointer)

(defcfun ("Clone" Clone) :pointer)

(defcfun ("GetPrintout" GetPrintout) :pointer)

(defcfun ("GetPage" GetPage) :int)

(defcfun ("GetEndPage" GetEndPage) :int)

(defcfun ("GetContinue" GetContinue) :pointer)

(defcfun ("SetContinue" SetContinue) :void
  (cont :pointer))

(defcfun ("SetPageLimits" SetPageLimits) :void
  (startPage :int)
  (endPage :int)
  (fromPage :int)
  (toPage :int))

(defcfun ("wxPrintDialog_GetPrintDialogData" wxPrintDialog_GetPrintDialogData) :pointer
  (_obj :pointer))

(defcfun ("wxcPrintout_Create" wxcPrintout_Create) :pointer
  (title :pointer))

(defcfun ("wxcPrintout_Delete" wxcPrintout_Delete) :void
  (self :pointer))

(defcfun ("wxcPrintout_SetPageLimits" wxcPrintout_SetPageLimits) :void
  (self :pointer)
  (startPage :int)
  (endPage :int)
  (fromPage :int)
  (toPage :int))

(defcfun ("wxcPrintout_GetEvtHandler" wxcPrintout_GetEvtHandler) :pointer
  (self :pointer))

(defcfun ("wxcPrintEvent_GetPrintout" wxcPrintEvent_GetPrintout) :pointer
  (self :pointer))

(defcfun ("wxcPrintEvent_GetPage" wxcPrintEvent_GetPage) :int
  (self :pointer))

(defcfun ("wxcPrintEvent_GetEndPage" wxcPrintEvent_GetEndPage) :int
  (self :pointer))

(defcfun ("wxcPrintEvent_GetContinue" wxcPrintEvent_GetContinue) :pointer
  (self :pointer))

(defcfun ("wxcPrintEvent_SetContinue" wxcPrintEvent_SetContinue) :void
  (self :pointer)
  (cont :pointer))

(defcfun ("wxcPrintEvent_SetPageLimits" wxcPrintEvent_SetPageLimits) :void
  (self :pointer)
  (startPage :int)
  (endPage :int)
  (fromPage :int)
  (toPage :int))

(defcfun ("wxPrintout_GetTitle" wxPrintout_GetTitle) :int
  (_obj :pointer)
  (_buf :pointer))

(defcfun ("wxPrintout_GetDC" wxPrintout_GetDC) :pointer
  (_obj :pointer))

(defcfun ("wxPrintout_SetDC" wxPrintout_SetDC) :void
  (_obj :pointer)
  (dc :pointer))

(defcfun ("wxPrintout_SetPageSizePixels" wxPrintout_SetPageSizePixels) :void
  (_obj :pointer)
  (w :int)
  (h :int))

(defcfun ("wxPrintout_GetPageSizePixels" wxPrintout_GetPageSizePixels) :void
  (_obj :pointer)
  (w :pointer)
  (h :pointer))

(defcfun ("wxPrintout_SetPageSizeMM" wxPrintout_SetPageSizeMM) :void
  (_obj :pointer)
  (w :int)
  (h :int))

(defcfun ("wxPrintout_GetPageSizeMM" wxPrintout_GetPageSizeMM) :void
  (_obj :pointer)
  (w :pointer)
  (h :pointer))

(defcfun ("wxPrintout_SetPPIScreen" wxPrintout_SetPPIScreen) :void
  (_obj :pointer)
  (x :int)
  (y :int))

(defcfun ("wxPrintout_GetPPIScreen" wxPrintout_GetPPIScreen) :void
  (_obj :pointer)
  (x :pointer)
  (y :pointer))

(defcfun ("wxPrintout_SetPPIPrinter" wxPrintout_SetPPIPrinter) :void
  (_obj :pointer)
  (x :int)
  (y :int))

(defcfun ("wxPrintout_GetPPIPrinter" wxPrintout_GetPPIPrinter) :void
  (_obj :pointer)
  (x :pointer)
  (y :pointer))

(defcfun ("wxPrintout_IsPreview" wxPrintout_IsPreview) :int
  (_obj :pointer))

(defcfun ("wxPrintout_SetIsPreview" wxPrintout_SetIsPreview) :void
  (_obj :pointer)
  (p :int))

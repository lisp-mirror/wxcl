(in-package :wxcl-dialogs)

(defcfun ("wxWizard_Create" wxWizard_Create) :pointer
  (_prt :pointer)
  (_id :int)
  (_txt :pointer)
  (_bmp :pointer)
  (_lft :int)
  (_top :int))

(defcfun ("wxWizard_RunWizard" wxWizard_RunWizard) :int
  (_obj :pointer)
  (firstPage :pointer))

(defcfun ("wxWizard_GetCurrentPage" wxWizard_GetCurrentPage) :pointer
  (_obj :pointer))

(defcfun ("wxWizard_Chain" wxWizard_Chain) :void
  (f :pointer)
  (s :pointer))

(defcfun ("wxWizard_SetPageSize" wxWizard_SetPageSize) :void
  (_obj :pointer)
  (w :int)
  (h :int))

(defcfun ("wxWizard_GetPageSize" wxWizard_GetPageSize) :void
  (_obj :pointer)
  (w :int)
  (h :int))

(defcfun ("wxWizardPageSimple_Create" wxWizardPageSimple_Create) :pointer
  (_prt :pointer))

(defcfun ("wxWizardPageSimple_GetPrev" wxWizardPageSimple_GetPrev) :pointer
  (_obj :pointer))

(defcfun ("wxWizardPageSimple_GetNext" wxWizardPageSimple_GetNext) :pointer
  (_obj :pointer))

(defcfun ("wxWizardPageSimple_GetBitmap" wxWizardPageSimple_GetBitmap) :pointer
  (_obj :pointer))

(defcfun ("wxWizardPageSimple_SetPrev" wxWizardPageSimple_SetPrev) :void
  (_obj :pointer)
  (prev :pointer))

(defcfun ("wxWizardPageSimple_SetNext" wxWizardPageSimple_SetNext) :void
  (_obj :pointer)
  (next :pointer))

(defcfun ("wxWizardEvent_GetDirection" wxWizardEvent_GetDirection) :int
  (_obj :pointer))

(defcfun ("wxWizardEvent_GetPage" wxWizardEvent_GetPage) :pointer
  (_obj :pointer))

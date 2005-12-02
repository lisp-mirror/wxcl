(in-package :wxcl-dialogs)

(defun make-wizard (parent &key (id -1) (title "") (bmp nil) (position +default-position+) (style 0))
  (make-wx-instance 'wizard (wxWizard_Create (object-pointer parent) id title
                                             (when bmp (object-pointer bmp))
                                             (point-x +default-position+)
                                             (point-y +default-position+)
                                             style)))

(defmethod run-wizard ((obj wizard) page)
  (= 1 (wxWizard_RunWizard (object-pointer obj)(object-pointer page))))

(defmethod current-page ((obj wizard) page)
  (make-wx-instance 'wizard-page (wxWizard_GetCurrentPage (object-pointer obj))))

(defmethod (setf pagesize) ((obj wizard) sz)
  (wxWizard_SetPageSize (object-pointer obj) (size-width sz) (size-height sz)))

(defmethod page-size (obj wizard)
  (let (x y)
    (setf (values x y) (wxWizard_GetPageSize (object-pointer obj)))
    (make-size x y)))

(defun make-wizard-page-simple ((obj wizard-page-simple))
  (make-wx-instance 'wizard-page-simple
                    (wxWizardPageSimple_Create (object-pointer obj))))

(defmethod prev ((obj wizard-page-simple))
  (make-wx-instance 'wizard-page-simple
                    (wxWizardPageSimple_GetPrev (object-pointer obj))))

(defmethod next ((obj wizard-page-simple))
  (make-wx-instance 'wizard-page-simple
                    (wxWizardPageSimple_GetNext (object-pointer obj))))

(defmethod bitmap ((obj wizard-page-simple))
  (make-wx-instance 'wxcl-gdi:bitmap
                    (wxWizardPageSimple_GetBitmap (object-pointer obj))))

(defmethod (setf prev) ((page wizard-page-simple) (obj wizard-page-simple))
  (wxWizardPageSimple_SetPrev (object-pointer obj) (page wizard)))

(defmethod (setf next) ((page wizard-page-simple) (obj wizard-page-simple))
  (wxWizardPageSimple_SetNext (object-pointer obj) (page wizard)))

(defmethod direction ((obj wizard))
  (= 1 (wxWizardEvent_GetDirection (object-pointer obj))))

(defmethod page ((obj wizard))
  (make-wx-instance 'wizard-page-simple (wxWizardEvent_GetPage (object-pointer obj))))

(defun chain (first second)
  (wxWizard_Chain (object-pointer first)(object-pointer second)))

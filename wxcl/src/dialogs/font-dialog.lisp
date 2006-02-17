;;;font-dialog.lisp
;;;License  : wxWindows License 3.1
;;;Author(s) : Surendra Singhi (surendra@asu.edu) 
;;;Copyright (C) 2005 Surendra Singhi 
;;;See the file LICENSE for information on usage and redistribution.
;;;
;;; $Header$
;;;

(in-package :wxcl)

(defun make-font-dialog (parent &optional (font nil))
  (make-font-dialog 'font-dialog
                    (wxFontDialog_Create (object-pointer parent)
                                         (when font (object-pointer font)))))

(defmethod font-data ((obj font-dialog) &optional (data (make-font-data)))
  (wxFontDialog_GetFontData (object-pointer obj) (object-pointer data)))

(defmacro with-font-dialog ((dialog parent &optional (font-data nil)) &body body)
  `(let (,dialog) 
    (unwind-protect
         (progn
           (setf ,dialog (make-font-dialog ,parent ,font-data))
           ,@body)
      (wxWindow_destroy (object-pointer ,dialog)))))

; (defun wxcl-get-font-data (parent &optional (font-data nil))
;   (with-font-dialog (dialog parent font-data)
;     (when (= (wxDialog_ShowModal dialog) +id-ok+)
;       (wxFontDialog_GetFontData dialog font-data)
;       font-data)))

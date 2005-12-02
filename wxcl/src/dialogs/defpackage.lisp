;;;defpackage.lisp
;;;License  : wxWindows License 3.1
;;;Author(s) : Surendra Singhi (surendra@asu.edu) 
;;;Copyright (C) 2005 Surendra Singhi 
;;;See the file LICENSE for information on usage and redistribution.
;;;
;;; $Header$
;;;

(defpackage :wxcl-dialogs
    (:use #:common-lisp #:ffi :wxcl)
  ;;classes 
  (:export #:dialog
           #:file-dialog
           #:colour-dialog)
  ;;file-dialog class
  (:export #:+open+
           #:+save+
           #:+hide-readonly+
           #:+multiple+
           #:+change-dir+
           #:+overwrite-prompt+
           #:+file-must-exist+
           #:+id-ok+
           #:+id-cancel+
           #:make-file-dialog
           #:message
           #:path
           #:directory
           #:filename
           #:wildcard
           #:style
           #:filter-index
           #:message
           #:path
           #:wildcard
           #:style
           #:filter-index
           #:with-file-dialog
           #:directory
           #:filename
;;dialog class           
           #:+dialog-modal+
           #:+dialog-modeless+
           #:+caption+
           #:+resize-border+
           #:+thick-frame+
           #:+stay-on-top+
           #:+maximize+ 
           #:+close-box+
           #:+no-border+
           #:+default-dialog-style+
           #:make-dialog
           #:modal-p
           #:show-modal
           #:end-modal
           #:return-code
           #:return-code
           #:with-dialog
;;colour-dialog class           
           #:make-colour-dialog
           #:with-colour-dialog
;;message-dialog
           #:+yes-no+
           #:+no-default+
           #:+yes-default+
           #:+icon-exclamation+
           #:+icon-hand+
           #:+icon-question+
           #:+icon-information+
           ))

(in-package :wxcl-dialogs)

(defclass dialog (window)
  (:documentation "A dialog box is a window with a title bar and sometimes a system menu,\
 which can be moved around the screen. It can contain controls and other windows and is\
 usually used to allow the user to make some choice or to answer a question."))

(defclass file-dialog (dialog)
  (:documentation "Pops up a file selector box."))

(defclass colour-dialog (dialog)
  (:documentation "This class represents the colour chooser dialog."))

(defclass dir-dialog (dialog)
  (:documentation "This class represents the directory chooser dialog."))

(defclass font-dialog (dialog)
  (:documentation "This class represents the font chooser dialog."))

(defclass wizard (dialog)
  (:documentation "This class implements 'wizard-like' dialogs. These\
 dialogs are mostly familiar to Windows users and are nothing other than\
 a sequence of 'pages', each displayed inside a dialog which has the buttons\
 to navigate to the next (and previous) pages.")) 

(defclass wizard-page-simple (dialog)
  (:documentation "This is one of the screens in wxWizard: it must know what\
 are the following and preceding pages (which may be NULL for the first/last page)."))


;;;defpackage.lisp
;;;License  : wxWindows License 3.1
;;;Author(s) : Surendra Singhi (surendra@asu.edu) 
;;;Copyright (C) 2005 Surendra Singhi 
;;;See the file LICENSE for information on usage and redistribution.
;;;
;;; $Header$
;;;

(defpackage :wxcl-dialogs
    (:use #:cl #:ffi #:wxcl #:clos)
  ;;classes 
  (:export #:dialog
           #:file-dialog
           #:colour-dialog)
  (:shadow #:directory)
  ;;file-dialog class
  (:export #:+open+
           #:+save+
           #:+hide-readonly+
           #:+multiple+
           #:+change-dir+
           #:+overwrite-prompt+
           #:+file-must-exist+
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
           #:show-message-dialog
           #:message-dialog
           #:+yes-no+
           #:+no-default+
           #:+yes-default+
           #:+icon-exclamation+
           #:+icon-hand+
           #:+icon-question+
           #:+icon-information+
;;find-replace-dialog
           #:find-replace-dialog
           #:make-find-replace-dialog
           #:data
;;progress-dialog
           #:progress-dialog
           #:update
           #:resume
           #:make-progress-dialog
           ))

(in-package :wxcl-dialogs)

(defclass dialog (wxcl-windows:window)
  ()
  (:documentation "A dialog box is a window with a title bar and sometimes a system menu,\
 which can be moved around the screen. It can contain controls and other windows and is\
 usually used to allow the user to make some choice or to answer a question."))

(defclass file-dialog (dialog)
  ()
  (:documentation "Pops up a file selector box."))

(defclass colour-dialog (dialog)
  ()
  (:documentation "This class represents the colour chooser dialog."))

(defclass dir-dialog (dialog)
  ()
  (:documentation "This class represents the directory chooser dialog."))

(defclass font-dialog (dialog)
  ()
  (:documentation "This class represents the font chooser dialog."))

(defclass wizard (dialog)
  ()
  (:documentation "This class implements 'wizard-like' dialogs. These\
 dialogs are mostly familiar to Windows users and are nothing other than\
 a sequence of 'pages', each displayed inside a dialog which has the buttons\
 to navigate to the next (and previous) pages.")) 

(defclass wizard-page-simple (dialog)
  ()
  (:documentation "This is one of the screens in wxWizard: it must know what\
 are the following and preceding pages (which may be NULL for the first/last page)."))

(defclass find-replace-dialog (dialog)
  ()
  (:documentation "It is a standard modeless dialog which is used to allow the user\
 to search for some text (and possibly replace it with something else). The actual\
 searching is supposed to be done in the owner window which is the parent of this\
 dialog."))

(defclass message-dialog (dialog)
  ()
  (:documentation "This class represents a dialog that shows a single or multi-line\
 message, with a choice of OK, Yes, No and Cancel buttons."))

(defclass progress-dialog (dialog)
  ()
  (:documentation "This class represents a dialog that shows a short message and a\
 progress bar. Optionally, it can display an ABORT button."))


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
           #:file-dialog)
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
           #:with-dialog))

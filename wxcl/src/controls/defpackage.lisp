;;;defpackage.lisp
;;;License  : wxWindows License 3.1
;;;Author(s): Surendra Singhi (surendra@asu.edu), Jack Unrue (jdunrue@gmail.com)
;;;Copyright (c) 2005 Surendra Singhi, Jack D. Unrue
;;;See the file LICENSE for information on usage and redistribution.
;;;
;;; $Header$
;;;

(defpackage :wxcl-controls
    (:use :common-lisp :ffi :wxcl :wxcl-structures)
    (:export

     ;; symbols for multiple classes
     ;;
     #:value

     ;; bitmap-button class
     ;;
     #:bitmap-button
     #:+bu-autodraw+

     ;; bitmap-button methods, functions, and macros
     ;;
     #:bitmap-disabled
     #:bitmap-focus
     #:bitmap-label
     #:bitmap-selected
     #:make-bitmap-button
     #:margin-x
     #:margin-y
     #:set-margins

     ;; button class and constants
     ;;
     #:button
     #:+bu-exactfit+
	   #:+bu-left+
	   #:+bu-top+
	   #:+bu-right+
	   #:+bu-bottom+

     ;; button methods, functions, and macros
     ;;
     #:background-colour
     #:default-size
     #:make-button
     #:set-default

     ;; check-box class and constants
     ;;
     #:check-box
     #:+chk-2state+
     #:+chk-3state+
     #:+chk-allow-3rd-state-for-user+

     ;; check-box methods, functions, and macros
     ;;
     ; #:3-state-value
     ; #:3rd-state-allowed
     ; #:is-3-state
     #:make-check-box

     ;; check-list-box class and constants
     ;;
     #:check-list-box

     ;; check-list-box methods, functions, and macros
     ;;
     #:check
     #:checked
     #:make-check-list-box

     ;; choice class and constants
     ;;
     #:choice

     ;; choice methods, functions, and macros
     ;;
     #:columns
     #:current-selection
     #:make-choice

     ;; combo-box class and constants
     ;;
     #:combo-box
     #:+cb-simple+
     #:+cb-sort+
     #:+cb-readonly+
     #:+cb-dropdown+

     ;; combo-box methods, functions, and macros
     ;;
     #:copy
     #:cut
     #:insertion-point
     #:last-position
     #:make-combo-box
     #:paste
     #:remove
     #:replace
     #:selection
     #:set-insertion-point-end
     #:text-selection
     #:undo

     #:+lb-sort+
	   #:+lb-single+
	   #:+lb-multiple+
	   #:+lb-extended+
	   #:+lb-ownerdraw+
	   #:+lb-needed-sb+
	   #:+lb-always-sb+
	   #:+lc-icon+
	   #:+lc-small-icon+
	   #:+lc-vrules+
	   #:+lc-hrules+
	   #:+lc-list+
	   #:+lc-report+
	   #:+lc-align-top+
	   #:+lc-align-left+
	   #:+lc-autoarrange+
	   #:+lc-user-text+ 
	   #:+lc-edit-labels+
	   #:+lc-no-header+ 
	   #:+lc-no-sort-header+
	   #:+lc-single-sel+
	   #:+lc-sort-ascending+
	   #:+lc-sort-descending+
	   #:+list-format-left+ 
	   #:+list-format-right+
	   #:+list-format-centre+
	   #:+list-format-center+
	   #:+list-next-above+
	   #:+list-next-all+
	   #:+list-next-below+
	   #:+list-next-left+
	   #:+list-next-right+
	   #:+cal-sunday-first+
	   #:+cal-monday-first+
	   #:+cal-show-holidays+
	   #:+cal-no-year-change+
	   #:+cal-no-month-change+
	   #:+cal-hittest-nowhere+
	   #:+cal-hittest-header+
	   #:+cal-hittest-day+
	   ))


(defconstant +cal-sunday-first+ 0)
(defconstant +cal-monday-first+ 1)
(defconstant +cal-show-holidays+ 2)
(defconstant +cal-no-year-change+ 4)
(defconstant +cal-no-month-change+ 12)

(defconstant +cal-hittest-nowhere+ 0)
(defconstant +cal-hittest-header+ 1)
(defconstant +cal-hittest-day+ 2)


(defconstant +lb-sort+ 16)
(defconstant +lb-single+ 32)
(defconstant +lb-multiple+ 64)
(defconstant +lb-extended+ 128)
(defconstant +lb-ownerdraw+ 256)
(defconstant +lb-needed-sb+ 512)
(defconstant +lb-always-sb+ 1024)

(defconstant +list-format-left+ 0)
(defconstant +list-format-right+ 1)
(defconstant +list-format-centre+ 2)
(defconstant +list-format-center+ 2)
(defconstant +list-next-above+ 0)
(defconstant +list-next-all+ 1)
(defconstant +list-next-below+ 2)
(defconstant +list-next-left+ 3)
(defconstant +list-next-right+ 4)


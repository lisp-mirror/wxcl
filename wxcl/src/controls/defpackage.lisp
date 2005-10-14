;;;defpackage.lisp
;;;License  : wxWindows License 3.1
;;;Author(s): Surendra Singhi (surendra@asu.edu), Jack Unrue (jdunrue@gmail.com)
;;;Copyright (c) 2005 Surendra Singhi, Jack D. Unrue
;;;See the file LICENSE for information on usage and redistribution.
;;;
;;; $Header$
;;;

(defpackage :wxcl-controls
    (:use :common-lisp :ffi :wxcl :wxcl-structures :wxcl-windows)
    (:export

     ;; symbols common to multiple classes
     ;;
     #:+align-bottom+
     #:+align-center-horizontal+
     #:+align-center-vertical+
     #:+align-centre-horizontal+
     #:+align-centre-vertical+
     #:+align-left+
     #:+align-not+
     #:+align-right+
     #:+align-top+
     #:find-string
     #:range
     #:selection
     #:string-selection
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
     #:set-insertion-point-end
     #:text-selection
     #:undo

     ;; control class and constants
     ;;
     #:control

     ;; control methods, functions, and macros
     ;;
     #:label

     ;; control-with-item class and constants
     ;;
     #:control-with-items

     ;; control-with-items methods, functions, and macros
     ;;
     #:append
     #:append-data
     #:clear
     #:client-data
     #:count
     #:delete
     #:insert
     #:insert-data
     #:string

     ;; gauge class and constants
     ;;
     #:gauge
     #:+ga-horizontal+
     #:+ga-progressbar+
     #:+ga-smooth+
     #:+ga-vertical+

     ;; gauge methods, functions, and macros
     ;;
     #:bezel-face
     #:make-gauge
     #:shadow-width

     ;; list-box class and constants
     ;;
     #:list-box
	   #:+lb-always-sb+
	   #:+lb-extended+
	   #:+lb-multiple+
	   #:+lb-needed-sb+
	   #:+lb-ownerdraw+
	   #:+lb-single+
     #:+lb-sort+

     ;; list-box methods, functions, and macros
     ;;
     #:deselect
     #:first-item
     #:insert-items
     #:make-list-box
     #:selected-p
     #:selections
     #:set

     ;; radio-box class and constants
     ;;
     #:radio-box
     #:+ra-specify-cols+
     #:+ra-specify-rows+
     #:+ra-use-checkbox+

     ;; radio-box methods, functions, and macros
     ;;
     #:count
     #:enable-item
     #:item-bitmap
     #:item-label
     #:make-radio-box
     #:number-of-rows-or-cols
     #:show-item

     ;; radio-button class and constants
     ;;
     #:radio-button
     #:+rb-group+
     #:+rb-single+
     #:+rb-use-checkbox+

     ;; radio-button methods, functions, and macros
     ;;
     #:make-radio-button

     ;; slider class and constants
     ;;
     #:slider
     #:+sl-horizontal+
     #:+sl-vertical+
     #:+sl-ticks+
     #:+sl-autoticks+
     #:+sl-labels+
     #:+sl-left+
     #:+sl-top+
     #:+sl-right+
     #:+sl-bottom+
     #:+sl-both+
     #:+sl-selrange+
     #:+sl-inverse+

     ;; slider methods, functions, and macros
     ;;
     #:clear-sel
     #:line-size
     #:make-slider
     #:max
     #:min
     #:page-size

     ;; static-box class and constants
     ;;
     #:static-box

     ;; static-box methods, functions, and macros
     ;;
     #:make-static-box

     ;; static-text class and constants
     ;;
     #:static-text
     #:+st-no-autoresize+

     ;; static-text methods, functions, and macros
     ;;
     #:make-static-text

     ;; toggle-button class and constants
     ;;
     #:toggle-button

     ;; toggle-button methods, functions, and macros
     ;;
     #:enable
     #:make-toggle-button


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

(defconstant +list-format-left+ 0)
(defconstant +list-format-right+ 1)
(defconstant +list-format-centre+ 2)
(defconstant +list-format-center+ 2)
(defconstant +list-next-above+ 0)
(defconstant +list-next-all+ 1)
(defconstant +list-next-below+ 2)
(defconstant +list-next-left+ 3)
(defconstant +list-next-right+ 4)

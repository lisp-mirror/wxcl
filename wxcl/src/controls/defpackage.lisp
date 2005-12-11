;;;defpackage.lisp
;;;License  : wxWindows License 3.1
;;;Author(s): Surendra Singhi (surendra@asu.edu), Jack Unrue (jdunrue@gmail.com)
;;;Copyright (c) 2005 Surendra Singhi, Jack D. Unrue
;;;See the file LICENSE for information on usage and redistribution.
;;;
;;; $Header$
;;;

(defpackage :wxcl-controls
    (:use #:common-lisp #:ffi #:wxcl #:wxcl-windows)
    (:shadow #:directory)
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

;; list-ctrl class and constants
;;
     #:list-ctrl
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
      
;;notebook related constants, functions, etc.
     #:+nb-fixedwidth+
     #:+nb-left+
     #:+nb-right+
     #:+nb-bottom+
     #:+nb-multiline+
     #:+nb-top+
     #:make-notebook
     #:page-count
     #:advance-selection
     #:selection
     #:page-text
     #:image-list
     #:page-image
     #:row-count
     #:page-size
     #:padding
     #:delete-page
     #:remove-page
     #:delete-all-pages
     #:add-page
     #:insert-page
     #:get-page
     #:assign-image-list
     
;;text-control related constants, functions, etc.
     #:text-control
     #:make-text-control
	  #:value
	  #:line-length
	  #:line-text
	  #:number-of-lines
	  #:modified-p
	  #:editable-p
	  #:selection
	  #:clear
	  #:replace-text
	  #:remove-text
	  #:load-file
	  #:save-file
	  #:discard-edits
	  #:write-text
	  #:append-text
	  #:xy-to-position
	  #:position-to-xy
	  #:show-position
	  #:copy
	  #:cut
	  #:paste
	  #:can-copy-p
	  #:can-cut-p
	  #:can-paste-p
	  #:undo
	  #:redo
	  #:can-undo-p
	  #:can-redo-p
	  #:insertion-point
	  #:set-insertion-point-end
	  #:last-position
	  #:set-selection
	  #:editable
;	  #:emulatekeypress
	  #:default-style
	  #:style
	  #:range
	  #:string-selection
	  #:multiline-p
	  #:singleline-p
	  #:default-style
	  #:max-length
	  #:+te-readonly+
	  #:+te-multiline+
	  #:+te-process-tab+
	  #:+te-rich+
	  #:+te-rich2+
	  #:+te-no-vscroll+
	  #:+te-auto-scroll+
	  #:+te-wordwrap+
     ))

(in-package :wxcl-controls)

(defclass control (window)
  ()
  (:documentation "This is the base class for a control or 'widget'.\
 A control is generally a small window which processes user input and/or displays one or more item of data."))

(defclass button (control)
  ()
  (:documentation "A button is a control that contains a text string, and \
is one of the most common elements of a GUI. It may be placed on a dialog \
box or panel, or indeed almost any other window."))

(defclass bitmap-button (button)
  ()
  (:documentation "A button is a control that contains a text string, and \
is one of the most common elements of a GUI. It may be placed on a dialog \
box or panel, or indeed almost any other window."))

(defclass check-box (control)
  ()
  (:documentation "A checkbox is a labelled box which by default is \
either on (checkmark is visible) or off (no checkmark). Optionally, \
it can have a third state, called the mixed or undetermined state. \
Often this is used as a 'Does Not Apply' state."))

(defclass control-with-items (control)
  ()
  (:documentation "This class is an abstract base class for some wxWidgets controls which contain several items, such as wxListBox and wxCheckListBox derived from it, wxChoice and wxComboBox."))

(defclass choice (control-with-items)
  ()
  (:documentation "A choice item is used to selected one of a list of \
strings. Unlike a listbox, only the selection is visible until the user \
pulls down the menu of choices."))

(defclass combo-box (control-with-items)
  ()
  (:documentation "A combobox is like a combination of an edit control \
and a listbox. It can be displayed as a static list with an editable or \
read-only text field; or a drop-down list with a text field; or a \
drop-down list without a text field."))

(defclass list-box (control-with-items)
  ()
  (:documentation "A listbox is used to select one or more of a list of strings.The strings\
 are displayed in a scrolling box, with the selected string(s) marked in reverse video. A\
 listbox can be single selection (if an item is selected, the previous selection is removed)\
 or multiple selection (clicking an item toggles the item on or off independently of other selections)."))

(defclass check-list-box (list-box)
  ()
  (:documentation "A checklistbox is like a listbox, but allows items \
to be checked or unchecked. NOTE: when using this class under Microsoft \
Windows(tm), the underlying wxWidgets library must be compiled with \
USE_OWNER_DRAWN set to 1."))

(defclass gauge (control)
  ()
  (:documentation "A gauge is a horizontal or vertical bar which shows \
a quantity (often time)."))

(defclass list-ctrl (control)
  ()
  (:documentation "A list control presents lists in a number of formats: \
list view, report view, icon view, and small icon view."))

(defclass notebook (control)
  ()
  (:documentation "This class represents a notebook control, which manages multiple windows with associated tabs."))

(defclass radio-box (control)
  ()
  (:documentation "A radio box item is used to select one of a number of \
mutually exclusive choices, displayed as a column or row of labelled buttons."))

(defclass radio-button (control)
  ()
  (:documentation "A radio button is a control which usually denotes one \
of several mutually exclusive options."))

(defclass slider (control)
  ()
  (:documentation "A slider is a control which can be pulled back and \
forth to change the value."))

(defclass static-box (control)
  ()
  (:documentation "A static box is a rectangle drawn around other panel \
items to denote a logical grouping of items.  A static box should NOT be \
used as the parent for the controls it contains."))

(defclass static-text (control)
  ()
  (:documentation "A static text control displays one or more lines of \
read-only text."))

(defclass static-line (control)
  ()
  (:documentation "A static line is just a line which may be used in a dialog \
to separate the groups of controls. The line may be only vertical or horizontal."))

(defclass toggle-button (control)
  ()
  (:documentation "A toggle button is a button that stays pressed when \
clicked by the user. In other words, it is similar to check-box in \
functionality but looks like a button."))

(defclass text-control (control)
  ()
  (:documentation " text control allows text to be displayed and edited.\
 It may be single line or multi-line."))

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

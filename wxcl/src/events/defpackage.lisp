(defpackage :wxcl-events
    (:use :common-lisp :ffi)
  (:export #:+event-command-left-click+
           #:+event-command-left-dclick+
           #:+event-command-right-click+
           #:+event-command-right-dclick+
           #:+event-command-set-focus+
           #:+event-command-kill-focus+
           #:+event-command-enter+
           #:+event-command-tree-begin-drag+
           #:+event-command-tree-begin-rdrag+
           #:+event-command-tree-begin-label-edit+
           #:+event-command-tree-end-label-edit+
           #:+event-command-tree-delete-item+
           #:+event-command-tree-get-info+
           #:+event-command-tree-set-info+
           #:+event-command-tree-item-expanded+
           #:+event-command-tree-item-expanding+
           #:+event-command-tree-item-collapsed+
           #:+event-command-tree-item-collapsing+
           #:+event-command-tree-sel-changed+
           #:+event-command-tree-sel-changing+
           #:+event-command-tree-key-down+
           #:+event-command-tree-item-activated+
           #:+event-command-tree-item-right-click+
           #:+event-command-tree-item-middle-click+
           #:+event-command-tree-end-drag+
           #:+event-command-list-begin-drag+
           #:+event-command-list-begin-rdrag+
           #:+event-command-list-begin-label-edit+
           #:+event-command-list-end-label-edit+
           #:+event-command-list-delete-item+
           #:+event-command-list-delete-all-items+
           #:+event-command-list-get-info+
           #:+event-command-list-set-info+
           #:+event-command-list-item-selected+
           #:+event-command-list-item-deselected+
           #:+event-command-list-key-down+
           #:+event-command-list-insert-item+
           #:+event-command-list-col-click+
           #:+event-command-list-item-right-click+
           #:+event-command-list-item-middle-click+
           #:+event-command-list-item-activated+
           #:+event-command-list-item-focused+
           #:+event-command-tab-sel-changed+
           #:+event-command-tab-sel-changing+
           #:+event-command-notebook-page-changed+
           #:+event-command-notebook-page-changing+
           #:+event-command-splitter-sash-pos-changed+
           #:+event-command-splitter-sash-pos-changing+
           #:+event-command-splitter-doubleclicked+
           #:+event-command-splitter-unsplit+
           #:+event-wizard-page-changed+
           #:+event-wizard-page-changing+
           #:+event-wizard-cancel+
           #:+event-calendar-sel-changed+
           #:+event-calendar-day-changed+
           #:+event-calendar-month-changed+
           #:+event-calendar-year-changed+
           #:+event-calendar-doubleclicked+
           #:+event-calendar-weekday-clicked+
           #:+event-user-first+
           #:+event-help+
           #:+event-detailed-help+
           #:+event-grid-cell-left-click+
           #:+event-grid-cell-right-click+
           #:+event-grid-cell-left-dclick+
           #:+event-grid-cell-right-dclick+
           #:+event-grid-label-left-click+
           #:+event-grid-label-right-click+
           #:+event-grid-label-left-dclick+
           #:+event-grid-label-right-dclick+
           #:+event-grid-row-size+
           #:+event-grid-col-size+
           #:+event-grid-range-select+
           #:+event-grid-cell-change+
           #:+event-grid-select-cell+
           #:+event-grid-editor-shown+
           #:+event-grid-editor-hidden+
           #:+event-grid-editor-created+
           #:+event-command-button-clicked+
           #:+event-command-checkbox-clicked+
           #:+event-command-choice-selected+
           #:+event-command-listbox-selected+
           #:+event-command-listbox-doubleclicked+
           #:+event-command-checklistbox-toggled+
           #:+event-command-text-updated+
           #:+event-command-text-enter+
           #:+event-command-menu-selected+
           #:+event-command-tool-clicked+
           #:+event-command-slider-updated+
           #:+event-command-radiobox-selected+
           #:+event-command-radiobutton-selected+
           #:+event-command-scrollbar-updated+
           #:+event-command-vlbox-selected+
           #:+event-command-combobox-selected+
           #:+event-command-tool-rclicked+
           #:+event-command-tool-enter+
           #:+event-command-spinctrl-updated+
           #:+event-socket+
           #:+event-left-down+
           #:+event-left-up+
           #:+event-middle-down+
           #:+event-middle-up+
           #:+event-right-down+
           #:+event-right-up+
           #:+event-motion+
           #:+event-enter-window+
           #:+event-leave-window+
           #:+event-left-dclick+
           #:+event-middle-dclick+
           #:+event-right-dclick+
           #:+event-set-focus+
           #:+event-kill-focus+
           #:+event-nc-left-down+
           #:+event-nc-left-up+
           #:+event-nc-middle-down+
           #:+event-nc-middle-up+
           #:+event-nc-right-down+
           #:+event-nc-right-up+
           #:+event-nc-motion+
           #:+event-nc-enter-window+
           #:+event-nc-leave-window+
           #:+event-nc-left-dclick+
           #:+event-nc-middle-dclick+
           #:+event-nc-right-dclick+
           #:+event-char+
           #:+event-char-hook+
           #:+event-navigation-key+
           #:+event-key-down+
           #:+event-key-up+
           #:+event-set-cursor+
           #:+event-scroll-top+
           #:+event-scroll-bottom+
           #:+event-scroll-lineup+
           #:+event-scroll-linedown+
           #:+event-scroll-pageup+
           #:+event-scroll-pagedown+
           #:+event-scroll-thumbtrack+
           #:+event-scroll-thumbrelease+
           #:+event-scrollwin-top+
           #:+event-scrollwin-bottom+
           #:+event-scrollwin-lineup+
           #:+event-scrollwin-linedown+
           #:+event-scrollwin-pageup+
           #:+event-scrollwin-pagedown+
           #:+event-scrollwin-thumbtrack+
           #:+event-scrollwin-thumbrelease+
           #:+event-size+
           #:+event-move+
           #:+event-close-window+
           #:+event-end-session+
           #:+event-query-end-session+
           #:+event-activate-app+
           #:+event-power+
           #:+event-activate+
           #:+event-create+
           #:+event-destroy+
           #:+event-show+
           #:+event-iconize+
           #:+event-maximize+
           #:+event-mouse-capture-changed+
           #:+event-paint+
           #:+event-erase-background+
           #:+event-nc-paint+
           #:+event-paint-icon+
           #:+event-menu-highlight+
           #:+event-context-menu+
           #:+event-sys-colour-changed+
           #:+event-setting-changed+
           #:+event-query-new-palette+
           #:+event-palette-changed+
           #:+event-joy-button-down+
           #:+event-joy-button-up+
           #:+event-joy-move+
           #:+event-joy-zmove+
           #:+event-drop-files+
           #:+event-draw-item+
           #:+event-measure-item+
           #:+event-compare-item+
           #:+event-init-dialog+
           #:+event-idle+
           #:+event-update-ui+
           #:+event-end-process+
           #:+event-dialup-connected+
           #:+event-dialup-disconnected+
;    #:+event-dynamic-sash-split+
; #:+event-dynamic-sash-unify+
; #:+event-plot-sel-changing+
; #:+event-plot-sel-changed+
; #:+event-plot-clicked+
; #:+event-plot-doubleclicked+
; #:+event-plot-zoom-in+
; #:+event-plot-zoom-out+
; #:+event-plot-value-sel-creating+
; #:+event-plot-value-sel-created+
; #:+event-plot-value-sel-changing+
; #:+event-plot-value-sel-changed+
; #:+event-plot-area-sel-creating+
; #:+event-plot-area-sel-created+
; #:+event-plot-area-sel-changing+
; #:+event-plot-area-sel-changed+
; #:+event-plot-begin-x-label-edit+
; #:+event-plot-end-x-label-edit+
; #:+event-plot-begin-y-label-edit+
; #:+event-plot-end-y-label-edit+
; #:+event-plot-begin-title-edit+
; #:+event-plot-end-title-edit+
; #:+event-plot-area-create+
           ))

(in-package :wxcl-events)


(defclass event (object)
  ()
  (:documentation "An event is a structure holding information about an event passed\
 to a callback or member function.")) 

(defclass evt-handler (object)
  ()
  (:documentation "A class that can handle events from the windowing system.\
 window (and therefore all window classes) are derived from this class."))

(defclass mouse-event (event)
  ()
  (:documentation "An event is a structure holding information about an event passed\
 to a callback or member function.")) 

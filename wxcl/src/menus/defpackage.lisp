
(defpackage :wxcl-menus
    (:use :common-lisp :wxcl :wxcl-windows #+(and (not cffi) clisp) #:ffi #+cffi :cffi)
  (:export
   ;;menu class, methods and functions
   #:menu
   #:make-menu
   #:make-menu-with-items ;;macro
   #:delete-menu
   #:append-separator
   #:append-string
   #:append-check-item
   #:append-radio-item
   #:append-sub-menu
   #:append-menu-item
   #:break
   #:insert-string
   #:insert-check-item
   #:insert-radio-item
   #:insert-sub-menu
   #:insert-menu-item
   #:prepend-string
   #:prepend-check-item
   #:prepend-radio-item
   #:prepend-sub-menu
   #:prepend-menu-item
   #:remove
   #:delete
   #:destroy-item
   #:menu-item-count
   #:find-items-by-label
   #:find-item
   #:enable-menu
   #:menu-enabled-p
   #:label
   #:help-string
   #:title
   #:update-ui
   
	   #:+menu-tearoff
	   #:+item-separator
	   #:+item-normal
	   #:+item-check
	   #:+item-radio
	   #:+item-submenu
      #:make-menu-bar
))

(in-package :wxcl-menus)

(defconstant +menu-tearoff 1)
(defconstant +mb-dockable 1)
(defconstant +item-submenu 1000)


(defclass menu-item (object)
  ()
  (:documentation "A menu is a popup (or pull down) list of items,\
 one of which may be selected before the menu goes away (clicking\
 elsewhere dismisses the menu). Menus may be used to construct either\
 menu bars or popup menus."))

(defclass menu (object)
  ()
  (:documentation "A menu is a popup (or pull down) list of items,\
 one of which may be selected before the menu goes away (clicking\
 elsewhere dismisses the menu). Menus may be used to construct either\
 menu bars or popup menus."))

(defclass menu-bar (window)
  ()
  (:documentation "A menu is a popup (or pull down) list of items,\
 one of which may be selected before the menu goes away (clicking\
 elsewhere dismisses the menu). Menus may be used to construct either\
 menu bars or popup menus."))

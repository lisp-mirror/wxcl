;;;wxMenuItem.lisp
;;;License  : GNU General Public License (GPL)
;;;Author(s) : Surendra Singhi (surendra@asu.edu) 
;;;Copyright (C) 2005 Surendra Singhi 
;;;See the file LICENSE for information on usage and redistribution.
;;;
;;; $Header$
;;;


(defpackage :wxMenuItem
    (:use :common-lisp :ffi :wxCL)
  (:export :wxMenuItem_Create
	   :wxMenuItem_CreateSeparator
	   :wxMenuItem_CreateEx
	   :wxMenuItem_Delete
	   :wxMenuItem_GetMenu
	   :wxMenuItem_SetId
	   :wxMenuItem_GetId
	   :wxMenuItem_IsSeparator
	   :wxMenuItem_SetText
	   :wxMenuItem_GetLabel
	   :wxMenuItem_GetText
	   :wxMenuItem_GetLabelFromText
	   :wxMenuItem_SetCheckable
	   :wxMenuItem_IsCheckable
	   :wxMenuItem_IsSubMenu
	   :wxMenuItem_SetSubMenu
	   :wxMenuItem_GetSubMenu
	   :wxMenuItem_Enable
	   :wxMenuItem_IsEnabled
	   :wxMenuItem_Check
	   :wxMenuItem_IsChecked
	   :wxMenuItem_SetHelp
	   :wxMenuItem_GetHelp
	   :wxITEM_SEPARATOR
	   :wxITEM_NORMAL
	   :wxITEM_CHECK
	   :wxITEM_RADIO
	   :wxITEM_SUBMENU
	   ))

(in-package :wxMenuItem)

(ffi:default-foreign-language :stdc)

(def-c-type wxMenuItem NIL)

(defconstant wxITEM_SEPARATOR -1)
(defconstant wxITEM_NORMAL 0)
(defconstant wxITEM_CHECK 1)
(defconstant wxITEM_RADIO 2)

(defconstant wxITEM_SUBMENU 1000)


(ffi:def-call-out wxMenuItem_Create
    (:name "wxMenuItem_Create")
  (:return-type (ffi:c-pointer wxMenuItem))
  (:library +library-name+))

(ffi:def-call-out wxMenuItem_CreateSeparator
	(:name "wxMenuItem_CreateSeparator")
	(:return-type (ffi:c-pointer NIL))
	(:library +library-name+))

(ffi:def-call-out wxMenuItem_CreateEx
	(:name "wxMenuItem_CreateEx")
	(:arguments (id ffi:int)
		(text ffi:c-string)
		(helpstr ffi:c-string)
		(itemkind ffi:int)
		(submenu (ffi:c-pointer NIL)))
	(:return-type (ffi:c-pointer NIL))
	(:library +library-name+))

(ffi:def-call-out wxMenuItem_Delete
    (:name "wxMenuItem_Delete")
  (:arguments (_obj (ffi:c-pointer wxMenuItem)))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxMenuItem_GetMenu
    (:name "wxMenuItem_GetMenu")
  (:arguments (_obj (ffi:c-pointer wxMenuItem)))
  (:return-type (ffi:c-pointer NIL))
  (:library +library-name+))

(ffi:def-call-out wxMenuItem_SetId
    (:name "wxMenuItem_SetId")
  (:arguments (_obj (ffi:c-pointer wxMenuItem))
	      (id ffi:int))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxMenuItem_GetId
    (:name "wxMenuItem_GetId")
  (:arguments (_obj (ffi:c-pointer wxMenuItem)))
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out wxMenuItem_IsSeparator
    (:name "wxMenuItem_IsSeparator")
  (:arguments (_obj (ffi:c-pointer wxMenuItem)))
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out wxMenuItem_SetText
    (:name "wxMenuItem_SetText")
  (:arguments (_obj (ffi:c-pointer wxMenuItem))
	      (str ffi:c-string))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxMenuItem_GetLabel
    (:name "wxMenuItem_GetLabel")
  (:arguments (_obj (ffi:c-pointer wxMenuItem))
	      (_buf (ffi:c-pointer NIL)))
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out wxMenuItem_GetText
    (:name "wxMenuItem_GetText")
  (:arguments (_obj (ffi:c-pointer wxMenuItem))
	      (_buf (ffi:c-pointer NIL)))
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out wxMenuItem_GetLabelFromText
    (:name "wxMenuItem_GetLabelFromText")
  (:arguments (text (ffi:c-pointer NIL))
	      (_buf (ffi:c-pointer NIL)))
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out wxMenuItem_SetCheckable
    (:name "wxMenuItem_SetCheckable")
  (:arguments (_obj (ffi:c-pointer wxMenuItem))
	      (checkable ffi:int))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxMenuItem_IsCheckable
    (:name "wxMenuItem_IsCheckable")
  (:arguments (_obj (ffi:c-pointer wxMenuItem)))
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out wxMenuItem_IsSubMenu
    (:name "wxMenuItem_IsSubMenu")
  (:arguments (_obj (ffi:c-pointer wxMenuItem)))
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out wxMenuItem_SetSubMenu
    (:name "wxMenuItem_SetSubMenu")
  (:arguments (_obj (ffi:c-pointer wxMenuItem))
	      (menu (ffi:c-pointer NIL)))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxMenuItem_GetSubMenu
    (:name "wxMenuItem_GetSubMenu")
  (:arguments (_obj (ffi:c-pointer wxMenuItem)))
  (:return-type (ffi:c-pointer NIL))
  (:library +library-name+))

(ffi:def-call-out wxMenuItem_Enable
    (:name "wxMenuItem_Enable")
  (:arguments (_obj (ffi:c-pointer wxMenuItem))
	      (enable ffi:int))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxMenuItem_IsEnabled
    (:name "wxMenuItem_IsEnabled")
  (:arguments (_obj (ffi:c-pointer wxMenuItem)))
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out wxMenuItem_Check
    (:name "wxMenuItem_Check")
  (:arguments (_obj (ffi:c-pointer wxMenuItem))
	      (check ffi:int))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxMenuItem_IsChecked
    (:name "wxMenuItem_IsChecked")
  (:arguments (_obj (ffi:c-pointer wxMenuItem)))
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out wxMenuItem_SetHelp
    (:name "wxMenuItem_SetHelp")
  (:arguments (_obj (ffi:c-pointer wxMenuItem))
	      (str ffi:c-string))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxMenuItem_GetHelp
    (:name "wxMenuItem_GetHelp")
  (:arguments (_obj (ffi:c-pointer wxMenuItem))
	      (_buf (ffi:c-pointer NIL)))
  (:return-type ffi:int)
  (:library +library-name+))

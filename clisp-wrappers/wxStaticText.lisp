;;;wxStaticText.lisp
;;;License  : GNU General Public License (GPL)
;;;Author(s) : Surendra Singhi (surendra@asu.edu) 
;;;Copyright (C) 2005 Surendra Singhi 
;;;See the file LICENSE for information on usage and redistribution.
;;;
;;; $Header$
;;;

(defpackage :wxStaticText
  (:use :common-lisp :ffi :wxCL)
  (:export :wxStaticText_Create
	   :wxcl-create-static-text))

(in-package :wxStaticText)

(ffi:default-foreign-language :stdc)

(defconstant wxALIGN_LEFT 0)
(defconstant wxALIGN_RIGHT 512)
(defconstant wxALIGN_CENTRE 2304)

(ffi:def-call-out wxStaticText_Create
	(:name "wxStaticText_Create")
	(:arguments (_prt (ffi:c-pointer NIL))
		(_id ffi:int)
		(_txt ffi:c-string)
		(_lft ffi:int)
		(_top ffi:int)
		(_wdt ffi:int)
		(_hgt ffi:int)
		(_stl ffi:int))
	(:return-type (ffi:c-pointer NIL))
	(:library +library-name+))

(defmacro wxcl-create-static-text (frame text &key (id -1) (left -1) (top -1) (width -1) (height -1)
					 (style 0))
  "Creates static text."
  `(wxStaticText_Create ,frame ,id ,text ,left ,top ,width ,height ,style))
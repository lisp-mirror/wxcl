;;;wxCursor.lisp
;;;License  : GNU General Public License (GPL)
;;;Author(s) : Surendra Singhi (surendra@asu.edu) 
;;;Copyright (C) 2005 Surendra Singhi 
;;;See the file LICENSE for information on usage and redistribution.
;;;
;;; $Header$
;;;

(defpackage :wxCursor
    (:use :common-lisp :ffi :wxCL)
  (:export :Cursor_CreateFromStock
	   :wxcBeginBusyCursor
	   :wxcEndBusyCursor
	   :wxcIsBusy
	   :wxCursor_Delete
	   :wxCURSOR_NONE
	   :wxCURSOR_ARROW
	   :wxCURSOR_RIGHT_ARROW
	   :wxCURSOR_BULLSEYE
	   :wxCURSOR_CHAR
	   :wxCURSOR_CROSS
	   :wxCURSOR_HAND
	   :wxCURSOR_IBEAM
	   :wxCURSOR_LEFT_BUTTON
	   :wxCURSOR_MAGNIFIER
	   :wxCURSOR_MIDDLE_BUTTON
	   :wxCURSOR_NO_ENTRY
	   :wxCURSOR_PAINT_BRUSH
	   :wxCURSOR_PENCIL
	   :wxCURSOR_POINT_LEFT
	   :wxCURSOR_POINT_RIGHT
	   :wxCURSOR_QUESTION_ARROW
	   :wxCURSOR_RIGHT_BUTTON
	   :wxCURSOR_SIZENESW
	   :wxCURSOR_SIZENS
	   :wxCURSOR_SIZENWSE
	   :wxCURSOR_SIZEWE
	   :wxCURSOR_SIZING
	   :wxCURSOR_SPRAYCAN
	   :wxCURSOR_WAIT
	   :wxCURSOR_WATCH
	   :wxCURSOR_BLANK))

(in-package :wxCursor)

(ffi:default-foreign-language :stdc)

(defconstant wxCURSOR_NONE 0)
(defconstant wxCURSOR_ARROW 1)
(defconstant wxCURSOR_RIGHT_ARROW 2)
(defconstant wxCURSOR_BULLSEYE 3)
(defconstant wxCURSOR_CHAR 4)
(defconstant wxCURSOR_CROSS 5)
(defconstant wxCURSOR_HAND 6)
(defconstant wxCURSOR_IBEAM 7)
(defconstant wxCURSOR_LEFT_BUTTON 8)
(defconstant wxCURSOR_MAGNIFIER 9)
(defconstant wxCURSOR_MIDDLE_BUTTON 10)
(defconstant wxCURSOR_NO_ENTRY 11)
(defconstant wxCURSOR_PAINT_BRUSH 12)
(defconstant wxCURSOR_PENCIL 13)
(defconstant wxCURSOR_POINT_LEFT 14)
(defconstant wxCURSOR_POINT_RIGHT 15)
(defconstant wxCURSOR_QUESTION_ARROW 16)
(defconstant wxCURSOR_RIGHT_BUTTON 17)
(defconstant wxCURSOR_SIZENESW 18)
(defconstant wxCURSOR_SIZENS 19)
(defconstant wxCURSOR_SIZENWSE 20)
(defconstant wxCURSOR_SIZEWE 21)
(defconstant wxCURSOR_SIZING 22)
(defconstant wxCURSOR_SPRAYCAN 23)
(defconstant wxCURSOR_WAIT 24)
(defconstant wxCURSOR_WATCH 25)
(defconstant wxCURSOR_BLANK 26)

(ffi:def-call-out Cursor_CreateFromStock
    (:name "Cursor_CreateFromStock")
  (:arguments (_id ffi:int))
  (:return-type (ffi:c-pointer NIL))
  (:library +library-name+))

(ffi:def-call-out wxCursor_Delete
    (:name "wxCursor_Delete")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:library +library-name+))

(ffi:def-call-out wxcBeginBusyCursor
	(:name "wxcBeginBusyCursor")
	(:library +library-name+))

(ffi:def-call-out wxcEndBusyCursor
	(:name "wxcEndBusyCursor")
	(:library +library-name+))

(ffi:def-call-out wxcIsBusy
	(:name "wxcIsBusy")
	(:return-type ffi:int)
	(:library +library-name+))

;;;wxPen.lisp
;;;License  : wxWindows License 3.1
;;;Author(s) : Surendra Singhi (surendra@asu.edu) 
;;;Copyright (C) 2005 Surendra Singhi 
;;;See the file LICENSE for information on usage and redistribution.
;;;
;;; $Header$
;;;

(in-package :wxcl)

(define-symbol-macro +black-dashed-pen+ (make-wx-instance 'pen wxBlack_Dashed_Pen))

(define-symbol-macro +black-pen+ (make-wx-instance 'pen wxBlack_Pen))

(define-symbol-macro +white-pen+ (make-wx-instance 'pen wxWhite_Pen))

(define-symbol-macro +red-pen+ (make-wx-instance 'pen wxRed_Pen))

(define-symbol-macro +green-pen+ (make-wx-instance 'pen wxGreen_Pen))

(define-symbol-macro +cyan-pen+ (make-wx-instance 'pen wxCyan_Pen))

(define-symbol-macro +grey-pen+ (make-wx-instance 'pen wxGrey_Pen))

(define-symbol-macro +transparent-pen+ (make-wx-instance 'pen wxTransparent_Pen))

(define-symbol-macro +light-grey-pen+ (make-wx-instance 'pen wxLight_Grey_Pen))

(define-symbol-macro +medium-grey-pen+ (make-wx-instance 'pen wxMedium_Grey_Pen))


(defun make-pen ()
  (make-wx-instance 'pen (wxPen_CreateDefault)))

(defun make-pen-from-colour (colour width style)
  (make-wx-instance 'pen (wxPen_CreateFromColour (object-pointer colour) width style)))

(defun make-pen-from-bitmap (stipple width)
  (make-wx-instance 'pen (wxPen_CreateFromBitmap (object-pointer stipple) width)))

(defmethod delete-object ((obj pen))
  (wxPen_Delete (object-pointer obj))
  (invalidate-wx-instance obj))

(defmethod assign ((obj pen) (pen pen))
  (wxPen_Assign (object-pointer obj) (object-pointer pen)))

(defmethod equal-p ((obj pen)(pen pen))
  (= 1 (wxPen_IsEqual (object-pointer obj)(object-pointer pen))))

(defmethod ok-p ((obj pen))
  (= 1 (wxPen_Ok (object-pointer obj))))

(defmethod (setf colour) ((col colour) (obj pen))
  (wxPen_SetColour (object-pointer obj) (object-pointer col)))

(defmethod (setf colour) (name (obj pen))
  (wxPen_SetColourName (object-pointer obj) name))

(defmethod set-colour-rgb ((obj pen) r g b)
  (wxPen_SetColourRGB (object-pointer obj) r g b))

(defmethod (setf width) (width (obj pen))
  (wxPen_SetWidth (object-pointer obj) width))

(defmethod (setf style) (style (obj pen))
  (wxPen_SetStyle (object-pointer obj) style))

(defmethod (setf stipple) ((bmp bitmap) (obj pen))
  (wxPen_SetStipple (object-pointer obj) (object-pointer bmp)))

; (defmethod wxPen_SetDashes ((obj pen))
;     (:name "wxPen_SetDashes")
;   (:arguments (_obj (ffi:c-pointer NIL))
; 	      (nb_dashes ffi:int)
; 	      (dash (ffi:c-pointer NIL)))
;   (:return-type NIL)
;   (:library +library-name+))

(defmethod (setf join) (join (obj pen))
  (wxPen_SetJoin (object-pointer obj) join))

(defmethod (setf cap) (cap (obj pen))
  (wxPen_SetCap (object-pointer obj) cap))

(defmethod colour ((obj pen))
  (make-wx-instance 'colour (wxPen_GetColour (object-pointer obj))))

(defmethod width ((obj pen))
  (wxPen_GetWidth (object-pointer obj)))

(defmethod style ((obj pen))
  (wxPen_GetStyle (object-pointer obj)))

(defmethod join ((obj pen))
  (wxPen_GetJoin (object-pointer obj)))

(defmethod cap ((obj pen))
  (wxPen_GetCap (object-pointer obj)))

; (defmethod wxPen_GetDashes ((obj pen))
;     (:name "wxPen_GetDashes")
;   (:arguments (_obj (ffi:c-pointer NIL))
; 	      (ptr (ffi:c-pointer NIL)))
;   (:return-type ffi:int)
;   (:library +library-name+))

(defmethod stipple ((obj pen))
  (make-wx-instance 'bitmap (wxPen_GetStipple (object-pointer obj))))

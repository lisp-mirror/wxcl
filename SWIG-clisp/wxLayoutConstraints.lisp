;;;wxLayoutConstraints.lisp
;;;License  : GNU General Public License (GPL)
;;;Author(s) : Surendra Singhi (surendra@asu.edu) 
;;;Copyright (C) 2005 Surendra Singhi 
;;;See the file LICENSE for information on usage and redistribution.
;;;
;;; $Header$
;;;
;; This is an automatically generated file. 
;;Make changes as you feel are necessary (but remember if you try to regenerate this file, your changes will be lost). 

(defpackage :wxLayoutConstraints
  (:use :common-lisp :ffi)
  (:export
	:wxLayoutConstraints_left
	:wxLayoutConstraints_top
	:wxLayoutConstraints_right
	:wxLayoutConstraints_bottom
	:wxLayoutConstraints_width
	:wxLayoutConstraints_height
	:wxLayoutConstraints_centreX
	:wxLayoutConstraints_centreY
	:wxLayoutConstraints_Create
	:wxIndividualLayoutConstraint_Set
	:wxIndividualLayoutConstraint_LeftOf
	:wxIndividualLayoutConstraint_RightOf
	:wxIndividualLayoutConstraint_Above
	:wxIndividualLayoutConstraint_Below
	:wxIndividualLayoutConstraint_SameAs
	:wxIndividualLayoutConstraint_PercentOf
	:wxIndividualLayoutConstraint_Absolute
	:wxIndividualLayoutConstraint_Unconstrained
	:wxIndividualLayoutConstraint_AsIs
	:wxIndividualLayoutConstraint_GetOtherWindow
	:wxIndividualLayoutConstraint_GetMyEdge
	:wxIndividualLayoutConstraint_SetEdge
	:wxIndividualLayoutConstraint_SetValue
	:wxIndividualLayoutConstraint_GetMargin
	:wxIndividualLayoutConstraint_SetMargin
	:wxIndividualLayoutConstraint_GetValue
	:wxIndividualLayoutConstraint_GetPercent
	:wxIndividualLayoutConstraint_GetOtherEdge
	:wxIndividualLayoutConstraint_GetDone
	:wxIndividualLayoutConstraint_SetDone
	:wxIndividualLayoutConstraint_GetRelationship
	:wxIndividualLayoutConstraint_SetRelationship
	:wxIndividualLayoutConstraint_ResetIfWin
	:wxIndividualLayoutConstraint_SatisfyConstraint
	:wxIndividualLayoutConstraint_GetEdge))

(in-package :wxLayoutConstraints)

(ffi:def-call-out wxLayoutConstraints_left
	(:name "wxLayoutConstraints_left")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type (ffi:c-pointer NIL))
	(:library +library-name+))

(ffi:def-call-out wxLayoutConstraints_top
	(:name "wxLayoutConstraints_top")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type (ffi:c-pointer NIL))
	(:library +library-name+))

(ffi:def-call-out wxLayoutConstraints_right
	(:name "wxLayoutConstraints_right")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type (ffi:c-pointer NIL))
	(:library +library-name+))

(ffi:def-call-out wxLayoutConstraints_bottom
	(:name "wxLayoutConstraints_bottom")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type (ffi:c-pointer NIL))
	(:library +library-name+))

(ffi:def-call-out wxLayoutConstraints_width
	(:name "wxLayoutConstraints_width")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type (ffi:c-pointer NIL))
	(:library +library-name+))

(ffi:def-call-out wxLayoutConstraints_height
	(:name "wxLayoutConstraints_height")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type (ffi:c-pointer NIL))
	(:library +library-name+))

(ffi:def-call-out wxLayoutConstraints_centreX
	(:name "wxLayoutConstraints_centreX")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type (ffi:c-pointer NIL))
	(:library +library-name+))

(ffi:def-call-out wxLayoutConstraints_centreY
	(:name "wxLayoutConstraints_centreY")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type (ffi:c-pointer NIL))
	(:library +library-name+))

(ffi:def-call-out wxLayoutConstraints_Create
	(:name "wxLayoutConstraints_Create")
	(:return-type (ffi:c-pointer NIL))
	(:library +library-name+))

(ffi:def-call-out wxIndividualLayoutConstraint_Set
	(:name "wxIndividualLayoutConstraint_Set")
	(:arguments (_obj (ffi:c-pointer NIL))
		(rel ffi:int)
		(otherW (ffi:c-pointer NIL))
		(otherE ffi:int)
		(val ffi:int)
		(marg ffi:int))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxIndividualLayoutConstraint_LeftOf
	(:name "wxIndividualLayoutConstraint_LeftOf")
	(:arguments (_obj (ffi:c-pointer NIL))
		(sibling (ffi:c-pointer NIL))
		(marg ffi:int))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxIndividualLayoutConstraint_RightOf
	(:name "wxIndividualLayoutConstraint_RightOf")
	(:arguments (_obj (ffi:c-pointer NIL))
		(sibling (ffi:c-pointer NIL))
		(marg ffi:int))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxIndividualLayoutConstraint_Above
	(:name "wxIndividualLayoutConstraint_Above")
	(:arguments (_obj (ffi:c-pointer NIL))
		(sibling (ffi:c-pointer NIL))
		(marg ffi:int))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxIndividualLayoutConstraint_Below
	(:name "wxIndividualLayoutConstraint_Below")
	(:arguments (_obj (ffi:c-pointer NIL))
		(sibling (ffi:c-pointer NIL))
		(marg ffi:int))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxIndividualLayoutConstraint_SameAs
	(:name "wxIndividualLayoutConstraint_SameAs")
	(:arguments (_obj (ffi:c-pointer NIL))
		(otherW (ffi:c-pointer NIL))
		(edge ffi:int)
		(marg ffi:int))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxIndividualLayoutConstraint_PercentOf
	(:name "wxIndividualLayoutConstraint_PercentOf")
	(:arguments (_obj (ffi:c-pointer NIL))
		(otherW (ffi:c-pointer NIL))
		(wh ffi:int)
		(per ffi:int))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxIndividualLayoutConstraint_Absolute
	(:name "wxIndividualLayoutConstraint_Absolute")
	(:arguments (_obj (ffi:c-pointer NIL))
		(val ffi:int))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxIndividualLayoutConstraint_Unconstrained
	(:name "wxIndividualLayoutConstraint_Unconstrained")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxIndividualLayoutConstraint_AsIs
	(:name "wxIndividualLayoutConstraint_AsIs")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxIndividualLayoutConstraint_GetOtherWindow
	(:name "wxIndividualLayoutConstraint_GetOtherWindow")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type (ffi:c-pointer NIL))
	(:library +library-name+))

(ffi:def-call-out wxIndividualLayoutConstraint_GetMyEdge
	(:name "wxIndividualLayoutConstraint_GetMyEdge")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxIndividualLayoutConstraint_SetEdge
	(:name "wxIndividualLayoutConstraint_SetEdge")
	(:arguments (_obj (ffi:c-pointer NIL))
		(which ffi:int))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxIndividualLayoutConstraint_SetValue
	(:name "wxIndividualLayoutConstraint_SetValue")
	(:arguments (_obj (ffi:c-pointer NIL))
		(v ffi:int))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxIndividualLayoutConstraint_GetMargin
	(:name "wxIndividualLayoutConstraint_GetMargin")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxIndividualLayoutConstraint_SetMargin
	(:name "wxIndividualLayoutConstraint_SetMargin")
	(:arguments (_obj (ffi:c-pointer NIL))
		(m ffi:int))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxIndividualLayoutConstraint_GetValue
	(:name "wxIndividualLayoutConstraint_GetValue")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxIndividualLayoutConstraint_GetPercent
	(:name "wxIndividualLayoutConstraint_GetPercent")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxIndividualLayoutConstraint_GetOtherEdge
	(:name "wxIndividualLayoutConstraint_GetOtherEdge")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxIndividualLayoutConstraint_GetDone
	(:name "wxIndividualLayoutConstraint_GetDone")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxIndividualLayoutConstraint_SetDone
	(:name "wxIndividualLayoutConstraint_SetDone")
	(:arguments (_obj (ffi:c-pointer NIL))
		(d ffi:int))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxIndividualLayoutConstraint_GetRelationship
	(:name "wxIndividualLayoutConstraint_GetRelationship")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxIndividualLayoutConstraint_SetRelationship
	(:name "wxIndividualLayoutConstraint_SetRelationship")
	(:arguments (_obj (ffi:c-pointer NIL))
		(r ffi:int))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxIndividualLayoutConstraint_ResetIfWin
	(:name "wxIndividualLayoutConstraint_ResetIfWin")
	(:arguments (_obj (ffi:c-pointer NIL))
		(otherW (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxIndividualLayoutConstraint_SatisfyConstraint
	(:name "wxIndividualLayoutConstraint_SatisfyConstraint")
	(:arguments (_obj (ffi:c-pointer NIL))
		(constraints (ffi:c-pointer NIL))
		(win (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxIndividualLayoutConstraint_GetEdge
	(:name "wxIndividualLayoutConstraint_GetEdge")
	(:arguments (_obj (ffi:c-pointer NIL))
		(which ffi:int)
		(thisWin (ffi:c-pointer NIL))
		(other (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))


(defpackage :wxcl-layout
    (:use :common-lisp :ffi :wxcl)
  (:export
    #:box-sizer
    #:sizer
    #:box-sizer
   )
;;;functions, constant, symbols etc.  
  (:export
;  	#:CreateInWindow
;  	#:CreateInSizer
;  	#:GetSize
;  	#:CalcMin
;  	#:SetDimension
;  	#:GetMinSize
;  	#:SetRatio
;  	#:SetFloatRatio
;  	#:GetRatio
;  	#:IsWindow
;  	#:IsSizer
;  	#:IsSpacer
;  	#:SetInitSize
;  	#:SetOption
;  	#:SetFlag
;  	#:SetBorder
;  	#:GetWindow
;  	#:SetWindow
;  	#:GetSizer
;  	#:SetSizer
;  	#:GetOption
;  	#:GetFlag
;  	#:GetBorder
;  	#:GetUserData
;  	#:GetPosition
 	#:add
 	#:add-spacer
 	#:insert
 	#:insert-spacer
 	#:prepend
 	#:detach
 	#:min-size
 	#:item-min-size
 	#:size
 	#:position
 	#:min-size
 	#:recalc-sizes
 	#:calc-min
 	#:layout
   #:dimension
 	#:fit
   )
  (:export
   #:make-box-sizer
   #:orientation
   )
;  	#:SetSizeHints
;  	#:GetChildren
;  	#:SetDimension
;  	#:Create
;  	#:RecalcSizes
;  	#:CalcMin
;  	#:SetCols
;  	#:SetRows
;  	#:SetVGap
;  	#:SetHGap
;  	#:GetCols
;  	#:GetRows
;  	#:GetVGap
;  	#:GetHGap
;  	#:Create
;  	#:RecalcSizes
;  	#:CalcMin
;  	#:AddGrowableRow
;  	#:RemoveGrowableRow
;  	#:AddGrowableCol
;  	#:RemoveGrowableCol
;  	#:Create
;  	#:RecalcSizes
;  	#:CalcMin
;  	#:GetOrientation
;  	#:Create
;  	#:RecalcSizes
;  	#:CalcMin
  (:export
   #:make-static-box-sizer
   #:static-box
  ))

(in-package :wxcl-layout)

(defclass box-sizer (sizer)
  ()
  (:documentation "The basic idea behind a box sizer is that windows will most often\
 be laid out in rather simple basic geometry, typically in a row or a column or several hierarchies of either."))

(defclass sizer (object)
  ()
  (:documentation "Sizer is the abstract base class used for laying out subwindows in a window."))

(defclass static-box-sizer (box-sizer)
  ()
  (:documentation "It is a sizer derived from box-sizer but adds a static box around the sizer.\
This static box has to be created independently or the sizer may create it itself as a convenience.\
The basic idea behind a box sizer is that windows will most often"))

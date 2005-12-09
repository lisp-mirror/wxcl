;;;wxSizer.lisp
;;;License  : wxWindows License 3.1
;;;Author(s) : Surendra Singhi (surendra@asu.edu) 
;;;Copyright (C) 2005 Surendra Singhi 
;;;See the file LICENSE for information on usage and redistribution.
;;;
;;; $Header$
;;;

; (defpackage :wxSizer
;   (:use :common-lisp :ffi :wxCL)
;   (:export
; 	:wxSizerItem_Create
; 	:wxSizerItem_CreateInWindow
; 	:wxSizerItem_CreateInSizer
; 	:wxSizerItem_GetSize
; 	:wxSizerItem_CalcMin
; 	:wxSizerItem_SetDimension
; 	:wxSizerItem_GetMinSize
; 	:wxSizerItem_SetRatio
; 	:wxSizerItem_SetFloatRatio
; 	:wxSizerItem_GetRatio
; 	:wxSizerItem_IsWindow
; 	:wxSizerItem_IsSizer
; 	:wxSizerItem_IsSpacer
; 	:wxSizerItem_SetInitSize
; 	:wxSizerItem_SetOption
; 	:wxSizerItem_SetFlag
; 	:wxSizerItem_SetBorder
; 	:wxSizerItem_GetWindow
; 	:wxSizerItem_SetWindow
; 	:wxSizerItem_GetSizer
; 	:wxSizerItem_SetSizer
; 	:wxSizerItem_GetOption
; 	:wxSizerItem_GetFlag
; 	:wxSizerItem_GetBorder
; 	:wxSizerItem_GetUserData
; 	:wxSizerItem_GetPosition
; 	:wxSizer_AddWindow
; 	:wxSizer_AddSizer
; 	:wxSizer_Add
; 	:wxSizer_InsertWindow
; 	:wxSizer_InsertSizer
; 	:wxSizer_Insert
; 	:wxSizer_PrependWindow
; 	:wxSizer_PrependSizer
; 	:wxSizer_Prepend
; 	:wxSizer_DetachWindow
; 	:wxSizer_DetachSizer
; 	:wxSizer_Detach
; 	:wxSizer_SetMinSize
; 	:wxSizer_SetItemMinSizeWindow
; 	:wxSizer_SetItemMinSizeSizer
; 	:wxSizer_SetItemMinSize
; 	:wxSizer_GetSize
; 	:wxSizer_GetPosition
; 	:wxSizer_GetMinSize
; 	:wxSizer_RecalcSizes
; 	:wxSizer_CalcMin
; 	:wxSizer_Layout
; 	:wxSizer_Fit
; 	:wxSizer_SetSizeHints
; 	:wxSizer_GetChildren
; 	:wxSizer_SetDimension
; 	:wxGridSizer_Create
; 	:wxGridSizer_RecalcSizes
; 	:wxGridSizer_CalcMin
; 	:wxGridSizer_SetCols
; 	:wxGridSizer_SetRows
; 	:wxGridSizer_SetVGap
; 	:wxGridSizer_SetHGap
; 	:wxGridSizer_GetCols
; 	:wxGridSizer_GetRows
; 	:wxGridSizer_GetVGap
; 	:wxGridSizer_GetHGap
; 	:wxFlexGridSizer_Create
; 	:wxFlexGridSizer_RecalcSizes
; 	:wxFlexGridSizer_CalcMin
; 	:wxFlexGridSizer_AddGrowableRow
; 	:wxFlexGridSizer_RemoveGrowableRow
; 	:wxFlexGridSizer_AddGrowableCol
; 	:wxFlexGridSizer_RemoveGrowableCol
; 	:wxBoxSizer_Create
; 	:wxBoxSizer_RecalcSizes
; 	:wxBoxSizer_CalcMin
; 	:wxBoxSizer_GetOrientation
; 	:wxStaticBoxSizer_Create
; 	:wxStaticBoxSizer_RecalcSizes
; 	:wxStaticBoxSizer_CalcMin
; 	:wxStaticBoxSizer_GetStaticBox))

(in-package :wxcl-layout)

(ffi:default-foreign-language :stdc)

(ffi:def-call-out wxSizerItem_Create
	(:name "wxSizerItem_Create")
	(:arguments (width ffi:int)
		(height ffi:int)
		(option ffi:int)
		(flag ffi:int)
		(border ffi:int)
		(userData (ffi:c-pointer NIL)))
	(:return-type (ffi:c-pointer NIL))
	(:library +library-name+))

(ffi:def-call-out wxSizerItem_CreateInWindow
	(:name "wxSizerItem_CreateInWindow")
	(:arguments (window (ffi:c-pointer NIL))
		(option ffi:int)
		(flag ffi:int)
		(border ffi:int)
		(userData (ffi:c-pointer NIL)))
	(:return-type (ffi:c-pointer NIL))
	(:library +library-name+))

(ffi:def-call-out wxSizerItem_CreateInSizer
	(:name "wxSizerItem_CreateInSizer")
	(:arguments (sizer (ffi:c-pointer NIL))
		(option ffi:int)
		(flag ffi:int)
		(border ffi:int)
		(userData (ffi:c-pointer NIL)))
	(:return-type (ffi:c-pointer NIL))
	(:library +library-name+))

(ffi:def-call-out wxSizerItem_GetSize
	(:name "wxSizerItem_GetSize")
	(:arguments (_obj (ffi:c-pointer NIL))
		(_w (ffi:c-pointer NIL))
		(_h (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxSizerItem_CalcMin
	(:name "wxSizerItem_CalcMin")
	(:arguments (_obj (ffi:c-pointer NIL))
		(_w (ffi:c-pointer NIL))
		(_h (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxSizerItem_SetDimension
	(:name "wxSizerItem_SetDimension")
	(:arguments (_obj (ffi:c-pointer NIL))
		(_x ffi:int)
		(_y ffi:int)
		(_w ffi:int)
		(_h ffi:int))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxSizerItem_GetMinSize
	(:name "wxSizerItem_GetMinSize")
	(:arguments (_obj (ffi:c-pointer NIL))
		(_w (ffi:c-pointer NIL))
		(_h (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxSizerItem_SetRatio
	(:name "wxSizerItem_SetRatio")
	(:arguments (_obj (ffi:c-pointer NIL))
		(width ffi:int)
		(height ffi:int))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxSizerItem_SetFloatRatio
	(:name "wxSizerItem_SetFloatRatio")
	(:arguments (_obj (ffi:c-pointer NIL))
		(ratio SINGLE-FLOAT))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxSizerItem_GetRatio
	(:name "wxSizerItem_GetRatio")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type SINGLE-FLOAT)
	(:library +library-name+))

(ffi:def-call-out wxSizerItem_IsWindow
	(:name "wxSizerItem_IsWindow")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxSizerItem_IsSizer
	(:name "wxSizerItem_IsSizer")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxSizerItem_IsSpacer
	(:name "wxSizerItem_IsSpacer")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxSizerItem_SetInitSize
	(:name "wxSizerItem_SetInitSize")
	(:arguments (_obj (ffi:c-pointer NIL))
		(x ffi:int)
		(y ffi:int))
	(:return-type NIL)
	(:library +library-name+))

;  (ffi:def-call-out wxSizerItem_SetOption
;  	(:name "wxSizerItem_SetOption")
;  	(:arguments (_obj (ffi:c-pointer NIL))
;  		(option ffi:int))
;  	(:return-type NIL)
;  	(:library +library-name+))

(ffi:def-call-out wxSizerItem_SetFlag
	(:name "wxSizerItem_SetFlag")
	(:arguments (_obj (ffi:c-pointer NIL))
		(flag ffi:int))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxSizerItem_SetBorder
	(:name "wxSizerItem_SetBorder")
	(:arguments (_obj (ffi:c-pointer NIL))
		(border ffi:int))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxSizerItem_GetWindow
	(:name "wxSizerItem_GetWindow")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type (ffi:c-pointer NIL))
	(:library +library-name+))

(ffi:def-call-out wxSizerItem_SetWindow
	(:name "wxSizerItem_SetWindow")
	(:arguments (_obj (ffi:c-pointer NIL))
		(window (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxSizerItem_GetSizer
	(:name "wxSizerItem_GetSizer")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type (ffi:c-pointer NIL))
	(:library +library-name+))

(ffi:def-call-out wxSizerItem_SetSizer
	(:name "wxSizerItem_SetSizer")
	(:arguments (_obj (ffi:c-pointer NIL))
		(sizer (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

; (ffi:def-call-out wxSizerItem_GetOption
; 	(:name "wxSizerItem_GetOption")
; 	(:arguments (_obj (ffi:c-pointer NIL)))
; 	(:return-type ffi:int)
; 	(:library +library-name+))

(ffi:def-call-out wxSizerItem_GetFlag
	(:name "wxSizerItem_GetFlag")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxSizerItem_GetBorder
	(:name "wxSizerItem_GetBorder")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxSizerItem_GetUserData
	(:name "wxSizerItem_GetUserData")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type (ffi:c-pointer NIL))
	(:library +library-name+))

(ffi:def-call-out wxSizerItem_GetPosition
	(:name "wxSizerItem_GetPosition")
	(:arguments (_obj (ffi:c-pointer NIL))
		(_x (ffi:c-pointer NIL))
		(_y (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxSizer_AddWindow
	(:name "wxSizer_AddWindow")
	(:arguments (_obj (ffi:c-pointer NIL))
		(window (ffi:c-pointer NIL))
		(option ffi:int)
		(flag ffi:int)
		(border ffi:int)
		(userData (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxSizer_AddSizer
	(:name "wxSizer_AddSizer")
	(:arguments (_obj (ffi:c-pointer NIL))
		(sizer (ffi:c-pointer NIL))
		(option ffi:int)
		(flag ffi:int)
		(border ffi:int)
		(userData (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxSizer_Add
	(:name "wxSizer_Add")
	(:arguments (_obj (ffi:c-pointer NIL))
		(width ffi:int)
		(height ffi:int)
		(option ffi:int)
		(flag ffi:int)
		(border ffi:int)
		(userData (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxSizer_InsertWindow
	(:name "wxSizer_InsertWindow")
	(:arguments (_obj (ffi:c-pointer NIL))
		(before ffi:int)
		(window (ffi:c-pointer NIL))
		(option ffi:int)
		(flag ffi:int)
		(border ffi:int)
		(userData (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxSizer_InsertSizer
	(:name "wxSizer_InsertSizer")
	(:arguments (_obj (ffi:c-pointer NIL))
		(before ffi:int)
		(sizer (ffi:c-pointer NIL))
		(option ffi:int)
		(flag ffi:int)
		(border ffi:int)
		(userData (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxSizer_Insert
	(:name "wxSizer_Insert")
	(:arguments (_obj (ffi:c-pointer NIL))
		(before ffi:int)
		(width ffi:int)
		(height ffi:int)
		(option ffi:int)
		(flag ffi:int)
		(border ffi:int)
		(userData (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxSizer_PrependWindow
	(:name "wxSizer_PrependWindow")
	(:arguments (_obj (ffi:c-pointer NIL))
		(window (ffi:c-pointer NIL))
		(option ffi:int)
		(flag ffi:int)
		(border ffi:int)
		(userData (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxSizer_PrependSizer
	(:name "wxSizer_PrependSizer")
	(:arguments (_obj (ffi:c-pointer NIL))
		(sizer (ffi:c-pointer NIL))
		(option ffi:int)
		(flag ffi:int)
		(border ffi:int)
		(userData (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxSizer_Prepend
	(:name "wxSizer_Prepend")
	(:arguments (_obj (ffi:c-pointer NIL))
		(width ffi:int)
		(height ffi:int)
		(option ffi:int)
		(flag ffi:int)
		(border ffi:int)
		(userData (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxSizer_DetachWindow
	(:name "wxSizer_DetachWindow")
	(:arguments (_obj (ffi:c-pointer NIL))
		(window (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxSizer_DetachSizer
	(:name "wxSizer_DetachSizer")
	(:arguments (_obj (ffi:c-pointer NIL))
		(sizer (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxSizer_Detach
	(:name "wxSizer_Detach")
	(:arguments (_obj (ffi:c-pointer NIL))
		(pos ffi:int))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxSizer_SetMinSize
	(:name "wxSizer_SetMinSize")
	(:arguments (_obj (ffi:c-pointer NIL))
		(width ffi:int)
		(height ffi:int))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxSizer_SetItemMinSizeWindow
	(:name "wxSizer_SetItemMinSizeWindow")
	(:arguments (_obj (ffi:c-pointer NIL))
		(window (ffi:c-pointer NIL))
		(width ffi:int)
		(height ffi:int))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxSizer_SetItemMinSizeSizer
	(:name "wxSizer_SetItemMinSizeSizer")
	(:arguments (_obj (ffi:c-pointer NIL))
		(sizer (ffi:c-pointer NIL))
		(width ffi:int)
		(height ffi:int))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxSizer_SetItemMinSize
	(:name "wxSizer_SetItemMinSize")
	(:arguments (_obj (ffi:c-pointer NIL))
		(pos ffi:int)
		(width ffi:int)
		(height ffi:int))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxSizer_GetSize
	(:name "wxSizer_GetSize")
	(:arguments (_obj (ffi:c-pointer NIL))
		(_w (ffi:c-pointer NIL))
		(_h (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxSizer_GetPosition
	(:name "wxSizer_GetPosition")
	(:arguments (_obj (ffi:c-pointer NIL))
		(_x (ffi:c-pointer NIL))
		(_y (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxSizer_GetMinSize
	(:name "wxSizer_GetMinSize")
	(:arguments (_obj (ffi:c-pointer NIL))
		(_w (ffi:c-pointer NIL))
		(_h (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxSizer_RecalcSizes
	(:name "wxSizer_RecalcSizes")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxSizer_CalcMin
	(:name "wxSizer_CalcMin")
	(:arguments (_obj (ffi:c-pointer NIL))
		(_w (ffi:c-pointer NIL))
		(_h (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxSizer_Layout
	(:name "wxSizer_Layout")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxSizer_Fit
	(:name "wxSizer_Fit")
	(:arguments (_obj (ffi:c-pointer NIL))
		(window (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxSizer_SetSizeHints
	(:name "wxSizer_SetSizeHints")
	(:arguments (_obj (ffi:c-pointer NIL))
		(window (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxSizer_GetChildren
	(:name "wxSizer_GetChildren")
	(:arguments (_obj (ffi:c-pointer NIL))
		(_res (ffi:c-pointer NIL))
		(_cnt ffi:int))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxSizer_SetDimension
	(:name "wxSizer_SetDimension")
	(:arguments (_obj (ffi:c-pointer NIL))
		(x ffi:int)
		(y ffi:int)
		(width ffi:int)
		(height ffi:int))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxGridSizer_Create
	(:name "wxGridSizer_Create")
	(:arguments (rows ffi:int)
		(cols ffi:int)
		(vgap ffi:int)
		(hgap ffi:int))
	(:return-type (ffi:c-pointer NIL))
	(:library +library-name+))

(ffi:def-call-out wxGridSizer_RecalcSizes
	(:name "wxGridSizer_RecalcSizes")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxGridSizer_CalcMin
	(:name "wxGridSizer_CalcMin")
	(:arguments (_obj (ffi:c-pointer NIL))
		(_w (ffi:c-pointer NIL))
		(_h (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxGridSizer_SetCols
	(:name "wxGridSizer_SetCols")
	(:arguments (_obj (ffi:c-pointer NIL))
		(cols ffi:int))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxGridSizer_SetRows
	(:name "wxGridSizer_SetRows")
	(:arguments (_obj (ffi:c-pointer NIL))
		(rows ffi:int))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxGridSizer_SetVGap
	(:name "wxGridSizer_SetVGap")
	(:arguments (_obj (ffi:c-pointer NIL))
		(gap ffi:int))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxGridSizer_SetHGap
	(:name "wxGridSizer_SetHGap")
	(:arguments (_obj (ffi:c-pointer NIL))
		(gap ffi:int))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxGridSizer_GetCols
	(:name "wxGridSizer_GetCols")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxGridSizer_GetRows
	(:name "wxGridSizer_GetRows")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxGridSizer_GetVGap
	(:name "wxGridSizer_GetVGap")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxGridSizer_GetHGap
	(:name "wxGridSizer_GetHGap")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxFlexGridSizer_Create
	(:name "wxFlexGridSizer_Create")
	(:arguments (rows ffi:int)
		(cols ffi:int)
		(vgap ffi:int)
		(hgap ffi:int))
	(:return-type (ffi:c-pointer NIL))
	(:library +library-name+))

(ffi:def-call-out wxFlexGridSizer_RecalcSizes
	(:name "wxFlexGridSizer_RecalcSizes")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxFlexGridSizer_CalcMin
	(:name "wxFlexGridSizer_CalcMin")
	(:arguments (_obj (ffi:c-pointer NIL))
		(_w (ffi:c-pointer NIL))
		(_h (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxFlexGridSizer_AddGrowableRow
	(:name "wxFlexGridSizer_AddGrowableRow")
	(:arguments (_obj (ffi:c-pointer NIL))
		    (idx ffi:uint))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxFlexGridSizer_RemoveGrowableRow
	(:name "wxFlexGridSizer_RemoveGrowableRow")
	(:arguments (_obj (ffi:c-pointer NIL))
		    (idx ffi:uint))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxFlexGridSizer_AddGrowableCol
	(:name "wxFlexGridSizer_AddGrowableCol")
	(:arguments (_obj (ffi:c-pointer NIL))
		(idx ffi:uint))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxFlexGridSizer_RemoveGrowableCol
	(:name "wxFlexGridSizer_RemoveGrowableCol")
	(:arguments (_obj (ffi:c-pointer NIL))
		(idx ffi:uint))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxBoxSizer_Create
	(:name "wxBoxSizer_Create")
	(:arguments (orient ffi:int))
	(:return-type (ffi:c-pointer NIL))
	(:library +library-name+))

(ffi:def-call-out wxBoxSizer_GetOrientation
	(:name "wxBoxSizer_GetOrientation")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxStaticBoxSizer_Create
	(:name "wxStaticBoxSizer_Create")
	(:arguments (box (ffi:c-pointer NIL))
		(orient ffi:int))
	(:return-type (ffi:c-pointer NIL))
	(:library +library-name+))

(ffi:def-call-out wxStaticBoxSizer_GetStaticBox
	(:name "wxStaticBoxSizer_GetStaticBox")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type (ffi:c-pointer NIL))
	(:library +library-name+))

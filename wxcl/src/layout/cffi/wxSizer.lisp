;;;wxSizer.lisp
;;;License  : GNU General Public License (GPL)
;;;Author(s) : Surendra Singhi (surendra@asu.edu) 
;;;Copyright (C) 2005 Surendra Singhi 
;;;See the file LICENSE for information on usage and redistribution.
;;;
;;; $Header$
;;;

(in-package :wxcl-layout)

(defcfun ("wxSizerItem_Create" wxSizerItem_Create) :pointer
  (width :int)
  (height :int)
  (option :int)
  (flag :int)
  (border :int)
  (userData :pointer))

(defcfun ("wxSizerItem_CreateInWindow" wxSizerItem_CreateInWindow) :pointer
  (window :pointer)
  (option :int)
  (flag :int)
  (border :int)
  (userData :pointer))

(defcfun ("wxSizerItem_CreateInSizer" wxSizerItem_CreateInSizer) :pointer
  (sizer :pointer)
  (option :int)
  (flag :int)
  (border :int)
  (userData :pointer))

(defcfun ("wxSizerItem_GetSize" wxSizerItem_GetSize) :void
  (_obj :pointer)
  (_w :int)
  (_h :int))

(defcfun ("wxSizerItem_CalcMin" wxSizerItem_CalcMin) :void
  (_obj :pointer)
  (_w :int)
  (_h :int))

(defcfun ("wxSizerItem_SetDimension" wxSizerItem_SetDimension) :void
  (_obj :pointer)
  (_x :int)
  (_y :int)
  (_w :int)
  (_h :int))

(defcfun ("wxSizerItem_GetMinSize" wxSizerItem_GetMinSize) :void
  (_obj :pointer)
  (_w :int)
  (_h :int))

(defcfun ("wxSizerItem_SetRatio" wxSizerItem_SetRatio) :void
  (_obj :pointer)
  (width :int)
  (height :int))

(defcfun ("wxSizerItem_SetFloatRatio" wxSizerItem_SetFloatRatio) :void
  (_obj :pointer)
  (ratio :float))

(defcfun ("wxSizerItem_GetRatio" wxSizerItem_GetRatio) :float
  (_obj :pointer))

(defcfun ("wxSizerItem_IsWindow" wxSizerItem_IsWindow) :int
  (_obj :pointer))

(defcfun ("wxSizerItem_IsSizer" wxSizerItem_IsSizer) :int
  (_obj :pointer))

(defcfun ("wxSizerItem_IsSpacer" wxSizerItem_IsSpacer) :int
  (_obj :pointer))

(defcfun ("wxSizerItem_SetInitSize" wxSizerItem_SetInitSize) :void
  (_obj :pointer)
  (x :int)
  (y :int))

(defcfun ("wxSizerItem_SetFlag" wxSizerItem_SetFlag) :void
  (_obj :pointer)
  (flag :int))

(defcfun ("wxSizerItem_SetBorder" wxSizerItem_SetBorder) :void
  (_obj :pointer)
  (border :int))

(defcfun ("wxSizerItem_GetWindow" wxSizerItem_GetWindow) :pointer
  (_obj :pointer))

(defcfun ("wxSizerItem_SetWindow" wxSizerItem_SetWindow) :void
  (_obj :pointer)
  (window :pointer))

(defcfun ("wxSizerItem_GetSizer" wxSizerItem_GetSizer) :pointer
  (_obj :pointer))

(defcfun ("wxSizerItem_SetSizer" wxSizerItem_SetSizer) :void
  (_obj :pointer)
  (sizer :pointer))

(defcfun ("wxSizerItem_GetFlag" wxSizerItem_GetFlag) :int
  (_obj :pointer))

(defcfun ("wxSizerItem_GetBorder" wxSizerItem_GetBorder) :int
  (_obj :pointer))

(defcfun ("wxSizerItem_GetUserData" wxSizerItem_GetUserData) :pointer
  (_obj :pointer))

(defcfun ("wxSizerItem_GetPosition" wxSizerItem_GetPosition) :void
  (_obj :pointer)
  (_x :pointer)
  (_y :pointer))

(defcfun ("wxSizer_AddWindow" wxSizer_AddWindow) :void
  (_obj :pointer)
  (window :pointer)
  (option :int)
  (flag :int)
  (border :int)
  (userData :pointer))

(defcfun ("wxSizer_AddSizer" wxSizer_AddSizer) :void
  (_obj :pointer)
  (sizer :pointer)
  (option :int)
  (flag :int)
  (border :int)
  (userData :pointer))

(defcfun ("wxSizer_Add" wxSizer_Add) :void
  (_obj :pointer)
  (width :int)
  (height :int)
  (option :int)
  (flag :int)
  (border :int)
  (userData :pointer))

(defcfun ("wxSizer_InsertWindow" wxSizer_InsertWindow) :void
  (_obj :pointer)
  (before :int)
  (window :pointer)
  (option :int)
  (flag :int)
  (border :int)
  (userData :pointer))

(defcfun ("wxSizer_InsertSizer" wxSizer_InsertSizer) :void
  (_obj :pointer)
  (before :int)
  (sizer :pointer)
  (option :int)
  (flag :int)
  (border :int)
  (userData :pointer))

(defcfun ("wxSizer_Insert" wxSizer_Insert) :void
  (_obj :pointer)
  (before :int)
  (width :int)
  (height :int)
  (option :int)
  (flag :int)
  (border :int)
  (userData :pointer))

(defcfun ("wxSizer_PrependWindow" wxSizer_PrependWindow) :void
  (_obj :pointer)
  (window :pointer)
  (option :int)
  (flag :int)
  (border :int)
  (userData :pointer))

(defcfun ("wxSizer_PrependSizer" wxSizer_PrependSizer) :void
  (_obj :pointer)
  (sizer :pointer)
  (option :int)
  (flag :int)
  (border :int)
  (userData :pointer))

(defcfun ("wxSizer_Prepend" wxSizer_Prepend) :void
  (_obj :pointer)
  (width :int)
  (height :int)
  (option :int)
  (flag :int)
  (border :int)
  (userData :pointer))

(defcfun ("wxSizer_DetachWindow" wxSizer_DetachWindow) :int
  (_obj :pointer)
  (window :pointer))

(defcfun ("wxSizer_DetachSizer" wxSizer_DetachSizer) :int
  (_obj :pointer)
  (sizer :pointer))

(defcfun ("wxSizer_Detach" wxSizer_Detach) :int
  (_obj :pointer)
  (pos :int))

(defcfun ("wxSizer_SetMinSize" wxSizer_SetMinSize) :void
  (_obj :pointer)
  (width :int)
  (height :int))

(defcfun ("wxSizer_SetItemMinSizeWindow" wxSizer_SetItemMinSizeWindow) :void
  (_obj :pointer)
  (window :pointer)
  (width :int)
  (height :int))

(defcfun ("wxSizer_SetItemMinSizeSizer" wxSizer_SetItemMinSizeSizer) :void
  (_obj :pointer)
  (sizer :pointer)
  (width :int)
  (height :int))

(defcfun ("wxSizer_SetItemMinSize" wxSizer_SetItemMinSize) :void
  (_obj :pointer)
  (pos :int)
  (width :int)
  (height :int))

(defcfun ("wxSizer_GetSize" wxSizer_GetSize) :void
  (_obj :pointer)
  (_w :pointer)
  (_h :pointer))

(defcfun ("wxSizer_GetPosition" wxSizer_GetPosition) :void
  (_obj :pointer)
  (_x :pointer)
  (_y :pointer))

(defcfun ("wxSizer_GetMinSize" wxSizer_GetMinSize) :void
  (_obj :pointer)
  (_w :pointer)
  (_h :pointer))

(defcfun ("wxSizer_RecalcSizes" wxSizer_RecalcSizes) :void
  (_obj :pointer))

(defcfun ("wxSizer_CalcMin" wxSizer_CalcMin) :void
  (_obj :pointer)
  (_w :pointer)
  (_h :pointer))

(defcfun ("wxSizer_Layout" wxSizer_Layout) :void
  (_obj :pointer))

(defcfun ("wxSizer_Fit" wxSizer_Fit) :void
  (_obj :pointer)
  (window :pointer))

(defcfun ("wxSizer_SetSizeHints" wxSizer_SetSizeHints) :void
  (_obj :pointer)
  (window :pointer))

(defcfun ("wxSizer_GetChildren" wxSizer_GetChildren) :int
  (_obj :pointer)
  (_res :pointer)
  (_cnt :int))

(defcfun ("wxSizer_SetDimension" wxSizer_SetDimension) :void
  (_obj :pointer)
  (x :int)
  (y :int)
  (width :int)
  (height :int))

(defcfun ("wxGridSizer_Create" wxGridSizer_Create) :pointer
  (rows :int)
  (cols :int)
  (vgap :int)
  (hgap :int))

(defcfun ("wxGridSizer_RecalcSizes" wxGridSizer_RecalcSizes) :void
  (_obj :pointer))

(defcfun ("wxGridSizer_CalcMin" wxGridSizer_CalcMin) :void
  (_obj :pointer)
  (_w :pointer)
  (_h :pointer))

(defcfun ("wxGridSizer_SetCols" wxGridSizer_SetCols) :void
  (_obj :pointer)
  (cols :int))

(defcfun ("wxGridSizer_SetRows" wxGridSizer_SetRows) :void
  (_obj :pointer)
  (rows :int))

(defcfun ("wxGridSizer_SetVGap" wxGridSizer_SetVGap) :void
  (_obj :pointer)
  (gap :int))

(defcfun ("wxGridSizer_SetHGap" wxGridSizer_SetHGap) :void
  (_obj :pointer)
  (gap :int))

(defcfun ("wxGridSizer_GetCols" wxGridSizer_GetCols) :int
  (_obj :pointer))

(defcfun ("wxGridSizer_GetRows" wxGridSizer_GetRows) :int
  (_obj :pointer))

(defcfun ("wxGridSizer_GetVGap" wxGridSizer_GetVGap) :int
  (_obj :pointer))

(defcfun ("wxGridSizer_GetHGap" wxGridSizer_GetHGap) :int
  (_obj :pointer))

(defcfun ("wxFlexGridSizer_Create" wxFlexGridSizer_Create) :pointer
  (rows :int)
  (cols :int)
  (vgap :int)
  (hgap :int))

(defcfun ("wxFlexGridSizer_RecalcSizes" wxFlexGridSizer_RecalcSizes) :void
  (_obj :pointer))

(defcfun ("wxFlexGridSizer_CalcMin" wxFlexGridSizer_CalcMin) :void
  (_obj :pointer)
  (_w :pointer)
  (_h :pointer))

(defcfun ("wxFlexGridSizer_AddGrowableRow" wxFlexGridSizer_AddGrowableRow) :void
  (_obj :pointer)
  (idx :pointer))

(defcfun ("wxFlexGridSizer_RemoveGrowableRow" wxFlexGridSizer_RemoveGrowableRow) :void
  (_obj :pointer)
  (idx :pointer))

(defcfun ("wxFlexGridSizer_AddGrowableCol" wxFlexGridSizer_AddGrowableCol) :void
  (_obj :pointer)
  (idx :pointer))

(defcfun ("wxFlexGridSizer_RemoveGrowableCol" wxFlexGridSizer_RemoveGrowableCol) :void
  (_obj :pointer)
  (idx :pointer))

(defcfun ("wxBoxSizer_Create" wxBoxSizer_Create) :pointer
  (orient :int))

(defcfun ("wxBoxSizer_GetOrientation" wxBoxSizer_GetOrientation) :int
  (_obj :pointer))

(defcfun ("wxStaticBoxSizer_Create" wxStaticBoxSizer_Create) :pointer
  (box :pointer)
  (orient :int))

(defcfun ("wxStaticBoxSizer_GetStaticBox" wxStaticBoxSizer_GetStaticBox) :pointer
  (_obj :pointer))

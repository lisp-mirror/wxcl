;;;wxPrintDialog.lisp
;;;License  : GNU General Public License (GPL)
;;;Author(s) : Surendra Singhi (surendra@asu.edu) 
;;;Copyright (C) 2005 Surendra Singhi 
;;;See the file LICENSE for information on usage and redistribution.
;;;
;;; $Header$
;;;

(defpackage :wxPrintDlg
  (:use :common-lisp :ffi :wxCL)
  (:export
	:wxPrintDialog_Create
	:wxPrintDialog_GetPrintData
	:wxPrintDialog_GetPrintDC
	:wxPageSetupDialog_Create
	:wxPageSetupDialog_GetPageSetupData
	:wxPageSetupDialogData_Create
	:wxPageSetupDialogData_CreateFromData
	:wxPageSetupDialogData_Delete
	:wxPageSetupDialogData_GetPaperSize
	:wxPageSetupDialogData_GetPaperId
	:wxPageSetupDialogData_GetMinMarginTopLeft
	:wxPageSetupDialogData_GetMinMarginBottomRight
	:wxPageSetupDialogData_GetMarginTopLeft
	:wxPageSetupDialogData_GetMarginBottomRight
	:wxPageSetupDialogData_GetDefaultMinMargins
	:wxPageSetupDialogData_GetEnableMargins
	:wxPageSetupDialogData_GetEnableOrientation
	:wxPageSetupDialogData_GetEnablePaper
	:wxPageSetupDialogData_GetEnablePrinter
	:wxPageSetupDialogData_GetDefaultInfo
	:wxPageSetupDialogData_GetEnableHelp
	:wxPageSetupDialogData_SetPaperSize
	:wxPageSetupDialogData_SetPaperId
	:wxPageSetupDialogData_SetPaperSizeId
	:wxPageSetupDialogData_SetMinMarginTopLeft
	:wxPageSetupDialogData_SetMinMarginBottomRight
	:wxPageSetupDialogData_SetMarginTopLeft
	:wxPageSetupDialogData_SetMarginBottomRight
	:wxPageSetupDialogData_SetDefaultMinMargins
	:wxPageSetupDialogData_SetDefaultInfo
	:wxPageSetupDialogData_EnableMargins
	:wxPageSetupDialogData_EnableOrientation
	:wxPageSetupDialogData_EnablePaper
	:wxPageSetupDialogData_EnablePrinter
	:wxPageSetupDialogData_EnableHelp
	:wxPageSetupDialogData_CalculateIdFromPaperSize
	:wxPageSetupDialogData_CalculatePaperSizeFromId
	:wxPageSetupDialogData_Assign
	:wxPageSetupDialogData_AssignData
	:wxPageSetupDialogData_GetPrintData
	:wxPageSetupDialogData_SetPrintData))

(in-package :wxPrintDlg)

(ffi:default-foreign-language :stdc)

(ffi:def-call-out wxPrintDialog_Create
	(:name "wxPrintDialog_Create")
	(:arguments (parent (ffi:c-pointer NIL))
		(data (ffi:c-pointer NIL)))
	(:return-type (ffi:c-pointer NIL))
	(:library +library-name+))

(ffi:def-call-out wxPrintDialog_GetPrintData
	(:name "wxPrintDialog_GetPrintData")
	(:arguments (_obj (ffi:c-pointer NIL))
		(_ref (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxPrintDialog_GetPrintDC
	(:name "wxPrintDialog_GetPrintDC")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type (ffi:c-pointer NIL))
	(:library +library-name+))

(ffi:def-call-out wxPageSetupDialog_Create
	(:name "wxPageSetupDialog_Create")
	(:arguments (parent (ffi:c-pointer NIL))
		(data (ffi:c-pointer NIL)))
	(:return-type (ffi:c-pointer NIL))
	(:library +library-name+))

(ffi:def-call-out wxPageSetupDialog_GetPageSetupData
	(:name "wxPageSetupDialog_GetPageSetupData")
	(:arguments (_obj (ffi:c-pointer NIL))
		(_ref (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxPageSetupDialogData_Create
	(:name "wxPageSetupDialogData_Create")
	(:return-type (ffi:c-pointer NIL))
	(:library +library-name+))

(ffi:def-call-out wxPageSetupDialogData_CreateFromData
	(:name "wxPageSetupDialogData_CreateFromData")
	(:arguments (printData (ffi:c-pointer NIL)))
	(:return-type (ffi:c-pointer NIL))
	(:library +library-name+))

(ffi:def-call-out wxPageSetupDialogData_Delete
	(:name "wxPageSetupDialogData_Delete")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxPageSetupDialogData_GetPaperSize
	(:name "wxPageSetupDialogData_GetPaperSize")
	(:arguments (_obj (ffi:c-pointer NIL))
		(w (ffi:c-pointer NIL))
		(h (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxPageSetupDialogData_GetPaperId
	(:name "wxPageSetupDialogData_GetPaperId")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxPageSetupDialogData_GetMinMarginTopLeft
	(:name "wxPageSetupDialogData_GetMinMarginTopLeft")
	(:arguments (_obj (ffi:c-pointer NIL))
		(x (ffi:c-pointer NIL))
		(y (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxPageSetupDialogData_GetMinMarginBottomRight
	(:name "wxPageSetupDialogData_GetMinMarginBottomRight")
	(:arguments (_obj (ffi:c-pointer NIL))
		(x (ffi:c-pointer NIL))
		(y (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxPageSetupDialogData_GetMarginTopLeft
	(:name "wxPageSetupDialogData_GetMarginTopLeft")
	(:arguments (_obj (ffi:c-pointer NIL))
		(x (ffi:c-pointer NIL))
		(y (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxPageSetupDialogData_GetMarginBottomRight
	(:name "wxPageSetupDialogData_GetMarginBottomRight")
	(:arguments (_obj (ffi:c-pointer NIL))
		(x (ffi:c-pointer NIL))
		(y (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxPageSetupDialogData_GetDefaultMinMargins
	(:name "wxPageSetupDialogData_GetDefaultMinMargins")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxPageSetupDialogData_GetEnableMargins
	(:name "wxPageSetupDialogData_GetEnableMargins")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxPageSetupDialogData_GetEnableOrientation
	(:name "wxPageSetupDialogData_GetEnableOrientation")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxPageSetupDialogData_GetEnablePaper
	(:name "wxPageSetupDialogData_GetEnablePaper")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxPageSetupDialogData_GetEnablePrinter
	(:name "wxPageSetupDialogData_GetEnablePrinter")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxPageSetupDialogData_GetDefaultInfo
	(:name "wxPageSetupDialogData_GetDefaultInfo")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxPageSetupDialogData_GetEnableHelp
	(:name "wxPageSetupDialogData_GetEnableHelp")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxPageSetupDialogData_SetPaperSize
	(:name "wxPageSetupDialogData_SetPaperSize")
	(:arguments (_obj (ffi:c-pointer NIL))
		(w ffi:int)
		(h ffi:int))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxPageSetupDialogData_SetPaperId
	(:name "wxPageSetupDialogData_SetPaperId")
	(:arguments (_obj (ffi:c-pointer NIL))
		(id (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxPageSetupDialogData_SetPaperSizeId
	(:name "wxPageSetupDialogData_SetPaperSizeId")
	(:arguments (_obj (ffi:c-pointer NIL))
		(id ffi:int))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxPageSetupDialogData_SetMinMarginTopLeft
	(:name "wxPageSetupDialogData_SetMinMarginTopLeft")
	(:arguments (_obj (ffi:c-pointer NIL))
		(x ffi:int)
		(y ffi:int))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxPageSetupDialogData_SetMinMarginBottomRight
	(:name "wxPageSetupDialogData_SetMinMarginBottomRight")
	(:arguments (_obj (ffi:c-pointer NIL))
		(x ffi:int)
		(y ffi:int))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxPageSetupDialogData_SetMarginTopLeft
	(:name "wxPageSetupDialogData_SetMarginTopLeft")
	(:arguments (_obj (ffi:c-pointer NIL))
		(x ffi:int)
		(y ffi:int))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxPageSetupDialogData_SetMarginBottomRight
	(:name "wxPageSetupDialogData_SetMarginBottomRight")
	(:arguments (_obj (ffi:c-pointer NIL))
		(x ffi:int)
		(y ffi:int))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxPageSetupDialogData_SetDefaultMinMargins
	(:name "wxPageSetupDialogData_SetDefaultMinMargins")
	(:arguments (_obj (ffi:c-pointer NIL))
		(flag ffi:int))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxPageSetupDialogData_SetDefaultInfo
	(:name "wxPageSetupDialogData_SetDefaultInfo")
	(:arguments (_obj (ffi:c-pointer NIL))
		(flag ffi:int))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxPageSetupDialogData_EnableMargins
	(:name "wxPageSetupDialogData_EnableMargins")
	(:arguments (_obj (ffi:c-pointer NIL))
		(flag ffi:int))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxPageSetupDialogData_EnableOrientation
	(:name "wxPageSetupDialogData_EnableOrientation")
	(:arguments (_obj (ffi:c-pointer NIL))
		(flag ffi:int))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxPageSetupDialogData_EnablePaper
	(:name "wxPageSetupDialogData_EnablePaper")
	(:arguments (_obj (ffi:c-pointer NIL))
		(flag ffi:int))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxPageSetupDialogData_EnablePrinter
	(:name "wxPageSetupDialogData_EnablePrinter")
	(:arguments (_obj (ffi:c-pointer NIL))
		(flag ffi:int))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxPageSetupDialogData_EnableHelp
	(:name "wxPageSetupDialogData_EnableHelp")
	(:arguments (_obj (ffi:c-pointer NIL))
		(flag ffi:int))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxPageSetupDialogData_CalculateIdFromPaperSize
	(:name "wxPageSetupDialogData_CalculateIdFromPaperSize")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxPageSetupDialogData_CalculatePaperSizeFromId
	(:name "wxPageSetupDialogData_CalculatePaperSizeFromId")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxPageSetupDialogData_Assign
	(:name "wxPageSetupDialogData_Assign")
	(:arguments (_obj (ffi:c-pointer NIL))
		(data (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxPageSetupDialogData_AssignData
	(:name "wxPageSetupDialogData_AssignData")
	(:arguments (_obj (ffi:c-pointer NIL))
		(data (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxPageSetupDialogData_GetPrintData
	(:name "wxPageSetupDialogData_GetPrintData")
	(:arguments (_obj (ffi:c-pointer NIL))
		(_ref (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxPageSetupDialogData_SetPrintData
	(:name "wxPageSetupDialogData_SetPrintData")
	(:arguments (_obj (ffi:c-pointer NIL))
		(printData (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

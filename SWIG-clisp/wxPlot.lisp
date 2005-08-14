;;;wxPlot.lisp
;;;License  : GNU General Public License (GPL)
;;;Author(s) : Surendra Singhi (surendra@asu.edu) 
;;;Copyright (C) 2005 Surendra Singhi 
;;;See the file LICENSE for information on usage and redistribution.
;;;
;;; $Header$
;;;
;; This is an automatically generated file. 
;;Make changes as you feel are necessary (but remember if you try to regenerate this file, your changes will be lost). 

(defpackage :wxPlot
  (:use :common-lisp :ffi)
  (:export
	:wxPlotWindow_Create
	:wxPlotWindow_Add
	:wxPlotWindow_Delete
	:wxPlotWindow_GetCount
	:wxPlotWindow_GetAt
	:wxPlotWindow_SetCurrent
	:wxPlotWindow_GetCurrent
	:wxPlotWindow_AddOnOff
	:wxPlotWindow_DeleteOnOff
	:wxPlotWindow_GetOnOffCurveCount
	:wxPlotWindow_GetOnOffCurveAt
	:wxPlotWindow_Move
	:wxPlotWindow_Enlarge
	:wxPlotWindow_SetUnitsPerValue
	:wxPlotWindow_GetUnitsPerValue
	:wxPlotWindow_SetZoom
	:wxPlotWindow_GetZoom
	:wxPlotWindow_SetScrollOnThumbRelease
	:wxPlotWindow_GetScrollOnThumbRelease
	:wxPlotWindow_SetEnlargeAroundWindowCentre
	:wxPlotWindow_GetEnlargeAroundWindowCentre
	:wxPlotWindow_RedrawEverything
	:wxPlotWindow_RedrawXAxis
	:wxPlotWindow_RedrawYAxis
	:wxPlotWindow_ResetScrollbar
	:wxPlotOnOffCurve_Create
	:wxPlotOnOffCurve_Delete
	:wxPlotOnOffCurve_GetStartX
	:wxPlotOnOffCurve_GetEndX
	:wxPlotOnOffCurve_SetOffsetY
	:wxPlotOnOffCurve_GetOffsetY
	:wxPlotOnOffCurve_Add
	:wxPlotOnOffCurve_GetCount
	:wxPlotOnOffCurve_GetOn
	:wxPlotOnOffCurve_GetOff
	:wxPlotOnOffCurve_GetClientData
	:wxPlotOnOffCurve_GetAt
	:wxPlotOnOffCurve_DrawOnLine
	:wxPlotOnOffCurve_DrawOffLine
	:ELJPlotCurve_Create
	:ELJPlotCurve_Delete
	:ELJPlotCurve_SetStartY
	:ELJPlotCurve_GetStartY
	:ELJPlotCurve_SetEndY
	:ELJPlotCurve_GetEndY
	:ELJPlotCurve_SetOffsetY
	:ELJPlotCurve_GetOffsetY
	:ELJPlotCurve_SetPenNormal
	:ELJPlotCurve_SetPenSelected
	:wxPlotEvent_GetCurve
	:wxPlotEvent_GetZoom
	:wxPlotEvent_SetZoom
	:wxPlotEvent_GetPosition
	:wxPlotEvent_SetPosition))

(in-package :wxPlot)

(ffi:def-call-out wxPlotWindow_Create
	(:name "wxPlotWindow_Create")
	(:arguments (parent (ffi:c-pointer NIL))
		(id ffi:int)
		(x ffi:int)
		(y ffi:int)
		(w ffi:int)
		(h ffi:int)
		(flags ffi:int))
	(:return-type (ffi:c-pointer NIL))
	(:library +library-name+))

(ffi:def-call-out wxPlotWindow_Add
	(:name "wxPlotWindow_Add")
	(:arguments (_obj (ffi:c-pointer NIL))
		(curve (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxPlotWindow_Delete
	(:name "wxPlotWindow_Delete")
	(:arguments (_obj (ffi:c-pointer NIL))
		(curve (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxPlotWindow_GetCount
	(:name "wxPlotWindow_GetCount")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxPlotWindow_GetAt
	(:name "wxPlotWindow_GetAt")
	(:arguments (_obj (ffi:c-pointer NIL))
		(n ffi:int))
	(:return-type (ffi:c-pointer NIL))
	(:library +library-name+))

(ffi:def-call-out wxPlotWindow_SetCurrent
	(:name "wxPlotWindow_SetCurrent")
	(:arguments (_obj (ffi:c-pointer NIL))
		(current (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxPlotWindow_GetCurrent
	(:name "wxPlotWindow_GetCurrent")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type (ffi:c-pointer NIL))
	(:library +library-name+))

(ffi:def-call-out wxPlotWindow_AddOnOff
	(:name "wxPlotWindow_AddOnOff")
	(:arguments (_obj (ffi:c-pointer NIL))
		(curve (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxPlotWindow_DeleteOnOff
	(:name "wxPlotWindow_DeleteOnOff")
	(:arguments (_obj (ffi:c-pointer NIL))
		(curve (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxPlotWindow_GetOnOffCurveCount
	(:name "wxPlotWindow_GetOnOffCurveCount")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxPlotWindow_GetOnOffCurveAt
	(:name "wxPlotWindow_GetOnOffCurveAt")
	(:arguments (_obj (ffi:c-pointer NIL))
		(n ffi:int))
	(:return-type (ffi:c-pointer NIL))
	(:library +library-name+))

(ffi:def-call-out wxPlotWindow_Move
	(:name "wxPlotWindow_Move")
	(:arguments (_obj (ffi:c-pointer NIL))
		(curve (ffi:c-pointer NIL))
		(pixels_up ffi:int))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxPlotWindow_Enlarge
	(:name "wxPlotWindow_Enlarge")
	(:arguments (_obj (ffi:c-pointer NIL))
		(curve (ffi:c-pointer NIL))
		(factor DOUBLE-FLOAT))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxPlotWindow_SetUnitsPerValue
	(:name "wxPlotWindow_SetUnitsPerValue")
	(:arguments (_obj (ffi:c-pointer NIL))
		(upv DOUBLE-FLOAT))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxPlotWindow_GetUnitsPerValue
	(:name "wxPlotWindow_GetUnitsPerValue")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type DOUBLE-FLOAT)
	(:library +library-name+))

(ffi:def-call-out wxPlotWindow_SetZoom
	(:name "wxPlotWindow_SetZoom")
	(:arguments (_obj (ffi:c-pointer NIL))
		(zoom DOUBLE-FLOAT))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxPlotWindow_GetZoom
	(:name "wxPlotWindow_GetZoom")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type DOUBLE-FLOAT)
	(:library +library-name+))

(ffi:def-call-out wxPlotWindow_SetScrollOnThumbRelease
	(:name "wxPlotWindow_SetScrollOnThumbRelease")
	(:arguments (_obj (ffi:c-pointer NIL))
		(scrollOnThumbRelease ffi:int))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxPlotWindow_GetScrollOnThumbRelease
	(:name "wxPlotWindow_GetScrollOnThumbRelease")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxPlotWindow_SetEnlargeAroundWindowCentre
	(:name "wxPlotWindow_SetEnlargeAroundWindowCentre")
	(:arguments (_obj (ffi:c-pointer NIL))
		(enlargeAroundWindowCentre ffi:int))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxPlotWindow_GetEnlargeAroundWindowCentre
	(:name "wxPlotWindow_GetEnlargeAroundWindowCentre")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxPlotWindow_RedrawEverything
	(:name "wxPlotWindow_RedrawEverything")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxPlotWindow_RedrawXAxis
	(:name "wxPlotWindow_RedrawXAxis")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxPlotWindow_RedrawYAxis
	(:name "wxPlotWindow_RedrawYAxis")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxPlotWindow_ResetScrollbar
	(:name "wxPlotWindow_ResetScrollbar")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxPlotOnOffCurve_Create
	(:name "wxPlotOnOffCurve_Create")
	(:arguments (offsetY ffi:int))
	(:return-type (ffi:c-pointer NIL))
	(:library +library-name+))

(ffi:def-call-out wxPlotOnOffCurve_Delete
	(:name "wxPlotOnOffCurve_Delete")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxPlotOnOffCurve_GetStartX
	(:name "wxPlotOnOffCurve_GetStartX")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxPlotOnOffCurve_GetEndX
	(:name "wxPlotOnOffCurve_GetEndX")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxPlotOnOffCurve_SetOffsetY
	(:name "wxPlotOnOffCurve_SetOffsetY")
	(:arguments (_obj (ffi:c-pointer NIL))
		(offsetY ffi:int))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxPlotOnOffCurve_GetOffsetY
	(:name "wxPlotOnOffCurve_GetOffsetY")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxPlotOnOffCurve_Add
	(:name "wxPlotOnOffCurve_Add")
	(:arguments (_obj (ffi:c-pointer NIL))
		(on ffi:int)
		(off ffi:int)
		(clientData (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxPlotOnOffCurve_GetCount
	(:name "wxPlotOnOffCurve_GetCount")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxPlotOnOffCurve_GetOn
	(:name "wxPlotOnOffCurve_GetOn")
	(:arguments (_obj (ffi:c-pointer NIL))
		(index ffi:int))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxPlotOnOffCurve_GetOff
	(:name "wxPlotOnOffCurve_GetOff")
	(:arguments (_obj (ffi:c-pointer NIL))
		(index ffi:int))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxPlotOnOffCurve_GetClientData
	(:name "wxPlotOnOffCurve_GetClientData")
	(:arguments (_obj (ffi:c-pointer NIL))
		(index ffi:int))
	(:return-type (ffi:c-pointer NIL))
	(:library +library-name+))

(ffi:def-call-out wxPlotOnOffCurve_GetAt
	(:name "wxPlotOnOffCurve_GetAt")
	(:arguments (_obj (ffi:c-pointer NIL))
		(index ffi:int))
	(:return-type (ffi:c-pointer NIL))
	(:library +library-name+))

(ffi:def-call-out wxPlotOnOffCurve_DrawOnLine
	(:name "wxPlotOnOffCurve_DrawOnLine")
	(:arguments (_obj (ffi:c-pointer NIL))
		(dc (ffi:c-pointer NIL))
		(y ffi:int)
		(start ffi:int)
		(end ffi:int)
		(clientData (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxPlotOnOffCurve_DrawOffLine
	(:name "wxPlotOnOffCurve_DrawOffLine")
	(:arguments (_obj (ffi:c-pointer NIL))
		(dc (ffi:c-pointer NIL))
		(y ffi:int)
		(start ffi:int)
		(end ffi:int))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out ELJPlotCurve_Create
	(:name "ELJPlotCurve_Create")
	(:arguments (_obj (ffi:c-pointer NIL))
		(_str (ffi:c-pointer NIL))
		(_end (ffi:c-pointer NIL))
		(_y (ffi:c-pointer NIL))
		(offsetY ffi:int)
		(startY DOUBLE-FLOAT)
		(endY DOUBLE-FLOAT))
	(:return-type (ffi:c-pointer NIL))
	(:library +library-name+))

(ffi:def-call-out ELJPlotCurve_Delete
	(:name "ELJPlotCurve_Delete")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out ELJPlotCurve_SetStartY
	(:name "ELJPlotCurve_SetStartY")
	(:arguments (_obj (ffi:c-pointer NIL))
		(startY DOUBLE-FLOAT))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out ELJPlotCurve_GetStartY
	(:name "ELJPlotCurve_GetStartY")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type DOUBLE-FLOAT)
	(:library +library-name+))

(ffi:def-call-out ELJPlotCurve_SetEndY
	(:name "ELJPlotCurve_SetEndY")
	(:arguments (_obj (ffi:c-pointer NIL))
		(endY DOUBLE-FLOAT))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out ELJPlotCurve_GetEndY
	(:name "ELJPlotCurve_GetEndY")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type DOUBLE-FLOAT)
	(:library +library-name+))

(ffi:def-call-out ELJPlotCurve_SetOffsetY
	(:name "ELJPlotCurve_SetOffsetY")
	(:arguments (_obj (ffi:c-pointer NIL))
		(offsetY ffi:int))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out ELJPlotCurve_GetOffsetY
	(:name "ELJPlotCurve_GetOffsetY")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out ELJPlotCurve_SetPenNormal
	(:name "ELJPlotCurve_SetPenNormal")
	(:arguments (_obj (ffi:c-pointer NIL))
		(pen (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out ELJPlotCurve_SetPenSelected
	(:name "ELJPlotCurve_SetPenSelected")
	(:arguments (_obj (ffi:c-pointer NIL))
		(pen (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxPlotEvent_GetCurve
	(:name "wxPlotEvent_GetCurve")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type (ffi:c-pointer NIL))
	(:library +library-name+))

(ffi:def-call-out wxPlotEvent_GetZoom
	(:name "wxPlotEvent_GetZoom")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type DOUBLE-FLOAT)
	(:library +library-name+))

(ffi:def-call-out wxPlotEvent_SetZoom
	(:name "wxPlotEvent_SetZoom")
	(:arguments (_obj (ffi:c-pointer NIL))
		(zoom DOUBLE-FLOAT))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxPlotEvent_GetPosition
	(:name "wxPlotEvent_GetPosition")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxPlotEvent_SetPosition
	(:name "wxPlotEvent_SetPosition")
	(:arguments (_obj (ffi:c-pointer NIL))
		(pos ffi:int))
	(:return-type NIL)
	(:library +library-name+))

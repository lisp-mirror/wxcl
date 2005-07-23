;;;wxDc.lisp
;;;License   : BSD-style
;;;Author(s) : Surendra Singhi (surendra@asu.edu) 
;;;Copyright (C) 2005 Surendra Singhi 
;;;See the file LICENSE for information on usage and redistribution.
;;;
;;; $Header$
;;;
;; This is an automatically generated file. 
;;Make changes as you feel are necessary (but remember if you try to regenerate this file, your changes will be lost). 

(defpackage "wxDc"
  (:use :common-lisp :ffi)
	:wxDC_Delete
	:wxDC_BeginDrawing
	:wxDC_EndDrawing
	:wxDC_FloodFill
	:wxDC_GetPixel
	:wxDC_DrawLine
	:wxDC_CrossHair
	:wxDC_DrawArc
	:wxDC_DrawCheckMark
	:wxDC_DrawEllipticArc
	:wxDC_DrawPoint
	:wxDC_DrawLines
	:wxDC_DrawPolygon
	:wxDC_DrawRectangle
	:wxDC_DrawRoundedRectangle
	:wxDC_DrawCircle
	:wxDC_DrawEllipse
	:wxDC_DrawIcon
	:wxDC_DrawBitmap
	:wxDC_DrawText
	:wxDC_DrawRotatedText
	:wxDC_Blit
	:wxDC_Clear
	:wxDC_StartDoc
	:wxDC_EndDoc
	:wxDC_StartPage
	:wxDC_EndPage
	:wxDC_SetFont
	:wxDC_SetPen
	:wxDC_SetBrush
	:wxDC_SetBackground
	:wxDC_SetBackgroundMode
	:wxDC_SetPalette
	:wxDC_SetClippingRegion
	:wxDC_SetClippingRegionFromRegion
	:wxDC_DestroyClippingRegion
	:wxDC_GetClippingBox
	:wxDC_GetCharHeight
	:wxDC_GetCharWidth
	:wxDC_GetTextExtent
	:wxDC_GetSize
	:wxDC_GetSizeMM
	:wxDC_DeviceToLogicalX
	:wxDC_DeviceToLogicalY
	:wxDC_DeviceToLogicalXRel
	:wxDC_DeviceToLogicalYRel
	:wxDC_LogicalToDeviceX
	:wxDC_LogicalToDeviceY
	:wxDC_LogicalToDeviceXRel
	:wxDC_LogicalToDeviceYRel
	:wxDC_CanDrawBitmap
	:wxDC_CanGetTextExtent
	:wxDC_GetDepth
	:wxDC_GetPPI
	:wxDC_Ok
	:wxDC_GetBackgroundMode
	:wxDC_GetBackground
	:wxDC_GetBrush
	:wxDC_GetFont
	:wxDC_GetPen
	:wxDC_GetTextBackground
	:wxDC_GetTextForeground
	:wxDC_SetTextForeground
	:wxDC_SetTextBackground
	:wxDC_GetMapMode
	:wxDC_SetMapMode
	:wxDC_GetUserScale
	:wxDC_SetUserScale
	:wxDC_GetLogicalScale
	:wxDC_SetLogicalScale
	:wxDC_GetLogicalOrigin
	:wxDC_SetLogicalOrigin
	:wxDC_GetDeviceOrigin
	:wxDC_SetDeviceOrigin
	:wxDC_SetAxisOrientation
	:wxDC_GetLogicalFunction
	:wxDC_SetLogicalFunction
	:wxDC_SetOptimization
	:wxDC_GetOptimization
	:wxDC_CalcBoundingBox
	:wxDC_ResetBoundingBox
	:wxDC_MinX
	:wxDC_MaxX
	:wxDC_MinY
	:wxDC_MaxY
	:wxWindowDC_Create
	:wxWindowDC_Delete
	:wxClientDC_Create
	:wxClientDC_Delete
	:wxPaintDC_Create
	:wxPaintDC_Delete
	:wxMemoryDC_Create
	:wxMemoryDC_CreateCompatible
	:wxMemoryDC_Delete
	:wxMemoryDC_SelectObject
	:wxScreenDC_Create
	:wxScreenDC_Delete
	:wxScreenDC_StartDrawingOnTopOfWin
	:wxScreenDC_StartDrawingOnTop
	:wxScreenDC_EndDrawingOnTop
	:wxMetafileDC_Create
	:wxMetafileDC_Close
	:wxMetafileDC_Delete
	:wxMetafile_Create
	:wxMetafile_SetClipboard
	:wxMetafile_Play
	:wxMetafile_Ok
	:wxMetafile_Delete)

(in-package :wxDc)

(ffi:def-call-out wxDC_Delete
	(:name "wxDC_Delete")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxDC_BeginDrawing
	(:name "wxDC_BeginDrawing")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxDC_EndDrawing
	(:name "wxDC_EndDrawing")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxDC_FloodFill
	(:name "wxDC_FloodFill")
	(:arguments (_obj (ffi:c-pointer NIL))
		(x ffi:int)
		(y ffi:int)
		(col (ffi:c-pointer NIL))
		(style ffi:int))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxDC_GetPixel
	(:name "wxDC_GetPixel")
	(:arguments (_obj (ffi:c-pointer NIL))
		(x ffi:int)
		(y ffi:int)
		(col (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxDC_DrawLine
	(:name "wxDC_DrawLine")
	(:arguments (_obj (ffi:c-pointer NIL))
		(x1 ffi:int)
		(y1 ffi:int)
		(x2 ffi:int)
		(y2 ffi:int))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxDC_CrossHair
	(:name "wxDC_CrossHair")
	(:arguments (_obj (ffi:c-pointer NIL))
		(x ffi:int)
		(y ffi:int))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxDC_DrawArc
	(:name "wxDC_DrawArc")
	(:arguments (_obj (ffi:c-pointer NIL))
		(x1 ffi:int)
		(y1 ffi:int)
		(x2 ffi:int)
		(y2 ffi:int)
		(xc ffi:int)
		(yc ffi:int))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxDC_DrawCheckMark
	(:name "wxDC_DrawCheckMark")
	(:arguments (_obj (ffi:c-pointer NIL))
		(x ffi:int)
		(y ffi:int)
		(width ffi:int)
		(height ffi:int))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxDC_DrawEllipticArc
	(:name "wxDC_DrawEllipticArc")
	(:arguments (_obj (ffi:c-pointer NIL))
		(x ffi:int)
		(y ffi:int)
		(w ffi:int)
		(h ffi:int)
		(sa DOUBLE_FLOAT)
		(ea DOUBLE_FLOAT))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxDC_DrawPoint
	(:name "wxDC_DrawPoint")
	(:arguments (_obj (ffi:c-pointer NIL))
		(x ffi:int)
		(y ffi:int))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxDC_DrawLines
	(:name "wxDC_DrawLines")
	(:arguments (_obj (ffi:c-pointer NIL))
		(n ffi:int)
		(x (ffi:c-pointer NIL))
		(y (ffi:c-pointer NIL))
		(xoffset ffi:int)
		(yoffset ffi:int))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxDC_DrawPolygon
	(:name "wxDC_DrawPolygon")
	(:arguments (_obj (ffi:c-pointer NIL))
		(n ffi:int)
		(x (ffi:c-pointer NIL))
		(y (ffi:c-pointer NIL))
		(xoffset ffi:int)
		(yoffset ffi:int)
		(fillStyle ffi:int))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxDC_DrawRectangle
	(:name "wxDC_DrawRectangle")
	(:arguments (_obj (ffi:c-pointer NIL))
		(x ffi:int)
		(y ffi:int)
		(width ffi:int)
		(height ffi:int))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxDC_DrawRoundedRectangle
	(:name "wxDC_DrawRoundedRectangle")
	(:arguments (_obj (ffi:c-pointer NIL))
		(x ffi:int)
		(y ffi:int)
		(width ffi:int)
		(height ffi:int)
		(radius DOUBLE_FLOAT))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxDC_DrawCircle
	(:name "wxDC_DrawCircle")
	(:arguments (_obj (ffi:c-pointer NIL))
		(x ffi:int)
		(y ffi:int)
		(radius ffi:int))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxDC_DrawEllipse
	(:name "wxDC_DrawEllipse")
	(:arguments (_obj (ffi:c-pointer NIL))
		(x ffi:int)
		(y ffi:int)
		(width ffi:int)
		(height ffi:int))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxDC_DrawIcon
	(:name "wxDC_DrawIcon")
	(:arguments (_obj (ffi:c-pointer NIL))
		(icon (ffi:c-pointer NIL))
		(x ffi:int)
		(y ffi:int))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxDC_DrawBitmap
	(:name "wxDC_DrawBitmap")
	(:arguments (_obj (ffi:c-pointer NIL))
		(bmp (ffi:c-pointer NIL))
		(x ffi:int)
		(y ffi:int)
		(useMask ffi:int))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxDC_DrawText
	(:name "wxDC_DrawText")
	(:arguments (_obj (ffi:c-pointer NIL))
		(text (ffi:c-pointer NIL))
		(x ffi:int)
		(y ffi:int))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxDC_DrawRotatedText
	(:name "wxDC_DrawRotatedText")
	(:arguments (_obj (ffi:c-pointer NIL))
		(text (ffi:c-pointer NIL))
		(x ffi:int)
		(y ffi:int)
		(angle DOUBLE_FLOAT))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxDC_Blit
	(:name "wxDC_Blit")
	(:arguments (_obj (ffi:c-pointer NIL))
		(xdest ffi:int)
		(ydest ffi:int)
		(width ffi:int)
		(height ffi:int)
		(source (ffi:c-pointer NIL))
		(xsrc ffi:int)
		(ysrc ffi:int)
		(rop ffi:int)
		(useMask ffi:int))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxDC_Clear
	(:name "wxDC_Clear")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxDC_StartDoc
	(:name "wxDC_StartDoc")
	(:arguments (_obj (ffi:c-pointer NIL))
		(msg (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxDC_EndDoc
	(:name "wxDC_EndDoc")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxDC_StartPage
	(:name "wxDC_StartPage")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxDC_EndPage
	(:name "wxDC_EndPage")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxDC_SetFont
	(:name "wxDC_SetFont")
	(:arguments (_obj (ffi:c-pointer NIL))
		(font (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxDC_SetPen
	(:name "wxDC_SetPen")
	(:arguments (_obj (ffi:c-pointer NIL))
		(pen (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxDC_SetBrush
	(:name "wxDC_SetBrush")
	(:arguments (_obj (ffi:c-pointer NIL))
		(brush (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxDC_SetBackground
	(:name "wxDC_SetBackground")
	(:arguments (_obj (ffi:c-pointer NIL))
		(brush (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxDC_SetBackgroundMode
	(:name "wxDC_SetBackgroundMode")
	(:arguments (_obj (ffi:c-pointer NIL))
		(mode ffi:int))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxDC_SetPalette
	(:name "wxDC_SetPalette")
	(:arguments (_obj (ffi:c-pointer NIL))
		(palette (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxDC_SetClippingRegion
	(:name "wxDC_SetClippingRegion")
	(:arguments (_obj (ffi:c-pointer NIL))
		(x ffi:int)
		(y ffi:int)
		(width ffi:int)
		(height ffi:int))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxDC_SetClippingRegionFromRegion
	(:name "wxDC_SetClippingRegionFromRegion")
	(:arguments (_obj (ffi:c-pointer NIL))
		(region (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxDC_DestroyClippingRegion
	(:name "wxDC_DestroyClippingRegion")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxDC_GetClippingBox
	(:name "wxDC_GetClippingBox")
	(:arguments (_obj (ffi:c-pointer NIL))
		(x (ffi:c-pointer NIL))
		(y (ffi:c-pointer NIL))
		(w (ffi:c-pointer NIL))
		(h (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxDC_GetCharHeight
	(:name "wxDC_GetCharHeight")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxDC_GetCharWidth
	(:name "wxDC_GetCharWidth")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxDC_GetTextExtent
	(:name "wxDC_GetTextExtent")
	(:arguments (_obj (ffi:c-pointer NIL))
		(string (ffi:c-pointer NIL))
		(x (ffi:c-pointer NIL))
		(y (ffi:c-pointer NIL))
		(descent (ffi:c-pointer NIL))
		(externalLeading (ffi:c-pointer NIL))
		(theFont (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxDC_GetSize
	(:name "wxDC_GetSize")
	(:arguments (_obj (ffi:c-pointer NIL))
		(width (ffi:c-pointer NIL))
		(height (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxDC_GetSizeMM
	(:name "wxDC_GetSizeMM")
	(:arguments (_obj (ffi:c-pointer NIL))
		(width (ffi:c-pointer NIL))
		(height (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxDC_DeviceToLogicalX
	(:name "wxDC_DeviceToLogicalX")
	(:arguments (_obj (ffi:c-pointer NIL))
		(x ffi:int))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxDC_DeviceToLogicalY
	(:name "wxDC_DeviceToLogicalY")
	(:arguments (_obj (ffi:c-pointer NIL))
		(y ffi:int))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxDC_DeviceToLogicalXRel
	(:name "wxDC_DeviceToLogicalXRel")
	(:arguments (_obj (ffi:c-pointer NIL))
		(x ffi:int))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxDC_DeviceToLogicalYRel
	(:name "wxDC_DeviceToLogicalYRel")
	(:arguments (_obj (ffi:c-pointer NIL))
		(y ffi:int))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxDC_LogicalToDeviceX
	(:name "wxDC_LogicalToDeviceX")
	(:arguments (_obj (ffi:c-pointer NIL))
		(x ffi:int))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxDC_LogicalToDeviceY
	(:name "wxDC_LogicalToDeviceY")
	(:arguments (_obj (ffi:c-pointer NIL))
		(y ffi:int))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxDC_LogicalToDeviceXRel
	(:name "wxDC_LogicalToDeviceXRel")
	(:arguments (_obj (ffi:c-pointer NIL))
		(x ffi:int))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxDC_LogicalToDeviceYRel
	(:name "wxDC_LogicalToDeviceYRel")
	(:arguments (_obj (ffi:c-pointer NIL))
		(y ffi:int))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxDC_CanDrawBitmap
	(:name "wxDC_CanDrawBitmap")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxDC_CanGetTextExtent
	(:name "wxDC_CanGetTextExtent")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxDC_GetDepth
	(:name "wxDC_GetDepth")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxDC_GetPPI
	(:name "wxDC_GetPPI")
	(:arguments (_obj (ffi:c-pointer NIL))
		(width (ffi:c-pointer NIL))
		(height (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxDC_Ok
	(:name "wxDC_Ok")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxDC_GetBackgroundMode
	(:name "wxDC_GetBackgroundMode")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxDC_GetBackground
	(:name "wxDC_GetBackground")
	(:arguments (_obj (ffi:c-pointer NIL))
		(_ref (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxDC_GetBrush
	(:name "wxDC_GetBrush")
	(:arguments (_obj (ffi:c-pointer NIL))
		(_ref (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxDC_GetFont
	(:name "wxDC_GetFont")
	(:arguments (_obj (ffi:c-pointer NIL))
		(_ref (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxDC_GetPen
	(:name "wxDC_GetPen")
	(:arguments (_obj (ffi:c-pointer NIL))
		(_ref (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxDC_GetTextBackground
	(:name "wxDC_GetTextBackground")
	(:arguments (_obj (ffi:c-pointer NIL))
		(_ref (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxDC_GetTextForeground
	(:name "wxDC_GetTextForeground")
	(:arguments (_obj (ffi:c-pointer NIL))
		(_ref (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxDC_SetTextForeground
	(:name "wxDC_SetTextForeground")
	(:arguments (_obj (ffi:c-pointer NIL))
		(colour (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxDC_SetTextBackground
	(:name "wxDC_SetTextBackground")
	(:arguments (_obj (ffi:c-pointer NIL))
		(colour (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxDC_GetMapMode
	(:name "wxDC_GetMapMode")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxDC_SetMapMode
	(:name "wxDC_SetMapMode")
	(:arguments (_obj (ffi:c-pointer NIL))
		(mode ffi:int))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxDC_GetUserScale
	(:name "wxDC_GetUserScale")
	(:arguments (_obj (ffi:c-pointer NIL))
		(x (ffi:c-pointer NIL))
		(y (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxDC_SetUserScale
	(:name "wxDC_SetUserScale")
	(:arguments (_obj (ffi:c-pointer NIL))
		(x DOUBLE_FLOAT)
		(y DOUBLE_FLOAT))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxDC_GetLogicalScale
	(:name "wxDC_GetLogicalScale")
	(:arguments (_obj (ffi:c-pointer NIL))
		(x (ffi:c-pointer NIL))
		(y (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxDC_SetLogicalScale
	(:name "wxDC_SetLogicalScale")
	(:arguments (_obj (ffi:c-pointer NIL))
		(x DOUBLE_FLOAT)
		(y DOUBLE_FLOAT))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxDC_GetLogicalOrigin
	(:name "wxDC_GetLogicalOrigin")
	(:arguments (_obj (ffi:c-pointer NIL))
		(x (ffi:c-pointer NIL))
		(y (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxDC_SetLogicalOrigin
	(:name "wxDC_SetLogicalOrigin")
	(:arguments (_obj (ffi:c-pointer NIL))
		(x ffi:int)
		(y ffi:int))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxDC_GetDeviceOrigin
	(:name "wxDC_GetDeviceOrigin")
	(:arguments (_obj (ffi:c-pointer NIL))
		(x (ffi:c-pointer NIL))
		(y (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxDC_SetDeviceOrigin
	(:name "wxDC_SetDeviceOrigin")
	(:arguments (_obj (ffi:c-pointer NIL))
		(x ffi:int)
		(y ffi:int))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxDC_SetAxisOrientation
	(:name "wxDC_SetAxisOrientation")
	(:arguments (_obj (ffi:c-pointer NIL))
		(xLeftRight ffi:int)
		(yBottomUp ffi:int))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxDC_GetLogicalFunction
	(:name "wxDC_GetLogicalFunction")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxDC_SetLogicalFunction
	(:name "wxDC_SetLogicalFunction")
	(:arguments (_obj (ffi:c-pointer NIL))
		(function ffi:int))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxDC_SetOptimization
	(:name "wxDC_SetOptimization")
	(:arguments (_obj (ffi:c-pointer NIL))
		(opt ffi:int))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxDC_GetOptimization
	(:name "wxDC_GetOptimization")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxDC_CalcBoundingBox
	(:name "wxDC_CalcBoundingBox")
	(:arguments (_obj (ffi:c-pointer NIL))
		(x ffi:int)
		(y ffi:int))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxDC_ResetBoundingBox
	(:name "wxDC_ResetBoundingBox")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxDC_MinX
	(:name "wxDC_MinX")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxDC_MaxX
	(:name "wxDC_MaxX")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxDC_MinY
	(:name "wxDC_MinY")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxDC_MaxY
	(:name "wxDC_MaxY")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxWindowDC_Create
	(:name "wxWindowDC_Create")
	(:arguments (win (ffi:c-pointer NIL)))
	(:return-type (ffi:c-pointer NIL))
	(:library +library-name+))

(ffi:def-call-out wxWindowDC_Delete
	(:name "wxWindowDC_Delete")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxClientDC_Create
	(:name "wxClientDC_Create")
	(:arguments (win (ffi:c-pointer NIL)))
	(:return-type (ffi:c-pointer NIL))
	(:library +library-name+))

(ffi:def-call-out wxClientDC_Delete
	(:name "wxClientDC_Delete")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxPaintDC_Create
	(:name "wxPaintDC_Create")
	(:arguments (win (ffi:c-pointer NIL)))
	(:return-type (ffi:c-pointer NIL))
	(:library +library-name+))

(ffi:def-call-out wxPaintDC_Delete
	(:name "wxPaintDC_Delete")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxMemoryDC_Create
	(:name "wxMemoryDC_Create")
	(:return-type (ffi:c-pointer NIL))
	(:library +library-name+))

(ffi:def-call-out wxMemoryDC_CreateCompatible
	(:name "wxMemoryDC_CreateCompatible")
	(:arguments (dc (ffi:c-pointer NIL)))
	(:return-type (ffi:c-pointer NIL))
	(:library +library-name+))

(ffi:def-call-out wxMemoryDC_Delete
	(:name "wxMemoryDC_Delete")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxMemoryDC_SelectObject
	(:name "wxMemoryDC_SelectObject")
	(:arguments (_obj (ffi:c-pointer NIL))
		(bitmap (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxScreenDC_Create
	(:name "wxScreenDC_Create")
	(:return-type (ffi:c-pointer NIL))
	(:library +library-name+))

(ffi:def-call-out wxScreenDC_Delete
	(:name "wxScreenDC_Delete")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxScreenDC_StartDrawingOnTopOfWin
	(:name "wxScreenDC_StartDrawingOnTopOfWin")
	(:arguments (_obj (ffi:c-pointer NIL))
		(win (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxScreenDC_StartDrawingOnTop
	(:name "wxScreenDC_StartDrawingOnTop")
	(:arguments (_obj (ffi:c-pointer NIL))
		(l ffi:int)
		(t ffi:int)
		(w ffi:int)
		(h ffi:int))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxScreenDC_EndDrawingOnTop
	(:name "wxScreenDC_EndDrawingOnTop")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxMetafileDC_Create
	(:name "wxMetafileDC_Create")
	(:arguments (_file (ffi:c-pointer NIL)))
	(:return-type (ffi:c-pointer NIL))
	(:library +library-name+))

(ffi:def-call-out wxMetafileDC_Close
	(:name "wxMetafileDC_Close")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type (ffi:c-pointer NIL))
	(:library +library-name+))

(ffi:def-call-out wxMetafileDC_Delete
	(:name "wxMetafileDC_Delete")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxMetafile_Create
	(:name "wxMetafile_Create")
	(:arguments (_file (ffi:c-pointer NIL)))
	(:return-type (ffi:c-pointer NIL))
	(:library +library-name+))

(ffi:def-call-out wxMetafile_SetClipboard
	(:name "wxMetafile_SetClipboard")
	(:arguments (_obj (ffi:c-pointer NIL))
		(width ffi:int)
		(height ffi:int))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxMetafile_Play
	(:name "wxMetafile_Play")
	(:arguments (_obj (ffi:c-pointer NIL))
		(_dc (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxMetafile_Ok
	(:name "wxMetafile_Ok")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out wxMetafile_Delete
	(:name "wxMetafile_Delete")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))


(in-package :wxcl)

(defcfun ("wxDC_Delete" wxDC_Delete) :void
  (_obj :pointer))

(defcfun ("wxDC_BeginDrawing" wxDC_BeginDrawing) :void
  (_obj :pointer))

(defcfun ("wxDC_EndDrawing" wxDC_EndDrawing) :void
  (_obj :pointer))

(defcfun ("wxDC_FloodFill" wxDC_FloodFill) :void
  (_obj :pointer)
  (x :int)
  (y :int)
  (col :pointer)
  (style :int))

(defcfun ("wxDC_GetPixel" wxDC_GetPixel) :int
  (_obj :pointer)
  (x :int)
  (y :int)
  (col :pointer))

(defcfun ("wxDC_DrawLine" wxDC_DrawLine) :void
  (_obj :pointer)
  (x1 :int)
  (y1 :int)
  (x2 :int)
  (y2 :int))

(defcfun ("wxDC_CrossHair" wxDC_CrossHair) :void
  (_obj :pointer)
  (x :int)
  (y :int))

(defcfun ("wxDC_DrawArc" wxDC_DrawArc) :void
  (_obj :pointer)
  (x1 :int)
  (y1 :int)
  (x2 :int)
  (y2 :int)
  (xc :int)
  (yc :int))

(defcfun ("wxDC_DrawCheckMark" wxDC_DrawCheckMark) :void
  (_obj :pointer)
  (x :int)
  (y :int)
  (width :int)
  (height :int))

(defcfun ("wxDC_DrawEllipticArc" wxDC_DrawEllipticArc) :void
  (_obj :pointer)
  (x :int)
  (y :int)
  (w :int)
  (h :int)
  (sa :double)
  (ea :double))

(defcfun ("wxDC_DrawPoint" wxDC_DrawPoint) :void
  (_obj :pointer)
  (x :int)
  (y :int))

(defcfun ("wxDC_DrawLines" wxDC_DrawLines) :void
  (_obj :pointer)
  (n :int)
  (x :pointer)
  (y :pointer)
  (xoffset :int)
  (yoffset :int))

(defcfun ("wxDC_DrawPolygon" wxDC_DrawPolygon) :void
  (_obj :pointer)
  (n :int)
  (x :pointer)
  (y :pointer)
  (xoffset :int)
  (yoffset :int)
  (fillStyle :int))

(defcfun ("wxDC_DrawRectangle" wxDC_DrawRectangle) :void
  (_obj :pointer)
  (x :int)
  (y :int)
  (width :int)
  (height :int))

(defcfun ("wxDC_DrawRoundedRectangle" wxDC_DrawRoundedRectangle) :void
  (_obj :pointer)
  (x :int)
  (y :int)
  (width :int)
  (height :int)
  (radius :double))

(defcfun ("wxDC_DrawCircle" wxDC_DrawCircle) :void
  (_obj :pointer)
  (x :int)
  (y :int)
  (radius :int))

(defcfun ("wxDC_DrawEllipse" wxDC_DrawEllipse) :void
  (_obj :pointer)
  (x :int)
  (y :int)
  (width :int)
  (height :int))

(defcfun ("wxDC_DrawIcon" wxDC_DrawIcon) :void
  (_obj :pointer)
  (icon :pointer)
  (x :int)
  (y :int))

(defcfun ("wxDC_DrawBitmap" wxDC_DrawBitmap) :void
  (_obj :pointer)
  (bmp :pointer)
  (x :int)
  (y :int)
  (useMask :int))

(defcfun ("wxDC_DrawText" wxDC_DrawText) :void
  (_obj :pointer)
  (text :pointer)
  (x :int)
  (y :int))

(defcfun ("wxDC_DrawRotatedText" wxDC_DrawRotatedText) :void
  (_obj :pointer)
  (text :pointer)
  (x :int)
  (y :int)
  (angle :double))

(defcfun ("wxDC_Blit" wxDC_Blit) :int
  (_obj :pointer)
  (xdest :int)
  (ydest :int)
  (width :int)
  (height :int)
  (source :pointer)
  (xsrc :int)
  (ysrc :int)
  (rop :int)
  (useMask :int))

(defcfun ("wxDC_Clear" wxDC_Clear) :void
  (_obj :pointer))

(defcfun ("wxDC_StartDoc" wxDC_StartDoc) :int
  (_obj :pointer)
  (msg :pointer))

(defcfun ("wxDC_EndDoc" wxDC_EndDoc) :void
  (_obj :pointer))

(defcfun ("wxDC_StartPage" wxDC_StartPage) :void
  (_obj :pointer))

(defcfun ("wxDC_EndPage" wxDC_EndPage) :void
  (_obj :pointer))

(defcfun ("wxDC_SetFont" wxDC_SetFont) :void
  (_obj :pointer)
  (font :pointer))

(defcfun ("wxDC_SetPen" wxDC_SetPen) :void
  (_obj :pointer)
  (pen :pointer))

(defcfun ("wxDC_SetBrush" wxDC_SetBrush) :void
  (_obj :pointer)
  (brush :pointer))

(defcfun ("wxDC_SetBackground" wxDC_SetBackground) :void
  (_obj :pointer)
  (brush :pointer))

(defcfun ("wxDC_SetBackgroundMode" wxDC_SetBackgroundMode) :void
  (_obj :pointer)
  (mode :int))

(defcfun ("wxDC_SetPalette" wxDC_SetPalette) :void
  (_obj :pointer)
  (palette :pointer))

(defcfun ("wxDC_SetClippingRegion" wxDC_SetClippingRegion) :void
  (_obj :pointer)
  (x :int)
  (y :int)
  (width :int)
  (height :int))

(defcfun ("wxDC_SetClippingRegionFromRegion" wxDC_SetClippingRegionFromRegion) :void
  (_obj :pointer)
  (region :pointer))

(defcfun ("wxDC_DestroyClippingRegion" wxDC_DestroyClippingRegion) :void
  (_obj :pointer))

(defcfun ("wxDC_GetClippingBox" wxDC_GetClippingBox) :void
  (_obj :pointer)
  (x :pointer)
  (y :pointer)
  (w :pointer)
  (h :pointer))

(defcfun ("wxDC_GetCharHeight" wxDC_GetCharHeight) :int
  (_obj :pointer))

(defcfun ("wxDC_GetCharWidth" wxDC_GetCharWidth) :int
  (_obj :pointer))

(defcfun ("wxDC_GetTextExtent" wxDC_GetTextExtent) :void
  (_obj :pointer)
  (string :pointer)
  (x :pointer)
  (y :pointer)
  (descent :pointer)
  (externalLeading :pointer)
  (theFont :pointer))

(defcfun ("wxDC_GetSize" wxDC_GetSize) :void
  (_obj :pointer)
  (width :pointer)
  (height :pointer))

(defcfun ("wxDC_GetSizeMM" wxDC_GetSizeMM) :void
  (_obj :pointer)
  (width :pointer)
  (height :pointer))

(defcfun ("wxDC_DeviceToLogicalX" wxDC_DeviceToLogicalX) :int
  (_obj :pointer)
  (x :int))

(defcfun ("wxDC_DeviceToLogicalY" wxDC_DeviceToLogicalY) :int
  (_obj :pointer)
  (y :int))

(defcfun ("wxDC_DeviceToLogicalXRel" wxDC_DeviceToLogicalXRel) :int
  (_obj :pointer)
  (x :int))

(defcfun ("wxDC_DeviceToLogicalYRel" wxDC_DeviceToLogicalYRel) :int
  (_obj :pointer)
  (y :int))

(defcfun ("wxDC_LogicalToDeviceX" wxDC_LogicalToDeviceX) :int
  (_obj :pointer)
  (x :int))

(defcfun ("wxDC_LogicalToDeviceY" wxDC_LogicalToDeviceY) :int
  (_obj :pointer)
  (y :int))

(defcfun ("wxDC_LogicalToDeviceXRel" wxDC_LogicalToDeviceXRel) :int
  (_obj :pointer)
  (x :int))

(defcfun ("wxDC_LogicalToDeviceYRel" wxDC_LogicalToDeviceYRel) :int
  (_obj :pointer)
  (y :int))

(defcfun ("wxDC_CanDrawBitmap" wxDC_CanDrawBitmap) :int
  (_obj :pointer))

(defcfun ("wxDC_CanGetTextExtent" wxDC_CanGetTextExtent) :int
  (_obj :pointer))

(defcfun ("wxDC_GetDepth" wxDC_GetDepth) :int
  (_obj :pointer))

(defcfun ("wxDC_GetPPI" wxDC_GetPPI) :void
  (_obj :pointer)
  (width :pointer)
  (height :pointer))

(defcfun ("wxDC_Ok" wxDC_Ok) :int
  (_obj :pointer))

(defcfun ("wxDC_GetBackgroundMode" wxDC_GetBackgroundMode) :int
  (_obj :pointer))

(defcfun ("wxDC_GetBackground" wxDC_GetBackground) :void
  (_obj :pointer)
  (_ref :pointer))

(defcfun ("wxDC_GetBrush" wxDC_GetBrush) :void
  (_obj :pointer)
  (_ref :pointer))

(defcfun ("wxDC_GetFont" wxDC_GetFont) :void
  (_obj :pointer)
  (_ref :pointer))

(defcfun ("wxDC_GetPen" wxDC_GetPen) :void
  (_obj :pointer)
  (_ref :pointer))

(defcfun ("wxDC_GetTextBackground" wxDC_GetTextBackground) :void
  (_obj :pointer)
  (_ref :pointer))

(defcfun ("wxDC_GetTextForeground" wxDC_GetTextForeground) :void
  (_obj :pointer)
  (_ref :pointer))

(defcfun ("wxDC_SetTextForeground" wxDC_SetTextForeground) :void
  (_obj :pointer)
  (colour :pointer))

(defcfun ("wxDC_SetTextBackground" wxDC_SetTextBackground) :void
  (_obj :pointer)
  (colour :pointer))

(defcfun ("wxDC_GetMapMode" wxDC_GetMapMode) :int
  (_obj :pointer))

(defcfun ("wxDC_SetMapMode" wxDC_SetMapMode) :void
  (_obj :pointer)
  (mode :int))

(defcfun ("wxDC_GetUserScale" wxDC_GetUserScale) :void
  (_obj :pointer)
  (x :pointer)
  (y :pointer))

(defcfun ("wxDC_SetUserScale" wxDC_SetUserScale) :void
  (_obj :pointer)
  (x :double)
  (y :double))

(defcfun ("wxDC_GetLogicalScale" wxDC_GetLogicalScale) :void
  (_obj :pointer)
  (x :pointer)
  (y :pointer))

(defcfun ("wxDC_SetLogicalScale" wxDC_SetLogicalScale) :void
  (_obj :pointer)
  (x :double)
  (y :double))

(defcfun ("wxDC_GetLogicalOrigin" wxDC_GetLogicalOrigin) :void
  (_obj :pointer)
  (x :pointer)
  (y :pointer))

(defcfun ("wxDC_SetLogicalOrigin" wxDC_SetLogicalOrigin) :void
  (_obj :pointer)
  (x :int)
  (y :int))

(defcfun ("wxDC_GetDeviceOrigin" wxDC_GetDeviceOrigin) :void
  (_obj :pointer)
  (x :pointer)
  (y :pointer))

(defcfun ("wxDC_SetDeviceOrigin" wxDC_SetDeviceOrigin) :void
  (_obj :pointer)
  (x :int)
  (y :int))

(defcfun ("wxDC_SetAxisOrientation" wxDC_SetAxisOrientation) :void
  (_obj :pointer)
  (xLeftRight :int)
  (yBottomUp :int))

(defcfun ("wxDC_GetLogicalFunction" wxDC_GetLogicalFunction) :int
  (_obj :pointer))

(defcfun ("wxDC_SetLogicalFunction" wxDC_SetLogicalFunction) :void
  (_obj :pointer)
  (function :int))

(defcfun ("wxDC_SetOptimization" wxDC_SetOptimization) :void
  (_obj :pointer)
  (opt :int))

(defcfun ("wxDC_GetOptimization" wxDC_GetOptimization) :int
  (_obj :pointer))

(defcfun ("wxDC_CalcBoundingBox" wxDC_CalcBoundingBox) :void
  (_obj :pointer)
  (x :int)
  (y :int))

(defcfun ("wxDC_ResetBoundingBox" wxDC_ResetBoundingBox) :void
  (_obj :pointer))

(defcfun ("wxDC_MinX" wxDC_MinX) :int
  (_obj :pointer))

(defcfun ("wxDC_MaxX" wxDC_MaxX) :int
  (_obj :pointer))

(defcfun ("wxDC_MinY" wxDC_MinY) :int
  (_obj :pointer))

(defcfun ("wxDC_MaxY" wxDC_MaxY) :int
  (_obj :pointer))

(defcfun ("wxWindowDC_Create" wxWindowDC_Create) :pointer
  (win :pointer))

(defcfun ("wxWindowDC_Delete" wxWindowDC_Delete) :void
  (_obj :pointer))

(defcfun ("wxClientDC_Create" wxClientDC_Create) :pointer
  (win :pointer))

(defcfun ("wxClientDC_Delete" wxClientDC_Delete) :void
  (_obj :pointer))

(defcfun ("wxPaintDC_Create" wxPaintDC_Create) :pointer
  (win :pointer))

(defcfun ("wxPaintDC_Delete" wxPaintDC_Delete) :void
  (_obj :pointer))

(defcfun ("wxMemoryDC_Create" wxMemoryDC_Create) :pointer)

(defcfun ("wxMemoryDC_CreateCompatible" wxMemoryDC_CreateCompatible) :pointer
  (dc :pointer))

(defcfun ("wxMemoryDC_Delete" wxMemoryDC_Delete) :void
  (_obj :pointer))

(defcfun ("wxMemoryDC_SelectObject" wxMemoryDC_SelectObject) :void
  (_obj :pointer)
  (bitmap :pointer))

(defcfun ("wxScreenDC_Create" wxScreenDC_Create) :pointer)

(defcfun ("wxScreenDC_Delete" wxScreenDC_Delete) :void
  (_obj :pointer))

(defcfun ("wxScreenDC_StartDrawingOnTopOfWin" wxScreenDC_StartDrawingOnTopOfWin) :int
  (_obj :pointer)
  (win :pointer))

(defcfun ("wxScreenDC_StartDrawingOnTop" wxScreenDC_StartDrawingOnTop) :int
  (_obj :pointer)
  (l :int)
  (t :int)
  (w :int)
  (h :int))

(defcfun ("wxScreenDC_EndDrawingOnTop" wxScreenDC_EndDrawingOnTop) :int
  (_obj :pointer))

(defcfun ("wxMetafileDC_Create" wxMetafileDC_Create) :pointer
  (_file :pointer))

(defcfun ("wxMetafileDC_Close" wxMetafileDC_Close) :pointer
  (_obj :pointer))

(defcfun ("wxMetafileDC_Delete" wxMetafileDC_Delete) :void
  (_obj :pointer))

(defcfun ("wxMetafile_Create" wxMetafile_Create) :pointer
  (_file :pointer))

(defcfun ("wxMetafile_SetClipboard" wxMetafile_SetClipboard) :int
  (_obj :pointer)
  (width :int)
  (height :int))

(defcfun ("wxMetafile_Play" wxMetafile_Play) :int
  (_obj :pointer)
  (_dc :pointer))

(defcfun ("wxMetafile_Ok" wxMetafile_Ok) :int
  (_obj :pointer))

(defcfun ("wxMetafile_Delete" wxMetafile_Delete) :void
  (_obj :pointer))

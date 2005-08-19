;;;wxHtmlWindow.lisp
;;;License  : GNU General Public License (GPL)
;;;Author(s) : Surendra Singhi (surendra@asu.edu) 
;;;Copyright (C) 2005 Surendra Singhi 
;;;See the file LICENSE for information on usage and redistribution.
;;;
;;; $Header$
;;;

(defpackage :wxHtmlWindow
    (:use :common-lisp :ffi :wxCL)
  (:export :wxHtmlWindow_Create
	   :wxcHtmlWindow_Create
	   :wxHtmlWindow_AppendToPage
	   :wxHtmlWindow_GetInternalRepresentation
	   :wxHtmlWindow_GetOpenedAnchor
	   :wxHtmlWindow_GetOpenedPage
	   :wxHtmlWindow_GetOpenedPageTitle
	   :wxHtmlWindow_GetRelatedFrame
	   :wxHtmlWindow_HistoryBack
	   :wxHtmlWindow_HistoryCanBack
	   :wxHtmlWindow_HistoryCanForward
	   :wxHtmlWindow_HistoryClear
	   :wxHtmlWindow_HistoryForward
	   :wxHtmlWindow_LoadPage
	   :wxHtmlWindow_ReadCustomization
	   :wxHtmlWindow_SetBorders
	   :wxHtmlWindow_SetFonts
	   :wxHtmlWindow_SetPage
	   :wxHtmlWindow_SetRelatedFrame
	   :wxHtmlWindow_SetRelatedStatusBar
	   :wxHtmlWindow_WriteCustomization
	   :wxcHtmlEvent_GetMouseEvent
	   :wxcHtmlEvent_GetHtmlCell
	   :wxcHtmlEvent_GetHtmlCellId
	   :wxcHtmlEvent_GetHref
	   :wxcHtmlEvent_GetTarget
	   :wxcHtmlEvent_GetLogicalPosition))

(in-package :wxHtmlWindow)

(ffi:default-foreign-language :stdc)

(def-c-type wxTextAttr NIL)

(ffi:def-call-out wxcHtmlEvent_GetMouseEvent
    (:name "wxcHtmlEvent_GetMouseEvent")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type (ffi:c-pointer NIL))
  (:library +library-name+))

(ffi:def-call-out wxcHtmlEvent_GetHtmlCell
    (:name "wxcHtmlEvent_GetHtmlCell")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type (ffi:c-pointer NIL))
  (:library +library-name+))

(ffi:def-call-out wxcHtmlEvent_GetHtmlCellId
    (:name "wxcHtmlEvent_GetHtmlCellId")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type ffi:c-string)
  (:library +library-name+))

(ffi:def-call-out wxcHtmlEvent_GetHref
    (:name "wxcHtmlEvent_GetHref")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type ffi:c-string)
  (:library +library-name+))

(ffi:def-call-out wxcHtmlEvent_GetTarget
    (:name "wxcHtmlEvent_GetTarget")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type ffi:c-string)
  (:library +library-name+))

(ffi:def-call-out wxcHtmlEvent_GetLogicalPosition
    (:name "wxcHtmlEvent_GetLogicalPosition")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (x (ffi:c-ptr ffi:int))
	      (y (ffi:c-ptr ffi:int)))
  (:library +library-name+))

(ffi:def-call-out wxHtmlWindow_Create
    (:name "wxHtmlWindow_Create")
  (:arguments (_prt (ffi:c-pointer NIL))
	      (_id ffi:int)
	      (_lft ffi:int)
	      (_top ffi:int)
	      (_wdt ffi:int)
	      (_hgt ffi:int)
	      (_stl ffi:long)
	      (_txt ffi:c-string))
  (:return-type (ffi:c-pointer NIL))
  (:library +library-name+))

(ffi:def-call-out wxcHtmlWindow_Create
    (:name "wxcHtmlWindow_Create")
  (:arguments (_prt (ffi:c-pointer NIL))
	      (_id ffi:int)
	      (_lft ffi:int)
	      (_top ffi:int)
	      (_wdt ffi:int)
	      (_hgt ffi:int)
	      (_stl ffi:long)
	      (_txt ffi:c-string))
  (:return-type (ffi:c-pointer NIL))
  (:library +library-name+))

(ffi:def-call-out wxHtmlWindow_AppendToPage
    (:name "wxHtmlWindow_AppendToPage")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (source ffi:c-string))
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out wxHtmlWindow_GetInternalRepresentation
    (:name "wxHtmlWindow_GetInternalRepresentation")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type (ffi:c-pointer NIL))
  (:library +library-name+))

(ffi:def-call-out wxHtmlWindow_GetOpenedAnchor
    (:name "wxHtmlWindow_GetOpenedAnchor")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (_buf (ffi:c-pointer NIL)))
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out wxHtmlWindow_GetOpenedPage
    (:name "wxHtmlWindow_GetOpenedPage")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (_buf (ffi:c-pointer NIL)))
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out wxHtmlWindow_GetOpenedPageTitle
    (:name "wxHtmlWindow_GetOpenedPageTitle")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (_buf (ffi:c-pointer NIL)))
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out wxHtmlWindow_GetRelatedFrame
    (:name "wxHtmlWindow_GetRelatedFrame")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type (ffi:c-pointer NIL))
  (:library +library-name+))

(ffi:def-call-out wxHtmlWindow_HistoryBack
    (:name "wxHtmlWindow_HistoryBack")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out wxHtmlWindow_HistoryCanBack
    (:name "wxHtmlWindow_HistoryCanBack")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out wxHtmlWindow_HistoryCanForward
    (:name "wxHtmlWindow_HistoryCanForward")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out wxHtmlWindow_HistoryClear
    (:name "wxHtmlWindow_HistoryClear")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:library +library-name+))

(ffi:def-call-out wxHtmlWindow_HistoryForward
    (:name "wxHtmlWindow_HistoryForward")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out wxHtmlWindow_LoadPage
    (:name "wxHtmlWindow_LoadPage")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (location ffi:c-string))
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out wxHtmlWindow_ReadCustomization
    (:name "wxHtmlWindow_ReadCustomization")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (cfg (ffi:c-pointer NIL))
	      (path ffi:c-string))
  (:library +library-name+))

(ffi:def-call-out wxHtmlWindow_SetBorders
    (:name "wxHtmlWindow_SetBorders")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (b ffi:int))
  (:library +library-name+))

(ffi:def-call-out wxHtmlWindow_SetFonts
    (:name "wxHtmlWindow_SetFonts")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (normal_face ffi:c-string)
	      (fixed_face ffi:c-string)
	      (sizes (ffi:c-ptr ffi:int)))
  (:library +library-name+))

(ffi:def-call-out wxHtmlWindow_SetPage
    (:name "wxHtmlWindow_SetPage")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (source ffi:c-string))
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out wxHtmlWindow_SetRelatedFrame
    (:name "wxHtmlWindow_SetRelatedFrame")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (frame (ffi:c-pointer NIL))
	      (format ffi:c-string))
  (:library +library-name+))

(ffi:def-call-out wxHtmlWindow_SetRelatedStatusBar
    (:name "wxHtmlWindow_SetRelatedStatusBar")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (bar ffi:int))
  (:library +library-name+))

(ffi:def-call-out wxHtmlWindow_WriteCustomization
    (:name "wxHtmlWindow_WriteCustomization")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (cfg (ffi:c-pointer NIL))
	      (path ffi:c-string))
  (:library +library-name+))


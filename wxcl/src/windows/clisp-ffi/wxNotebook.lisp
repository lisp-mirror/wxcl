;;;wxNotebook.lisp
;;;License  : wxWindows License 3.1
;;;Author(s) : Surendra Singhi (surendra@asu.edu) 
;;;Copyright (C) 2005 Surendra Singhi 
;;;See the file LICENSE for information on usage and redistribution.
;;;
;;; $Header$
;;;

; (defpackage :wxNotebook
;     (:use :common-lisp :ffi :wxCL)
;   (:export :wxNotebook_Create
; 	   :wxNotebook_GetPageCount
; 	   :wxNotebook_SetSelection
; 	   :wxNotebook_AdvanceSelection
; 	   :wxNotebook_AssignImageList
; 	   :wxNotebook_GetSelection
; 	   :wxNotebook_SetPageText
; 	   :wxNotebook_GetPageText
; 	   :wxNotebook_SetImageList
; 	   :wxNotebook_GetImageList
; 	   :wxNotebook_GetPageImage
; 	   :wxNotebook_SetPageImage
; 	   :wxNotebook_GetRowCount
; 	   :wxNotebook_SetPageSize
; 	   :wxNotebook_SetPadding
; 	   :wxNotebook_DeletePage
; 	   :wxNotebook_RemovePage
; 	   :wxNotebook_DeleteAllPages
; 	   :wxNotebook_AddPage
; 	   :wxNotebook_InsertPage
; 	   :wxNotebook_GetPage
; 	   :wxCL-create-notebook
; 	   :wxNB_FIXEDWIDTH
; 	   :wxNB_LEFT
; 	   :wxNB_RIGHT
; 	   :wxNB_BOTTOM
; 	   :wxNB_MULTILINE
; 	   :wxNB_TOP))

(in-package :wxcl-windows)

(ffi:default-foreign-language :stdc)

(def-c-type wxnotebook nil)
    

(ffi:def-call-out wxNotebook_Create
    (:name "wxNotebook_Create")
  (:arguments (_prt (ffi:c-pointer NIL))
	      (_id ffi:int)
	      (_lft ffi:int)
	      (_top ffi:int)
	      (_wdt ffi:int)
	      (_hgt ffi:int)
	      (_stl ffi:int))
  (:return-type (ffi:c-pointer NIL))
  (:library +library-name+))

(defmacro wxCL-create-notebook (frame &key (id -1) (left -1) (top -1) (width -1) (height -1)
				      (style wxNB_TOP))
  `(wxNotebook_Create ,frame ,id ,left ,top ,width ,height ,style))
				
(ffi:def-call-out wxNotebook_GetPageCount
    (:name "wxNotebook_GetPageCount")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out wxNotebook_SetSelection
    (:name "wxNotebook_SetSelection")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (nPage ffi:int))
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out wxNotebook_AdvanceSelection
    (:name "wxNotebook_AdvanceSelection")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (bForward ffi:int))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxNotebook_GetSelection
    (:name "wxNotebook_GetSelection")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out wxNotebook_SetPageText
    (:name "wxNotebook_SetPageText")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (nPage ffi:int)
	      (strText ffi:c-string))
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out wxNotebook_GetPageText
    (:name "wxNotebook_GetPageText")
  (:arguments (_obj (ffi:c-pointer NIL))
              (nPage ffi:int))
  (:return-type ffi:c-string :malloc-free)
  (:library +library-name+))

(ffi:def-call-out wxNotebook_SetImageList
    (:name "wxNotebook_SetImageList")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (imageList (ffi:c-pointer NIL)))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxNotebook_GetImageList
    (:name "wxNotebook_GetImageList")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type (ffi:c-pointer NIL))
  (:library +library-name+))

(ffi:def-call-out wxNotebook_GetPageImage
    (:name "wxNotebook_GetPageImage")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (nPage ffi:int))
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out wxNotebook_SetPageImage
    (:name "wxNotebook_SetPageImage")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (nPage ffi:int)
	      (nImage ffi:int))
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out wxNotebook_GetRowCount
    (:name "wxNotebook_GetRowCount")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out wxNotebook_SetPageSize
    (:name "wxNotebook_SetPageSize")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (_w ffi:int)
	      (_h ffi:int))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxNotebook_SetPadding
    (:name "wxNotebook_SetPadding")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (_w ffi:int)
	      (_h ffi:int))
  (:return-type NIL)
  (:library +library-name+))

(ffi:def-call-out wxNotebook_DeletePage
    (:name "wxNotebook_DeletePage")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (nPage ffi:int))
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out wxNotebook_RemovePage
    (:name "wxNotebook_RemovePage")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (nPage ffi:int))
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out wxNotebook_DeleteAllPages
    (:name "wxNotebook_DeleteAllPages")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out wxNotebook_AddPage
    (:name "wxNotebook_AddPage")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (pPage (ffi:c-pointer NIL))
	      (strText ffi:c-string)
	      (bSelect ffi:int)
	      (imageId ffi:int))
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out wxNotebook_InsertPage
    (:name "wxNotebook_InsertPage")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (nPage ffi:int)
	      (pPage (ffi:c-pointer NIL))
	      (strText (ffi:c-pointer NIL))
	      (bSelect ffi:int)
	      (imageId ffi:int))
  (:return-type ffi:int)
  (:library +library-name+))

(ffi:def-call-out wxNotebook_GetPage
    (:name "wxNotebook_GetPage")
  (:arguments (_obj (ffi:c-pointer NIL))
	      (nPage ffi:int))
  (:return-type (ffi:c-pointer NIL))
  (:library +library-name+))

(ffi:def-call-out wxNotebook_AssignImageList
	(:name "wxNotebook_AssignImageList")
	(:arguments (_obj (ffi:c-pointer wxNotebook))
		    (imageList (ffi:c-pointer NIL)))
	(:library +library-name+))

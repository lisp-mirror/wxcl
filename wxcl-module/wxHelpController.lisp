;;;wxHelpController.lisp
;;;License  : GNU General Public License (GPL)
;;;Author(s) : Surendra Singhi (surendra@asu.edu) 
;;;Copyright (C) 2005 Surendra Singhi 
;;;See the file LICENSE for information on usage and redistribution.
;;;
;;; $Header$
;;;

(defpackage :wxHelpcontroller
  (:use :common-lisp :ffi :wxCL)
  (:export
	:wxHtmlHelpController_Create
	:wxHtmlHelpController_Delete
	:wxHtmlHelpController_SetTitleFormat
	:wxHtmlHelpController_SetTempDir
	:wxHtmlHelpController_AddBook
	:wxHtmlHelpController_Display
	:wxHtmlHelpController_DisplayNumber
	:wxHtmlHelpController_DisplayContents
	:wxHtmlHelpController_DisplayIndex
	:wxHtmlHelpController_KeywordSearch
	:wxHtmlHelpController_GetFrame
	:wxHtmlHelpController_UseConfig
	:wxHtmlHelpController_ReadCustomization
	:wxHtmlHelpController_WriteCustomization
	:wxHtmlHelpController_Initialize
	:wxHtmlHelpController_SetViewer
	:wxHtmlHelpController_LoadFile
	:wxHtmlHelpController_DisplaySectionNumber
	:wxHtmlHelpController_DisplaySection
	:wxHtmlHelpController_DisplayBlock
	:wxHtmlHelpController_SetFrameParameters
	:wxHtmlHelpController_GetFrameParameters
	:wxHtmlHelpController_Quit))

(in-package :wxHelpcontroller)

(ffi:default-foreign-language :stdc)

(ffi:c-lines "#include <wxc.h>~%")

(ffi:def-call-out wxHtmlHelpController_Create
	(:name "wxHtmlHelpController_Create")
	(:arguments (_style ffi:int))
	(:return-type (ffi:c-pointer NIL))
	) ;; (:library +library-name+))

(ffi:def-call-out wxHtmlHelpController_Delete
	(:name "wxHtmlHelpController_Delete")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type NIL)
	) ;; (:library +library-name+))

(ffi:def-call-out wxHtmlHelpController_SetTitleFormat
	(:name "wxHtmlHelpController_SetTitleFormat")
	(:arguments (_obj (ffi:c-pointer NIL))
		(format (ffi:c-pointer NIL)))
	(:return-type NIL)
	) ;; (:library +library-name+))

(ffi:def-call-out wxHtmlHelpController_SetTempDir
	(:name "wxHtmlHelpController_SetTempDir")
	(:arguments (_obj (ffi:c-pointer NIL))
		(path (ffi:c-pointer NIL)))
	(:return-type NIL)
	) ;; (:library +library-name+))

(ffi:def-call-out wxHtmlHelpController_AddBook
	(:name "wxHtmlHelpController_AddBook")
	(:arguments (_obj (ffi:c-pointer NIL))
		(book (ffi:c-pointer NIL))
		(show_wait_msg ffi:int))
	(:return-type ffi:int)
	) ;; (:library +library-name+))

(ffi:def-call-out wxHtmlHelpController_Display
	(:name "wxHtmlHelpController_Display")
	(:arguments (_obj (ffi:c-pointer NIL))
		(x (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	) ;; (:library +library-name+))

(ffi:def-call-out wxHtmlHelpController_DisplayNumber
	(:name "wxHtmlHelpController_DisplayNumber")
	(:arguments (_obj (ffi:c-pointer NIL))
		(id ffi:int))
	(:return-type ffi:int)
	) ;; (:library +library-name+))

(ffi:def-call-out wxHtmlHelpController_DisplayContents
	(:name "wxHtmlHelpController_DisplayContents")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	) ;; (:library +library-name+))

(ffi:def-call-out wxHtmlHelpController_DisplayIndex
	(:name "wxHtmlHelpController_DisplayIndex")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	) ;; (:library +library-name+))

(ffi:def-call-out wxHtmlHelpController_KeywordSearch
	(:name "wxHtmlHelpController_KeywordSearch")
	(:arguments (_obj (ffi:c-pointer NIL))
		(keyword (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	) ;; (:library +library-name+))

(ffi:def-call-out wxHtmlHelpController_GetFrame
	(:name "wxHtmlHelpController_GetFrame")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type (ffi:c-pointer NIL))
	) ;; (:library +library-name+))

(ffi:def-call-out wxHtmlHelpController_UseConfig
	(:name "wxHtmlHelpController_UseConfig")
	(:arguments (_obj (ffi:c-pointer NIL))
		(config (ffi:c-pointer NIL))
		(rootpath (ffi:c-pointer NIL)))
	(:return-type NIL)
	) ;; (:library +library-name+))

(ffi:def-call-out wxHtmlHelpController_ReadCustomization
	(:name "wxHtmlHelpController_ReadCustomization")
	(:arguments (_obj (ffi:c-pointer NIL))
		(cfg (ffi:c-pointer NIL))
		(path (ffi:c-pointer NIL)))
	(:return-type NIL)
	) ;; (:library +library-name+))

(ffi:def-call-out wxHtmlHelpController_WriteCustomization
	(:name "wxHtmlHelpController_WriteCustomization")
	(:arguments (_obj (ffi:c-pointer NIL))
		(cfg (ffi:c-pointer NIL))
		(path (ffi:c-pointer NIL)))
	(:return-type NIL)
	) ;; (:library +library-name+))

(ffi:def-call-out wxHtmlHelpController_Initialize
	(:name "wxHtmlHelpController_Initialize")
	(:arguments (_obj (ffi:c-pointer NIL))
		(file (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	) ;; (:library +library-name+))

(ffi:def-call-out wxHtmlHelpController_SetViewer
	(:name "wxHtmlHelpController_SetViewer")
	(:arguments (_obj (ffi:c-pointer NIL))
		(viewer (ffi:c-pointer NIL))
		(flags ffi:int))
	(:return-type NIL)
	) ;; (:library +library-name+))

(ffi:def-call-out wxHtmlHelpController_LoadFile
	(:name "wxHtmlHelpController_LoadFile")
	(:arguments (_obj (ffi:c-pointer NIL))
		(file (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	) ;; (:library +library-name+))

(ffi:def-call-out wxHtmlHelpController_DisplaySectionNumber
	(:name "wxHtmlHelpController_DisplaySectionNumber")
	(:arguments (_obj (ffi:c-pointer NIL))
		(sectionNo ffi:int))
	(:return-type ffi:int)
	) ;; (:library +library-name+))

(ffi:def-call-out wxHtmlHelpController_DisplaySection
	(:name "wxHtmlHelpController_DisplaySection")
	(:arguments (_obj (ffi:c-pointer NIL))
		(section (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	) ;; (:library +library-name+))

(ffi:def-call-out wxHtmlHelpController_DisplayBlock
	(:name "wxHtmlHelpController_DisplayBlock")
	(:arguments (_obj (ffi:c-pointer NIL))
		(blockNo ffi:int))
	(:return-type ffi:int)
	) ;; (:library +library-name+))

(ffi:def-call-out wxHtmlHelpController_SetFrameParameters
	(:name "wxHtmlHelpController_SetFrameParameters")
	(:arguments (_obj (ffi:c-pointer NIL))
		(title (ffi:c-pointer NIL))
		(width ffi:int)
		(height ffi:int)
		(pos_x ffi:int)
		(pos_y ffi:int)
		(newFrameEachTime ffi:int))
	(:return-type NIL)
	) ;; (:library +library-name+))

(ffi:def-call-out wxHtmlHelpController_GetFrameParameters
	(:name "wxHtmlHelpController_GetFrameParameters")
	(:arguments (_obj (ffi:c-pointer NIL))
		(title (ffi:c-pointer NIL))
		(width (ffi:c-ptr ffi:int))
		(height (ffi:c-ptr ffi:int))
		(pos_x (ffi:c-ptr ffi:int))
		(pos_y (ffi:c-ptr ffi:int))
		(newFrameEachTime (ffi:c-ptr ffi:int)))
	(:return-type (ffi:c-pointer NIL))
	) ;; (:library +library-name+))

(ffi:def-call-out wxHtmlHelpController_Quit
	(:name "wxHtmlHelpController_Quit")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	) ;; (:library +library-name+))

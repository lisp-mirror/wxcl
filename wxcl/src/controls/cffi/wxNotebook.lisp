;;;wxNotebook.lisp
;;;License  : GNU General Public License (GPL)
;;;Author(s) : Surendra Singhi (surendra@asu.edu) 
;;;Copyright (C) 2005 Surendra Singhi 
;;;See the file LICENSE for information on usage and redistribution.
;;;
;;; $Header$
;;;
(in-package :wxcl-controls)

(defcfun ("wxNotebook_Create" wxNotebook_Create) :pointer
  (_prt :pointer)
  (_id :int)
  (_lft :int)
  (_top :int)
  (_wdt :int)
  (_hgt :int)
  (_stl :int))

(defcfun ("wxNotebook_GetPageCount" wxNotebook_GetPageCount) :int
  (_obj :pointer))

(defcfun ("wxNotebook_SetSelection" wxNotebook_SetSelection) :int
  (_obj :pointer)
  (nPage :int))

(defcfun ("wxNotebook_AdvanceSelection" wxNotebook_AdvanceSelection) :void
  (_obj :pointer)
  (bForward :int))

(defcfun ("wxNotebook_GetSelection" wxNotebook_GetSelection) :int
  (_obj :pointer))

(defcfun ("wxNotebook_SetPageText" wxNotebook_SetPageText) :int
  (_obj :pointer)
  (nPage :int)
  (strText :pointer))

(defcfun ("wxNotebook_GetPageText" wxNotebook_GetPageText) :lisp-string
  (_obj :pointer)
  (nPage :int))

(defcfun ("wxNotebook_SetImageList" wxNotebook_SetImageList) :void
  (_obj :pointer)
  (imageList :pointer))

(defcfun ("wxNotebook_GetImageList" wxNotebook_GetImageList) :pointer
  (_obj :pointer))

(defcfun ("wxNotebook_GetPageImage" wxNotebook_GetPageImage) :int
  (_obj :pointer)
  (nPage :int))

(defcfun ("wxNotebook_SetPageImage" wxNotebook_SetPageImage) :int
  (_obj :pointer)
  (nPage :int)
  (nImage :int))

(defcfun ("wxNotebook_GetRowCount" wxNotebook_GetRowCount) :int
  (_obj :pointer))

(defcfun ("wxNotebook_SetPageSize" wxNotebook_SetPageSize) :void
  (_obj :pointer)
  (_w :int)
  (_h :int))

(defcfun ("wxNotebook_SetPadding" wxNotebook_SetPadding) :void
  (_obj :pointer)
  (_w :int)
  (_h :int))

(defcfun ("wxNotebook_DeletePage" wxNotebook_DeletePage) :int
  (_obj :pointer)
  (nPage :int))

(defcfun ("wxNotebook_RemovePage" wxNotebook_RemovePage) :int
  (_obj :pointer)
  (nPage :int))

(defcfun ("wxNotebook_DeleteAllPages" wxNotebook_DeleteAllPages) :int
  (_obj :pointer))

(defcfun ("wxNotebook_AddPage" wxNotebook_AddPage) :int
  (_obj :pointer)
  (pPage :pointer)
  (strText :pointer)
  (bSelect :int)
  (imageId :int))

(defcfun ("wxNotebook_InsertPage" wxNotebook_InsertPage) :int
  (_obj :pointer)
  (nPage :int)
  (pPage :pointer)
  (strText :pointer)
  (bSelect :int)
  (imageId :int))

(defcfun ("wxNotebook_GetPage" wxNotebook_GetPage) :pointer
  (_obj :pointer)
  (nPage :int))

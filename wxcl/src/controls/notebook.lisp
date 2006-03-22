;;;notebook.lisp
;;;License  : wxWindows License 3.1
;;;Author(s) : Surendra Singhi (surendra@asu.edu) 
;;;Copyright (C) 2005 Surendra Singhi 
;;;See the file LICENSE for information on usage and redistribution.
;;;
;;; $Header$
;;;

(in-package :wxcl)

(defconstant +nb-fixedwidth+ 16)
(defconstant +nb-left+ 32)
(defconstant +nb-right+ 64)
(defconstant +nb-bottom+ 128)
(defconstant +nb-multiline+ 6)
(defconstant +nb-top+ 0)

(defun make-notebook (parent &key (id -1) (pos +default-position+) (size +default-size+) (style 0))
  (make-wx-instance 'notebook (wxNotebook_Create (cffi-object-pointer parent)
                                                 id (point-x pos) (point-y pos) (size-width size)
                                                 (size-height size) style)))

(defmethod page-count ((obj notebook)) 
  (wxNotebook_GetPageCount (object-pointer obj)))

(defmethod (setf selection)(page (obj notebook))
  (wxNotebook_SetSelection (object-pointer obj) page))

(defmethod advance-selection ((obj notebook) forward)
  (wxNotebook_AdvanceSelection (object-pointer obj) (if forward 1 0)))

(defmethod selection ((obj notebook))
  (wxNotebook_GetSelection (object-pointer obj)))

(defmethod (setf page-text) (text (obj notebook) page)
  (= 1 (wxNotebook_SetPageText (object-pointer obj) page text)))

(defmethod page-text ((obj notebook) page)
  (wxNotebook_GetPageText (object-pointer obj) page))

(defmethod (setf image-list) (lst (obj notebook))
  (wxNotebook_SetImageList (object-pointer obj) lst))

(defmethod image-list ((obj notebook))
  (wxNotebook_GetImageList (object-pointer obj)))

(defmethod page-image ((obj notebook) page)
  (wxNotebook_GetPageImage (object-pointer obj) page))

(defmethod (setf page-image) (image (obj notebook) page)
  (= 1 (wxNotebook_SetPageImage (object-pointer obj) page image)))

(defmethod row-count ((obj notebook))
  (wxNotebook_GetRowCount (object-pointer obj)))

(defmethod (setf page-size)(sz (obj notebook))
  (wxNotebook_SetPageSize (object-pointer obj) (size-width sz) (size-height sz)))

(defmethod (setf padding) (sz (obj notebook)) 
  (wxNotebook_SetPadding  (object-pointer obj) (size-width sz) (size-height sz)))

(defmethod delete-page ((obj notebook) page)
    (= 1 (wxNotebook_DeletePage (object-pointer obj) page)))

(defmethod remove-page ((obj notebook) page)
  (= 1 (wxNotebook_RemovePage (object-pointer obj) page)))

(defmethod delete-all-pages ((obj notebook))
  (= 1 (wxNotebook_DeleteAllPages (object-pointer obj))))

(defmethod add-page ((obj notebook) page text &key (select nil) (image-id -1))
  (= 1 (wxNotebook_AddPage (object-pointer obj) (object-pointer page) text (if select 1 0) image-id)))

(defmethod insert-page ((obj notebook) index page text &key (select nil) (image-id -1))
  (= 1 (wxNotebook_InsertPage (object-pointer obj) index (object-pointer page) text (if select 1 0) image-id)))

(defmethod get-page ((obj notebook) page)
  (make-wx-instance 'window (wxNotebook_GetPage (object-pointer obj) page)))

(defmethod assign-image-list ((obj notebook) image-list)
  (wxNotebook_AssignImageList (object-pointer obj) (object-pointer image-list)))



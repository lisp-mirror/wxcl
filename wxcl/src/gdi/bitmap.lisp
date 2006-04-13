;;;bitmap.lisp
;;;License  : wxWindows License 3.1
;;;Author(s) : Surendra Singhi (surendra@asu.edu) 
;;;Copyright (C) 2005 Surendra Singhi 
;;;See the file LICENSE for information on usage and redistribution.
;;;
;;; $Header$
;;;

(in-package :wxcl)

(defconstant +bitmap-type-invalid+ 0)
(defconstant +bitmap-type-bmp+ 1)
(defconstant +bitmap-type-bmp-resource+ 2)
(defconstant +bitmap-type-resource+ 2)
(defconstant +bitmap-type-ico+ 3)
(defconstant +bitmap-type-ico-resource+ 4)
(defconstant +bitmap-type-cur+ 5)
(defconstant +bitmap-type-cur-resource+ 6)
(defconstant +bitmap-type-xbm+ 7)
(defconstant +bitmap-type-xbm-data+ 8)
(defconstant +bitmap-type-xpm+ 9)
(defconstant +bitmap-type-xpm-data+ 10)
(defconstant +bitmap-type-tif+ 11)
(defconstant +bitmap-type-tif-resource+ 12)
(defconstant +bitmap-type-gif+ 13)
(defconstant +bitmap-type-gif-resource+ 14)
(defconstant +bitmap-type-png+ 15)
(defconstant +bitmap-type-png-resource+ 16)
(defconstant +bitmap-type-jpeg+ 17)
(defconstant +bitmap-type-jpeg-resource+ 18)
(defconstant +bitmap-type-pnm+ 19)
(defconstant +bitmap-type-pnm-resource+ 20)
(defconstant +bitmap-type-pcx+ 21)
(defconstant +bitmap-type-pcx-resource+ 22)
(defconstant +bitmap-type-pict+ 23)
(defconstant +bitmap-type-pict-resource+ 24)
(defconstant +bitmap-type-icon+ 25)
(defconstant +bitmap-type-icon-resource+ 26)
(defconstant +bitmap-type-maccursor+ 27)
(defconstant +bitmap-type-maccursor-resource+ 28)
(defconstant +bitmap-type-any+ 50)

(define-symbol-macro +null-bitmap+ (make-wx-instance 'bitmap wxNull_Bitmap))

(defun make-bitmap (data type width height depth)
  (make-wx-instance 'bitmap (wxBitmap_Create data type width height depth)))

(defun make-bitmap-from-xpm (data)
  (make-wx-instance 'bitmap (wxBitmap_CreateFromXPM data)))

(defun make-bitmap-empty (width height depth)
  (make-wx-instance 'bitmap (wxBitmap_CreateEmpty width height depth)))

(defun make-bitmap-from-file (file-name type)
  (make-wx-instance 'bitmap (wxBitmap_CreateLoad file-name type)))

(defun make-bitmap-default ()
  (make-wx-instance 'bitmap (wxBitmap_CreateDefault)))

(defmethod delete-object ((obj bitmap))
  (wxBitmap_Delete (object-pointer obj))
  (invalidate-wx-instance obj))

(defmethod sub-bitmap ((obj bitmap) (reg rect))
  (make-wx-instance 'bitmap (wxBitmap_GetSubBitmap (object-pointer obj)
                                                   (point-x (rect-position reg))(point-y (rect-position reg))
                                                   (size-height (rect-size reg))(size-width (rect-size reg)))))

(defmethod load-bitmap-from-file ((obj bitmap) file-name type)
  (= 1 (wxBitmap_LoadFile (object-pointer obj) file-name type)))

(defmethod save-bitmap-to-file ((obj bitmap) file-name type &optional (cmap (cffi:null-pointer)))
  (= 1 (wxBitmap_SaveFile (object-pointer obj) file-name type cmap)))

(defmethod mask ((obj bitmap))
  (make-wx-instance 'mask (wxBitmap_GetMask (object-pointer obj))))

(defmethod (setf mask) ((ms mask)(obj bitmap))
  (wxBitmap_SetMask (object-pointer obj) (object-pointer ms)))

(defun add-handler (handler)
  (wxBitmap_AddHandler (object-pointer handler)))

(defun insert-handler (handler)
  (wxBitmap_InsertHandler (object-pointer handler)))

(defun remove-handler (handler-name)
  (= 1 (wxBitmap_RemoveHandler handler-name)))

;;fix me-return value should be of type bitmap-handler
(defun find-handler-by-name (handler-name)
  (make-wx-instance 'object  (wxBitmap_FindHandlerByName handler-name)))

;;fix me-return value should be of type bitmap-handler
(defun find-handler-by-extension (extension type)
  (make-wx-instance 'object (wxBitmap_FindHandlerByExtension extension type)))

(defun find-handler-by-type (type)
  (make-wx-instance 'object (wxBitmap_FindHandlerByType type)))

(defun init-standard-handlers ()
  (wxBitmap_InitStandardHandlers))

(defmethod clean-up-handlers ()
  (wxBitmap_CleanUpHandlers))

(defmethod ok-p ((obj bitmap))
  (= 1 (wxBitmap_Ok (object-pointer obj))))

(defmethod width ((obj bitmap))
  (wxBitmap_GetWidth (object-pointer obj)))

(defmethod height ((obj bitmap))
  (wxBitmap_GetHeight (object-pointer obj)))

(defmethod depth ((obj bitmap))
  (wxBitmap_GetDepth (object-pointer obj)))

(defmethod (setf width) (width (obj bitmap))
  (wxBitmap_SetWidth (object-pointer obj) width))

(defmethod (setf height) (height (obj bitmap))
  (wxBitmap_SetHeight (object-pointer obj) height))

(defmethod (setf depth) (depth (obj bitmap))
  (wxBitmap_SetDepth (object-pointer obj) depth))


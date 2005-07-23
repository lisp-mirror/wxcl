;;;wxDnd.lisp
;;;License   : BSD-style
;;;Author(s) : Surendra Singhi (surendra@asu.edu) 
;;;Copyright (C) 2005 Surendra Singhi 
;;;See the file LICENSE for information on usage and redistribution.
;;;
;;; $Header$
;;;
;; This is an automatically generated file. 
;;Make changes as you feel are necessary (but remember if you try to regenerate this file, your changes will be lost). 

(defpackage "wxDnd"
  (:use :common-lisp :ffi)
	:ELJFileDropTarget_Create
	:ELJFileDropTarget_Delete
	:ELJTextDropTarget_Create
	:ELJTextDropTarget_Delete
	:TextDataObject_Create
	:TextDataObject_Delete
	:FileDataObject_Create
	:FileDataObject_Delete
	:FileDataObject_AddFile
	:FileDataObject_GetFilenames
	:BitmapDataObject_Create
	:BitmapDataObject_CreateEmpty
	:BitmapDataObject_Delete
	:BitmapDataObject_SetBitmap
	:BitmapDataObject_GetBitmap
	:DropSource_Create
	:DropSource_Delete
	:DropSource_DoDragDrop
	:ELJDropTarget_Create
	:ELJDropTarget_Delete
	:ELJFileDropTarget_SetOnData
	:ELJFileDropTarget_SetOnDrop
	:ELJFileDropTarget_SetOnEnter
	:ELJFileDropTarget_SetOnDragOver
	:ELJFileDropTarget_SetOnLeave
	:ELJTextDropTarget_SetOnData
	:ELJTextDropTarget_SetOnDrop
	:ELJTextDropTarget_SetOnEnter
	:ELJTextDropTarget_SetOnDragOver
	:ELJTextDropTarget_SetOnLeave
	:ELJDropTarget_SetOnData
	:ELJDropTarget_SetOnDrop
	:ELJDropTarget_SetOnEnter
	:ELJDropTarget_SetOnDragOver
	:ELJDropTarget_SetOnLeave
	:wxDropTarget_GetData
	:wxDropTarget_SetDataObject
	:ELJDragDataObject_Create
	:ELJDragDataObject_Delete
	:wxDataObjectComposite_Create
	:wxDataObjectComposite_Delete
	:wxDataObjectComposite_Add)

(in-package :wxDnd)

(ffi:def-call-out ELJFileDropTarget_Create
	(:name "ELJFileDropTarget_Create")
	(:arguments (_obj (ffi:c-pointer NIL))
		(_func (ffi:c-pointer NIL)))
	(:return-type (ffi:c-pointer NIL))
	(:library +library-name+))

(ffi:def-call-out ELJFileDropTarget_Delete
	(:name "ELJFileDropTarget_Delete")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out ELJTextDropTarget_Create
	(:name "ELJTextDropTarget_Create")
	(:arguments (_obj (ffi:c-pointer NIL))
		(_func (ffi:c-pointer NIL)))
	(:return-type (ffi:c-pointer NIL))
	(:library +library-name+))

(ffi:def-call-out ELJTextDropTarget_Delete
	(:name "ELJTextDropTarget_Delete")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out TextDataObject_Create
	(:name "TextDataObject_Create")
	(:arguments (_txt (ffi:c-pointer NIL)))
	(:return-type (ffi:c-pointer NIL))
	(:library +library-name+))

(ffi:def-call-out TextDataObject_Delete
	(:name "TextDataObject_Delete")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out FileDataObject_Create
	(:name "FileDataObject_Create")
	(:arguments (_lst (ffi:c-pointer NIL))
		(_cnt ffi:int))
	(:return-type (ffi:c-pointer NIL))
	(:library +library-name+))

(ffi:def-call-out FileDataObject_Delete
	(:name "FileDataObject_Delete")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out FileDataObject_AddFile
	(:name "FileDataObject_AddFile")
	(:arguments (_obj (ffi:c-pointer NIL))
		(_fle (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out FileDataObject_GetFilenames
	(:name "FileDataObject_GetFilenames")
	(:arguments (_obj (ffi:c-pointer NIL))
		(_lst (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out BitmapDataObject_Create
	(:name "BitmapDataObject_Create")
	(:arguments (_bmp (ffi:c-pointer NIL)))
	(:return-type (ffi:c-pointer NIL))
	(:library +library-name+))

(ffi:def-call-out BitmapDataObject_CreateEmpty
	(:name "BitmapDataObject_CreateEmpty")
	(:return-type (ffi:c-pointer NIL))
	(:library +library-name+))

(ffi:def-call-out BitmapDataObject_Delete
	(:name "BitmapDataObject_Delete")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out BitmapDataObject_SetBitmap
	(:name "BitmapDataObject_SetBitmap")
	(:arguments (_obj (ffi:c-pointer NIL))
		(_bmp (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out BitmapDataObject_GetBitmap
	(:name "BitmapDataObject_GetBitmap")
	(:arguments (_obj (ffi:c-pointer NIL))
		(_bmp (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out DropSource_Create
	(:name "DropSource_Create")
	(:arguments (data (ffi:c-pointer NIL))
		(win (ffi:c-pointer NIL))
		(copy (ffi:c-pointer NIL))
		(move (ffi:c-pointer NIL))
		(none (ffi:c-pointer NIL)))
	(:return-type (ffi:c-pointer NIL))
	(:library +library-name+))

(ffi:def-call-out DropSource_Delete
	(:name "DropSource_Delete")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out DropSource_DoDragDrop
	(:name "DropSource_DoDragDrop")
	(:arguments (_obj (ffi:c-pointer NIL))
		(_move ffi:int))
	(:return-type ffi:int)
	(:library +library-name+))

(ffi:def-call-out ELJDropTarget_Create
	(:name "ELJDropTarget_Create")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type (ffi:c-pointer NIL))
	(:library +library-name+))

(ffi:def-call-out ELJDropTarget_Delete
	(:name "ELJDropTarget_Delete")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out ELJFileDropTarget_SetOnData
	(:name "ELJFileDropTarget_SetOnData")
	(:arguments (_obj (ffi:c-pointer NIL))
		(_func (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out ELJFileDropTarget_SetOnDrop
	(:name "ELJFileDropTarget_SetOnDrop")
	(:arguments (_obj (ffi:c-pointer NIL))
		(_func (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out ELJFileDropTarget_SetOnEnter
	(:name "ELJFileDropTarget_SetOnEnter")
	(:arguments (_obj (ffi:c-pointer NIL))
		(_func (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out ELJFileDropTarget_SetOnDragOver
	(:name "ELJFileDropTarget_SetOnDragOver")
	(:arguments (_obj (ffi:c-pointer NIL))
		(_func (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out ELJFileDropTarget_SetOnLeave
	(:name "ELJFileDropTarget_SetOnLeave")
	(:arguments (_obj (ffi:c-pointer NIL))
		(_func (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out ELJTextDropTarget_SetOnData
	(:name "ELJTextDropTarget_SetOnData")
	(:arguments (_obj (ffi:c-pointer NIL))
		(_func (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out ELJTextDropTarget_SetOnDrop
	(:name "ELJTextDropTarget_SetOnDrop")
	(:arguments (_obj (ffi:c-pointer NIL))
		(_func (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out ELJTextDropTarget_SetOnEnter
	(:name "ELJTextDropTarget_SetOnEnter")
	(:arguments (_obj (ffi:c-pointer NIL))
		(_func (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out ELJTextDropTarget_SetOnDragOver
	(:name "ELJTextDropTarget_SetOnDragOver")
	(:arguments (_obj (ffi:c-pointer NIL))
		(_func (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out ELJTextDropTarget_SetOnLeave
	(:name "ELJTextDropTarget_SetOnLeave")
	(:arguments (_obj (ffi:c-pointer NIL))
		(_func (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out ELJDropTarget_SetOnData
	(:name "ELJDropTarget_SetOnData")
	(:arguments (_obj (ffi:c-pointer NIL))
		(_func (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out ELJDropTarget_SetOnDrop
	(:name "ELJDropTarget_SetOnDrop")
	(:arguments (_obj (ffi:c-pointer NIL))
		(_func (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out ELJDropTarget_SetOnEnter
	(:name "ELJDropTarget_SetOnEnter")
	(:arguments (_obj (ffi:c-pointer NIL))
		(_func (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out ELJDropTarget_SetOnDragOver
	(:name "ELJDropTarget_SetOnDragOver")
	(:arguments (_obj (ffi:c-pointer NIL))
		(_func (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out ELJDropTarget_SetOnLeave
	(:name "ELJDropTarget_SetOnLeave")
	(:arguments (_obj (ffi:c-pointer NIL))
		(_func (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxDropTarget_GetData
	(:name "wxDropTarget_GetData")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxDropTarget_SetDataObject
	(:name "wxDropTarget_SetDataObject")
	(:arguments (_obj (ffi:c-pointer NIL))
		(_dat (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out ELJDragDataObject_Create
	(:name "ELJDragDataObject_Create")
	(:arguments (_obj (ffi:c-pointer NIL))
		(_fmt (ffi:c-pointer NIL))
		(_func1 (ffi:c-pointer NIL))
		(_func2 (ffi:c-pointer NIL))
		(_func3 (ffi:c-pointer NIL)))
	(:return-type (ffi:c-pointer NIL))
	(:library +library-name+))

(ffi:def-call-out ELJDragDataObject_Delete
	(:name "ELJDragDataObject_Delete")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxDataObjectComposite_Create
	(:name "wxDataObjectComposite_Create")
	(:return-type (ffi:c-pointer NIL))
	(:library +library-name+))

(ffi:def-call-out wxDataObjectComposite_Delete
	(:name "wxDataObjectComposite_Delete")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type NIL)
	(:library +library-name+))

(ffi:def-call-out wxDataObjectComposite_Add
	(:name "wxDataObjectComposite_Add")
	(:arguments (_obj (ffi:c-pointer NIL))
		(_dat (ffi:c-pointer NIL))
		(_preferred ffi:int))
	(:return-type NIL)
	(:library +library-name+))

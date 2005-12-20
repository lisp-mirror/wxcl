
(in-package :wxcl)

(defcfun ("ELJFileDropTarget_Create" ELJFileDropTarget_Create) :pointer
  (_obj :pointer)
  (_func :pointer))

(defcfun ("ELJFileDropTarget_Delete" ELJFileDropTarget_Delete) :void
  (_obj :pointer))

(defcfun ("ELJTextDropTarget_Create" ELJTextDropTarget_Create) :pointer
  (_obj :pointer)
  (_func :pointer))

(defcfun ("ELJTextDropTarget_Delete" ELJTextDropTarget_Delete) :void
  (_obj :pointer))

(defcfun ("TextDataObject_Create" TextDataObject_Create) :pointer
  (_txt :pointer))

(defcfun ("TextDataObject_Delete" TextDataObject_Delete) :void
  (_obj :pointer))

(defcfun ("FileDataObject_Create" FileDataObject_Create) :pointer
  (_lst :pointer)
  (_cnt :int))

(defcfun ("FileDataObject_Delete" FileDataObject_Delete) :void
  (_obj :pointer))

(defcfun ("FileDataObject_AddFile" FileDataObject_AddFile) :void
  (_obj :pointer)
  (_fle :pointer))

(defcfun ("FileDataObject_GetFilenames" FileDataObject_GetFilenames) :int
  (_obj :pointer)
  (_lst :pointer))

(defcfun ("BitmapDataObject_Create" BitmapDataObject_Create) :pointer
  (_bmp :pointer))

(defcfun ("BitmapDataObject_CreateEmpty" BitmapDataObject_CreateEmpty) :pointer)

(defcfun ("BitmapDataObject_Delete" BitmapDataObject_Delete) :void
  (_obj :pointer))

(defcfun ("BitmapDataObject_SetBitmap" BitmapDataObject_SetBitmap) :void
  (_obj :pointer)
  (_bmp :pointer))

(defcfun ("BitmapDataObject_GetBitmap" BitmapDataObject_GetBitmap) :void
  (_obj :pointer)
  (_bmp :pointer))

(defcfun ("DropSource_Create" DropSource_Create) :pointer
  (data :pointer)
  (win :pointer)
  (copy :pointer)
  (move :pointer)
  (none :pointer))

(defcfun ("DropSource_Delete" DropSource_Delete) :void
  (_obj :pointer))

(defcfun ("DropSource_DoDragDrop" DropSource_DoDragDrop) :int
  (_obj :pointer)
  (_move :int))

(defcfun ("ELJDropTarget_Create" ELJDropTarget_Create) :pointer
  (_obj :pointer))

(defcfun ("ELJDropTarget_Delete" ELJDropTarget_Delete) :void
  (_obj :pointer))

(defcfun ("ELJFileDropTarget_SetOnData" ELJFileDropTarget_SetOnData) :void
  (_obj :pointer)
  (_func :pointer))

(defcfun ("ELJFileDropTarget_SetOnDrop" ELJFileDropTarget_SetOnDrop) :void
  (_obj :pointer)
  (_func :pointer))

(defcfun ("ELJFileDropTarget_SetOnEnter" ELJFileDropTarget_SetOnEnter) :void
  (_obj :pointer)
  (_func :pointer))

(defcfun ("ELJFileDropTarget_SetOnDragOver" ELJFileDropTarget_SetOnDragOver) :void
  (_obj :pointer)
  (_func :pointer))

(defcfun ("ELJFileDropTarget_SetOnLeave" ELJFileDropTarget_SetOnLeave) :void
  (_obj :pointer)
  (_func :pointer))

(defcfun ("ELJTextDropTarget_SetOnData" ELJTextDropTarget_SetOnData) :void
  (_obj :pointer)
  (_func :pointer))

(defcfun ("ELJTextDropTarget_SetOnDrop" ELJTextDropTarget_SetOnDrop) :void
  (_obj :pointer)
  (_func :pointer))

(defcfun ("ELJTextDropTarget_SetOnEnter" ELJTextDropTarget_SetOnEnter) :void
  (_obj :pointer)
  (_func :pointer))

(defcfun ("ELJTextDropTarget_SetOnDragOver" ELJTextDropTarget_SetOnDragOver) :void
  (_obj :pointer)
  (_func :pointer))

(defcfun ("ELJTextDropTarget_SetOnLeave" ELJTextDropTarget_SetOnLeave) :void
  (_obj :pointer)
  (_func :pointer))

(defcfun ("ELJDropTarget_SetOnData" ELJDropTarget_SetOnData) :void
  (_obj :pointer)
  (_func :pointer))

(defcfun ("ELJDropTarget_SetOnDrop" ELJDropTarget_SetOnDrop) :void
  (_obj :pointer)
  (_func :pointer))

(defcfun ("ELJDropTarget_SetOnEnter" ELJDropTarget_SetOnEnter) :void
  (_obj :pointer)
  (_func :pointer))

(defcfun ("ELJDropTarget_SetOnDragOver" ELJDropTarget_SetOnDragOver) :void
  (_obj :pointer)
  (_func :pointer))

(defcfun ("ELJDropTarget_SetOnLeave" ELJDropTarget_SetOnLeave) :void
  (_obj :pointer)
  (_func :pointer))

(defcfun ("wxDropTarget_GetData" wxDropTarget_GetData) :void
  (_obj :pointer))

(defcfun ("wxDropTarget_SetDataObject" wxDropTarget_SetDataObject) :void
  (_obj :pointer)
  (_dat :pointer))

(defcfun ("ELJDragDataObject_Create" ELJDragDataObject_Create) :pointer
  (_obj :pointer)
  (_fmt :pointer)
  (_func1 :pointer)
  (_func2 :pointer)
  (_func3 :pointer))

(defcfun ("ELJDragDataObject_Delete" ELJDragDataObject_Delete) :void
  (_obj :pointer))

(defcfun ("wxDataObjectComposite_Create" wxDataObjectComposite_Create) :pointer)

(defcfun ("wxDataObjectComposite_Delete" wxDataObjectComposite_Delete) :void
  (_obj :pointer))

(defcfun ("wxDataObjectComposite_Add" wxDataObjectComposite_Add) :void
  (_obj :pointer)
  (_dat :pointer)
  (_preferred :int))

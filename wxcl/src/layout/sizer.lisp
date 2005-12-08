(in-package :wxcl-layout)

(defmethod add ((obj sizer)(win wxcl-windows:window) &key (option 0) (flag 0) (border 0) (userdata nil))
  (wxSizer_AddWindow (object-pointer obj) (object-pointer win)
		     option flag border (when userData (object-pointer userData))))

(defmethod add ((obj sizer) (sz sizer) &key (option 0) (flag 0) (border 0) (userdata nil))
  (wxSizer_AddSizer (object-pointer obj) (object-pointer sz)
		     option flag border (when userData (object-pointer userData))))

(defmethod add-spacer ((obj sizer) width height &key (option 0) (flag 0) (border 0) (userdata nil)) 
  (wxSizer_Add (object-pointer obj) width height
	       option flag border (when userData (object-pointer userData))))

(defmethod insert ((obj sizer) before (win wxcl-windows:window) &key (option 0) (flag 0) (border 0) (userdata nil))
  (wxSizer_InsertWindow (object-pointer obj) before (object-pointer win)
			option flag border (when userData (object-pointer userData))))

(defmethod insert ((obj sizer) before (sz sizer) &key (option 0) (flag 0) (border 0) (userdata nil))
  (wxSizer_InsertSizer (object-pointer obj) before (object-pointer sz)
		       option flag border (when userData (object-pointer userData))))

(defmethod insert-spacer ((obj sizer) before width height &key (option 0) (flag 0) (border 0) (userdata nil)) 
  (wxSizer_Insert (object-pointer obj) before width height
		  option flag border (when userData (object-pointer userData))))

(defmethod prepend ((obj sizer) (win wxcl-windows:window) &key (option 0) (flag 0) (border 0) (userdata nil))
  (wxSizer_PrependWindow (object-pointer obj) (object-pointer win)
			 option flag border (when userData (object-pointer userData))))

(defmethod prepend ((obj sizer) (sz sizer) &key (option 0) (flag 0) (border 0) (userdata nil))
  (wxSizer_PrependSizer (object-pointer obj) (object-pointer sz)
		       option flag border (when userData (object-pointer userData))))

(defmethod prepend-spacer ((obj sizer) width height &key (option 0) (flag 0) (border 0) (userdata nil)) 
  (wxSizer_Prepend (object-pointer obj) width height
		   option flag border (when userData (object-pointer userData))))

(defmethod detach ((obj sizer) (win wxcl-windows:window))
  (= 1 (wxSizer_DetachWindow (object-pointer obj) (object-pointer win))))

(defmethod detach ((obj sizer) (sz sizer))
  (= 1 (wxSizer_DetachSizer (object-pointer obj) (object-pointer sz))))

(defmethod detach ((obj sizer) (pos integer))
  (= 1 (wxSizer_Detach (object-pointer obj) pos)))

(defmethod (setf min-size) (size (obj sizer))
  (wxSizer_SetMinSize (object-pointer obj) (size-width size) (size-height size)))

(defmethod (setf item-min-size) (size (obj sizer) (win wxcl-windows:window))
  (wxSizer_SetItemMinSizeWindow (object-pointer obj) (object-pointer win) (size-width size) (size-height size)))

(defmethod (setf item-min-size) (size (obj sizer) (sz sizer))
  (wxSizer_SetItemMinSizeSizer (object-pointer obj) (object-pointer sz) (size-width size) (size-height size)))

(defmethod (setf item-min-size) (size (obj sizer) (pos integer))
  (wxSizer_SetItemMinSize (object-pointer obj) pos (size-width size) (size-height size)))

(defmethod size ((obj sizer))
  (let (w h)
    (multiple-value-setq (w h) (wxSizer_GetSize (object-pointer obj)))
    (make-instance 'size :width w :height h)))

(defmethod sizer-position ((obj sizer))
  (let (w h)
    (multiple-value-setq (w h) (wxSizer_GetPosition (object-pointer obj)))
    (make-instance 'size :width w :height h)))

(defmethod min-size ((obj sizer))
  (let (w h)
    (multiple-value-setq (w h) (wxSizer_GetMinSize (object-pointer obj)))
    (make-instance 'size :width w :height h)))

(defmethod recalc-sizes ((obj sizer)) 
  (wxSizer_RecalcSizes (object-pointer obj)))

(defmethod calc-min ((obj sizer))
  (let (w h)
    (multiple-value-setq (w h) (wxSizer_CalcMin (object-pointer obj)))
    (make-instance 'size :width w :height h)))

(defmethod layout ((obj sizer))
  (wxSizer_Layout (object-pointer obj)))

(defmethod fit ((obj sizer) (win wxcl-windows:window))
  (wxSizer_Fit (object-pointer obj) (object-pointer win)))

(defmethod (setf size-hints) ((win wxcl-windows:window) (obj sizer))
  (wxSizer_SetSizeHints (object-pointer obj) (object-pointer win)))

; (defmethod children ((obj sizer)) wxSizer_GetChildren
; 	(:name "wxSizer_GetChildren")
; 	(:arguments (_obj (ffi:c-pointer NIL))
; 		(_res (ffi:c-pointer NIL))
; 		(_cnt ffi:int))
; 	(:return-type ffi:int)
; 	(:library +library-name+))

(defmethod set-dimension ((obj sizer) x y width height)
  (wxSizer_SetDimension (object-pointer obj) x y width height))



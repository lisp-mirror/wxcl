(in-package :wxcl-structures)

(ffi:default-foreign-language :stdc)

(ffi:def-call-out wxAcceleratorTable_Create
    (:name "wxAcceleratorTable_Create")
  (:arguments (n ffi:int)
	      (entries (c-array-ptr (ffi:c-pointer NIL))))
  (:return-type (ffi:c-pointer NIL))
  (:library +library-name+))

(ffi:def-call-out wxAcceleratorTable_Delete
    (:name "wxAcceleratorTable_Delete")
  (:arguments (_obj (ffi:c-pointer NIL)))
  (:return-type NIL)
  (:library +library-name+))

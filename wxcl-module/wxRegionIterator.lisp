;;;wxRegionIterator.lisp
;;;License  : GNU General Public License (GPL)
;;;Author(s) : Surendra Singhi (surendra@asu.edu) 
;;;Copyright (C) 2005 Surendra Singhi 
;;;See the file LICENSE for information on usage and redistribution.
;;;
;;; $Header$
;;;

(defpackage :wxRegionIterator
  (:use :common-lisp :ffi :wxCL)
  (:export
	:wxRegionIterator_Create
	:wxRegionIterator_CreateFromRegion
	:wxRegionIterator_Delete
	:wxRegionIterator_Reset
	:wxRegionIterator_ResetToRegion
	:wxRegionIterator_HaveRects
	:wxRegionIterator_Next
	:wxRegionIterator_GetX
	:wxRegionIterator_GetY
	:wxRegionIterator_GetWidth
	:wxRegionIterator_GetHeight))

(in-package :wxRegionIterator)

(ffi:default-foreign-language :stdc)

(ffi:c-lines "#include <wxc.h>~%")

(ffi:def-call-out wxRegionIterator_Create
	(:name "wxRegionIterator_Create")
	(:return-type (ffi:c-pointer NIL))
	) ;; (:library +library-name+))

(ffi:def-call-out wxRegionIterator_CreateFromRegion
	(:name "wxRegionIterator_CreateFromRegion")
	(:arguments (region (ffi:c-pointer NIL)))
	(:return-type (ffi:c-pointer NIL))
	) ;; (:library +library-name+))

(ffi:def-call-out wxRegionIterator_Delete
	(:name "wxRegionIterator_Delete")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type NIL)
	) ;; (:library +library-name+))

(ffi:def-call-out wxRegionIterator_Reset
	(:name "wxRegionIterator_Reset")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type NIL)
	) ;; (:library +library-name+))

(ffi:def-call-out wxRegionIterator_ResetToRegion
	(:name "wxRegionIterator_ResetToRegion")
	(:arguments (_obj (ffi:c-pointer NIL))
		(region (ffi:c-pointer NIL)))
	(:return-type NIL)
	) ;; (:library +library-name+))

(ffi:def-call-out wxRegionIterator_HaveRects
	(:name "wxRegionIterator_HaveRects")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	) ;; (:library +library-name+))

(ffi:def-call-out wxRegionIterator_Next
	(:name "wxRegionIterator_Next")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type NIL)
	) ;; (:library +library-name+))

(ffi:def-call-out wxRegionIterator_GetX
	(:name "wxRegionIterator_GetX")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	) ;; (:library +library-name+))

(ffi:def-call-out wxRegionIterator_GetY
	(:name "wxRegionIterator_GetY")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	) ;; (:library +library-name+))

(ffi:def-call-out wxRegionIterator_GetWidth
	(:name "wxRegionIterator_GetWidth")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	) ;; (:library +library-name+))

(ffi:def-call-out wxRegionIterator_GetHeight
	(:name "wxRegionIterator_GetHeight")
	(:arguments (_obj (ffi:c-pointer NIL)))
	(:return-type ffi:int)
	) ;; (:library +library-name+))

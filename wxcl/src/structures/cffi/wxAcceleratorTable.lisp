;;;wxAcceleratorTable.lisp
;;;License  : wxWindows License 3.1
;;;Author(s) : Surendra Singhi (surendra@asu.edu) 
;;;Copyright (C) 2005 Surendra Singhi 
;;;See the file LICENSE for information on usage and redistribution.
;;;
;;; $Header$
;;;

(in-package :wxcl-structures)

(defcfun ("wxAcceleratorTable_Create" wxAcceleratorTable_Create) :pointer
  (n :int)
  (entries :pointer))

(defcfun ("wxAcceleratorTable_Delete" wxAcceleratorTable_Delete) :void
  (_obj :pointer))

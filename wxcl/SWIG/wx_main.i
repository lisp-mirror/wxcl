###wx_main.i
###License  : wxWindows License 3.1
###Author(s) : Surendra Singhi (surendra@asu.edu) 
###Copyright (C) 2005 Surendra Singhi 
###See the file LICENSE for information on usage and redistribution.
###
### $Header$
###


%module wx_main

%include "common.i"

%insert("lisphead") %{
;;;wx_main.lisp
;;;License  : wxWindows License 3.1
;;;Author(s) : Surendra Singhi (surendra@asu.edu) 
;;;Copyright (C) 2005 Surendra Singhi 
;;;See the file LICENSE for information on usage and redistribution.
;;;
;;; $Header$
;;;

(in-package :wxcl)

(defctype :wxstring :pointer)

(defmethod cffi:translate-from-foreign (val (name (eql ':wxstring)))
  "Converts a foreign wxString pointer to lisp, and frees it."
  (unwind-protect
       (wxStringc_str val)
       ;(foreign-string-to-lisp (wxStringc_str val) (wxString_GetLength val) nil)
    (wxString_Delete val)))

%}

%ignore ELJApp_initialize;

%include "src/ewxw/../ewxw_main.cpp"


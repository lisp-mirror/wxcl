###wxRc.i
###License  : wxWindows License 3.1
###Author(s) : Surendra Singhi (surendra@asu.edu) 
###Copyright (C) 2005 Surendra Singhi 
###See the file LICENSE for information on usage and redistribution.
###
### $Header$
###


%module wxRC

%include "../common.i"

%insert("lisphead") %{
;;;wxRc.lisp
;;;License  : wxWindows License 3.1
;;;Author(s) : Surendra Singhi (surendra@asu.edu) 
;;;Copyright (C) 2005 Surendra Singhi 
;;;See the file LICENSE for information on usage and redistribution.
;;;
;;; $Header$
;;;

(in-package :wxcl)

%}

%include "src/ewxw/eljrc.cpp"


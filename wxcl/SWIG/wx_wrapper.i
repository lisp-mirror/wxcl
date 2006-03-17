###wx_wrapper.i
###License  : wxWindows License 3.1
###Author(s) : Surendra Singhi (surendra@asu.edu) 
###Copyright (C) 2005 Surendra Singhi 
###See the file LICENSE for information on usage and redistribution.
###
### $Header$
###


%module wx_wrapper

%include "common.i"

%insert("lisphead") %{
;;;wx_wrapper.lisp
;;;License  : wxWindows License 3.1
;;;Author(s) : Surendra Singhi (surendra@asu.edu) 
;;;Copyright (C) 2005 Surendra Singhi 
;;;See the file LICENSE for information on usage and redistribution.
;;;
;;; $Header$
;;;

(in-package :wxcl)

(defcfun ("wxStringc_str" wxStringc_str) :pointer
  (s :wxstring))

%}

%ignore initIdleTimer;
%ignore doneIdleTimer;
%ignore wxStringc_str(wxString*);
 
%include "src/ewxw/../wrapper.cpp"


###wxButton.i
###License  : wxWindows License 3.1
###Author(s) : Surendra Singhi (surendra@asu.edu) 
###Copyright (C) 2005 Surendra Singhi 
###See the file LICENSE for information on usage and redistribution.
###
### $Header$
###


%module wxButton

%include "../common.i"

%insert("lisphead") %{
;;;wxButton.lisp
;;;License  : wxWindows License 3.1
;;;Author(s) : Surendra Singhi (surendra@asu.edu) 
;;;Copyright (C) 2005 Surendra Singhi 
;;;See the file LICENSE for information on usage and redistribution.
;;;
;;; $Header$
;;;

(in-package :wxcl)

%}

%include "src/ewxw/eljbutton.cpp"

//%module(directors="1") wxButton

//%include <wx/wx.h>
//%ignore wxButton::wxButton();

//%import "include/wx/object.h"
//%import "include/wx/evthandler.h"
//%import "include/wx/window.h"
//%import "include/wx/control.h"


//#define WXDLLEXPORT 
//#define DECLARE_DYNAMIC_CLASS_NO_COPY(x) 

//%include "include/wx/msw/button.h"

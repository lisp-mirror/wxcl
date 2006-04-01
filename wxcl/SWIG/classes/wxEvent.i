###wxEvent.i
###License  : wxWindows License 3.1
###Author(s) : Surendra Singhi (surendra@asu.edu) 
###Copyright (C) 2005 Surendra Singhi 
###See the file LICENSE for information on usage and redistribution.
###
### $Header$
###


%module wxEvent

%include "../common.i"

%insert("lisphead") %{
;;;wxEvent.lisp
;;;License  : wxWindows License 3.1
;;;Author(s) : Surendra Singhi (surendra@asu.edu) 
;;;Copyright (C) 2005 Surendra Singhi 
;;;See the file LICENSE for information on usage and redistribution.
;;;
;;; $Header$
;;;

(in-package :wxcl)

(defcvar "wxEVENT_COMMAND_BUTTON_CLICKED" :pointer)
(defcvar "wxEVENT_COMMAND_MENU_SELECTED" :pointer)

%}

%include "src/eljevent.cpp"

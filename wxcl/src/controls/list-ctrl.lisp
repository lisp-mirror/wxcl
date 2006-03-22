;;;list-ctrl.lisp
;;;License  : wxWindows License 3.1
;;;Author(s): Jack Unrue (jdunrue@gmail.com), Surendra Singhi (surendra@asu.edu) 
;;;Copyright (c) 2005 Jack D. Unrue, Surendra Singhi
;;;See the file LICENSE for information on usage and redistribution.
;;;
;;; $Header$
;;;

(in-package :wxcl)

(defconstant +lc-vrules+          #x0001)
(defconstant +lc-hrules+          #x0002)
(defconstant +lc-icon+            #x0004)
(defconstant +lc-small-icon+      #x0008)
(defconstant +lc-list+            #x0010)
(defconstant +lc-report+          #x0020)
(defconstant +lc-align-top+       #x0040)
(defconstant +lc-align-left+      #x0080)
(defconstant +lc-autoarrange+     #x0100)
(defconstant +lc-user-text+       #x0200)
(defconstant +lc-edit-labels+     #x0400)
(defconstant +lc-no-header+       #x0800)
(defconstant +lc-no-sort-header+  #x1000)
(defconstant +lc-single-sel+      #x2000)
(defconstant +lc-sort-ascending+  #x4000)
(defconstant +lc-sort-descending+ #x8000)

(defun make-list-ctrl (parent &key (id -1) (pos +default-position+) (size +default-size+) (style +lc-icon+))
    "Create a list control."
    (make-wx-instance 'list-ctrl
		      (wxListCtrl_Create (cffi-object-pointer parent)
				       id (point-x pos) (point-y pos) (size-width size)
				       (size-height size) style)))

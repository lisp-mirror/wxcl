;;;wxControlWithItems.lisp
;;;License  : GNU General Public License (GPL)
;;;Author(s) : Surendra Singhi (surendra@asu.edu) 
;;;Copyright (C) 2005 Surendra Singhi 
;;;See the file LICENSE for information on usage and redistribution.
;;;
;;; $Header$
;;;
(in-package :wxcl-controls)

(defcfun ("wxControlWithItems_Clear" wxControlWithItems_Clear) :void
  (_obj :pointer))

(defcfun ("wxControlWithItems_Delete" wxControlWithItems_Delete) :void
  (_obj :pointer)
  (n :int))

(defcfun ("wxControlWithItems_GetCount" wxControlWithItems_GetCount) :int
  (_obj :pointer))

(defcfun ("wxControlWithItems_GetString" wxControlWithItems_GetString) :lisp-string
  (_obj :pointer)
  (n :int))

(defcfun ("wxControlWithItems_SetString" wxControlWithItems_SetString) :void
  (_obj :pointer)
  (n :int)
  (s :string))

(defcfun ("wxControlWithItems_FindString" wxControlWithItems_FindString) :int
  (_obj :pointer)
  (s :string))

(defcfun ("wxControlWithItems_SetSelection" wxControlWithItems_SetSelection) :void
  (_obj :pointer)
  (n :int))

(defcfun ("wxControlWithItems_GetSelection" wxControlWithItems_GetSelection) :int
  (_obj :pointer))

(defcfun ("wxControlWithItems_Append" wxControlWithItems_Append) :void
  (_obj :pointer)
  (item :string))

(defcfun ("wxControlWithItems_AppendData" wxControlWithItems_AppendData) :void
  (_obj :pointer)
  (item :string)
  (_data :pointer))

(defcfun ("wxControlWithItems_Insert" wxControlWithItems_Insert) :void
  (_obj :pointer)
  (item :string)
  (pos :int))

(defcfun ("wxControlWithItems_InsertData" wxControlWithItems_InsertData) :void
  (_obj :pointer)
  (item :string)
  (pos :int)
  (_data :pointer))

(defcfun ("wxControlWithItems_SetClientData" wxControlWithItems_SetClientData) :void
  (_obj :pointer)
  (n :int)
  (clientData :pointer))

(defcfun ("wxControlWithItems_GetClientData" wxControlWithItems_GetClientData) :pointer
  (_obj :pointer)
  (n :int))

(defcfun ("wxControlWithItems_GetStringSelection" wxControlWithItems_GetStringSelection) :lisp-string
  (_obj :pointer))

(defcfun ("wxControlWithItems_SetStringSelection" wxControlWithItems_SetStringSelection) :int
  (_obj :pointer)
  (str :string))

(in-package :wxcl-dialogs)

(defcfun ("wxDialog_Create" wxDialog_Create) :pointer
  (_prt :pointer)
  (_id :int)
  (_txt :string)
  (_lft :int)
  (_top :int)
  (_wdt :int)
  (_hgt :int)
  (_stl :int))

(defcfun ("wxDialog_IsModal" wxDialog_IsModal) :int
  (_obj :pointer))

(defcfun ("wxDialog_ShowModal" wxDialog_ShowModal) :int
  (_obj :pointer))

(defcfun ("wxDialog_EndModal" wxDialog_EndModal) :void
  (_obj :pointer)
  (retCode :int))

(defcfun ("wxDialog_SetReturnCode" wxDialog_SetReturnCode) :void
  (_obj :pointer)
  (returnCode :int))

(defcfun ("wxDialog_GetReturnCode" wxDialog_GetReturnCode) :int
  (_obj :pointer))

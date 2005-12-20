
(in-package :wxcl)

(defcfun ("wxClipboard_Create" wxClipboard_Create) :pointer)

(defcfun ("wxClipboard_Delete" wxClipboard_Delete) :void
  (_obj :pointer))

(defcfun ("wxClipboard_Open" wxClipboard_Open) :int
  (_obj :pointer))

(defcfun ("wxClipboard_Close" wxClipboard_Close) :void
  (_obj :pointer))

(defcfun ("wxClipboard_IsOpened" wxClipboard_IsOpened) :int
  (_obj :pointer))

(defcfun ("wxClipboard_SetData" wxClipboard_SetData) :int
  (_obj :pointer)
  (data :pointer))

(defcfun ("wxClipboard_AddData" wxClipboard_AddData) :int
  (_obj :pointer)
  (data :pointer))

(defcfun ("wxClipboard_IsSupported" wxClipboard_IsSupported) :int
  (_obj :pointer)
  (format :pointer))

(defcfun ("wxClipboard_GetData" wxClipboard_GetData) :int
  (_obj :pointer)
  (data :pointer))

(defcfun ("wxClipboard_Clear" wxClipboard_Clear) :void
  (_obj :pointer))

(defcfun ("wxClipboard_Flush" wxClipboard_Flush) :int
  (_obj :pointer))

(defcfun ("wxClipboard_UsePrimarySelection" wxClipboard_UsePrimarySelection) :void
  (_obj :pointer)
  (primary :int))

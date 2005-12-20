
(in-package :wxcl)

(defcfun ("wxHtmlHelpController_Create" wxHtmlHelpController_Create) :pointer
  (_style :int))

(defcfun ("wxHtmlHelpController_Delete" wxHtmlHelpController_Delete) :void
  (_obj :pointer))

(defcfun ("wxHtmlHelpController_SetTitleFormat" wxHtmlHelpController_SetTitleFormat) :void
  (_obj :pointer)
  (format :pointer))

(defcfun ("wxHtmlHelpController_SetTempDir" wxHtmlHelpController_SetTempDir) :void
  (_obj :pointer)
  (path :pointer))

(defcfun ("wxHtmlHelpController_AddBook" wxHtmlHelpController_AddBook) :int
  (_obj :pointer)
  (book :pointer)
  (show_wait_msg :int))

(defcfun ("wxHtmlHelpController_Display" wxHtmlHelpController_Display) :int
  (_obj :pointer)
  (x :pointer))

(defcfun ("wxHtmlHelpController_DisplayNumber" wxHtmlHelpController_DisplayNumber) :int
  (_obj :pointer)
  (id :int))

(defcfun ("wxHtmlHelpController_DisplayContents" wxHtmlHelpController_DisplayContents) :int
  (_obj :pointer))

(defcfun ("wxHtmlHelpController_DisplayIndex" wxHtmlHelpController_DisplayIndex) :int
  (_obj :pointer))

(defcfun ("wxHtmlHelpController_KeywordSearch" wxHtmlHelpController_KeywordSearch) :int
  (_obj :pointer)
  (keyword :pointer))

(defcfun ("wxHtmlHelpController_GetFrame" wxHtmlHelpController_GetFrame) :pointer
  (_obj :pointer))

(defcfun ("wxHtmlHelpController_UseConfig" wxHtmlHelpController_UseConfig) :void
  (_obj :pointer)
  (config :pointer)
  (rootpath :pointer))

(defcfun ("wxHtmlHelpController_ReadCustomization" wxHtmlHelpController_ReadCustomization) :void
  (_obj :pointer)
  (cfg :pointer)
  (path :pointer))

(defcfun ("wxHtmlHelpController_WriteCustomization" wxHtmlHelpController_WriteCustomization) :void
  (_obj :pointer)
  (cfg :pointer)
  (path :pointer))

(defcfun ("wxHtmlHelpController_Initialize" wxHtmlHelpController_Initialize) :int
  (_obj :pointer)
  (file :pointer))

(defcfun ("wxHtmlHelpController_SetViewer" wxHtmlHelpController_SetViewer) :void
  (_obj :pointer)
  (viewer :pointer)
  (flags :int))

(defcfun ("wxHtmlHelpController_LoadFile" wxHtmlHelpController_LoadFile) :int
  (_obj :pointer)
  (file :pointer))

(defcfun ("wxHtmlHelpController_DisplaySectionNumber" wxHtmlHelpController_DisplaySectionNumber) :int
  (_obj :pointer)
  (sectionNo :int))

(defcfun ("wxHtmlHelpController_DisplaySection" wxHtmlHelpController_DisplaySection) :int
  (_obj :pointer)
  (section :pointer))

(defcfun ("wxHtmlHelpController_DisplayBlock" wxHtmlHelpController_DisplayBlock) :int
  (_obj :pointer)
  (blockNo :int))

(defcfun ("wxHtmlHelpController_SetFrameParameters" wxHtmlHelpController_SetFrameParameters) :void
  (_obj :pointer)
  (title :pointer)
  (width :int)
  (height :int)
  (pos_x :int)
  (pos_y :int)
  (newFrameEachTime :int))

(defcfun ("wxHtmlHelpController_GetFrameParameters" wxHtmlHelpController_GetFrameParameters) :pointer
  (_obj :pointer)
  (title :pointer)
  (width :int)
  (height :int)
  (pos_x :int)
  (pos_y :int)
  (newFrameEachTime :int))

(defcfun ("wxHtmlHelpController_Quit" wxHtmlHelpController_Quit) :int
  (_obj :pointer))

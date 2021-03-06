;;;constants.lisp
;;;License  : wxWindows License 3.1
;;;Author(s) : Surendra Singhi (surendra@asu.edu) 
;;;Copyright (C) 2005 Surendra Singhi 
;;;See the file LICENSE for information on usage and redistribution.
;;;
;;; $Header$
;;;

(defconstant wxACCEL_ALT 1)
(defconstant wxACCEL_CTRL 2)
(defconstant wxACCEL_SHIFT 4)
(defconstant wxACCEL_NORMAL 0)
(defconstant wxNULL_FLAG 0)
(defconstant wxEVT_NULL 0)
(defconstant wxEVT_FIRST 10000)
(defconstant wxJOYSTICK1 0)
(defconstant wxJOYSTICK2 1)
(defconstant wxJOY_BUTTON1 1)
(defconstant wxJOY_BUTTON2 2)
(defconstant wxJOY_BUTTON3 4)
(defconstant wxJOY_BUTTON4 8)
(defconstant wxUNKNOWN_PLATFORM 1)
(defconstant wxCURSES 2)
(defconstant wxXVIEW_X 3)
(defconstant wxMOTIF_X 4)
(defconstant wxCOSE_X 5)
(defconstant wxNEXTSTEP 6)
(defconstant wxMACINTOSH 7)
(defconstant wxBEOS 8)
(defconstant wxGTK 9)
(defconstant wxGTK_WIN32 10)
(defconstant wxGTK_OS2 11)
(defconstant wxGTK_BEOS 12)
(defconstant wxQT 13)
(defconstant wxGEOS 14)
(defconstant wxOS2_PM 15)
(defconstant wxWINDOWS 16)
(defconstant wxPENWINDOWS 17)
(defconstant wxWINDOWS_NT 18)
(defconstant wxWIN32S 19)
(defconstant wxWIN95 20)
(defconstant wxWIN386 21)
(defconstant wxMGL_UNIX 22)
(defconstant wxMGL_X 23)
(defconstant wxMGL_WIN32 24)
(defconstant wxMGL_OS2 25)
(defconstant wxWINDOWS_OS2 26)
(defconstant wxUNIX 27)
(defconstant wxBIG_ENDIAN 4321)
(defconstant wxLITTLE_ENDIAN 1234)
(defconstant wxPDP_ENDIAN 3412)
(defconstant wxCENTRE 1)
(defconstant wxCENTER 1)
(defconstant wxCENTER_FRAME 0)
(defconstant wxCENTRE_ON_SCREEN 2)
(defconstant wxHORIZONTAL 4)
(defconstant wxVERTICAL 8)
(defconstant wxBOTH 12)
(defconstant wxLEFT 16)
(defconstant wxRIGHT 32)
(defconstant wxUP 64)
(defconstant wxDOWN 128)
(defconstant wxTOP 64)
(defconstant wxBOTTOM 128)
(defconstant wxNORTH 64)
(defconstant wxSOUTH 128)
(defconstant wxWEST 16)
(defconstant wxEAST 32)
(defconstant wxALL 240)
(defconstant wxALIGN_NOT 0)
(defconstant wxALIGN_CENTER_HORIZONTAL 256)
(defconstant wxALIGN_CENTRE_HORIZONTAL 256)
(defconstant wxALIGN_LEFT 0)
(defconstant wxALIGN_TOP 0)
(defconstant wxALIGN_RIGHT 512)
(defconstant wxALIGN_BOTTOM 1024)
(defconstant wxALIGN_CENTER_VERTICAL 2048)
(defconstant wxALIGN_CENTRE_VERTICAL 2048)
(defconstant wxALIGN_CENTER 2304)
(defconstant wxALIGN_CENTRE 2304)
(defconstant wxSTRETCH_NOT 0)
(defconstant wxSHRINK 4096)
(defconstant wxGROW 8192)
(defconstant wxEXPAND 8192)
(defconstant wxSHAPED 16384)
(defconstant wxHSCROLL 1073741824)
(defconstant wxCAPTION 536870912)
(defconstant wxDOUBLE_BORDER 268435456)
(defconstant wxSUNKEN_BORDER 134217728)
(defconstant wxRAISED_BORDER 67108864)
(defconstant wxSTATIC_BORDER 16777216)
(defconstant wxBORDER 33554432)
(defconstant wxTRANSPARENT_WINDOW 1048576)
(defconstant wxNO_BORDER 2097152)
(defconstant wxUSER_COLOURS 8388608)
(defconstant wxNO_3D 8388608)
(defconstant wxCLIP_CHILDREN 4194304)
(defconstant wxTAB_TRAVERSAL 524288)
(defconstant wxWANTS_CHARS 262144)
(defconstant wxRETAINED 131072)
(defconstant wxNO_FULL_REPAINT_ON_RESIZE 65536)
(defconstant wxWS_EX_VALIDATE_RECURSIVELY 1)
(defconstant wxSTAY_ON_TOP 32768)
(defconstant wxICONIZE 16384)
(defconstant wxMAXIMIZE 8192)
(defconstant wxSYSTEM_MENU 2048)
(defconstant wxMINIMIZE_BOX 1024)
(defconstant wxMAXIMIZE_BOX 512)
(defconstant wxDEFAULT_FRAME_STYLE 536878656)
(defconstant wxTINY_CAPTION_HORIZ 256)
(defconstant wxTINY_CAPTION_VERT 128)
(defconstant wxRESIZE_BORDER 64)
(defconstant wxDIALOG_MODAL 32)
(defconstant wxDIALOG_MODELESS 0)
(defconstant wxFRAME_FLOAT_ON_PARENT 8)
(defconstant wxFRAME_NO_WINDOW_MENU 256)
(defconstant wxED_CLIENT_MARGIN 4)
(defconstant wxED_BUTTONS_BOTTOM 0)
(defconstant wxED_BUTTONS_RIGHT 2)
(defconstant wxED_STATIC_LINE 1)
(defconstant wxTB_3DBUTTONS 16)
(defconstant wxTB_FLAT 32)
(defconstant wxTB_DOCKABLE 64)
(defconstant wxMB_DOCKABLE 1)
(defconstant wxMENU_TEAROFF 1)
(defconstant wxCOLOURED 2048)
(defconstant wxFIXED_LENGTH 1024)
(defconstant wxLB_SORT 16)
(defconstant wxLB_SINGLE 32)
(defconstant wxLB_MULTIPLE 64)
(defconstant wxLB_EXTENDED 128)
(defconstant wxLB_OWNERDRAW 256)
(defconstant wxLB_NEEDED_SB 512)
(defconstant wxLB_ALWAYS_SB 1024)
(defconstant wxTE_READONLY 16)
(defconstant wxTE_MULTILINE 32)
(defconstant wxTE_PROCESS_TAB 64)
(defconstant wxTE_RICH 128)
(defconstant wxTE_NO_VSCROLL 256)
(defconstant wxTE_AUTO_SCROLL 512)
(defconstant wxPROCESS_ENTER 1024)
(defconstant wxPASSWORD 2048)
(defconstant wxCB_SIMPLE 4)
(defconstant wxCB_SORT 8)
(defconstant wxCB_READONLY 16)
(defconstant wxCB_DROPDOWN 32)
(defconstant wxRB_GROUP 4)
(defconstant wxGA_PROGRESSBAR 16)
(defconstant wxGA_SMOOTH 32)
(defconstant wxSL_NOTIFY_DRAG 0)
(defconstant wxSL_AUTOTICKS 16)
(defconstant wxSL_LABELS 32)
(defconstant wxSL_LEFT 64)
(defconstant wxSL_TOP 128)
(defconstant wxSL_RIGHT 256)
(defconstant wxSL_BOTTOM 512)
(defconstant wxSL_BOTH 1024)
(defconstant wxSL_SELRANGE 2048)
(defconstant wxBU_AUTODRAW 4)
(defconstant wxBU_NOAUTODRAW 0)
(defconstant wxBU_LEFT 64)
(defconstant wxBU_TOP 128)
(defconstant wxBU_RIGHT 256)
(defconstant wxBU_BOTTOM 512)
(defconstant wxLC_ICON 4)
(defconstant wxLC_SMALL_ICON 8)
(defconstant wxLC_LIST 16)
(defconstant wxLC_REPORT 32)
(defconstant wxLC_ALIGN_TOP 64)
(defconstant wxLC_ALIGN_LEFT 128)
(defconstant wxLC_AUTOARRANGE 256)
(defconstant wxLC_USER_TEXT 512)
(defconstant wxLC_EDIT_LABELS 1024)
(defconstant wxLC_NO_HEADER 2048)
(defconstant wxLC_NO_SORT_HEADER 4096)
(defconstant wxLC_SINGLE_SEL 8192)
(defconstant wxLC_SORT_ASCENDING 16384)
(defconstant wxLC_SORT_DESCENDING 32768)
(defconstant wxSP_ARROW_KEYS 4096)
(defconstant wxSP_WRAP 8192)
(defconstant wxSP_NOBORDER 0)
(defconstant wxSP_NOSASH 16)
(defconstant wxSP_BORDER 32)
(defconstant wxSP_PERMIT_UNSPLIT 64)
(defconstant wxSP_LIVE_UPDATE 128)
(defconstant wxSP_3DSASH 256)
(defconstant wxSP_3DBORDER 512)
(defconstant wxSP_3D 768)
(defconstant wxSP_FULLSASH 1024)
(defconstant wxFRAME_TOOL_WINDOW 4)
(defconstant wxTC_MULTILINE 0)
(defconstant wxTC_RIGHTJUSTIFY 16)
(defconstant wxTC_FIXEDWIDTH 32)
(defconstant wxTC_OWNERDRAW 64)
(defconstant wxNB_FIXEDWIDTH 16)
(defconstant wxNB_LEFT 32)
(defconstant wxNB_RIGHT 64)
(defconstant wxNB_BOTTOM 128)
(defconstant wxST_SIZEGRIP 16)
(defconstant wxST_NO_AUTORESIZE 1)
(defconstant wxPD_CAN_ABORT 1)
(defconstant wxPD_APP_MODAL 2)
(defconstant wxPD_AUTO_HIDE 4)
(defconstant wxPD_ELAPSED_TIME 8)
(defconstant wxPD_ESTIMATED_TIME 16)
(defconstant wxPD_REMAINING_TIME 64)
(defconstant wxHW_SCROLLBAR_NEVER 2)
(defconstant wxHW_SCROLLBAR_AUTO 4)
(defconstant wxCAL_SUNDAY_FIRST 0)
(defconstant wxCAL_MONDAY_FIRST 1)
(defconstant wxCAL_SHOW_HOLIDAYS 2)
(defconstant wxCAL_NO_YEAR_CHANGE 4)
(defconstant wxCAL_NO_MONTH_CHANGE 12)
(defconstant wxICON_EXCLAMATION 256)
(defconstant wxICON_HAND 512)
(defconstant wxICON_QUESTION 1024)
(defconstant wxICON_INFORMATION 2048)
(defconstant wxFORWARD 4096)
(defconstant wxBACKWARD 8192)
(defconstant wxRESET 16384)
(defconstant wxHELP 32768)
(defconstant wxMORE 65536)
(defconstant wxSETUP 131072)
(defconstant wxID_LOWEST 4999)
(defconstant wxID_OPEN 5000)
(defconstant wxID_CLOSE 5001)
(defconstant wxID_NEW 5002)
(defconstant wxID_SAVE 5003)
(defconstant wxID_SAVEAS 5004)
(defconstant wxID_REVERT 5005)
(defconstant wxID_EXIT 5006)
(defconstant wxID_UNDO 5007)
(defconstant wxID_REDO 5008)
(defconstant wxID_HELP 5009)
(defconstant wxID_PRINT 5010)
(defconstant wxID_PRINT_SETUP 5011)
(defconstant wxID_PREVIEW 5012)
(defconstant wxID_ABOUT 5013)
(defconstant wxID_HELP_CONTENTS 5014)
(defconstant wxID_HELP_COMMANDS 5015)
(defconstant wxID_HELP_PROCEDURES 5016)
(defconstant wxID_HELP_CONTEXT 5017)
(defconstant wxID_CUT 5030)
(defconstant wxID_COPY 5031)
(defconstant wxID_PASTE 5032)
(defconstant wxID_CLEAR 5033)
(defconstant wxID_FIND 5034)
(defconstant wxID_DUPLICATE 5035)
(defconstant wxID_SELECTALL 5036)
(defconstant wxID_FILE1 5050)
(defconstant wxID_FILE2 5051)
(defconstant wxID_FILE3 5052)
(defconstant wxID_FILE4 5053)
(defconstant wxID_FILE5 5054)
(defconstant wxID_FILE6 5055)
(defconstant wxID_FILE7 5056)
(defconstant wxID_FILE8 5057)
(defconstant wxID_FILE9 5058)
(defconstant wxID_OK 5100)
(defconstant wxID_CANCEL 5101)
(defconstant wxID_APPLY 5102)
(defconstant wxID_YES 5103)
(defconstant wxID_NO 5104)
(defconstant wxID_STATIC 5105)
(defconstant wxID_FORWARD 5106)
(defconstant wxID_BACKWARD 5107)
(defconstant wxID_DEFAULT 5108)
(defconstant wxID_MORE 5109)
(defconstant wxID_SETUP 5110)
(defconstant wxID_RESET 5111)
(defconstant wxID_FILEDLGG 5900)
(defconstant wxID_HIGHEST 5999)
(defconstant wxSIZE_AUTO_WIDTH 1)
(defconstant wxSIZE_AUTO_HEIGHT 2)
(defconstant wxSIZE_USE_EXISTING 0)
(defconstant wxSIZE_ALLOW_MINUS_ONE 4)
(defconstant wxSIZE_NO_ADJUSTMENTS 8)
(defconstant wxSOLID 100)
(defconstant wxDOT 101)
(defconstant wxLONG_DASH 102)
(defconstant wxSHORT_DASH 103)
(defconstant wxDOT_DASH 104)
(defconstant wxUSER_DASH 105)
(defconstant wxTRANSPARENT 106)
(defconstant wxSTIPPLE_MASK_OPAQUE 107)
(defconstant wxSTIPPLE_MASK 108)
(defconstant wxSTIPPLE 110)
(defconstant wxBDIAGONAL_HATCH 111)
(defconstant wxCROSSDIAG_HATCH 112)
(defconstant wxFDIAGONAL_HATCH 113)
(defconstant wxCROSS_HATCH 114)
(defconstant wxHORIZONTAL_HATCH 115)
(defconstant wxVERTICAL_HATCH 116)
(defconstant wxJOIN_BEVEL 120)
(defconstant wxJOIN_MITER 121)
(defconstant wxJOIN_ROUND 122)
(defconstant wxCAP_ROUND 130)
(defconstant wxCAP_PROJECTING 131)
(defconstant wxCAP_BUTT 132)
(defconstant wxCLEAR 0)
(defconstant wxXOR 1)
(defconstant wxINVERT 2)
(defconstant wxOR_REVERSE 3)
(defconstant wxAND_REVERSE 4)
(defconstant wxCOPY 5)
(defconstant wxAND 6)
(defconstant wxAND_INVERT 7)
(defconstant wxNO_OP 8)
(defconstant wxNOR 9)
(defconstant wxEQUIV 10)
(defconstant wxSRC_INVERT 11)
(defconstant wxOR_INVERT 12)
(defconstant wxNAND 13)
(defconstant wxOR 14)
(defconstant wxSET 15)
(defconstant wxFLOOD_SURFACE 1)
(defconstant wxFLOOD_BORDER 2)
(defconstant wxODDEVEN_RULE 1)
(defconstant wxWINDING_RULE 2)
(defconstant wxTOOL_TOP 1)
(defconstant wxTOOL_BOTTOM 2)
(defconstant wxTOOL_LEFT 3)
(defconstant wxTOOL_RIGHT 4)
(defconstant wxDF_INVALID 1)
(defconstant wxDF_TEXT 2)
(defconstant wxDF_BITMAP 3)
(defconstant wxDF_METAFILE 4)
(defconstant wxDF_SYLK 5)
(defconstant wxDF_DIF 6)
(defconstant wxDF_TIFF 7)
(defconstant wxDF_OEMTEXT 8)
(defconstant wxDF_DIB 9)
(defconstant wxDF_PALETTE 10)
(defconstant wxDF_PENDATA 11)
(defconstant wxDF_RIFF 12)
(defconstant wxDF_WAVE 13)
(defconstant wxDF_UNICODETEXT 14)
(defconstant wxDF_ENHMETAFILE 15)
(defconstant wxDF_FILENAME 16)
(defconstant wxDF_LOCALE 17)
(defconstant wxDF_PRIVATE 18)
(defconstant wxDF_MAX 19)
(defconstant wxMM_TEXT 1)
(defconstant wxMM_LOMETRIC 2)
(defconstant wxMM_HIMETRIC 3)
(defconstant wxMM_LOENGLISH 4)
(defconstant wxMM_HIENGLISH 5)
(defconstant wxMM_TWIPS 6)
(defconstant wxMM_ISOTROPIC 7)
(defconstant wxMM_ANISOTROPIC 8)
(defconstant wxMM_POINTS 9)
(defconstant wxMM_METRIC 10)
(defconstant wxPAPER_NONE 0)
(defconstant wxPAPER_LETTER 1)
(defconstant wxPAPER_LEGAL 2)
(defconstant wxPAPER_A4 3)
(defconstant wxPAPER_CSHEET 4)
(defconstant wxPAPER_DSHEET 5)
(defconstant wxPAPER_ESHEET 6)
(defconstant wxPAPER_LETTERSMALL 7)
(defconstant wxPAPER_TABLOID 8)
(defconstant wxPAPER_LEDGER 9)
(defconstant wxPAPER_STATEMENT 10)
(defconstant wxPAPER_EXECUTIVE 11)
(defconstant wxPAPER_A3 12)
(defconstant wxPAPER_A4SMALL 13)
(defconstant wxPAPER_A5 14)
(defconstant wxPAPER_B4 15)
(defconstant wxPAPER_B5 16)
(defconstant wxPAPER_FOLIO 17)
(defconstant wxPAPER_QUARTO 18)
(defconstant wxPAPER_10X14 19)
(defconstant wxPAPER_11X17 20)
(defconstant wxPAPER_NOTE 21)
(defconstant wxPAPER_ENV_9 22)
(defconstant wxPAPER_ENV_10 23)
(defconstant wxPAPER_ENV_11 24)
(defconstant wxPAPER_ENV_12 25)
(defconstant wxPAPER_ENV_14 26)
(defconstant wxPAPER_ENV_DL 27)
(defconstant wxPAPER_ENV_C5 28)
(defconstant wxPAPER_ENV_C3 29)
(defconstant wxPAPER_ENV_C4 30)
(defconstant wxPAPER_ENV_C6 31)
(defconstant wxPAPER_ENV_C65 32)
(defconstant wxPAPER_ENV_B4 33)
(defconstant wxPAPER_ENV_B5 34)
(defconstant wxPAPER_ENV_B6 35)
(defconstant wxPAPER_ENV_ITALY 36)
(defconstant wxPAPER_ENV_MONARCH 37)
(defconstant wxPAPER_ENV_PERSONAL 38)
(defconstant wxPAPER_FANFOLD_US 39)
(defconstant wxPAPER_FANFOLD_STD_GERMAN 40)
(defconstant wxPAPER_FANFOLD_LGL_GERMAN 41)
(defconstant wxPAPER_ISO_B4 42)
(defconstant wxPAPER_JAPANESE_POSTCARD 43)
(defconstant wxPAPER_9X11 44)
(defconstant wxPAPER_10X11 45)
(defconstant wxPAPER_15X11 46)
(defconstant wxPAPER_ENV_INVITE 47)
(defconstant wxPAPER_LETTER_EXTRA 48)
(defconstant wxPAPER_LEGAL_EXTRA 49)
(defconstant wxPAPER_TABLOID_EXTRA 50)
(defconstant wxPAPER_A4_EXTRA 51)
(defconstant wxPAPER_LETTER_TRANSVERSE 52)
(defconstant wxPAPER_A4_TRANSVERSE 53)
(defconstant wxPAPER_LETTER_EXTRA_TRANSVERSE 54)
(defconstant wxPAPER_A_PLUS 55)
(defconstant wxPAPER_B_PLUS 56)
(defconstant wxPAPER_LETTER_PLUS 57)
(defconstant wxPAPER_A4_PLUS 58)
(defconstant wxPAPER_A5_TRANSVERSE 59)
(defconstant wxPAPER_B5_TRANSVERSE 60)
(defconstant wxPAPER_A3_EXTRA 61)
(defconstant wxPAPER_A5_EXTRA 62)
(defconstant wxPAPER_B5_EXTRA 63)
(defconstant wxPAPER_A2 64)
(defconstant wxPAPER_A3_TRANSVERSE 65)
(defconstant wxPAPER_A3_EXTRA_TRANSVERSE 66)
(defconstant wxPORTRAIT 1)
(defconstant wxLANDSCAPE 2)
(defconstant wxDUPLEX_SIMPLEX 0)
(defconstant wxDUPLEX_HORIZONTAL 1)
(defconstant wxDUPLEX_VERTICAL 2)
(defconstant wxPRINT_MODE_NONE 0)
(defconstant wxPRINT_MODE_PREVIEW 1)
(defconstant wxPRINT_MODE_FILE 2)
(defconstant wxPRINT_MODE_PRINTER 3)
(defconstant wxFULLSCREEN_NOMENUBAR 1)
(defconstant wxFULLSCREEN_NOTOOLBAR 2)
(defconstant wxFULLSCREEN_NOSTATUSBAR 4)
(defconstant wxFULLSCREEN_NOBORDER 8)
(defconstant wxFULLSCREEN_NOCAPTION 16)
(defconstant wxLAYOUT_DEFAULT_MARGIN 0)
(defconstant wxEDGE_LEFT 0)
(defconstant wxEDGE_TOP 1)
(defconstant wxEDGE_RIGHT 2)
(defconstant wxEDGE_BOTTOM 3)
(defconstant wxEDGE_WIDTH 4)
(defconstant wxEDGE_HEIGHT 5)
(defconstant wxEDGE_CENTER 6)
(defconstant wxEDGE_CENTREX 7)
(defconstant wxEDGE_CENTREY 8)
(defconstant wxRELATIONSHIP_UNCONSTRAINED 0)
(defconstant wxRELATIONSHIP_ASIS 1)
(defconstant wxRELATIONSHIP_PERCENTOF 2)
(defconstant wxRELATIONSHIP_ABOVE 3)
(defconstant wxRELATIONSHIP_BELOW 4)
(defconstant wxRELATIONSHIP_LEFTOF 5)
(defconstant wxRELATIONSHIP_RIGHTOF 6)
(defconstant wxRELATIONSHIP_SAMEAS 7)
(defconstant wxRELATIONSHIP_ABSOLUTE 8)
(defconstant wxFONTENCODING_DEFAULT 0)
(defconstant wxFONTENCODING_ISO8859_1 1)
(defconstant wxFONTENCODING_ISO8859_2 2)
(defconstant wxFONTENCODING_ISO8859_3 3)
(defconstant wxFONTENCODING_ISO8859_4 4)
(defconstant wxFONTENCODING_ISO8859_5 5)
(defconstant wxFONTENCODING_ISO8859_6 6)
(defconstant wxFONTENCODING_ISO8859_7 7)
(defconstant wxFONTENCODING_ISO8859_8 8)
(defconstant wxFONTENCODING_ISO8859_9 9)
(defconstant wxFONTENCODING_ISO8859_10 10)
(defconstant wxFONTENCODING_ISO8859_11 11)
(defconstant wxFONTENCODING_ISO8859_12 12)
(defconstant wxFONTENCODING_ISO8859_13 13)
(defconstant wxFONTENCODING_ISO8859_14 14)
(defconstant wxFONTENCODING_ISO8859_15 15)
(defconstant wxFONTENCODING_ISO8859_MAX 16)
(defconstant wxFONTENCODING_KOI8 17)
(defconstant wxFONTENCODING_ALTERNATIVE 18)
(defconstant wxFONTENCODING_BULGARIAN 19)
(defconstant wxFONTENCODING_CP437 20)
(defconstant wxFONTENCODING_CP850 21)
(defconstant wxFONTENCODING_CP852 22)
(defconstant wxFONTENCODING_CP855 23)
(defconstant wxFONTENCODING_CP866 24)
(defconstant wxFONTENCODING_CP874 25)
(defconstant wxFONTENCODING_CP1250 26)
(defconstant wxFONTENCODING_CP1251 27)
(defconstant wxFONTENCODING_CP1252 28)
(defconstant wxFONTENCODING_CP1253 29)
(defconstant wxFONTENCODING_CP1254 30)
(defconstant wxFONTENCODING_CP1255 31)
(defconstant wxFONTENCODING_CP1256 32)
(defconstant wxFONTENCODING_CP1257 33)
(defconstant wxFONTENCODING_CP12_MAX 34)
(defconstant wxFONTENCODING_UNICODE 35)
(defconstant wxFONTENCODING_MAX 36)
(defconstant wxGRIDTABLE_REQUEST_VIEW_GET_VALUES 2000)
(defconstant wxGRIDTABLE_REQUEST_VIEW_SEND_VALUES 2001)
(defconstant wxGRIDTABLE_NOTIFY_ROWS_INSERTED 2002)
(defconstant wxGRIDTABLE_NOTIFY_ROWS_APPENDED 2003)
(defconstant wxGRIDTABLE_NOTIFY_ROWS_DELETED 2004)
(defconstant wxGRIDTABLE_NOTIFY_COLS_INSERTED 2005)
(defconstant wxGRIDTABLE_NOTIFY_COLS_APPENDED 2006)
(defconstant wxGRIDTABLE_NOTIFY_COLS_DELETED 2007)
(defconstant wxGridSelectCells 0)
(defconstant wxGridSelectRows 1)
(defconstant wxGridSelectColumns 2)
(defconstant wxFILTER_NONE 0)
(defconstant wxFILTER_ASCII 1)
(defconstant wxFILTER_ALPHA 2)
(defconstant wxFILTER_ALPHANUMERIC 4)
(defconstant wxFILTER_NUMERIC 8)
(defconstant wxFILTER_INCLUDE_LIST 16)
(defconstant wxFILTER_EXCLUDE_LIST 32)
(defconstant wxFILTER_UPPER_CASE 64)
(defconstant wxFILTER_LOWER_CASE 128)
(defconstant wxBITMAP_TYPE_INVALID 0)
(defconstant wxBITMAP_TYPE_BMP 1)
(defconstant wxBITMAP_TYPE_BMP_RESOURCE 2)
(defconstant wxBITMAP_TYPE_RESOURCE 2)
(defconstant wxBITMAP_TYPE_ICO 3)
(defconstant wxBITMAP_TYPE_ICO_RESOURCE 4)
(defconstant wxBITMAP_TYPE_CUR 5)
(defconstant wxBITMAP_TYPE_CUR_RESOURCE 6)
(defconstant wxBITMAP_TYPE_XBM 7)
(defconstant wxBITMAP_TYPE_XBM_DATA 8)
(defconstant wxBITMAP_TYPE_XPM 9)
(defconstant wxBITMAP_TYPE_XPM_DATA 10)
(defconstant wxBITMAP_TYPE_TIF 11)
(defconstant wxBITMAP_TYPE_TIF_RESOURCE 12)
(defconstant wxBITMAP_TYPE_GIF 13)
(defconstant wxBITMAP_TYPE_GIF_RESOURCE 14)
(defconstant wxBITMAP_TYPE_PNG 15)
(defconstant wxBITMAP_TYPE_PNG_RESOURCE 16)
(defconstant wxBITMAP_TYPE_JPEG 17)
(defconstant wxBITMAP_TYPE_JPEG_RESOURCE 18)
(defconstant wxBITMAP_TYPE_PNM 19)
(defconstant wxBITMAP_TYPE_PNM_RESOURCE 20)
(defconstant wxBITMAP_TYPE_PCX 21)
(defconstant wxBITMAP_TYPE_PCX_RESOURCE 22)
(defconstant wxBITMAP_TYPE_PICT 23)
(defconstant wxBITMAP_TYPE_PICT_RESOURCE 24)
(defconstant wxBITMAP_TYPE_ICON 25)
(defconstant wxBITMAP_TYPE_ICON_RESOURCE 26)
(defconstant wxBITMAP_TYPE_MACCURSOR 27)
(defconstant wxBITMAP_TYPE_MACCURSOR_RESOURCE 28)
(defconstant wxBITMAP_TYPE_ANY 50)
(defconstant wxCURSOR_NONE 0)
(defconstant wxCURSOR_ARROW 1)
(defconstant wxCURSOR_RIGHT_ARROW 2)
(defconstant wxCURSOR_BULLSEYE 3)
(defconstant wxCURSOR_CHAR 4)
(defconstant wxCURSOR_CROSS 5)
(defconstant wxCURSOR_HAND 6)
(defconstant wxCURSOR_IBEAM 7)
(defconstant wxCURSOR_LEFT_BUTTON 8)
(defconstant wxCURSOR_MAGNIFIER 9)
(defconstant wxCURSOR_MIDDLE_BUTTON 10)
(defconstant wxCURSOR_NO_ENTRY 11)
(defconstant wxCURSOR_PAINT_BRUSH 12)
(defconstant wxCURSOR_PENCIL 13)
(defconstant wxCURSOR_POINT_LEFT 14)
(defconstant wxCURSOR_POINT_RIGHT 15)
(defconstant wxCURSOR_QUESTION_ARROW 16)
(defconstant wxCURSOR_RIGHT_BUTTON 17)
(defconstant wxCURSOR_SIZENESW 18)
(defconstant wxCURSOR_SIZENS 19)
(defconstant wxCURSOR_SIZENWSE 20)
(defconstant wxCURSOR_SIZEWE 21)
(defconstant wxCURSOR_SIZING 22)
(defconstant wxCURSOR_SPRAYCAN 23)
(defconstant wxCURSOR_WAIT 24)
(defconstant wxCURSOR_WATCH 25)
(defconstant wxCURSOR_BLANK 26)
(defconstant wxOPEN 1)
(defconstant wxSAVE 2)
(defconstant wxOVERWRITE_PROMPT 4)
(defconstant wxHIDE_READONLY 8)
(defconstant wxFILE_MUST_EXIST 16)
(defconstant wxMULTIPLE 32)
(defconstant wxCHANGE_DIR 64)
(defconstant wxDRAG_ERROR 0)
(defconstant wxDRAG_NONE 1)
(defconstant wxDRAG_COPY 2)
(defconstant wxDRAG_MOVE 3)
(defconstant wxDRAG_LINK 4)
(defconstant wxDRAG_CANCEL 5)
(defconstant wxSPLIT_HORIZONTAL 1)
(defconstant wxSPLIT_VERTICAL 2)
(defconstant wxLIST_FORMAT_LEFT 0)
(defconstant wxLIST_FORMAT_RIGHT 1)
(defconstant wxLIST_FORMAT_CENTRE 2)
(defconstant wxLIST_FORMAT_CENTER 2)
(defconstant wxLIST_STATE_DONTCARE 0)
(defconstant wxLIST_STATE_DROPHILITED 1)
(defconstant wxLIST_STATE_FOCUSED 2)
(defconstant wxLIST_STATE_SELECTED 4)
(defconstant wxLIST_STATE_CUT 8)
(defconstant wxLIST_MASK_STATE 1)
(defconstant wxLIST_MASK_TEXT 2)
(defconstant wxLIST_MASK_IMAGE 4)
(defconstant wxLIST_MASK_DATA 8)
(defconstant wxLIST_MASK_WIDTH 16)
(defconstant wxLIST_MASK_FORMAT 32)
(defconstant wxLIST_NEXT_ABOVE 0)
(defconstant wxLIST_NEXT_ALL 1)
(defconstant wxLIST_NEXT_BELOW 2)
(defconstant wxLIST_NEXT_LEFT 3)
(defconstant wxLIST_NEXT_RIGHT 4)
(defconstant wxRA_SPECIFY_COLS 4)
(defconstant wxRA_SPECIFY_ROWS 8)
(defconstant wxTREE_HITTEST_ABOVE 1)
(defconstant wxTREE_HITTEST_BELOW 2)
(defconstant wxTREE_HITTEST_NOWHERE 4)
(defconstant wxTREE_HITTEST_ONITEMBUTTON 8)
(defconstant wxTREE_HITTEST_ONITEMICON 16)
(defconstant wxTREE_HITTEST_ONITEMINDENT 32)
(defconstant wxTREE_HITTEST_ONITEMLABEL 64)
(defconstant wxTREE_HITTEST_ONITEMRIGHT 128)
(defconstant wxTREE_HITTEST_ONITEMSTATEICON 256)
(defconstant wxTREE_HITTEST_TOLEFT 512)
(defconstant wxTREE_HITTEST_TORIGHT 1024)
(defconstant wxTREE_HITTEST_ONITEMUPPERPART 2048)
(defconstant wxTREE_HITTEST_ONITEMLOWERPART 4096)
(defconstant wxTREE_HITTEST_ONITEM 80)
(defconstant wxDEFAULT 70)
(defconstant wxDECORATIVE 71)
(defconstant wxROMAN 72)
(defconstant wxSCRIPT 73)
(defconstant wxSWISS 74)
(defconstant wxMODERN 75)
(defconstant wxTELETYPE 76)
(defconstant wxVARIABLE 80)
(defconstant wxFIXED 81)
(defconstant wxNORMAL 90)
(defconstant wxLIGHT 91)
(defconstant wxBOLD 92)
(defconstant wxITALIC 93)
(defconstant wxSLANT 94)
(defconstant wxBLUE_BRUSH 0)
(defconstant wxGREEN_BRUSH 1)
(defconstant wxWHITE_BRUSH 2)
(defconstant wxBLACK_BRUSH 3)
(defconstant wxGREY_BRUSH 4)
(defconstant wxMEDIUM_GREY_BRUSH 5)
(defconstant wxLIGHT_GREY_BRUSH 6)
(defconstant wxTRANSPARENT_BRUSH 7)
(defconstant wxCYAN_BRUSH 8)
(defconstant wxRED_BRUSH 9)
(defconstant wxBLACK 0)
(defconstant wxWHITE 1)
(defconstant wxRED 2)
(defconstant wxBLUE 3)
(defconstant wxGREEN 4)
(defconstant wxCYAN 5)
(defconstant wxLIGHT_GREY 6)
(defconstant wxRED_PEN 0)
(defconstant wxCYAN_PEN 1)
(defconstant wxGREEN_PEN 2)
(defconstant wxBLACK_PEN 3)
(defconstant wxWHITE_PEN 4)
(defconstant wxTRANSPARENT_PEN 5)
(defconstant wxBLACK_DASHED_PEN 6)
(defconstant wxGREY_PEN 7)
(defconstant wxMEDIUM_GREY_PEN 8)
(defconstant wxLIGHT_GREY_PEN 9)
(defconstant wxPRINTER_NO_ERROR 0)
(defconstant wxPRINTER_CANCELLED 1)
(defconstant wxPRINTER_ERROR 2)
(defconstant wxPREVIEW_PRINT 1)
(defconstant wxPREVIEW_PREVIOUS 2)
(defconstant wxPREVIEW_NEXT 4)
(defconstant wxPREVIEW_ZOOM 8)
(defconstant wxPREVIEW_FIRST 8)
(defconstant wxPREVIEW_LAST 32)
(defconstant wxPREVIEW_GOTO 64)
(defconstant wxPREVIEW_DEFAULT 126)
(defconstant wxID_PREVIEW_CLOSE 1)
(defconstant wxID_PREVIEW_NEXT 2)
(defconstant wxID_PREVIEW_PREVIOUS 3)
(defconstant wxID_PREVIEW_PRINT 4)
(defconstant wxID_PREVIEW_ZOOM 5)
(defconstant wxID_PREVIEW_FIRST 6)
(defconstant wxID_PREVIEW_LAST 7)
(defconstant wxID_PREVIEW_GOTO 8)
(defconstant wxPRINTID_STATIC 10)
(defconstant wxPRINTID_RANGE 11)
(defconstant wxPRINTID_FROM 12)
(defconstant wxPRINTID_TO 13)
(defconstant wxPRINTID_COPIES 14)
(defconstant wxPRINTID_PRINTTOFILE 15)
(defconstant wxPRINTID_SETUP 16)
(defconstant wxPRINTID_LEFTMARGIN 30)
(defconstant wxPRINTID_RIGHTMARGIN 31)
(defconstant wxPRINTID_TOPMARGIN 32)
(defconstant wxPRINTID_BOTTOMMARGIN 33)
(defconstant wxPRINTID_PRINTCOLOUR 10)
(defconstant wxPRINTID_ORIENTATION 11)
(defconstant wxPRINTID_COMMAND 12)
(defconstant wxPRINTID_OPTIONS 13)
(defconstant wxPRINTID_PAPERSIZE 14)
(defconstant wxHF_TOOLBAR 1)
(defconstant wxHF_CONTENTS 2)
(defconstant wxHF_INDEX 4)
(defconstant wxHF_SEARCH 8)
(defconstant wxHF_BOOKMARKS 16)
(defconstant wxHF_OPENFILES 32)
(defconstant wxHF_PRINT 64)
(defconstant wxHF_FLATTOOLBAR 128)
(defconstant wxHF_DEFAULTSTYLE 95)
(defconstant wxLAYOUT_HORIZONTAL 0)
(defconstant wxLAYOUT_VERTICAL 1)
(defconstant wxLAYOUT_NONE 0)
(defconstant wxLAYOUT_TOP 1)
(defconstant wxLAYOUT_LEFT 2)
(defconstant wxLAYOUT_RIGHT 3)
(defconstant wxLAYOUT_BOTTOM 4)
(defconstant wxSASH_DRAG_NONE 0)
(defconstant wxSASH_DRAG_DRAGGING 1)
(defconstant wxSASH_DRAG_LEFT_DOWN 2)
(defconstant wxSASH_TOP 0)
(defconstant wxSASH_RIGHT 1)
(defconstant wxSASH_BOTTOM 2)
(defconstant wxSASH_LEFT 3)
(defconstant wxSASH_NONE 100)
(defconstant wxSW_NOBORDER 0)
(defconstant wxSW_BORDER 32)
(defconstant wxSW_3DSASH 64)
(defconstant wxSW_3DBORDER 128)
(defconstant wxSW_3D 192)
(defconstant wxSASH_STATUS_OK 0)
(defconstant wxSASH_STATUS_OUT_OF_RANGE 1)
(defconstant wxSYS_WHITE_BRUSH 0)
(defconstant wxSYS_LTGRAY_BRUSH 1)
(defconstant wxSYS_GRAY_BRUSH 2)
(defconstant wxSYS_DKGRAY_BRUSH 3)
(defconstant wxSYS_BLACK_BRUSH 4)
(defconstant wxSYS_NULL_BRUSH 5)
(defconstant wxSYS_HOLLOW_BRUSH 5)
(defconstant wxSYS_WHITE_PEN 6)
(defconstant wxSYS_BLACK_PEN 7)
(defconstant wxSYS_NULL_PEN 8)
(defconstant wxSYS_OEM_FIXED_FONT 10)
(defconstant wxSYS_ANSI_FIXED_FONT 11)
(defconstant wxSYS_ANSI_VAR_FONT 12)
(defconstant wxSYS_SYSTEM_FONT 13)
(defconstant wxSYS_DEVICE_DEFAULT_FONT 14)
(defconstant wxSYS_DEFAULT_PALETTE 15)
(defconstant wxSYS_SYSTEM_FIXED_FONT 16)
(defconstant wxSYS_DEFAULT_GUI_FONT 17)
(defconstant wxSYS_COLOUR_SCROLLBAR 0)
(defconstant wxSYS_COLOUR_BACKGROUND 1)
(defconstant wxSYS_COLOUR_ACTIVECAPTION 2)
(defconstant wxSYS_COLOUR_INACTIVECAPTION 3)
(defconstant wxSYS_COLOUR_MENU 4)
(defconstant wxSYS_COLOUR_WINDOW 5)
(defconstant wxSYS_COLOUR_WINDOWFRAME 6)
(defconstant wxSYS_COLOUR_MENUTEXT 7)
(defconstant wxSYS_COLOUR_WINDOWTEXT 8)
(defconstant wxSYS_COLOUR_CAPTIONTEXT 9)
(defconstant wxSYS_COLOUR_ACTIVEBORDER 10)
(defconstant wxSYS_COLOUR_INACTIVEBORDER 11)
(defconstant wxSYS_COLOUR_APPWORKSPACE 12)
(defconstant wxSYS_COLOUR_HIGHLIGHT 13)
(defconstant wxSYS_COLOUR_HIGHLIGHTTEXT 14)
(defconstant wxSYS_COLOUR_BTNFACE 15)
(defconstant wxSYS_COLOUR_BTNSHADOW 16)
(defconstant wxSYS_COLOUR_GRAYTEXT 17)
(defconstant wxSYS_COLOUR_BTNTEXT 18)
(defconstant wxSYS_COLOUR_INACTIVECAPTIONTEXT 19)
(defconstant wxSYS_COLOUR_BTNHIGHLIGHT 20)
(defconstant wxSYS_COLOUR_3DDKSHADOW 21)
(defconstant wxSYS_COLOUR_3DLIGHT 22)
(defconstant wxSYS_COLOUR_INFOTEXT 23)
(defconstant wxSYS_COLOUR_INFOBK 24)
(defconstant wxSYS_COLOUR_LISTBOX 25)
(defconstant wxSYS_COLOUR_DESKTOP 1)
(defconstant wxSYS_COLOUR_3DFACE 15)
(defconstant wxSYS_COLOUR_3DSHADOW 16)
(defconstant wxSYS_COLOUR_3DHIGHLIGHT 20)
(defconstant wxSYS_COLOUR_3DHILIGHT 20)
(defconstant wxSYS_COLOUR_BTNHILIGHT 20)
(defconstant wxSYS_MOUSE_BUTTONS 1)
(defconstant wxSYS_BORDER_X 2)
(defconstant wxSYS_BORDER_Y 3)
(defconstant wxSYS_CURSOR_X 4)
(defconstant wxSYS_CURSOR_Y 5)
(defconstant wxSYS_DCLICK_X 6)
(defconstant wxSYS_DCLICK_Y 7)
(defconstant wxSYS_DRAG_X 8)
(defconstant wxSYS_DRAG_Y 9)
(defconstant wxSYS_EDGE_X 10)
(defconstant wxSYS_EDGE_Y 11)
(defconstant wxSYS_HSCROLL_ARROW_X 12)
(defconstant wxSYS_HSCROLL_ARROW_Y 13)
(defconstant wxSYS_HTHUMB_X 14)
(defconstant wxSYS_ICON_X 15)
(defconstant wxSYS_ICON_Y 16)
(defconstant wxSYS_ICONSPACING_X 17)
(defconstant wxSYS_ICONSPACING_Y 18)
(defconstant wxSYS_WINDOWMIN_X 19)
(defconstant wxSYS_WINDOWMIN_Y 20)
(defconstant wxSYS_SCREEN_X 21)
(defconstant wxSYS_SCREEN_Y 22)
(defconstant wxSYS_FRAMESIZE_X 23)
(defconstant wxSYS_FRAMESIZE_Y 24)
(defconstant wxSYS_SMALLICON_X 25)
(defconstant wxSYS_SMALLICON_Y 26)
(defconstant wxSYS_HSCROLL_Y 27)
(defconstant wxSYS_VSCROLL_X 28)
(defconstant wxSYS_VSCROLL_ARROW_X 29)
(defconstant wxSYS_VSCROLL_ARROW_Y 30)
(defconstant wxSYS_VTHUMB_Y 31)
(defconstant wxSYS_CAPTION_Y 32)
(defconstant wxSYS_MENU_Y 33)
(defconstant wxSYS_NETWORK_PRESENT 34)
(defconstant wxSYS_PENWINDOWS_PRESENT 35)
(defconstant wxSYS_SHOW_SOUNDS 36)
(defconstant wxSYS_SWAP_BUTTONS 37)
(defconstant wxCAL_BORDER_NONE 0)
(defconstant wxCAL_BORDER_SQUARE 1)
(defconstant wxCAL_BORDER_ROUND 2)
(defconstant wxCAL_HITTEST_NOWHERE 0)
(defconstant wxCAL_HITTEST_HEADER 1)
(defconstant wxCAL_HITTEST_DAY 2)
(defconstant wxUNKNOWN 0)
(defconstant wxSTRING 1)
(defconstant wxBOOLEAN 2)
(defconstant wxINTEGER 3)
(defconstant wxFLOAT 4)
(defconstant wxMUTEX_NO_ERROR 0)
(defconstant wxMUTEX_DEAD_LOCK 1)
(defconstant wxMUTEX_BUSY 2)
(defconstant wxMUTEX_UNLOCKED 3)
(defconstant wxMUTEX_MISC_ERROR 4)
(defconstant wxPLATFORM_UNIX 0)
(defconstant wxPLATFORM_WINDOWS 1)
(defconstant wxPLATFORM_OS2 2)
(defconstant wxPLATFORM_MAC 3)
(defconstant wxLED_ALIGN_LEFT 1)
(defconstant wxLED_ALIGN_RIGHT 2)
(defconstant wxLED_ALIGN_CENTER 4)
(defconstant wxLED_ALIGN_MASK 4)
(defconstant wxLED_DRAW_FADED 8)
(defconstant wxDS_MANAGE_SCROLLBARS 16)
(defconstant wxDS_DRAG_CORNER 32)
(defconstant wxEL_ALLOW_NEW 256)
(defconstant wxEL_ALLOW_EDIT 512)
(defconstant wxEL_ALLOW_DELETE 1024)
(defconstant wxTR_NO_BUTTONS 0)
(defconstant wxTR_HAS_BUTTONS 1)
(defconstant wxTR_TWIST_BUTTONS 2)
(defconstant wxTR_NO_LINES 4)
(defconstant wxTR_LINES_AT_ROOT 8)
(defconstant wxTR_AQUA_BUTTONS 16)
(defconstant wxTR_SINGLE 0)
(defconstant wxTR_MULTIPLE 32)
(defconstant wxTR_EXTENDED 64)
(defconstant wxTR_FULL_ROW_HIGHLIGHT 8192)
(defconstant wxTR_EDIT_LABELS 512)
(defconstant wxTR_ROW_LINES 1024)
(defconstant wxTR_HIDE_ROOT 2048)
(defconstant wxTR_HAS_VARIABLE_ROW_HEIGHT 128)
(defconstant wxCBAR_DOCKED_HORIZONTALLY 0)
(defconstant wxCBAR_DOCKED_VERTICALLY 1)
(defconstant wxCBAR_FLOATING 2)
(defconstant wxCBAR_HIDDEN 3)
(defconstant wxALL_PANES 15)
(defconstant wxOK 4)
(defconstant wxYES 2)
(defconstant wxNO 8)
(defconstant wxYES_NO 10)
(defconstant wxCANCEL 16)
(defconstant wxNO_DEFAULT 128)
(defconstant wxYES_DEFAULT 0)
(defconstant wxFR_DOWN 1)
(defconstant wxFR_WHOLEWORD 2)
(defconstant wxFR_MATCHCASE 4)
(defconstant wxFR_REPLACEDIALOG 1)
(defconstant wxFR_NOUPDOWN 2)
(defconstant wxFR_NOMATCHCASE 4)
(defconstant wxFR_NOWHOLEWORD 8)
(defconstant wxQUANTIZE_INCLUDE_WINDOWS_COLOURS 1)
(defconstant wxQUANTIZE_RETURN_8BIT_DATA 2)
(defconstant wxQUANTIZE_FILL_DESTINATION_IMAGE 4)
(defconstant wxLANGUAGE_DEFAULT 0)
(defconstant wxLANGUAGE_UNKNOWN 1)
(defconstant wxLANGUAGE_ABKHAZIAN 2)
(defconstant wxLANGUAGE_AFAR 3)
(defconstant wxLANGUAGE_AFRIKAANS 4)
(defconstant wxLANGUAGE_ALBANIAN 5)
(defconstant wxLANGUAGE_AMHARIC 6)
(defconstant wxLANGUAGE_ARABIC 7)
(defconstant wxLANGUAGE_ARABIC_ALGERIA 8)
(defconstant wxLANGUAGE_ARABIC_BAHRAIN 9)
(defconstant wxLANGUAGE_ARABIC_EGYPT 10)
(defconstant wxLANGUAGE_ARABIC_IRAQ 11)
(defconstant wxLANGUAGE_ARABIC_JORDAN 12)
(defconstant wxLANGUAGE_ARABIC_KUWAIT 13)
(defconstant wxLANGUAGE_ARABIC_LEBANON 14)
(defconstant wxLANGUAGE_ARABIC_LIBYA 15)
(defconstant wxLANGUAGE_ARABIC_MOROCCO 16)
(defconstant wxLANGUAGE_ARABIC_OMAN 17)
(defconstant wxLANGUAGE_ARABIC_QATAR 18)
(defconstant wxLANGUAGE_ARABIC_SAUDI_ARABIA 19)
(defconstant wxLANGUAGE_ARABIC_SUDAN 20)
(defconstant wxLANGUAGE_ARABIC_SYRIA 21)
(defconstant wxLANGUAGE_ARABIC_TUNISIA 22)
(defconstant wxLANGUAGE_ARABIC_UAE 23)
(defconstant wxLANGUAGE_ARABIC_YEMEN 24)
(defconstant wxLANGUAGE_ARMENIAN 25)
(defconstant wxLANGUAGE_ASSAMESE 26)
(defconstant wxLANGUAGE_AYMARA 27)
(defconstant wxLANGUAGE_AZERI 28)
(defconstant wxLANGUAGE_AZERI_CYRILLIC 29)
(defconstant wxLANGUAGE_AZERI_LATIN 30)
(defconstant wxLANGUAGE_BASHKIR 31)
(defconstant wxLANGUAGE_BASQUE 32)
(defconstant wxLANGUAGE_BELARUSIAN 33)
(defconstant wxLANGUAGE_BENGALI 34)
(defconstant wxLANGUAGE_BHUTANI 35)
(defconstant wxLANGUAGE_BIHARI 36)
(defconstant wxLANGUAGE_BISLAMA 37)
(defconstant wxLANGUAGE_BRETON 38)
(defconstant wxLANGUAGE_BULGARIAN 39)
(defconstant wxLANGUAGE_BURMESE 40)
(defconstant wxLANGUAGE_CAMBODIAN 41)
(defconstant wxLANGUAGE_CATALAN 42)
(defconstant wxLANGUAGE_CHINESE 43)
(defconstant wxLANGUAGE_CHINESE_SIMPLIFIED 44)
(defconstant wxLANGUAGE_CHINESE_TRADITIONAL 45)
(defconstant wxLANGUAGE_CHINESE_HONGKONG 46)
(defconstant wxLANGUAGE_CHINESE_MACAU 47)
(defconstant wxLANGUAGE_CHINESE_SINGAPORE 48)
(defconstant wxLANGUAGE_CHINESE_TAIWAN 49)
(defconstant wxLANGUAGE_CORSICAN 50)
(defconstant wxLANGUAGE_CROATIAN 51)
(defconstant wxLANGUAGE_CZECH 52)
(defconstant wxLANGUAGE_DANISH 53)
(defconstant wxLANGUAGE_DUTCH 54)
(defconstant wxLANGUAGE_DUTCH_BELGIAN 55)
(defconstant wxLANGUAGE_ENGLISH 56)
(defconstant wxLANGUAGE_ENGLISH_UK 57)
(defconstant wxLANGUAGE_ENGLISH_US 58)
(defconstant wxLANGUAGE_ENGLISH_AUSTRALIA 59)
(defconstant wxLANGUAGE_ENGLISH_BELIZE 60)
(defconstant wxLANGUAGE_ENGLISH_BOTSWANA 61)
(defconstant wxLANGUAGE_ENGLISH_CANADA 62)
(defconstant wxLANGUAGE_ENGLISH_CARIBBEAN 63)
(defconstant wxLANGUAGE_ENGLISH_DENMARK 64)
(defconstant wxLANGUAGE_ENGLISH_EIRE 65)
(defconstant wxLANGUAGE_ENGLISH_JAMAICA 66)
(defconstant wxLANGUAGE_ENGLISH_NEW_ZEALAND 67)
(defconstant wxLANGUAGE_ENGLISH_PHILIPPINES 68)
(defconstant wxLANGUAGE_ENGLISH_SOUTH_AFRICA 69)
(defconstant wxLANGUAGE_ENGLISH_TRINIDAD 70)
(defconstant wxLANGUAGE_ENGLISH_ZIMBABWE 71)
(defconstant wxLANGUAGE_ESPERANTO 72)
(defconstant wxLANGUAGE_ESTONIAN 73)
(defconstant wxLANGUAGE_FAEROESE 74)
(defconstant wxLANGUAGE_FARSI 75)
(defconstant wxLANGUAGE_FIJI 76)
(defconstant wxLANGUAGE_FINNISH 77)
(defconstant wxLANGUAGE_FRENCH 78)
(defconstant wxLANGUAGE_FRENCH_BELGIAN 79)
(defconstant wxLANGUAGE_FRENCH_CANADIAN 80)
(defconstant wxLANGUAGE_FRENCH_LUXEMBOURG 81)
(defconstant wxLANGUAGE_FRENCH_MONACO 82)
(defconstant wxLANGUAGE_FRENCH_SWISS 83)
(defconstant wxLANGUAGE_FRISIAN 84)
(defconstant wxLANGUAGE_GALICIAN 85)
(defconstant wxLANGUAGE_GEORGIAN 86)
(defconstant wxLANGUAGE_GERMAN 87)
(defconstant wxLANGUAGE_GERMAN_AUSTRIAN 88)
(defconstant wxLANGUAGE_GERMAN_BELGIUM 89)
(defconstant wxLANGUAGE_GERMAN_LIECHTENSTEIN 90)
(defconstant wxLANGUAGE_GERMAN_LUXEMBOURG 91)
(defconstant wxLANGUAGE_GERMAN_SWISS 92)
(defconstant wxLANGUAGE_GREEK 93)
(defconstant wxLANGUAGE_GREENLANDIC 94)
(defconstant wxLANGUAGE_GUARANI 95)
(defconstant wxLANGUAGE_GUJARATI 96)
(defconstant wxLANGUAGE_HAUSA 97)
(defconstant wxLANGUAGE_HEBREW 98)
(defconstant wxLANGUAGE_HINDI 99)
(defconstant wxLANGUAGE_HUNGARIAN 100)
(defconstant wxLANGUAGE_ICELANDIC 101)
(defconstant wxLANGUAGE_INDONESIAN 102)
(defconstant wxLANGUAGE_INTERLINGUA 103)
(defconstant wxLANGUAGE_INTERLINGUE 104)
(defconstant wxLANGUAGE_INUKTITUT 105)
(defconstant wxLANGUAGE_INUPIAK 106)
(defconstant wxLANGUAGE_IRISH 107)
(defconstant wxLANGUAGE_ITALIAN 108)
(defconstant wxLANGUAGE_ITALIAN_SWISS 109)
(defconstant wxLANGUAGE_JAPANESE 110)
(defconstant wxLANGUAGE_JAVANESE 111)
(defconstant wxLANGUAGE_KANNADA 112)
(defconstant wxLANGUAGE_KASHMIRI 113)
(defconstant wxLANGUAGE_KASHMIRI_INDIA 114)
(defconstant wxLANGUAGE_KAZAKH 115)
(defconstant wxLANGUAGE_KERNEWEK 116)
(defconstant wxLANGUAGE_KINYARWANDA 117)
(defconstant wxLANGUAGE_KIRGHIZ 118)
(defconstant wxLANGUAGE_KIRUNDI 119)
(defconstant wxLANGUAGE_KONKANI 120)
(defconstant wxLANGUAGE_KOREAN 121)
(defconstant wxLANGUAGE_KURDISH 122)
(defconstant wxLANGUAGE_LAOTHIAN 123)
(defconstant wxLANGUAGE_LATIN 124)
(defconstant wxLANGUAGE_LATVIAN 125)
(defconstant wxLANGUAGE_LINGALA 126)
(defconstant wxLANGUAGE_LITHUANIAN 127)
(defconstant wxLANGUAGE_MACEDONIAN 128)
(defconstant wxLANGUAGE_MALAGASY 129)
(defconstant wxLANGUAGE_MALAY 130)
(defconstant wxLANGUAGE_MALAYALAM 131)
(defconstant wxLANGUAGE_MALAY_BRUNEI_DARUSSALAM 132)
(defconstant wxLANGUAGE_MALAY_MALAYSIA 133)
(defconstant wxLANGUAGE_MALTESE 134)
(defconstant wxLANGUAGE_MANIPURI 135)
(defconstant wxLANGUAGE_MAORI 136)
(defconstant wxLANGUAGE_MARATHI 137)
(defconstant wxLANGUAGE_MOLDAVIAN 138)
(defconstant wxLANGUAGE_MONGOLIAN 139)
(defconstant wxLANGUAGE_NAURU 140)
(defconstant wxLANGUAGE_NEPALI 141)
(defconstant wxLANGUAGE_NEPALI_INDIA 142)
(defconstant wxLANGUAGE_NORWEGIAN_BOKMAL 143)
(defconstant wxLANGUAGE_NORWEGIAN_NYNORSK 144)
(defconstant wxLANGUAGE_OCCITAN 145)
(defconstant wxLANGUAGE_ORIYA 146)
(defconstant wxLANGUAGE_OROMO 147)
(defconstant wxLANGUAGE_PASHTO 148)
(defconstant wxLANGUAGE_POLISH 149)
(defconstant wxLANGUAGE_PORTUGUESE 150)
(defconstant wxLANGUAGE_PORTUGUESE_BRAZILIAN 151)
(defconstant wxLANGUAGE_PUNJABI 152)
(defconstant wxLANGUAGE_QUECHUA 153)
(defconstant wxLANGUAGE_RHAETO_ROMANCE 154)
(defconstant wxLANGUAGE_ROMANIAN 155)
(defconstant wxLANGUAGE_RUSSIAN 156)
(defconstant wxLANGUAGE_RUSSIAN_UKRAINE 157)
(defconstant wxLANGUAGE_SAMOAN 158)
(defconstant wxLANGUAGE_SANGHO 159)
(defconstant wxLANGUAGE_SANSKRIT 160)
(defconstant wxLANGUAGE_SCOTS_GAELIC 161)
(defconstant wxLANGUAGE_SERBIAN 162)
(defconstant wxLANGUAGE_SERBIAN_CYRILLIC 163)
(defconstant wxLANGUAGE_SERBIAN_LATIN 164)
(defconstant wxLANGUAGE_SERBO_CROATIAN 165)
(defconstant wxLANGUAGE_SESOTHO 166)
(defconstant wxLANGUAGE_SETSWANA 167)
(defconstant wxLANGUAGE_SHONA 168)
(defconstant wxLANGUAGE_SINDHI 169)
(defconstant wxLANGUAGE_SINHALESE 170)
(defconstant wxLANGUAGE_SISWATI 171)
(defconstant wxLANGUAGE_SLOVAK 172)
(defconstant wxLANGUAGE_SLOVENIAN 173)
(defconstant wxLANGUAGE_SOMALI 174)
(defconstant wxLANGUAGE_SPANISH 175)
(defconstant wxLANGUAGE_SPANISH_ARGENTINA 176)
(defconstant wxLANGUAGE_SPANISH_BOLIVIA 177)
(defconstant wxLANGUAGE_SPANISH_CHILE 178)
(defconstant wxLANGUAGE_SPANISH_COLOMBIA 179)
(defconstant wxLANGUAGE_SPANISH_COSTA_RICA 180)
(defconstant wxLANGUAGE_SPANISH_DOMINICAN_REPUBLIC 181)
(defconstant wxLANGUAGE_SPANISH_ECUADOR 182)
(defconstant wxLANGUAGE_SPANISH_EL_SALVADOR 183)
(defconstant wxLANGUAGE_SPANISH_GUATEMALA 184)
(defconstant wxLANGUAGE_SPANISH_HONDURAS 185)
(defconstant wxLANGUAGE_SPANISH_MEXICAN 186)
(defconstant wxLANGUAGE_SPANISH_MODERN 187)
(defconstant wxLANGUAGE_SPANISH_NICARAGUA 188)
(defconstant wxLANGUAGE_SPANISH_PANAMA 189)
(defconstant wxLANGUAGE_SPANISH_PARAGUAY 190)
(defconstant wxLANGUAGE_SPANISH_PERU 191)
(defconstant wxLANGUAGE_SPANISH_PUERTO_RICO 192)
(defconstant wxLANGUAGE_SPANISH_URUGUAY 193)
(defconstant wxLANGUAGE_SPANISH_US 194)
(defconstant wxLANGUAGE_SPANISH_VENEZUELA 195)
(defconstant wxLANGUAGE_SUNDANESE 196)
(defconstant wxLANGUAGE_SWAHILI 197)
(defconstant wxLANGUAGE_SWEDISH 198)
(defconstant wxLANGUAGE_SWEDISH_FINLAND 199)
(defconstant wxLANGUAGE_TAGALOG 200)
(defconstant wxLANGUAGE_TAJIK 201)
(defconstant wxLANGUAGE_TAMIL 202)
(defconstant wxLANGUAGE_TATAR 203)
(defconstant wxLANGUAGE_TELUGU 204)
(defconstant wxLANGUAGE_THAI 205)
(defconstant wxLANGUAGE_TIBETAN 206)
(defconstant wxLANGUAGE_TIGRINYA 207)
(defconstant wxLANGUAGE_TONGA 208)
(defconstant wxLANGUAGE_TSONGA 209)
(defconstant wxLANGUAGE_TURKISH 210)
(defconstant wxLANGUAGE_TURKMEN 211)
(defconstant wxLANGUAGE_TWI 212)
(defconstant wxLANGUAGE_UIGHUR 213)
(defconstant wxLANGUAGE_UKRAINIAN 214)
(defconstant wxLANGUAGE_URDU 215)
(defconstant wxLANGUAGE_URDU_INDIA 216)
(defconstant wxLANGUAGE_URDU_PAKISTAN 217)
(defconstant wxLANGUAGE_UZBEK 218)
(defconstant wxLANGUAGE_UZBEK_CYRILLIC 219)
(defconstant wxLANGUAGE_UZBEK_LATIN 220)
(defconstant wxLANGUAGE_VIETNAMESE 221)
(defconstant wxLANGUAGE_VOLAPUK 222)
(defconstant wxLANGUAGE_WELSH 223)
(defconstant wxLANGUAGE_WOLOF 224)
(defconstant wxLANGUAGE_XHOSA 225)
(defconstant wxLANGUAGE_YIDDISH 226)
(defconstant wxLANGUAGE_YORUBA 227)
(defconstant wxLANGUAGE_ZHUANG 228)
(defconstant wxLANGUAGE_ZULU 229)
(defconstant wxLANGUAGE_USER_DEFINE 230)
(defconstant wxLOCALE_THOUSANDS_SEP 0)
(defconstant wxLOCALE_DECIMAL_POINT 1)
(defconstant wxLOCALE_LOAD_DEFAULT 1)
(defconstant wxLOCALE_CONV_ENCODING 2)

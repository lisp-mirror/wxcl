;;;wx_scintilla.lisp
;;;License  : wxWindows License 3.1
;;;Author(s) : Surendra Singhi (surendra@asu.edu) 
;;;Copyright (C) 2005 Surendra Singhi 
;;;See the file LICENSE for information on usage and redistribution.
;;;
;;; $Header$
;;;

(in-package :wxcl-misc)

(defcfun ("Scintilla_LinkLexers" Scintilla_LinkLexers) :int)

(defconstant INVALID_POSITION -1)

(defconstant SCI_START 2000)

(defconstant SCI_OPTIONAL_START 3000)

(defconstant SCI_LEXER_START 4000)

(defconstant SCI_ADDTEXT 2001)

(defconstant SCI_ADDSTYLEDTEXT 2002)

(defconstant SCI_INSERTTEXT 2003)

(defconstant SCI_CLEARALL 2004)

(defconstant SCI_CLEARDOCUMENTSTYLE 2005)

(defconstant SCI_GETLENGTH 2006)

(defconstant SCI_GETCHARAT 2007)

(defconstant SCI_GETCURRENTPOS 2008)

(defconstant SCI_GETANCHOR 2009)

(defconstant SCI_GETSTYLEAT 2010)

(defconstant SCI_REDO 2011)

(defconstant SCI_SETUNDOCOLLECTION 2012)

(defconstant SCI_SELECTALL 2013)

(defconstant SCI_SETSAVEPOINT 2014)

(defconstant SCI_GETSTYLEDTEXT 2015)

(defconstant SCI_CANREDO 2016)

(defconstant SCI_MARKERLINEFROMHANDLE 2017)

(defconstant SCI_MARKERDELETEHANDLE 2018)

(defconstant SCI_GETUNDOCOLLECTION 2019)

(defconstant SCWS_INVISIBLE 0)

(defconstant SCWS_VISIBLEALWAYS 1)

(defconstant SCWS_VISIBLEAFTERINDENT 2)

(defconstant SCI_GETVIEWWS 2020)

(defconstant SCI_SETVIEWWS 2021)

(defconstant SCI_POSITIONFROMPOINT 2022)

(defconstant SCI_POSITIONFROMPOINTCLOSE 2023)

(defconstant SCI_GOTOLINE 2024)

(defconstant SCI_GOTOPOS 2025)

(defconstant SCI_SETANCHOR 2026)

(defconstant SCI_GETCURLINE 2027)

(defconstant SCI_GETENDSTYLED 2028)

(defconstant SC_EOL_CRLF 0)

(defconstant SC_EOL_CR 1)

(defconstant SC_EOL_LF 2)

(defconstant SCI_CONVERTEOLS 2029)

(defconstant SCI_GETEOLMODE 2030)

(defconstant SCI_SETEOLMODE 2031)

(defconstant SCI_STARTSTYLING 2032)

(defconstant SCI_SETSTYLING 2033)

(defconstant SCI_GETBUFFEREDDRAW 2034)

(defconstant SCI_SETBUFFEREDDRAW 2035)

(defconstant SCI_SETTABWIDTH 2036)

(defconstant SCI_GETTABWIDTH 2121)

(defconstant SC_CP_UTF8 65001)

(defconstant SCI_SETCODEPAGE 2037)

(defconstant SCI_SETUSEPALETTE 2039)

(defconstant MARKER_MAX 31)

(defconstant SC_MARK_CIRCLE 0)

(defconstant SC_MARK_ROUNDRECT 1)

(defconstant SC_MARK_ARROW 2)

(defconstant SC_MARK_SMALLRECT 3)

(defconstant SC_MARK_SHORTARROW 4)

(defconstant SC_MARK_EMPTY 5)

(defconstant SC_MARK_ARROWDOWN 6)

(defconstant SC_MARK_MINUS 7)

(defconstant SC_MARK_PLUS 8)

(defconstant SC_MARK_VLINE 9)

(defconstant SC_MARK_LCORNER 10)

(defconstant SC_MARK_TCORNER 11)

(defconstant SC_MARK_BOXPLUS 12)

(defconstant SC_MARK_BOXPLUSCONNECTED 13)

(defconstant SC_MARK_BOXMINUS 14)

(defconstant SC_MARK_BOXMINUSCONNECTED 15)

(defconstant SC_MARK_LCORNERCURVE 16)

(defconstant SC_MARK_TCORNERCURVE 17)

(defconstant SC_MARK_CIRCLEPLUS 18)

(defconstant SC_MARK_CIRCLEPLUSCONNECTED 19)

(defconstant SC_MARK_CIRCLEMINUS 20)

(defconstant SC_MARK_CIRCLEMINUSCONNECTED 21)

(defconstant SC_MARK_BACKGROUND 22)

(defconstant SC_MARK_CHARACTER 10000)

(defconstant SC_MARKNUM_FOLDEREND 25)

(defconstant SC_MARKNUM_FOLDEROPENMID 26)

(defconstant SC_MARKNUM_FOLDERMIDTAIL 27)

(defconstant SC_MARKNUM_FOLDERTAIL 28)

(defconstant SC_MARKNUM_FOLDERSUB 29)

(defconstant SC_MARKNUM_FOLDER 30)

(defconstant SC_MARKNUM_FOLDEROPEN 31)

(defconstant SC_MASK_FOLDERS #xFE000000)

(defconstant SCI_MARKERDEFINE 2040)

(defconstant SCI_MARKERSETFORE 2041)

(defconstant SCI_MARKERSETBACK 2042)

(defconstant SCI_MARKERADD 2043)

(defconstant SCI_MARKERDELETE 2044)

(defconstant SCI_MARKERDELETEALL 2045)

(defconstant SCI_MARKERGET 2046)

(defconstant SCI_MARKERNEXT 2047)

(defconstant SCI_MARKERPREVIOUS 2048)

(defconstant SC_MARGIN_SYMBOL 0)

(defconstant SC_MARGIN_NUMBER 1)

(defconstant SCI_SETMARGINTYPEN 2240)

(defconstant SCI_GETMARGINTYPEN 2241)

(defconstant SCI_SETMARGINWIDTHN 2242)

(defconstant SCI_GETMARGINWIDTHN 2243)

(defconstant SCI_SETMARGINMASKN 2244)

(defconstant SCI_GETMARGINMASKN 2245)

(defconstant SCI_SETMARGINSENSITIVEN 2246)

(defconstant SCI_GETMARGINSENSITIVEN 2247)

(defconstant STYLE_DEFAULT 32)

(defconstant STYLE_LINENUMBER 33)

(defconstant STYLE_BRACELIGHT 34)

(defconstant STYLE_BRACEBAD 35)

(defconstant STYLE_CONTROLCHAR 36)

(defconstant STYLE_INDENTGUIDE 37)

(defconstant STYLE_LASTPREDEFINED 39)

(defconstant STYLE_MAX 127)

(defconstant SC_CHARSET_ANSI 0)

(defconstant SC_CHARSET_DEFAULT 1)

(defconstant SC_CHARSET_BALTIC 186)

(defconstant SC_CHARSET_CHINESEBIG5 136)

(defconstant SC_CHARSET_EASTEUROPE 238)

(defconstant SC_CHARSET_GB2312 134)

(defconstant SC_CHARSET_GREEK 161)

(defconstant SC_CHARSET_HANGUL 129)

(defconstant SC_CHARSET_MAC 77)

(defconstant SC_CHARSET_OEM 255)

(defconstant SC_CHARSET_RUSSIAN 204)

(defconstant SC_CHARSET_SHIFTJIS 128)

(defconstant SC_CHARSET_SYMBOL 2)

(defconstant SC_CHARSET_TURKISH 162)

(defconstant SC_CHARSET_JOHAB 130)

(defconstant SC_CHARSET_HEBREW 177)

(defconstant SC_CHARSET_ARABIC 178)

(defconstant SC_CHARSET_VIETNAMESE 163)

(defconstant SC_CHARSET_THAI 222)

(defconstant SCI_STYLECLEARALL 2050)

(defconstant SCI_STYLESETFORE 2051)

(defconstant SCI_STYLESETBACK 2052)

(defconstant SCI_STYLESETBOLD 2053)

(defconstant SCI_STYLESETITALIC 2054)

(defconstant SCI_STYLESETSIZE 2055)

(defconstant SCI_STYLESETFONT 2056)

(defconstant SCI_STYLESETEOLFILLED 2057)

(defconstant SCI_STYLERESETDEFAULT 2058)

(defconstant SCI_STYLESETUNDERLINE 2059)

(defconstant SC_CASE_MIXED 0)

(defconstant SC_CASE_UPPER 1)

(defconstant SC_CASE_LOWER 2)

(defconstant SCI_STYLESETCASE 2060)

(defconstant SCI_STYLESETCHARACTERSET 2066)

(defconstant SCI_SETSELFORE 2067)

(defconstant SCI_SETSELBACK 2068)

(defconstant SCI_SETCARETFORE 2069)

(defconstant SCI_ASSIGNCMDKEY 2070)

(defconstant SCI_CLEARCMDKEY 2071)

(defconstant SCI_CLEARALLCMDKEYS 2072)

(defconstant SCI_SETSTYLINGEX 2073)

(defconstant SCI_STYLESETVISIBLE 2074)

(defconstant SCI_GETCARETPERIOD 2075)

(defconstant SCI_SETCARETPERIOD 2076)

(defconstant SCI_SETWORDCHARS 2077)

(defconstant SCI_BEGINUNDOACTION 2078)

(defconstant SCI_ENDUNDOACTION 2079)

(defconstant INDIC_MAX 7)

(defconstant INDIC_PLAIN 0)

(defconstant INDIC_SQUIGGLE 1)

(defconstant INDIC_TT 2)

(defconstant INDIC_DIAGONAL 3)

(defconstant INDIC_STRIKE 4)

(defconstant INDIC0_MASK #x20)

(defconstant INDIC1_MASK #x40)

(defconstant INDIC2_MASK #x80)

(defconstant INDICS_MASK #xE0)

(defconstant SCI_INDICSETSTYLE 2080)

(defconstant SCI_INDICGETSTYLE 2081)

(defconstant SCI_INDICSETFORE 2082)

(defconstant SCI_INDICGETFORE 2083)

(defconstant SCI_SETSTYLEBITS 2090)

(defconstant SCI_GETSTYLEBITS 2091)

(defconstant SCI_SETLINESTATE 2092)

(defconstant SCI_GETLINESTATE 2093)

(defconstant SCI_GETMAXLINESTATE 2094)

(defconstant SCI_GETCARETLINEVISIBLE 2095)

(defconstant SCI_SETCARETLINEVISIBLE 2096)

(defconstant SCI_GETCARETLINEBACK 2097)

(defconstant SCI_SETCARETLINEBACK 2098)

(defconstant SCI_STYLESETCHANGEABLE 2099)

(defconstant SCI_AUTOCSHOW 2100)

(defconstant SCI_AUTOCCANCEL 2101)

(defconstant SCI_AUTOCACTIVE 2102)

(defconstant SCI_AUTOCPOSSTART 2103)

(defconstant SCI_AUTOCCOMPLETE 2104)

(defconstant SCI_AUTOCSTOPS 2105)

(defconstant SCI_AUTOCSETSEPARATOR 2106)

(defconstant SCI_AUTOCGETSEPARATOR 2107)

(defconstant SCI_AUTOCSELECT 2108)

(defconstant SCI_AUTOCSETCANCELATSTART 2110)

(defconstant SCI_AUTOCGETCANCELATSTART 2111)

(defconstant SCI_AUTOCSETFILLUPS 2112)

(defconstant SCI_AUTOCSETCHOOSESINGLE 2113)

(defconstant SCI_AUTOCGETCHOOSESINGLE 2114)

(defconstant SCI_AUTOCSETIGNORECASE 2115)

(defconstant SCI_AUTOCGETIGNORECASE 2116)

(defconstant SCI_USERLISTSHOW 2117)

(defconstant SCI_AUTOCSETAUTOHIDE 2118)

(defconstant SCI_AUTOCGETAUTOHIDE 2119)

(defconstant SCI_AUTOCSETDROPRESTOFWORD 2270)

(defconstant SCI_AUTOCGETDROPRESTOFWORD 2271)

(defconstant SCI_SETINDENT 2122)

(defconstant SCI_GETINDENT 2123)

(defconstant SCI_SETUSETABS 2124)

(defconstant SCI_GETUSETABS 2125)

(defconstant SCI_SETLINEINDENTATION 2126)

(defconstant SCI_GETLINEINDENTATION 2127)

(defconstant SCI_GETLINEINDENTPOSITION 2128)

(defconstant SCI_GETCOLUMN 2129)

(defconstant SCI_SETHSCROLLBAR 2130)

(defconstant SCI_GETHSCROLLBAR 2131)

(defconstant SCI_SETINDENTATIONGUIDES 2132)

(defconstant SCI_GETINDENTATIONGUIDES 2133)

(defconstant SCI_SETHIGHLIGHTGUIDE 2134)

(defconstant SCI_GETHIGHLIGHTGUIDE 2135)

(defconstant SCI_GETLINEENDPOSITION 2136)

(defconstant SCI_GETCODEPAGE 2137)

(defconstant SCI_GETCARETFORE 2138)

(defconstant SCI_GETUSEPALETTE 2139)

(defconstant SCI_GETREADONLY 2140)

(defconstant SCI_SETCURRENTPOS 2141)

(defconstant SCI_SETSELECTIONSTART 2142)

(defconstant SCI_GETSELECTIONSTART 2143)

(defconstant SCI_SETSELECTIONEND 2144)

(defconstant SCI_GETSELECTIONEND 2145)

(defconstant SCI_SETPRINTMAGNIFICATION 2146)

(defconstant SCI_GETPRINTMAGNIFICATION 2147)

(defconstant SC_PRINT_NORMAL 0)

(defconstant SC_PRINT_INVERTLIGHT 1)

(defconstant SC_PRINT_BLACKONWHITE 2)

(defconstant SC_PRINT_COLOURONWHITE 3)

(defconstant SC_PRINT_COLOURONWHITEDEFAULTBG 4)

(defconstant SCI_SETPRINTCOLOURMODE 2148)

(defconstant SCI_GETPRINTCOLOURMODE 2149)

(defconstant SCFIND_WHOLEWORD 2)

(defconstant SCFIND_MATCHCASE 4)

(defconstant SCFIND_WORDSTART #x00100000)

(defconstant SCFIND_REGEXP #x00200000)

(defconstant SCI_FINDTEXT 2150)

(defconstant SCI_FORMATRANGE 2151)

(defconstant SCI_GETFIRSTVISIBLELINE 2152)

(defconstant SCI_GETLINE 2153)

(defconstant SCI_GETLINECOUNT 2154)

(defconstant SCI_SETMARGINLEFT 2155)

(defconstant SCI_GETMARGINLEFT 2156)

(defconstant SCI_SETMARGINRIGHT 2157)

(defconstant SCI_GETMARGINRIGHT 2158)

(defconstant SCI_GETMODIFY 2159)

(defconstant SCI_SETSEL 2160)

(defconstant SCI_GETSELTEXT 2161)

(defconstant SCI_GETTEXTRANGE 2162)

(defconstant SCI_HIDESELECTION 2163)

(defconstant SCI_POINTXFROMPOSITION 2164)

(defconstant SCI_POINTYFROMPOSITION 2165)

(defconstant SCI_LINEFROMPOSITION 2166)

(defconstant SCI_POSITIONFROMLINE 2167)

(defconstant SCI_LINESCROLL 2168)

(defconstant SCI_SCROLLCARET 2169)

(defconstant SCI_REPLACESEL 2170)

(defconstant SCI_SETREADONLY 2171)

(defconstant SCI_NULL 2172)

(defconstant SCI_CANPASTE 2173)

(defconstant SCI_CANUNDO 2174)

(defconstant SCI_EMPTYUNDOBUFFER 2175)

(defconstant SCI_UNDO 2176)

(defconstant SCI_CUT 2177)

(defconstant SCI_COPY 2178)

(defconstant SCI_PASTE 2179)

(defconstant SCI_CLEAR 2180)

(defconstant SCI_SETTEXT 2181)

(defconstant SCI_GETTEXT 2182)

(defconstant SCI_GETTEXTLENGTH 2183)

(defconstant SCI_GETDIRECTFUNCTION 2184)

(defconstant SCI_GETDIRECTPOINTER 2185)

(defconstant SCI_SETOVERTYPE 2186)

(defconstant SCI_GETOVERTYPE 2187)

(defconstant SCI_SETCARETWIDTH 2188)

(defconstant SCI_GETCARETWIDTH 2189)

(defconstant SCI_SETTARGETSTART 2190)

(defconstant SCI_GETTARGETSTART 2191)

(defconstant SCI_SETTARGETEND 2192)

(defconstant SCI_GETTARGETEND 2193)

(defconstant SCI_REPLACETARGET 2194)

(defconstant SCI_REPLACETARGETRE 2195)

(defconstant SCI_SEARCHINTARGET 2197)

(defconstant SCI_SETSEARCHFLAGS 2198)

(defconstant SCI_GETSEARCHFLAGS 2199)

(defconstant SCI_CALLTIPSHOW 2200)

(defconstant SCI_CALLTIPCANCEL 2201)

(defconstant SCI_CALLTIPACTIVE 2202)

(defconstant SCI_CALLTIPPOSSTART 2203)

(defconstant SCI_CALLTIPSETHLT 2204)

(defconstant SCI_CALLTIPSETBACK 2205)

(defconstant SCI_VISIBLEFROMDOCLINE 2220)

(defconstant SCI_DOCLINEFROMVISIBLE 2221)

(defconstant SC_FOLDLEVELBASE #x400)

(defconstant SC_FOLDLEVELWHITEFLAG #x1000)

(defconstant SC_FOLDLEVELHEADERFLAG #x2000)

(defconstant SC_FOLDLEVELNUMBERMASK #x0FFF)

(defconstant SCI_SETFOLDLEVEL 2222)

(defconstant SCI_GETFOLDLEVEL 2223)

(defconstant SCI_GETLASTCHILD 2224)

(defconstant SCI_GETFOLDPARENT 2225)

(defconstant SCI_SHOWLINES 2226)

(defconstant SCI_HIDELINES 2227)

(defconstant SCI_GETLINEVISIBLE 2228)

(defconstant SCI_SETFOLDEXPANDED 2229)

(defconstant SCI_GETFOLDEXPANDED 2230)

(defconstant SCI_TOGGLEFOLD 2231)

(defconstant SCI_ENSUREVISIBLE 2232)

(defconstant SCI_SETFOLDFLAGS 2233)

(defconstant SCI_ENSUREVISIBLEENFORCEPOLICY 2234)

(defconstant SCI_SETTABINDENTS 2260)

(defconstant SCI_GETTABINDENTS 2261)

(defconstant SCI_SETBACKSPACEUNINDENTS 2262)

(defconstant SCI_GETBACKSPACEUNINDENTS 2263)

(defconstant SC_TIME_FOREVER 10000000)

(defconstant SCI_SETMOUSEDWELLTIME 2264)

(defconstant SCI_GETMOUSEDWELLTIME 2265)

(defconstant SCI_WORDSTARTPOSITION 2266)

(defconstant SCI_WORDENDPOSITION 2267)

(defconstant SC_WRAP_NONE 0)

(defconstant SC_WRAP_WORD 1)

(defconstant SCI_SETWRAPMODE 2268)

(defconstant SCI_GETWRAPMODE 2269)

(defconstant SC_CACHE_NONE 0)

(defconstant SC_CACHE_CARET 1)

(defconstant SC_CACHE_PAGE 2)

(defconstant SC_CACHE_DOCUMENT 3)

(defconstant SCI_SETLAYOUTCACHE 2272)

(defconstant SCI_GETLAYOUTCACHE 2273)

(defconstant SCI_SETSCROLLWIDTH 2274)

(defconstant SCI_GETSCROLLWIDTH 2275)

(defconstant SCI_TEXTWIDTH 2276)

(defconstant SCI_SETENDATLASTLINE 2277)

(defconstant SCI_GETENDATLASTLINE 2278)

(defconstant SCI_LINEDOWN 2300)

(defconstant SCI_LINEDOWNEXTEND 2301)

(defconstant SCI_LINEUP 2302)

(defconstant SCI_LINEUPEXTEND 2303)

(defconstant SCI_CHARLEFT 2304)

(defconstant SCI_CHARLEFTEXTEND 2305)

(defconstant SCI_CHARRIGHT 2306)

(defconstant SCI_CHARRIGHTEXTEND 2307)

(defconstant SCI_WORDLEFT 2308)

(defconstant SCI_WORDLEFTEXTEND 2309)

(defconstant SCI_WORDRIGHT 2310)

(defconstant SCI_WORDRIGHTEXTEND 2311)

(defconstant SCI_HOME 2312)

(defconstant SCI_HOMEEXTEND 2313)

(defconstant SCI_LINEEND 2314)

(defconstant SCI_LINEENDEXTEND 2315)

(defconstant SCI_DOCUMENTSTART 2316)

(defconstant SCI_DOCUMENTSTARTEXTEND 2317)

(defconstant SCI_DOCUMENTEND 2318)

(defconstant SCI_DOCUMENTENDEXTEND 2319)

(defconstant SCI_PAGEUP 2320)

(defconstant SCI_PAGEUPEXTEND 2321)

(defconstant SCI_PAGEDOWN 2322)

(defconstant SCI_PAGEDOWNEXTEND 2323)

(defconstant SCI_EDITTOGGLEOVERTYPE 2324)

(defconstant SCI_CANCEL 2325)

(defconstant SCI_DELETEBACK 2326)

(defconstant SCI_TAB 2327)

(defconstant SCI_BACKTAB 2328)

(defconstant SCI_NEWLINE 2329)

(defconstant SCI_FORMFEED 2330)

(defconstant SCI_VCHOME 2331)

(defconstant SCI_VCHOMEEXTEND 2332)

(defconstant SCI_ZOOMIN 2333)

(defconstant SCI_ZOOMOUT 2334)

(defconstant SCI_DELWORDLEFT 2335)

(defconstant SCI_DELWORDRIGHT 2336)

(defconstant SCI_LINECUT 2337)

(defconstant SCI_LINEDELETE 2338)

(defconstant SCI_LINETRANSPOSE 2339)

(defconstant SCI_LOWERCASE 2340)

(defconstant SCI_UPPERCASE 2341)

(defconstant SCI_LINESCROLLDOWN 2342)

(defconstant SCI_LINESCROLLUP 2343)

(defconstant SCI_DELETEBACKNOTLINE 2344)

(defconstant SCI_MOVECARETINSIDEVIEW 2401)

(defconstant SCI_LINELENGTH 2350)

(defconstant SCI_BRACEHIGHLIGHT 2351)

(defconstant SCI_BRACEBADLIGHT 2352)

(defconstant SCI_BRACEMATCH 2353)

(defconstant SCI_GETVIEWEOL 2355)

(defconstant SCI_SETVIEWEOL 2356)

(defconstant SCI_GETDOCPOINTER 2357)

(defconstant SCI_SETDOCPOINTER 2358)

(defconstant SCI_SETMODEVENTMASK 2359)

(defconstant EDGE_NONE 0)

(defconstant EDGE_LINE 1)

(defconstant EDGE_BACKGROUND 2)

(defconstant SCI_GETEDGECOLUMN 2360)

(defconstant SCI_SETEDGECOLUMN 2361)

(defconstant SCI_GETEDGEMODE 2362)

(defconstant SCI_SETEDGEMODE 2363)

(defconstant SCI_GETEDGECOLOUR 2364)

(defconstant SCI_SETEDGECOLOUR 2365)

(defconstant SCI_SEARCHANCHOR 2366)

(defconstant SCI_SEARCHNEXT 2367)

(defconstant SCI_SEARCHPREV 2368)

(defconstant CARET_SLOP #x01)

(defconstant CARET_CENTER #x02)

(defconstant CARET_STRICT #x04)

(defconstant CARET_XEVEN #x08)

(defconstant CARET_XJUMPS #x10)

(defconstant SCI_SETCARETPOLICY 2369)

(defconstant SCI_LINESONSCREEN 2370)

(defconstant SCI_USEPOPUP 2371)

(defconstant SCI_SELECTIONISRECTANGLE 2372)

(defconstant SCI_SETZOOM 2373)

(defconstant SCI_GETZOOM 2374)

(defconstant SCI_CREATEDOCUMENT 2375)

(defconstant SCI_ADDREFDOCUMENT 2376)

(defconstant SCI_RELEASEDOCUMENT 2377)

(defconstant SCI_GETMODEVENTMASK 2378)

(defconstant SCI_SETFOCUS 2380)

(defconstant SCI_GETFOCUS 2381)

(defconstant SCI_SETSTATUS 2382)

(defconstant SCI_GETSTATUS 2383)

(defconstant SCI_SETMOUSEDOWNCAPTURES 2384)

(defconstant SCI_GETMOUSEDOWNCAPTURES 2385)

(defconstant SC_CURSORNORMAL -1)

(defconstant SC_CURSORWAIT 3)

(defconstant SCI_SETCURSOR 2386)

(defconstant SCI_GETCURSOR 2387)

(defconstant SCI_SETCONTROLCHARSYMBOL 2388)

(defconstant SCI_GETCONTROLCHARSYMBOL 2389)

(defconstant SCI_WORDPARTLEFT 2390)

(defconstant SCI_WORDPARTLEFTEXTEND 2391)

(defconstant SCI_WORDPARTRIGHT 2392)

(defconstant SCI_WORDPARTRIGHTEXTEND 2393)

(defconstant VISIBLE_SLOP #x01)

(defconstant VISIBLE_STRICT #x04)

(defconstant SCI_SETVISIBLEPOLICY 2394)

(defconstant SCI_DELLINELEFT 2395)

(defconstant SCI_DELLINERIGHT 2396)

(defconstant SCI_SETXOFFSET 2397)

(defconstant SCI_GETXOFFSET 2398)

(defconstant SCI_GRABFOCUS 2400)

(defconstant SCI_STARTRECORD 3001)

(defconstant SCI_STOPRECORD 3002)

(defconstant SCI_SETLEXER 4001)

(defconstant SCI_GETLEXER 4002)

(defconstant SCI_COLOURISE 4003)

(defconstant SCI_SETPROPERTY 4004)

(defconstant SCI_SETKEYWORDS 4005)

(defconstant SCI_SETLEXERLANGUAGE 4006)

(defconstant SC_MOD_INSERTTEXT #x1)

(defconstant SC_MOD_DELETETEXT #x2)

(defconstant SC_MOD_CHANGESTYLE #x4)

(defconstant SC_MOD_CHANGEFOLD #x8)

(defconstant SC_PERFORMED_USER #x10)

(defconstant SC_PERFORMED_UNDO #x20)

(defconstant SC_PERFORMED_REDO #x40)

(defconstant SC_LASTSTEPINUNDOREDO #x100)

(defconstant SC_MOD_CHANGEMARKER #x200)

(defconstant SC_MOD_BEFOREINSERT #x400)

(defconstant SC_MOD_BEFOREDELETE #x800)

(defconstant SC_MODEVENTMASKALL #xF77)

(defconstant SCEN_CHANGE 768)

(defconstant SCEN_SETFOCUS 512)

(defconstant SCEN_KILLFOCUS 256)

(defconstant SCK_DOWN 300)

(defconstant SCK_UP 301)

(defconstant SCK_LEFT 302)

(defconstant SCK_RIGHT 303)

(defconstant SCK_HOME 304)

(defconstant SCK_END 305)

(defconstant SCK_PRIOR 306)

(defconstant SCK_NEXT 307)

(defconstant SCK_DELETE 308)

(defconstant SCK_INSERT 309)

(defconstant SCK_ESCAPE 7)

(defconstant SCK_BACK 8)

(defconstant SCK_TAB 9)

(defconstant SCK_RETURN 13)

(defconstant SCK_ADD 310)

(defconstant SCK_SUBTRACT 311)

(defconstant SCK_DIVIDE 312)

(defconstant SCMOD_SHIFT 1)

(defconstant SCMOD_CTRL 2)

(defconstant SCMOD_ALT 4)

(defconstant SCN_STYLENEEDED 2000)

(defconstant SCN_CHARADDED 2001)

(defconstant SCN_SAVEPOINTREACHED 2002)

(defconstant SCN_SAVEPOINTLEFT 2003)

(defconstant SCN_MODIFYATTEMPTRO 2004)

(defconstant SCN_KEY 2005)

(defconstant SCN_DOUBLECLICK 2006)

(defconstant SCN_UPDATEUI 2007)

(defconstant SCN_MODIFIED 2008)

(defconstant SCN_MACRORECORD 2009)

(defconstant SCN_MARGINCLICK 2010)

(defconstant SCN_NEEDSHOWN 2011)

(defconstant SCN_PAINTED 2013)

(defconstant SCN_USERLISTSELECTION 2014)

(defconstant SCN_URIDROPPED 2015)

(defconstant SCN_DWELLSTART 2016)

(defconstant SCN_DWELLEND 2017)

(defconstant SCN_ZOOM 2018)

(defcstruct CharacterRange

	(cpMin :long)
	(cpMax :long))

(defcstruct TextRange

	(chrg :pointer)
	(lpstrText :string))

(defcstruct TextToFind

	(chrg :pointer)
	(lpstrText :string)
	(chrgText :pointer))

(defcstruct NotifyHeader

	(hwndFrom :pointer)
	(idFrom :unsigned-nt)
	(code :unsigned-nt))

(defcstruct SCNotification

	(nmhdr :pointer)
	(position :int)
	(ch :int)
	(modifiers :int)
	(modificationType :int)
	(text :string)
	(length :int)
	(linesAdded :int)
	(message :int)
	(wParam :unsigned-long)
	(lParam :long)
	(line :int)
	(foldLevelNow :int)
	(foldLevelPrev :int)
	(margin :int)
	(listType :int)
	(x :int)
	(y :int))

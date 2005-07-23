#!/bin/bash

#  -----------------------------------------------------------------------------
#  ffi-wrapper-generator.sh
#  License   : BSD-style
#       
# 
#   Author(s) : Surendra Singhi (surendra@asu.edu)
# 
#   Copyright (C) 2005 Surendra Singhi
#   See the file LICENSE for information on usage and redistribution.
#  ----------------------------------------------------------------------------- */

#Generates clisp wrappers for all the wxC files.


ewxw=wxc/src/ewxw
dest=SWIG-clisp/

file[0]=$ewxw/eljaccelerator.cpp
module[0]=wxAcceleratorEntry

file[1]=$ewxw/eljartprov.cpp
module[1]=wxArtProv

file[2]=$ewxw/eljbitmap.cpp
module[2]=wxBitmap

file[3]=$ewxw/eljbrush.cpp
module[3]=wxBrush

file[4]=$ewxw/eljbusyinfo.cpp
module[4]=wxBusyInfo

file[5]=$ewxw/eljbutton.cpp
module[5]=wxButton

file[6]=$ewxw/eljcalendarctrl.cpp
module[6]=wxCalendarCtrl

file[7]=$ewxw/eljcaret.cpp
module[7]=wxCaret

file[8]=$ewxw/eljcheckbox.cpp
module[8]=wxCheckbox

file[9]=$ewxw/eljchecklistbox.cpp
module[9]=wxChecklistbox

file[10]=$ewxw/eljchoice.cpp
module[10]=wxChoice

file[11]=$ewxw/eljclipboard.cpp
module[11]=wxClipboard

file[12]=$ewxw/eljcoldata.cpp
module[12]=wxColdata

file[13]=$ewxw/eljcolour.cpp
module[13]=wxColour

file[14]=$ewxw/eljcolourdlg.cpp
module[14]=wxColourDlg

file[15]=$ewxw/eljcombobox.cpp
module[15]=wxCombobox

file[16]=$ewxw/eljcommand.cpp
module[16]=wxCommand

file[17]=$ewxw/eljconfigbase.cpp
module[17]=wxConfigBase

file[18]=$ewxw/eljcontrol.cpp
module[18]=wxControl

file[19]=$ewxw/eljctxhelp.cpp
module[19]=wxCtxHelp

file[20]=$ewxw/eljcursor.cpp
module[20]=wxCursor

file[21]=$ewxw/eljdataformat.cpp
module[21]=wxDataFormat

file[22]=$ewxw/eljdatetime.cpp
module[22]=wxDatetime

file[23]=$ewxw/eljdc.cpp
module[23]=wxDc

file[24]=$ewxw/eljdcsvg.cpp
module[24]=wxDcsvg

file[25]=$ewxw/eljdialog.cpp
module[25]=wxDialog

file[26]=$ewxw/eljdialup.cpp
module[26]=wxDialup

file[27]=$ewxw/eljdirdlg.cpp
module[27]=wxDirDlg

file[28]=$ewxw/eljdnd.cpp
module[28]=wxDnd

file[29]=$ewxw/eljdrawing.cpp
module[29]=wxDrawing

file[30]=$ewxw/eljevent.cpp
module[30]=wxEvent

file[31]=$ewxw/eljfiledialog.cpp
module[31]=wxFileDialog

file[32]=$ewxw/eljfilehist.cpp
module[32]=wxFileHist

file[33]=$ewxw/eljfindrepldlg.cpp
module[33]=wxFindreplDlg

file[34]=$ewxw/eljfl.cpp
module[34]=wxFl

file[35]=$ewxw/eljfont.cpp
module[35]=wxFont

file[36]=$ewxw/eljfontdata.cpp
module[36]=wxFontData

file[37]=$ewxw/eljfontdlg.cpp
module[37]=wxFontDlg

file[38]=$ewxw/eljframe.cpp
module[38]=wxFrame

file[39]=$ewxw/eljgauge.cpp
module[39]=wxGauge

file[40]=$ewxw/eljgizmos.cpp
module[40]=wxGizmos

file[41]=$ewxw/eljgrid.cpp
module[41]=wxGrid_cpp

file[42]=$ewxw/eljgrid.h
module[42]=wxGrid_h

file[43]=$ewxw/eljhelpcontroller.cpp
module[43]=wxHelpcontroller

file[44]=$ewxw/eljicnbndl.cpp
module[44]=wxIcnbndl

file[45]=$ewxw/eljicon.cpp
module[45]=wxIcon

file[46]=$ewxw/eljimage.cpp
module[46]=wxImage

file[47]=$ewxw/eljimagelist.cpp
module[47]=wxImageList

file[48]=$ewxw/eljipc.cpp
module[48]=wxIpc

file[49]=$ewxw/eljjoystick.cpp
module[49]=wxJoystick

file[50]=$ewxw/eljlayoutconstraints.cpp
module[50]=wxLayoutConstraints

file[51]=$ewxw/eljlistbox.cpp
module[51]=wxListbox

file[52]=$ewxw/eljlistctrl.cpp
module[52]=wxListctrl

file[53]=$ewxw/eljlocale.cpp
module[53]=wxLocale

file[54]=$ewxw/eljlog.cpp
module[54]=wxLog

file[55]=$ewxw/eljmask.cpp
module[55]=wxMask

file[56]=$ewxw/eljmdi.cpp
module[56]=wxMdi

file[57]=$ewxw/eljmenu.cpp
module[57]=wxMenu

file[58]=$ewxw/eljmenubar.cpp
module[58]=wxMenubar

file[59]=$ewxw/eljmessagedialog.cpp
module[59]=wxMessageDialog

file[60]=$ewxw/eljmime.cpp
module[60]=wxMime

file[61]=$ewxw/eljminiframe.cpp
module[61]=wxMiniframe

file[62]=$ewxw/eljnotebook.cpp
module[62]=wxNotebook

file[63]=$ewxw/eljpalette.cpp
module[63]=wxPalette

file[64]=$ewxw/eljpanel.cpp
module[64]=wxPanel

file[65]=$ewxw/eljpen.cpp
module[65]=wxPen

file[66]=$ewxw/eljplot.cpp
module[66]=wxPlot

file[67]=$ewxw/eljprintdlg.cpp
module[67]=wxPrintDlg

file[68]=$ewxw/eljprintdlg.cpp
module[68]=wxPrintDlg

file[69]=$ewxw/eljprocess.cpp
module[69]=wxProcess

file[70]=$ewxw/eljradiobox.cpp
module[70]=wxRadiobox

file[71]=$ewxw/eljradiobutton.cpp
module[71]=wxRadiobutton

file[72]=$ewxw/eljrc.cpp
module[72]=wxRc

file[73]=$ewxw/eljregion.cpp
module[73]=wxRegion

file[74]=$ewxw/eljregioniter.cpp
module[74]=wxRegioniter

file[75]=$ewxw/eljsash.cpp
module[75]=wxSash

file[76]=$ewxw/eljscintilla.cpp
module[76]=wxScintilla

file[77]=$ewxw/eljscintilla.h
module[77]=wxScintilla

file[78]=$ewxw/eljscrollbar.cpp
module[78]=wxScrollbar

file[79]=$ewxw/eljscrolledwindow.cpp
module[79]=wxScrolledWindow

file[80]=$ewxw/eljsingleinst.cpp
module[80]=wxSingleinst

file[81]=$ewxw/eljsizer.cpp
module[8]=wxSizer

file[82]=$ewxw/eljslider.cpp
module[82]=wxSlider

file[83]=$ewxw/eljspinctrl.cpp
module[83]=wxSpinctrl

file[84]=$ewxw/eljsplitterwindow.cpp
module[84]=wxSplitterWindow

file[85]=$ewxw/eljstaticbox.cpp
module[85]=wxStaticBox

file[86]=$ewxw/eljstaticline.cpp
module[86]=wxStaticLine

file[87]=$ewxw/eljstatictext.cpp
module[87]=wxStaticText

file[88]=$ewxw/eljstatusbar.cpp
module[88]=wxStatusBar

file[89]=$ewxw/eljsystemsettings.cpp
module[89]=wxSystemSettings

file[90]=$ewxw/eljtextctrl.cpp
module[90]=wxTextctrl

file[91]=$ewxw/eljtglbtn.cpp
module[91]=wxTglBtn

file[92]=$ewxw/eljthread.cpp
module[92]=wxThread

file[93]=$ewxw/eljtimer.cpp
module[93]=wxTimer

file[94]=$ewxw/eljtipwnd.cpp
module[94]=wxTipwnd

file[95]=$ewxw/eljtoolbar.cpp
module[95]=wxToolbar

file[96]=$ewxw/eljtreectrl.cpp
module[96]=wxTreectrl

file[97]=$ewxw/eljvalidator.cpp
module[97]=wxValidator

file[98]=$ewxw/eljwindow.cpp
module[98]=wxWindow

file[99]=$ewxw/eljwizard.cpp
module[99]=wxWizard

file[100]=$ewxw/ewxw_def.h
module[100]=wx_def

file[101]=$ewxw/ewxw_main.cpp
module[101]=wx_main

file[102]=$ewxw/Scintilla.h
module[102]=wx_scintilla

file[103]=$ewxw/wrapper.cpp
module[103]=wx_wrapper

index=0
element_count=104
while [ "$index" -lt "$element_count" ]
do  
  rm -f tmp.c
  echo "processing file: ${file[$index]}"
  echo "%import ewxw_def.h" > tmp.c 
  cat "${file[$index]}" >> tmp.c
  swig -clisp -module "${module[$index]}" -o "$dest/${module[$index]}.lisp" tmp.c
  let "index+=1"
done

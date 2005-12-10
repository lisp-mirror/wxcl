;;;defpackage.lisp
;;;License  : wxWindows License 3.1
;;;Author(s) : Surendra Singhi (surendra@asu.edu) 
;;;Copyright (C) 2005 Surendra Singhi 
;;;See the file LICENSE for information on usage and redistribution.
;;;
;;; $Header$
;;;

(defpackage :wxCL
    (:use :common-lisp :ffi)
  (:export #:+library-name+
      #:object
      #:size
      #:point
      #:rect
      #:define-frame)
  ;;commonly used functions
  (:export #:get-colour-from-user
           #:get-font-from-user
           #:get-password-from-user
           #:get-text-from-user
           #:get-number-from-user
           #:get-filepath-from-user
           #:get-directory-from-user
           #:file-selector
           #:dir-selector
           #:message-box
           )
  (:export 
      #:make-rect
      #:make-point
      #:make-size
      #:object-pointer
      #:start-app
      #:size-height
      #:size-width
      #:rect-position
      #:rect-size
      #:point-x
      #:point-y
      #:+default-size+
      #:+default-position+
      #:make-wx-instance
      #:invalidate-wx-instance
      )
  ;;some constants
  (:export
      #:+open+
      #:+save+
      #:+hide-readonly+
      #:+multiple+
      #:+change-dir+
      #:+overwrite-prompt+
      #:+file-must-exist+
      #:+st-sizegrip+
      #:+size-auto-width+
      #:+size-auto-height+
      #:+size-use-existing+
      #:+size-allow-minus-one+
      #:+size-no-adjustments+
      #:+id-open+
      #:+id-close+
      #:+id-new+
      #:+id-save+
      #:+id-saveas+
      #:+id-revert+
      #:+id-exit+
      #:+id-undo+
      #:+id-redo+
      #:+id-help+
      #:+id-print+
      #:+id-print-setup+
      #:+id-preview+
      #:+id-about+
      #:+id-ok+
      #:+id-cancel+
      #:+id-apply+
      #:+id-yes+
      #:+id-no+
      #:+ok+
      #:+yes+
      #:+no+
      #:+cancel+

      #:+null-flag+
      #:+evt-null+
      #:+evt-first+
      #:+joystick1+
      #:+joystick2+
      #:+joy-button1+
      #:+joy-button2+
      #:+joy-button3+
      #:+joy-button4+
      #:+unknown-platform+
      #:+curses+
      #:+xview-x+
      #:+motif-x+
      #:+cose-x+
      #:+nextstep+
      #:+macintosh+
      #:+beos+
      #:+gtk+
      #:+gtk-win32+
      #:+gtk-os2+
      #:+gtk-beos+
      #:+qt+
      #:+geos+
      #:+os2-pm+
      #:+windows+
      #:+penwindows+
      #:+windows-nt+
      #:+win32s+
      #:+win95+
      #:+win386+
      #:+mgl-unix+
      #:+mgl-x+
      #:+mgl-win32+
      #:+mgl-os2+
      #:+windows-os2+
      #:+unix+
      #:+big-endian+
      #:+little-endian+
      #:+pdp-endian+
      #:+centre+
      #:+center+
      #:+center-frame+
      #:+centre-on-screen+
      #:+horizontal+
      #:+vertical+
      #:+both+
      #:+left+
      #:+right+
      #:+up+
      #:+down+
      #:+top+
      #:+bottom+
      #:+north+
      #:+south+
      #:+west+
      #:+east+
      #:+all+
      #:+align-center+

      #:+stretch-not+
      #:+shrink+
      #:+grow+
      #:+expand+
      #:+shaped+
		
      #:+double-border+
      #:+sunken-border+
      #:+raised-border+
      #:+static-border+
      #:+border+
      #:+transparent-window+
      #:+no-border+
      #:+user-colours+
      #:+no-3d+
      #:+clip-children+

      #:+wants-chars+
      #:+retained+
      #:+no-full-repaint-on-resize+
      #:+ws-ex-validate-recursively+

      #:+iconize+
      #:+maximize+
      #:+system-menu+
      #:+minimize-box+
      #:+maximize-box+

      #:+tiny-caption-horiz+
      #:+tiny-caption-vert+
;#:+resize-border+


      #:+frame-no-window-menu+
      #:+ed-client-margin+
      #:+ed-buttons-bottom+
      #:+ed-buttons-right+
      #:+ed-static-line+

      #:+coloured+
      #:+fixed-length+

      #:+process-enter+
      #:+password+

      #:+bu-noautodraw+


      #:+tc-multiline+
      #:+tc-rightjustify+
      #:+tc-fixedwidth+
      #:+tc-ownerdraw+

      #:+pd-can-abort+
      #:+pd-app-modal+
      #:+pd-auto-hide+
      #:+pd-elapsed-time+
      #:+pd-estimated-time+
      #:+pd-remaining-time+
      #:+hw-scrollbar-never+
      #:+hw-scrollbar-auto+

      #:+forward+
      #:+backward+
      #:+reset+
      #:+help+
      #:+more+
      #:+setup+
      #:+id-lowest+
      #:+id-help-contents+
      #:+id-help-commands+
      #:+id-help-procedures+
      #:+id-help-context+
      #:+id-cut+
      #:+id-copy+
      #:+id-paste+
      #:+id-clear+
      #:+id-find+
      #:+id-duplicate+
      #:+id-selectall+
      #:+id-file1+
      #:+id-file2+
      #:+id-file3+
      #:+id-file4+
      #:+id-file5+
      #:+id-file6+
      #:+id-file7+
      #:+id-file8+
      #:+id-file9+
      #:+id-static+
      #:+id-forward+
      #:+id-backward+
      #:+id-default+
      #:+id-more+
      #:+id-setup+
      #:+id-reset+
      #:+id-filedlgg+
      #:+id-highest+

      #:+solid+
      #:+dot+
      #:+long-dash+
      #:+short-dash+
      #:+dot-dash+
      #:+user-dash+
      #:+transparent+
      #:+stipple-mask-opaque+
      #:+stipple-mask+
      #:+stipple+
      #:+bdiagonal-hatch+
      #:+crossdiag-hatch+
      #:+fdiagonal-hatch+
      #:+cross-hatch+
      #:+horizontal-hatch+
      #:+vertical-hatch+
      #:+join-bevel+
      #:+join-miter+
      #:+join-round+
      #:+cap-round+
      #:+cap-projecting+
      #:+cap-butt+
      #:+clear+
      #:+xor+
      #:+invert+
      #:+or-reverse+
      #:+and-reverse+
      #:+copy+
      #:+and+
      #:+and-invert+
      #:+no-op+
      #:+nor+
      #:+equiv+
      #:+src-invert+
      #:+or-invert+
      #:+nand+
      #:+or+
      #:+set+
      #:+flood-surface+
      #:+flood-border+
      #:+oddeven-rule+
      #:+winding-rule+
      #:+tool-top+
      #:+tool-bottom+
      #:+tool-left+
      #:+tool-right+
      #:+df-invalid+
      #:+df-text+
      #:+df-bitmap+
      #:+df-metafile+
      #:+df-sylk+
      #:+df-dif+
      #:+df-tiff+
      #:+df-oemtext+
      #:+df-dib+
      #:+df-palette+
      #:+df-pendata+
      #:+df-riff+
      #:+df-wave+
      #:+df-unicodetext+
      #:+df-enhmetafile+
      #:+df-filename+
      #:+df-locale+
      #:+df-private+
      #:+df-max+
      #:+mm-text+
      #:+mm-lometric+
      #:+mm-himetric+
      #:+mm-loenglish+
      #:+mm-hienglish+
      #:+mm-twips+
      #:+mm-isotropic+
      #:+mm-anisotropic+
      #:+mm-points+
      #:+mm-metric+
      #:+paper-none+
      #:+paper-letter+
      #:+paper-legal+
      #:+paper-a4+
      #:+paper-csheet+
      #:+paper-dsheet+
      #:+paper-esheet+
      #:+paper-lettersmall+
      #:+paper-tabloid+
      #:+paper-ledger+
      #:+paper-statement+
      #:+paper-executive+
      #:+paper-a3+
      #:+paper-a4small+
      #:+paper-a5+
      #:+paper-b4+
      #:+paper-b5+
      #:+paper-folio+
      #:+paper-quarto+
      #:+paper-10x14+
      #:+paper-11x17+
      #:+paper-note+
      #:+paper-env-9+
      #:+paper-env-10+
      #:+paper-env-11+
      #:+paper-env-12+
      #:+paper-env-14+
      #:+paper-env-dl+
      #:+paper-env-c5+
      #:+paper-env-c3+
      #:+paper-env-c4+
      #:+paper-env-c6+
      #:+paper-env-c65+
      #:+paper-env-b4+
      #:+paper-env-b5+
      #:+paper-env-b6+
      #:+paper-env-italy+
      #:+paper-env-monarch+
      #:+paper-env-personal+
      #:+paper-fanfold-us+
      #:+paper-fanfold-std-german+
      #:+paper-fanfold-lgl-german+
      #:+paper-iso-b4+
      #:+paper-japanese-postcard+
      #:+paper-9x11+
      #:+paper-10x11+
      #:+paper-15x11+
      #:+paper-env-invite+
      #:+paper-letter-extra+
      #:+paper-legal-extra+
      #:+paper-tabloid-extra+
      #:+paper-a4-extra+
      #:+paper-letter-transverse+
      #:+paper-a4-transverse+
      #:+paper-letter-extra-transverse+
      #:+paper-a-plus+
      #:+paper-b-plus+
      #:+paper-letter-plus+
      #:+paper-a4-plus+
      #:+paper-a5-transverse+
      #:+paper-b5-transverse+
      #:+paper-a3-extra+
      #:+paper-a5-extra+
      #:+paper-b5-extra+
      #:+paper-a2+
      #:+paper-a3-transverse+
      #:+paper-a3-extra-transverse+
      #:+portrait+
      #:+landscape+
      #:+duplex-simplex+
      #:+duplex-horizontal+
      #:+duplex-vertical+
      #:+print-mode-none+
      #:+print-mode-preview+
      #:+print-mode-file+
      #:+print-mode-printer+
      #:+layout-default-margin+
      #:+edge-left+
      #:+edge-top+
      #:+edge-right+
      #:+edge-bottom+
      #:+edge-width+
      #:+edge-height+
      #:+edge-center+
      #:+edge-centrex+
      #:+edge-centrey+
      #:+relationship-unconstrained+
      #:+relationship-asis+
      #:+relationship-percentof+
      #:+relationship-above+
      #:+relationship-below+
      #:+relationship-leftof+
      #:+relationship-rightof+
      #:+relationship-sameas+
      #:+relationship-absolute+

      #:+gridtable-request-view-get-values+
      #:+gridtable-request-view-send-values+
      #:+gridtable-notify-rows-inserted+
      #:+gridtable-notify-rows-appended+
      #:+gridtable-notify-rows-deleted+
      #:+gridtable-notify-cols-inserted+
      #:+gridtable-notify-cols-appended+
      #:+gridtable-notify-cols-deleted+
      #:+filter-none+
      #:+filter-ascii+
      #:+filter-alpha+
      #:+filter-alphanumeric+
      #:+filter-numeric+
      #:+filter-include-list+
      #:+filter-exclude-list+
      #:+filter-upper-case+
      #:+filter-lower-case+

      #:+drag-error+
      #:+drag-none+
      #:+drag-copy+
      #:+drag-move+
      #:+drag-link+
      #:+drag-cancel+
      #:+split-horizontal+
      #:+split-vertical+

      #:+tree-hittest-above+
      #:+tree-hittest-below+
      #:+tree-hittest-nowhere+
      #:+tree-hittest-onitembutton+
      #:+tree-hittest-onitemicon+
      #:+tree-hittest-onitemindent+
      #:+tree-hittest-onitemlabel+
      #:+tree-hittest-onitemright+
      #:+tree-hittest-onitemstateicon+
      #:+tree-hittest-toleft+
      #:+tree-hittest-toright+
      #:+tree-hittest-onitemupperpart+
      #:+tree-hittest-onitemlowerpart+
      #:+tree-hittest-onitem+
      #:+default+
      #:+decorative+
      #:+roman+
      #:+script+
      #:+swiss+
      #:+modern+
      #:+teletype+
      #:+variable+
      #:+fixed+
      #:+normal+
      #:+light+
      #:+bold+
      #:+italic+
      #:+slant+

      #:+printer-no-error+
      #:+printer-cancelled+
      #:+printer-error+
      #:+preview-print+
      #:+preview-previous+
      #:+preview-next+
      #:+preview-zoom+
      #:+preview-first+
      #:+preview-last+
      #:+preview-goto+
      #:+preview-default+
      #:+id-preview-close+
      #:+id-preview-next+
      #:+id-preview-previous+
      #:+id-preview-print+
      #:+id-preview-zoom+
      #:+id-preview-first+
      #:+id-preview-last+
      #:+id-preview-goto+
      #:+printid-static+
      #:+printid-range+
      #:+printid-from+
      #:+printid-to+
      #:+printid-copies+
      #:+printid-printtofile+
      #:+printid-setup+
      #:+printid-leftmargin+
      #:+printid-rightmargin+
      #:+printid-topmargin+
      #:+printid-bottommargin+
      #:+printid-printcolour+
      #:+printid-orientation+
      #:+printid-command+
      #:+printid-options+
      #:+printid-papersize+
      #:+hf-toolbar+
      #:+hf-contents+
      #:+hf-index+
      #:+hf-search+
      #:+hf-bookmarks+
      #:+hf-openfiles+
      #:+hf-print+
      #:+hf-flattoolbar+
      #:+hf-defaultstyle+
      #:+layout-horizontal+
      #:+layout-vertical+
      #:+layout-none+
      #:+layout-top+
      #:+layout-left+
      #:+layout-right+
      #:+layout-bottom+
      #:+sash-drag-none+
      #:+sash-drag-dragging+
      #:+sash-drag-left-down+
      #:+sash-top+
      #:+sash-right+
      #:+sash-bottom+
      #:+sash-left+
      #:+sash-none+
      #:+sw-noborder+
      #:+sw-border+
      #:+sw-3dsash+
      #:+sw-3dborder+
      #:+sw-3d+
      #:+sash-status-ok+
      #:+sash-status-out-of-range+
      #:+sys-white-brush+
      #:+sys-ltgray-brush+
      #:+sys-gray-brush+
      #:+sys-dkgray-brush+
      #:+sys-black-brush+
      #:+sys-null-brush+
      #:+sys-hollow-brush+
      #:+sys-white-pen+
      #:+sys-black-pen+
      #:+sys-null-pen+
      #:+sys-oem-fixed-font+
      #:+sys-ansi-fixed-font+
      #:+sys-ansi-var-font+
      #:+sys-system-font+
      #:+sys-device-default-font+
      #:+sys-default-palette+
      #:+sys-system-fixed-font+
      #:+sys-default-gui-font+
      #:+sys-colour-scrollbar+
      #:+sys-colour-background+
      #:+sys-colour-activecaption+
      #:+sys-colour-inactivecaption+
      #:+sys-colour-menu+
      #:+sys-colour-window+
      #:+sys-colour-windowframe+
      #:+sys-colour-menutext+
      #:+sys-colour-windowtext+
      #:+sys-colour-captiontext+
      #:+sys-colour-activeborder+
      #:+sys-colour-inactiveborder+
      #:+sys-colour-appworkspace+
      #:+sys-colour-highlight+
      #:+sys-colour-highlighttext+
      #:+sys-colour-btnface+
      #:+sys-colour-btnshadow+
      #:+sys-colour-graytext+
      #:+sys-colour-btntext+
      #:+sys-colour-inactivecaptiontext+
      #:+sys-colour-btnhighlight+
      #:+sys-colour-3ddkshadow+
      #:+sys-colour-3dlight+
      #:+sys-colour-infotext+
      #:+sys-colour-infobk+
      #:+sys-colour-listbox+
      #:+sys-colour-desktop+
      #:+sys-colour-3dface+
      #:+sys-colour-3dshadow+
      #:+sys-colour-3dhighlight+
      #:+sys-colour-3dhilight+
      #:+sys-colour-btnhilight+
      #:+sys-mouse-buttons+
      #:+sys-border-x+
      #:+sys-border-y+
      #:+sys-cursor-x+
      #:+sys-cursor-y+
      #:+sys-dclick-x+
      #:+sys-dclick-y+
      #:+sys-drag-x+
      #:+sys-drag-y+
      #:+sys-edge-x+
      #:+sys-edge-y+
      #:+sys-hscroll-arrow-x+
      #:+sys-hscroll-arrow-y+
      #:+sys-hthumb-x+
      #:+sys-icon-x+
      #:+sys-icon-y+
      #:+sys-iconspacing-x+
      #:+sys-iconspacing-y+
      #:+sys-windowmin-x+
      #:+sys-windowmin-y+
      #:+sys-screen-x+
      #:+sys-screen-y+
      #:+sys-framesize-x+
      #:+sys-framesize-y+
      #:+sys-smallicon-x+
      #:+sys-smallicon-y+
      #:+sys-hscroll-y+
      #:+sys-vscroll-x+
      #:+sys-vscroll-arrow-x+
      #:+sys-vscroll-arrow-y+
      #:+sys-vthumb-y+
      #:+sys-caption-y+
      #:+sys-menu-y+
      #:+sys-network-present+
      #:+sys-penwindows-present+
      #:+sys-show-sounds+
      #:+sys-swap-buttons+

      #:+unknown+
      #:+string+
      #:+boolean+
      #:+integer+
      #:+float+
      #:+mutex-no-error+
      #:+mutex-dead-lock+
      #:+mutex-busy+
      #:+mutex-unlocked+
      #:+mutex-misc-error+
      #:+platform-unix+
      #:+platform-windows+
      #:+platform-os2+
      #:+platform-mac+
      #:+led-align-left+
      #:+led-align-right+
      #:+led-align-center+
      #:+led-align-mask+
      #:+led-draw-faded+
      #:+ds-manage-scrollbars+
      #:+ds-drag-corner+
      #:+el-allow-new+
      #:+el-allow-edit+
      #:+el-allow-delete+

      #:+cbar-docked-horizontally+
      #:+cbar-docked-vertically+
      #:+cbar-floating+
      #:+cbar-hidden+
      #:+all-panes+

      #:+fr-down+
      #:+fr-wholeword+
      #:+fr-matchcase+
      #:+fr-replacedialog+
      #:+fr-noupdown+
      #:+fr-nomatchcase+
      #:+fr-nowholeword+
      #:+quantize-include-windows-colours+
      #:+quantize-return-8bit-data+
      #:+quantize-fill-destination-image+

      #:+locale-thousands-sep+
      #:+locale-decimal-point+
      #:+locale-load-default+
      #:+locale-conv-encoding+

      #:+item-max+
      #:+close-box+

      #:+dialog-ex-contexthelp+


      #:+treeitemicon-normal+
      #:+treeitemicon-selected+
      #:+treeitemicon-expanded+
      #:+treeitemicon-selectedexpanded+
      #:+config-use-local-file+
      #:+config-use-global-file+
      #:+config-use-relative-path+
      #:+config-use-no-escape-characters+
      #:+config-type-unknown+
      #:+config-type-string+
      #:+config-type-boolean+
      #:+config-type-integer+
      #:+config-type-float+
      #:+signone+
      #:+sighup+
      #:+sigint+
      #:+sigquit+
      #:+sigill+
      #:+sigtrap+
      #:+sigabrt+
      #:+sigemt+
      #:+sigfpe+
      #:+sigkill+
      #:+sigbus+
      #:+sigsegv+
      #:+sigsys+
      #:+sigpipe+
      #:+sigalrm+
      #:+sigterm+
      #:+kill-ok+
      #:+kill-bad-signal+
      #:+kill-access-denied+
      #:+kill-no-process+
      #:+kill-error+
      #:+stream-no-error+
      #:+stream-eof+
      #:+stream-write-error+
      #:+stream-read-error+


      #:+image-list-normal+
      #:+image-list-small+
      #:+image-list-state+
      #:+tb-text+
      #:+adjust-minsize+
      #:+db-type-name-len+
      #:+db-max-statement-len+
      #:+db-max-where-clause-len+
      #:+db-max-error-msg-len+
      #:+db-max-error-history+
      #:+db-max-table-name-len+
      #:+db-max-column-name-len+
      #:+db-data-type-varchar+
      #:+db-data-type-integer+
      #:+db-data-type-float+
      #:+db-data-type-date+
      #:+db-data-type-blob+
      #:+db-select-keyfields+
      #:+db-select-where+
      #:+db-select-matching+
      #:+db-select-statement+
      #:+db-upd-keyfields+
      #:+db-upd-where+
      #:+db-del-keyfields+
      #:+db-del-where+
      #:+db-del-matching+
      #:+db-where-keyfields+
      #:+db-where-matching+
      #:+db-grant-select+
      #:+db-grant-insert+
      #:+db-grant-update+
      #:+db-grant-delete+
      #:+db-grant-all+
      #:+sql-success+
      #:+sql-success-with-info+
      #:+sql-no-data-found+
      #:+sql-char+
      #:+sql-numeric+
      #:+sql-decimal+
      #:+sql-integer+
      #:+sql-smallint+
      #:+sql-float+
      #:+sql-real+
      #:+sql-double+
      #:+sql-varchar+
      #:+sql-c-char+
      #:+sql-c-long+
      #:+sql-c-short+
      #:+sql-c-float+
      #:+sql-c-double+
      #:+sql-c-default+
      #:+sql-no-nulls+
      #:+sql-nullable+
      #:+sql-nullable-unknown+
      #:+sql-date+
      #:+sql-time+
      #:+sql-timestamp+
      #:+sql-c-date+
      #:+sql-c-time+
      #:+sql-c-timestamp+
      #:+sql-fetch-next+
      #:+sql-fetch-first+
      #:+sql-fetch-last+
      #:+sql-fetch-prior+
      #:+sql-fetch-absolute+
      #:+sql-fetch-relative+
      #:+sql-fetch-bookmark+
      ))

(in-package :wxCL)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (defconstant +library-name+ "../miscellaneous/wxc-msw2.6.2.dll"))

(defconstant +id-open+ 5000)
(defconstant +id-close+ 5001)
(defconstant +id-new+ 5002)
(defconstant +id-save+ 5003)
(defconstant +id-saveas+ 5004)
(defconstant +id-revert+ 5005)
(defconstant +id-exit+ 5006)
(defconstant +id-undo+ 5007)
(defconstant +id-redo+ 5008)
(defconstant +id-help+ 5009)
(defconstant +id-print+ 5010)
(defconstant +id-print-setup+ 5011)
(defconstant +id-preview+ 5012)
(defconstant +id-about+ 5013)

(defconstant +id-ok+ 5100)
(defconstant +id-cancel+ 5101)
(defconstant +id-apply+ 5102)
(defconstant +id-yes+ 5103)
(defconstant +id-no+ 5104)


(defconstant +ok+ 4)
(defconstant +yes+ 2)
(defconstant +no+ 8)
(defconstant +cancel+ 16)

(defconstant +null-flag+ 0)
(defconstant +evt-null+ 0)
(defconstant +evt-first+ 10000)
(defconstant +joystick1+ 0)
(defconstant +joystick2+ 1)
(defconstant +joy-button1+ 1)
(defconstant +joy-button2+ 2)
(defconstant +joy-button3+ 4)
(defconstant +joy-button4+ 8)
(defconstant +unknown-platform+ 1)
(defconstant +curses+ 2)
(defconstant +xview-x+ 3)
(defconstant +motif-x+ 4)
(defconstant +cose-x+ 5)
(defconstant +nextstep+ 6)
(defconstant +macintosh 7)
(defconstant +beos+ 8)
(defconstant +gtk+ 9)
(defconstant +gtk-win32+ 10)
(defconstant +gtk-os2+ 11)
(defconstant +gtk-beos+ 12)
(defconstant +qt+ 13)
(defconstant +geos+ 14)
(defconstant +os2-pm+ 15)
(defconstant +windows+ 16)
(defconstant +penwindows+ 17)
(defconstant +windows-nt+ 18)
(defconstant +win32s+ 19)
(defconstant +win95+ 20)
(defconstant +win386+ 21)
(defconstant +mgl-unix+ 22)
(defconstant +mgl-x+ 23)
(defconstant +mgl-win32+ 24)
(defconstant +mgl-os2+ 25)
(defconstant +windows-os2+ 26)
(defconstant +unix+ 27)
(defconstant +big-endian+ 4321)
(defconstant +little-endian+ 1234)
(defconstant +pdp-endian+ 3412)
(defconstant +centre+ 1)
(defconstant +center+ 1)
(defconstant +center-frame+ 0)
(defconstant +centre-on-screen+ 2)
(defconstant +horizontal+ 4)
(defconstant +vertical+ 8)
(defconstant +both+ 12)
(defconstant +left+ 16)
(defconstant +right+ 32)
(defconstant +up+ 64)
(defconstant +down+ 128)
(defconstant +top+ 64)
(defconstant +bottom+ 128)
(defconstant +north+ 64)
(defconstant +south+ 128)
(defconstant +west 16)
(defconstant +east 32)
(defconstant +all+ 240)
(defconstant +align-center+ 2304)

(defconstant +stretch-not 0)
(defconstant +shrink+ 4096)
(defconstant +grow+ 8192)
(defconstant +expand+ 8192)
(defconstant +shaped+ 16384)
		
(defconstant +double-border+ 268435456)
(defconstant +sunken-border+ 134217728)
(defconstant +raised-border+ 67108864)
(defconstant +static-border+ 16777216)
(defconstant +border+ 33554432)
(defconstant +transparent-window+ 1048576)
(defconstant +no-border+ 2097152)
(defconstant +user-colours+ 8388608)

(defconstant +no-3d+ 8388608)
(defconstant +clip-children+ 4194304)

(defconstant +wants-chars+ 262144)
(defconstant +retained+ 131072)
(defconstant +no-full-repaint-on-resize+ 65536)
(defconstant +ws-ex-validate-recursively+ 1)

(defconstant +iconize+ 16384)
(defconstant +maximize+ 8192)
(defconstant +system-menu 2048)
(defconstant +minimize-box+ 1024)
(defconstant +maximize-box+ 512)

(defconstant +tiny-caption-horiz 256)
(defconstant +tiny-caption-vert 128)
;(defconstant +resize-border+ 64)


(defconstant +frame-no-window-menu 256)
(defconstant +ed-client-margin+ 4)
(defconstant +ed-buttons-bottom+ 0)
(defconstant +ed-buttons-right 2)
(defconstant +ed-static-line+ 1)

(defconstant +coloured+ 2048)
(defconstant +fixed-length+ 1024)

(defconstant +process-enter+ 1024)
(defconstant +password+ 2048)

(defconstant +bu-noautodraw+ 0)


(defconstant +tc-multiline+ 0)
(defconstant +tc-rightjustify+ 16)
(defconstant +tc-fixedwidth+ 32)
(defconstant +tc-ownerdraw+ 64)

(defconstant +pd-can-abort 1)
(defconstant +pd-app-modal+ 2)
(defconstant +pd-auto-hide+ 4)
(defconstant +pd-elapsed-time+ 8)
(defconstant +pd-estimated-time+ 16)
(defconstant +pd-remaining-time+ 64)
(defconstant +hw-scrollbar-never+ 2)
(defconstant +hw-scrollbar-auto 4)

(defconstant +forward+ 4096)
(defconstant +backward+ 8192)
(defconstant +reset 16384)
(defconstant +help+ 32768)
(defconstant +more+ 65536)
(defconstant +setup+ 131072)
(defconstant +id-lowest 4999)
(defconstant +id-help-contents+ 5014)
(defconstant +id-help-commands+ 5015)
(defconstant +id-help-procedures+ 5016)
(defconstant +id-help-context 5017)
(defconstant +id-cut 5030)
(defconstant +id-copy+ 5031)
(defconstant +id-paste+ 5032)
(defconstant +id-clear+ 5033)
(defconstant +id-find+ 5034)
(defconstant +id-duplicate+ 5035)
(defconstant +id-selectall+ 5036)
(defconstant +id-file1 5050)
(defconstant +id-file2+ 5051)
(defconstant +id-file3 5052)
(defconstant +id-file4 5053)
(defconstant +id-file5 5054)
(defconstant +id-file6 5055)
(defconstant +id-file7 5056)
(defconstant +id-file8 5057)
(defconstant +id-file9 5058)
(defconstant +id-static 5105)
(defconstant +id-forward+ 5106)
(defconstant +id-backward+ 5107)
(defconstant +id-default 5108)
(defconstant +id-more+ 5109)
(defconstant +id-setup+ 5110)
(defconstant +id-reset 5111)
(defconstant +id-filedlgg+ 5900)
(defconstant +id-highest 5999)

(defconstant +solid+ 100)
(defconstant +dot 101)
(defconstant +long-dash+ 102)
(defconstant +short-dash+ 103)
(defconstant +dot-dash+ 104)
(defconstant +user-dash+ 105)
(defconstant +transparent 106)
(defconstant +stipple-mask-opaque+ 107)
(defconstant +stipple-mask+ 108)
(defconstant +stipple+ 110)
(defconstant +bdiagonal-hatch+ 111)
(defconstant +crossdiag-hatch+ 112)
(defconstant +fdiagonal-hatch+ 113)
(defconstant +cross-hatch+ 114)
(defconstant +horizontal-hatch+ 115)
(defconstant +vertical-hatch+ 116)
(defconstant +join-bevel+ 120)
(defconstant +join-miter+ 121)
(defconstant +join-round+ 122)
(defconstant +cap-round+ 130)
(defconstant +cap-projecting+ 131)
(defconstant +cap-butt 132)
(defconstant +clear+ 0)
(defconstant +xor+ 1)
(defconstant +invert 2)
(defconstant +or-reverse+ 3)
(defconstant +and-reverse+ 4)
(defconstant +copy+ 5)
(defconstant +and+ 6)
(defconstant +and-invert 7)
(defconstant +no-op+ 8)
(defconstant +nor+ 9)
(defconstant +equiv 10)
(defconstant +src-invert 11)
(defconstant +or-invert 12)
(defconstant +nand+ 13)
(defconstant +or+ 14)
(defconstant +set 15)
(defconstant +flood-surface+ 1)
(defconstant +flood-border+ 2)
(defconstant +oddeven-rule+ 1)
(defconstant +winding-rule+ 2)
(defconstant +tool-top+ 1)
(defconstant +tool-bottom+ 2)
(defconstant +tool-left 3)
(defconstant +tool-right 4)
(defconstant +df-invalid+ 1)
(defconstant +df-text 2)
(defconstant +df-bitmap+ 3)
(defconstant +df-metafile+ 4)
(defconstant +df-sylk+ 5)
(defconstant +df-dif 6)
(defconstant +df-tiff 7)
(defconstant +df-oemtext 8)
(defconstant +df-dib+ 9)
(defconstant +df-palette+ 10)
(defconstant +df-pendata 11)
(defconstant +df-riff 12)
(defconstant +df-wave+ 13)
(defconstant +df-unicodetext 14)
(defconstant +df-enhmetafile+ 15)
(defconstant +df-filename+ 16)
(defconstant +df-locale+ 17)
(defconstant +df-private+ 18)
(defconstant +df-max+ 19)
(defconstant +mm-text 1)
(defconstant +mm-lometric 2)
(defconstant +mm-himetric 3)
(defconstant +mm-loenglish+ 4)
(defconstant +mm-hienglish+ 5)
(defconstant +mm-twips+ 6)
(defconstant +mm-isotropic 7)
(defconstant +mm-anisotropic 8)
(defconstant +mm-points+ 9)
(defconstant +mm-metric 10)
(defconstant +paper-none+ 0)
(defconstant +paper-letter+ 1)
(defconstant +paper-legal+ 2)
(defconstant +paper-a4 3)
(defconstant +paper-csheet 4)
(defconstant +paper-dsheet 5)
(defconstant +paper-esheet 6)
(defconstant +paper-lettersmall+ 7)
(defconstant +paper-tabloid+ 8)
(defconstant +paper-ledger+ 9)
(defconstant +paper-statement 10)
(defconstant +paper-executive+ 11)
(defconstant +paper-a3 12)
(defconstant +paper-a4small+ 13)
(defconstant +paper-a5 14)
(defconstant +paper-b4 15)
(defconstant +paper-b5 16)
(defconstant +paper-folio 17)
(defconstant +paper-quarto 18)
(defconstant +paper-10x14 19)
(defconstant +paper-11x17 20)
(defconstant +paper-note+ 21)
(defconstant +paper-env-9 22)
(defconstant +paper-env-10 23)
(defconstant +paper-env-11 24)
(defconstant +paper-env-12+ 25)
(defconstant +paper-env-14 26)
(defconstant +paper-env-dl+ 27)
(defconstant +paper-env-c5 28)
(defconstant +paper-env-c3 29)
(defconstant +paper-env-c4 30)
(defconstant +paper-env-c6 31)
(defconstant +paper-env-c65 32)
(defconstant +paper-env-b4 33)
(defconstant +paper-env-b5 34)
(defconstant +paper-env-b6 35)
(defconstant +paper-env-italy+ 36)
(defconstant +paper-env-monarch+ 37)
(defconstant +paper-env-personal+ 38)
(defconstant +paper-fanfold-us+ 39)
(defconstant +paper-fanfold-std-german+ 40)
(defconstant +paper-fanfold-lgl-german+ 41)
(defconstant +paper-iso-b4 42)
(defconstant +paper-japanese-postcard+ 43)
(defconstant +paper-9x11 44)
(defconstant +paper-10x11 45)
(defconstant +paper-15x11 46)
(defconstant +paper-env-invite+ 47)
(defconstant +paper-letter-extra 48)
(defconstant +paper-legal-extra 49)
(defconstant +paper-tabloid-extra 50)
(defconstant +paper-a4-extra 51)
(defconstant +paper-letter-transverse+ 52)
(defconstant +paper-a4-transverse+ 53)
(defconstant +paper-letter-extra-transverse+ 54)
(defconstant +paper-a-plus+ 55)
(defconstant +paper-b-plus+ 56)
(defconstant +paper-letter-plus+ 57)
(defconstant +paper-a4-plus+ 58)
(defconstant +paper-a5-transverse+ 59)
(defconstant +paper-b5-transverse+ 60)
(defconstant +paper-a3-extra 61)
(defconstant +paper-a5-extra 62)
(defconstant +paper-b5-extra 63)
(defconstant +paper-a2+ 64)
(defconstant +paper-a3-transverse+ 65)
(defconstant +paper-a3-extra-transverse+ 66)
(defconstant +portrait 1)
(defconstant +landscape+ 2)
(defconstant +duplex-simplex+ 0)
(defconstant +duplex-horizontal+ 1)
(defconstant +duplex-vertical+ 2)
(defconstant +print-mode-none+ 0)
(defconstant +print-mode-preview+ 1)
(defconstant +print-mode-file+ 2)
(defconstant +print-mode-printer+ 3)
(defconstant +layout-default-margin+ 0)
(defconstant +edge-left 0)
(defconstant +edge-top+ 1)
(defconstant +edge-right 2)
(defconstant +edge-bottom+ 3)
(defconstant +edge-width+ 4)
(defconstant +edge-height 5)
(defconstant +edge-center+ 6)
(defconstant +edge-centrex+ 7)
(defconstant +edge-centrey+ 8)
(defconstant +relationship-unconstrained+ 0)
(defconstant +relationship-asis+ 1)
(defconstant +relationship-percentof 2)
(defconstant +relationship-above+ 3)
(defconstant +relationship-below+ 4)
(defconstant +relationship-leftof 5)
(defconstant +relationship-rightof 6)
(defconstant +relationship-sameas+ 7)
(defconstant +relationship-absolute+ 8)

(defconstant +gridtable-request-view-get-values+ 2000)
(defconstant +gridtable-request-view-send-values+ 2001)
(defconstant +gridtable-notify-rows-inserted+ 2002)
(defconstant +gridtable-notify-rows-appended+ 2003)
(defconstant +gridtable-notify-rows-deleted+ 2004)
(defconstant +gridtable-notify-cols-inserted+ 2005)
(defconstant +gridtable-notify-cols-appended+ 2006)
(defconstant +gridtable-notify-cols-deleted+ 2007)
(defconstant +filter-none+ 0)
(defconstant +filter-ascii 1)
(defconstant +filter-alpha 2)
(defconstant +filter-alphanumeric 4)
(defconstant +filter-numeric 8)
(defconstant +filter-include-list 16)
(defconstant +filter-exclude-list 32)
(defconstant +filter-upper-case+ 64)
(defconstant +filter-lower-case+ 128)

(defconstant +drag-error+ 0)
(defconstant +drag-none+ 1)
(defconstant +drag-copy+ 2)
(defconstant +drag-move+ 3)
(defconstant +drag-link+ 4)
(defconstant +drag-cancel+ 5)
(defconstant +split-horizontal+ 1)
(defconstant +split-vertical+ 2)

(defconstant +tree-hittest-above+ 1)
(defconstant +tree-hittest-below+ 2)
(defconstant +tree-hittest-nowhere+ 4)
(defconstant +tree-hittest-onitembutton+ 8)
(defconstant +tree-hittest-onitemicon+ 16)
(defconstant +tree-hittest-onitemindent 32)
(defconstant +tree-hittest-onitemlabel+ 64)
(defconstant +tree-hittest-onitemright 128)
(defconstant +tree-hittest-onitemstateicon+ 256)
(defconstant +tree-hittest-toleft 512)
(defconstant +tree-hittest-toright 1024)
(defconstant +tree-hittest-onitemupperpart 2048)
(defconstant +tree-hittest-onitemlowerpart 4096)
(defconstant +tree-hittest-onitem+ 80)
(defconstant +default 70)
(defconstant +decorative+ 71)
(defconstant +roman+ 72)
(defconstant +script 73)
(defconstant +swiss+ 74)
(defconstant +modern+ 75)
(defconstant +teletype+ 76)
(defconstant +variable+ 80)
(defconstant +fixed+ 81)
(defconstant +normal+ 90)
(defconstant +light 91)
(defconstant +bold+ 92)
(defconstant +italic 93)
(defconstant +slant 94)

(defconstant +printer-no-error+ 0)
(defconstant +printer-cancelled+ 1)
(defconstant +printer-error+ 2)
(defconstant +preview-print 1)
(defconstant +preview-previous+ 2)
(defconstant +preview-next 4)
(defconstant +preview-zoom+ 8)
(defconstant +preview-first 8)
(defconstant +preview-last 32)
(defconstant +preview-goto 64)
(defconstant +preview-default 126)
(defconstant +id-preview-close+ 1)
(defconstant +id-preview-next 2)
(defconstant +id-preview-previous+ 3)
(defconstant +id-preview-print 4)
(defconstant +id-preview-zoom+ 5)
(defconstant +id-preview-first 6)
(defconstant +id-preview-last 7)
(defconstant +id-preview-goto 8)
(defconstant +printid-static 10)
(defconstant +printid-range+ 11)
(defconstant +printid-from+ 12)
(defconstant +printid-to 13)
(defconstant +printid-copies+ 14)
(defconstant +printid-printtofile+ 15)
(defconstant +printid-setup+ 16)
(defconstant +printid-leftmargin+ 30)
(defconstant +printid-rightmargin+ 31)
(defconstant +printid-topmargin+ 32)
(defconstant +printid-bottommargin+ 33)
(defconstant +printid-printcolour+ 10)
(defconstant +printid-orientation+ 11)
(defconstant +printid-command+ 12)
(defconstant +printid-options+ 13)
(defconstant +printid-papersize+ 14)
(defconstant +hf-toolbar+ 1)
(defconstant +hf-contents+ 2)
(defconstant +hf-index+ 4)
(defconstant +hf-search+ 8)
(defconstant +hf-bookmarks+ 16)
(defconstant +hf-openfiles+ 32)
(defconstant +hf-print 64)
(defconstant +hf-flattoolbar+ 128)
(defconstant +hf-defaultstyle+ 95)
(defconstant +layout-horizontal+ 0)
(defconstant +layout-vertical+ 1)
(defconstant +layout-none+ 0)
(defconstant +layout-top+ 1)
(defconstant +layout-left 2)
(defconstant +layout-right 3)
(defconstant +layout-bottom+ 4)
(defconstant +sash-drag-none+ 0)
(defconstant +sash-drag-dragging+ 1)
(defconstant +sash-drag-left-down+ 2)
(defconstant +sash-top+ 0)
(defconstant +sash-right 1)
(defconstant +sash-bottom+ 2)
(defconstant +sash-left 3)
(defconstant +sash-none+ 100)
(defconstant +sw-noborder+ 0)
(defconstant +sw-border+ 32)
(defconstant +sw-3dsash+ 64)
(defconstant +sw-3dborder+ 128)
(defconstant +sw-3d+ 192)
(defconstant +sash-status-ok+ 0)
(defconstant +sash-status-out-of-range+ 1)
(defconstant +sys-white-brush+ 0)
(defconstant +sys-ltgray-brush+ 1)
(defconstant +sys-gray-brush+ 2)
(defconstant +sys-dkgray-brush+ 3)
(defconstant +sys-black-brush+ 4)
(defconstant +sys-null-brush+ 5)
(defconstant +sys-hollow-brush+ 5)
(defconstant +sys-white-pen+ 6)
(defconstant +sys-black-pen+ 7)
(defconstant +sys-null-pen+ 8)
(defconstant +sys-oem-fixed-font 10)
(defconstant +sys-ansi-fixed-font 11)
(defconstant +sys-ansi-var-font 12)
(defconstant +sys-system-font 13)
(defconstant +sys-device-default-font 14)
(defconstant +sys-default-palette+ 15)
(defconstant +sys-system-fixed-font 16)
(defconstant +sys-default-gui-font 17)
(defconstant +sys-colour-scrollbar+ 0)
(defconstant +sys-colour-background+ 1)
(defconstant +sys-colour-activecaption+ 2)
(defconstant +sys-colour-inactivecaption+ 3)
(defconstant +sys-colour-menu 4)
(defconstant +sys-colour-window+ 5)
(defconstant +sys-colour-windowframe+ 6)
(defconstant +sys-colour-menutext 7)
(defconstant +sys-colour-windowtext 8)
(defconstant +sys-colour-captiontext 9)
(defconstant +sys-colour-activeborder+ 10)
(defconstant +sys-colour-inactiveborder+ 11)
(defconstant +sys-colour-appworkspace+ 12)
(defconstant +sys-colour-highlight 13)
(defconstant +sys-colour-highlighttext 14)
(defconstant +sys-colour-btnface+ 15)
(defconstant +sys-colour-btnshadow+ 16)
(defconstant +sys-colour-graytext 17)
(defconstant +sys-colour-btntext 18)
(defconstant +sys-colour-inactivecaptiontext 19)
(defconstant +sys-colour-btnhighlight 20)
(defconstant +sys-colour-3ddkshadow+ 21)
(defconstant +sys-colour-3dlight 22)
(defconstant +sys-colour-infotext 23)
(defconstant +sys-colour-infobk+ 24)
(defconstant +sys-colour-listbox+ 25)
(defconstant +sys-colour-desktop+ 1)
(defconstant +sys-colour-3dface+ 15)
(defconstant +sys-colour-3dshadow+ 16)
(defconstant +sys-colour-3dhighlight 20)
(defconstant +sys-colour-3dhilight 20)
(defconstant +sys-colour-btnhilight 20)
(defconstant +sys-mouse-buttons+ 1)
(defconstant +sys-border-x+ 2)
(defconstant +sys-border-y+ 3)
(defconstant +sys-cursor-x+ 4)
(defconstant +sys-cursor-y+ 5)
(defconstant +sys-dclick-x+ 6)
(defconstant +sys-dclick-y+ 7)
(defconstant +sys-drag-x+ 8)
(defconstant +sys-drag-y+ 9)
(defconstant +sys-edge-x+ 10)
(defconstant +sys-edge-y+ 11)
(defconstant +sys-hscroll-arrow-x+ 12)
(defconstant +sys-hscroll-arrow-y+ 13)
(defconstant +sys-hthumb-x+ 14)
(defconstant +sys-icon-x+ 15)
(defconstant +sys-icon-y+ 16)
(defconstant +sys-iconspacing-x+ 17)
(defconstant +sys-iconspacing-y+ 18)
(defconstant +sys-windowmin-x+ 19)
(defconstant +sys-windowmin-y+ 20)
(defconstant +sys-screen-x+ 21)
(defconstant +sys-screen-y+ 22)
(defconstant +sys-framesize-x+ 23)
(defconstant +sys-framesize-y+ 24)
(defconstant +sys-smallicon-x+ 25)
(defconstant +sys-smallicon-y+ 26)
(defconstant +sys-hscroll-y+ 27)
(defconstant +sys-vscroll-x+ 28)
(defconstant +sys-vscroll-arrow-x+ 29)
(defconstant +sys-vscroll-arrow-y+ 30)
(defconstant +sys-vthumb-y+ 31)
(defconstant +sys-caption-y+ 32)
(defconstant +sys-menu-y+ 33)
(defconstant +sys-network-present 34)
(defconstant +sys-penwindows-present 35)
(defconstant +sys-show-sounds+ 36)
(defconstant +sys-swap-buttons+ 37)

(defconstant +unknown+ 0)
(defconstant +string+ 1)
(defconstant +boolean+ 2)
(defconstant +integer+ 3)
(defconstant +float 4)
(defconstant +mutex-no-error+ 0)
(defconstant +mutex-dead-lock+ 1)
(defconstant +mutex-busy+ 2)
(defconstant +mutex-unlocked+ 3)
(defconstant +mutex-misc-error+ 4)
(defconstant +platform-unix+ 0)
(defconstant +platform-windows+ 1)
(defconstant +platform-os2+ 2)
(defconstant +platform-mac 3)
(defconstant +led-align-left 1)
(defconstant +led-align-right 2)
(defconstant +led-align-center+ 4)
(defconstant +led-align-mask+ 4)
(defconstant +led-draw-faded+ 8)
(defconstant +ds-manage-scrollbars+ 16)
(defconstant +ds-drag-corner+ 32)
(defconstant +el-allow-new+ 256)
(defconstant +el-allow-edit 512)
(defconstant +el-allow-delete+ 1024)

(defconstant +cbar-docked-horizontally+ 0)
(defconstant +cbar-docked-vertically+ 1)
(defconstant +cbar-floating+ 2)
(defconstant +cbar-hidden+ 3)
(defconstant +all-panes+ 15)

(defconstant +fr-down+ 1)
(defconstant +fr-wholeword+ 2)
(defconstant +fr-matchcase+ 4)
(defconstant +fr-replacedialog+ 1)
(defconstant +fr-noupdown+ 2)
(defconstant +fr-nomatchcase+ 4)
(defconstant +fr-nowholeword+ 8)
(defconstant +quantize-include-windows-colours+ 1)
(defconstant +quantize-return-8bit-data 2)
(defconstant +quantize-fill-destination-image+ 4)

(defconstant +locale-thousands-sep+ 0)
(defconstant +locale-decimal-point 1)
(defconstant +locale-load-default 1)
(defconstant +locale-conv-encoding+ 2)

(defconstant +item-max+ 3)
(defconstant +close-box+ 6)

(defconstant +dialog-ex-contexthelp+ 4)


(defconstant +treeitemicon-normal+ 0)
(defconstant +treeitemicon-selected+ 1)
(defconstant +treeitemicon-expanded+ 2)
(defconstant +treeitemicon-selectedexpanded+ 3)
(defconstant +config-use-local-file+ 1)
(defconstant +config-use-global-file+ 2)
(defconstant +config-use-relative-path+ 4)
(defconstant +config-use-no-escape-characters+ 8)
(defconstant +config-type-unknown+ 0)
(defconstant +config-type-string+ 1)
(defconstant +config-type-boolean+ 2)
(defconstant +config-type-integer+ 3)
(defconstant +config-type-float 4)
(defconstant +signone+ 0)
(defconstant +sighup+ 1)
(defconstant +sigint 2)
(defconstant +sigquit 3)
(defconstant +sigill+ 4)
(defconstant +sigtrap+ 5)
(defconstant +sigabrt 6)
(defconstant +sigemt 7)
(defconstant +sigfpe+ 8)
(defconstant +sigkill+ 9)
(defconstant +sigbus+ 0)
(defconstant +sigsegv 1)
(defconstant +sigsys+ 2)
(defconstant +sigpipe+ 3)
(defconstant +sigalrm+ 4)
(defconstant +sigterm+ 5)
(defconstant +kill-ok+ 0)
(defconstant +kill-bad-signal+ 1)
(defconstant +kill-access-denied+ 2)
(defconstant +kill-no-process+ 3)
(defconstant +kill-error+ 4)
(defconstant +stream-no-error+ 0)
(defconstant +stream-eof 1)
(defconstant +stream-write-error+ 2)
(defconstant +stream-read-error+ 3)


(defconstant +image-list-normal+ 0)
(defconstant +image-list-small+ 1)
(defconstant +image-list-state+ 2)
(defconstant +tb-text 6)
(defconstant +adjust-minsize+ 8)
(defconstant +db-type-name-len+ 0)
(defconstant +db-max-statement-len+ 6)
(defconstant +db-max-where-clause-len+ 8)
(defconstant +db-max-error-msg-len+ 2)
(defconstant +db-max-error-history+ 5)
(defconstant +db-max-table-name-len+ 8)
(defconstant +db-max-column-name-len+ 8)
(defconstant +db-data-type-varchar+ 1)
(defconstant +db-data-type-integer+ 2)
(defconstant +db-data-type-float 3)
(defconstant +db-data-type-date+ 4)
(defconstant +db-data-type-blob+ 5)
(defconstant +db-select-keyfields+ 1)
(defconstant +db-select-where+ 2)
(defconstant +db-select-matching+ 3)
(defconstant +db-select-statement 4)
(defconstant +db-upd-keyfields+ 1)
(defconstant +db-upd-where+ 2)
(defconstant +db-del-keyfields+ 1)
(defconstant +db-del-where+ 2)
(defconstant +db-del-matching+ 3)
(defconstant +db-where-keyfields+ 1)
(defconstant +db-where-matching+ 2)
(defconstant +db-grant-select 1)
(defconstant +db-grant-insert 2)
(defconstant +db-grant-update+ 4)
(defconstant +db-grant-delete+ 8)
(defconstant +db-grant-all+ 5)
(defconstant +sql-success+ 0)
(defconstant +sql-success-with-info 1)
(defconstant +sql-no-data-found+ 0)
(defconstant +sql-char+ 1)
(defconstant +sql-numeric 2)
(defconstant +sql-decimal+ 3)
(defconstant +sql-integer+ 4)
(defconstant +sql-smallint 5)
(defconstant +sql-float 6)
(defconstant +sql-real+ 7)
(defconstant +sql-double+ 8)
(defconstant +sql-varchar+ 2)
(defconstant +sql-c-char+ 1)
(defconstant +sql-c-long+ 4)
(defconstant +sql-c-short 5)
(defconstant +sql-c-float 7)
(defconstant +sql-c-double+ 8)
(defconstant +sql-c-default 9)
(defconstant +sql-no-nulls+ 0)
(defconstant +sql-nullable+ 1)
(defconstant +sql-nullable-unknown+ 2)
(defconstant +sql-date+ 9)
(defconstant +sql-time+ 0)
(defconstant +sql-timestamp+ 1)
(defconstant +sql-c-date+ 9)
(defconstant +sql-c-time+ 0)
(defconstant +sql-c-timestamp+ 1)
(defconstant +sql-fetch-next 1)
(defconstant +sql-fetch-first 2)
(defconstant +sql-fetch-last 3)
(defconstant +sql-fetch-prior+ 4)
(defconstant +sql-fetch-absolute+ 5)
(defconstant +sql-fetch-relative+ 6)
(defconstant +sql-fetch-bookmark+ 8)


(defconstant +open+ 1)
(defconstant +save+ 2)
(defconstant +hide-readonly+ 8)
(defconstant +multiple+ 32)
(defconstant +change-dir+ 64)
(defconstant +overwrite-prompt+ 4)
(defconstant +file-must-exist+ 16)

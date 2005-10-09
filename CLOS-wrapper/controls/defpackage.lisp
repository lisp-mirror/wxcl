
(defpackage :wxcl-controls
    (:use :common-lisp :ffi)
  (:export #:+lb-sort+
	   #:+lb-single+
	   #:+lb-multiple+
	   #:+lb-extended+
	   #:+lb-ownerdraw+
	   #:+lb-needed-sb+
	   #:+lb-always-sb+
	   #:+lc-icon+
	   #:+lc-small-icon+
	   #:+lc-vrules+
	   #:+lc-hrules+
	   #:+lc-list+
	   #:+lc-report+
	   #:+lc-align-top+
	   #:+lc-align-left+
	   #:+lc-autoarrange+
	   #:+lc-user-text+ 
	   #:+lc-edit-labels+
	   #:+lc-no-header+ 
	   #:+lc-no-sort-header+
	   #:+lc-single-sel+
	   #:+lc-sort-ascending+
	   #:+lc-sort-descending+
	   #:+list-format-left+ 
	   #:+list-format-right+
	   #:+list-format-centre+
	   #:+list-format-center+
	   #:+list-state-dontcare+
	   #:+list-state-drophilited+
	   #:+list-state-focused+ 
	   #:+list-state-selected+
	   #:+list-state-cut+ 
	   #:+list-mask-state+
	   #:+list-mask-text+ 
	   #:+list-mask-image+
	   #:+list-mask-data+
	   #:+list-mask-width+
	   #:+list-mask-format+
	   #:+list-next-above+
	   #:+list-next-all+
	   #:+list-next-below+
	   #:+list-next-left+
	   #:+list-next-right+))

(defconstant +lb-sort+ 16)
(defconstant +lb-single+ 32)
(defconstant +lb-multiple+ 64)
(defconstant +lb-extended+ 128)
(defconstant +lb-ownerdraw+ 256)
(defconstant +lb-needed-sb+ 512)
(defconstant +lb-always-sb+ 1024)


(defconstant +lc-vrules+ 1)
(defconstant +lc-hrules+ 2)
(defconstant +lc-icon+ 4)
(defconstant +lc-small-icon+ 8)
(defconstant +lc-list+ 16)
(defconstant +lc-report+ 32)
(defconstant +lc-align-top+ 64)
(defconstant +lc-align-left+ 128)
(defconstant +lc-autoarrange+ 256)
(defconstant +lc-user-text+ 512)
(defconstant +lc-edit-labels+ 1024)
(defconstant +lc-no-header+ 2048)
(defconstant +lc-no-sort-header+ 4096)
(defconstant +lc-single-sel+ 8192)
(defconstant +lc-sort-ascending+ 16384)
(defconstant +lc-sort-descending+ 32768)

(defconstant +list-format-left+ 0)
(defconstant +list-format-right+ 1)
(defconstant +list-format-centre+ 2)
(defconstant +list-format-center+ 2)
(defconstant +list-state-dontcare+ 0)
(defconstant +list-state-drophilited+ 1)
(defconstant +list-state-focused+ 2)
(defconstant +list-state-selected+ 4)
(defconstant +list-state-cut+ 8)
(defconstant +list-mask-state+ 1)
(defconstant +list-mask-text+ 2)
(defconstant +list-mask-image+ 4)
(defconstant +list-mask-data+ 8)
(defconstant +list-mask-width+ 16)
(defconstant +list-mask-format+ 32)
(defconstant +list-next-above+ 0)
(defconstant +list-next-all+ 1)
(defconstant +list-next-below+ 2)
(defconstant +list-next-left+ 3)
(defconstant +list-next-right+ 4)


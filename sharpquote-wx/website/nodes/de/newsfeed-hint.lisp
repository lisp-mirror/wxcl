;;; -*- Mode: LISP; Base: 10; Syntax: Common-Lisp -*-


(once/language
 (with-syntax
  (:html)
  ((:p :css* (:lh *lh* :ta "center" :m "1em 3em"))
   (:i
    "Die "
    ((:a :href* :hp-wxcl) "wxCL-Projektgruppe")
    " ver&ouml;ffentlicht" :br "auch detailliertere "
    ((:a :href* :de///newsfeed) "Tickermeldungen")
    "."))))

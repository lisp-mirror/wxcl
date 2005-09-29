;;; -*- Mode: LISP; Base: 10; Syntax: Common-Lisp -*-


(once/language
 (with-syntax
  (:html)
  ((:p :css* (:lh *lh* :ta "center" :m "1em 3em"))
   (:i
    "The "
    ((:a :href* :hp-wxcl) "wxCL Project Group")
    " also" :br "publishes more detailed "
    ((:a :href* :en///newsfeed) "newsfeed")
    "."))))

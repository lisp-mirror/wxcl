;;; -*- Mode: LISP; Base: 10; Syntax: Common-Lisp -*-


(once/language
 
 (with-syntax
  (:html)
  
  ((:div class "no-print")
   ((:p class "hat" :css* (:lh *lh*))
    
    
    (:b ((:a :href* :hp-wxcl) "wxCL") " @ " 
	((:a :href* :sf-hp) "SourceForge")) 
    
    ": "
    ((:a :href* :sf-wxcl)     (babel :project-page  *language*)) " | "
    ((:a :href* :sf-files)    (babel :files         *language*)) " | "
    ((:a :href* :sf-forums)   (babel :forums        *language*)) " | "
    ((:a :href* :sf-cvs)      (babel :cvs-tree      *language*)) " | "
    ((:a :href* :sf-bugs)     (babel :bug-tracker   *lanugage*)) " | "
    ((:a :href* :sf-ml-all)   (babel :mailing-lists *language*)) ": "
    ((:a :href* :sf-ml-devel)        "wxCL-devel"              ) ", " 
    ((:a :href* :sf-ml-cvs)          "wxCL-cvs"                ) ", " 
    ((:a :href* :sf-ml-all)   (babel :more          *language*))
    
    ))))







 

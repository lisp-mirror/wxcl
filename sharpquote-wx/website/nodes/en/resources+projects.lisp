;;; -*- Mode: LISP; Base: 10; Syntax: Common-Lisp -*-



(once/language
 (with-syntax
  (:html)
  (:h1 (:b "Other Resources & Related Projects"))
  
  ((:ul class "topics")
   ((:li class "topics")
    "Recently, a " (:b "discussion on the " ((:a :href* :clisp-ml-devel) "CLISP-devel mailing list")) 
    " gave the work on " ((:a :href* :hp-wxcl) "wxCL") " a new spin; "
    "see " ((:a :href* :new-spin) "http://article.gmane.org/gmane.lisp.clisp.general/9757") "."
    )
   ((:li class "topics")
    (:b ((:a :href* :swig-clisp-expl) "SWIG_CLISP")) " is a new module in " 
    ((:a :href* :hp-swig) "SWIG")
    ", producing wrapper code for the C interface of "
    ((:a :href* :hp-clisp) "CLISP")
    ". Its maintainer is a member of the "
    ((:a :href* :sf-ml-devel) "wxCL-devel")
    " mailing list."
    )
   
   ((:li class "topics")
    "The project groups "
    (:b 	
     ((:a :href* :hp-wxhaskell) "wxHaskell")
     ", "
     ((:a :href* :hp-wxocaml) "wxOcaml")
     ", and "
     ((:a :href* :hp-wxeiffel) "wxEiffel") )
    " use similar C libraries to "
    " bind the member functions in the CPP class hierarchy of "
    ((:a :href* :hp-wxwidgets) "wxWidgets")
    " to simple C function calls. "
    
    "A project named " (:b ((:a :href* :hp-wxc) "wxC")) " aims to unify these slightly differing libraries."
    )
   
   )
  ))
 


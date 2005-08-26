;;; -*- Mode: LISP; Base: 10; Syntax: Common-Lisp -*-


(with-syntax
 (:html)
 (:h1 (:b "The " ((:a :href* :hp-wxcl) "wxCL") " Project Group") )
 
 
 ((:p :css* (:lh *lh*))
  "works on the development of an")
 
 ((:ul class "enum" :css* (:lh *lh* ))
  ((:li class "enum")
   "industrial strength interface")
  ((:li class "enum")
   "under the " ((:a :href* :osi-wx-widgets-txt) "wxWidgets (formerly wxWindows) Open Source License")
   )
  ((:li class "enum")
   "for the " ((:a :href* :hp-wxwidgets) "wxWidgets") " windowing system")
  ((:li class "enum")
   "to various implementations of the " :br
   (:b"Common Lisp") " programming language")
  ((:li class "enum")
   "on various operating-system platforms.")
  )
 
 
 
 ((:ul class "topics" :css* (:lh *lh*))
  
  ((:li class "topics")
   "To know more about the "
   ((:a :href* :osi-wx-widgets-txt) "wxWidgets Open Source License")
   ", visit "
   ((:a :href* :lic-wx-widgets-explained) "this page")
   " of the "
   ((:a :href* :hp-wxwidgets) "wxWidgets project group")
   "."
   )
  
  ((:li class "topics")
   "We'd appreciate if you take some time to tell us in an "
   (:b ((:a :href* :en/contact) "eMail") )
   " " (:b "why")" you favor the blend of "
   (:b ((:a :href* :hp-wxwidgets) "wxWidgets")) " with Common Lisp over other windowing systems "
   "and "(:b "which aspects") " are important for you in this decision. "
   "Your hints help us in the development of the interface."
   )
  
  ))







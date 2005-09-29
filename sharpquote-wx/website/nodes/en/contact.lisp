;;; -*- Mode: LISP; Base: 10; Syntax: Common-Lisp -*-



(with-syntax
 (:html)
 ((:div class "single-column-narrow")
  (:h1 (:b "How to contact us"))
  ((:ul class "topics" :css* (:lh *lh* ))
   
   
   ((:li class "topics")
    "The " (:b "easiest and fastest") " way to contact the " 
    ((:a :href* :hp-wxcl) "wxCL") " project group is an eMail to the "
    ((:a :href* :sf-ml-devel) "wxCL-devel") " mailing list."
    )
   
   
   ((:li class "topics")
    "The messages on the mailing list can also be browsed with a "
    (:b "newsreader") " via "
    ((:a :href* :w3org-rfc977) "NNTP (RFC 977)") ". The address is "
    ((:a :href* :nntp-ml-devel) "nntp://news.gmane.org/gmane.lisp.wxcl.devel")
    "."
    )
   
   
   ((:li class "topics")
    "There are currently no distinct mailing lists for "
    (:b "users and developers") " of "
    ((:a :href* :hp-wxcl) "wxCL") "."
    )
   
   
   ((:li class "topics")
    "Activities in the " 
    (:b ((:a :href* :sf-cvs) "CVS tree")) " are announced on the "
    ((:a :href* :sf-ml-cvs) "wxCL-cvs") " mailing list."
    )
   
   ))
 )


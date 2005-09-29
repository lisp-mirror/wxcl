;;; -*- Mode: LISP; Base: 10; Syntax: Common-Lisp -*-



(with-syntax
 (:html)
 ((:div class "single-column-narrow")
  (:h1 (:b "So erreichen Sie uns"))
  ((:ul class "topics" :css* (:lh *lh* ))
   
   
   ((:li class "topics")
    "Der " (:b "einfachste und schnellste") " Weg, die " 
    ((:a :href* :hp-wxcl) "wxCL") 
    "-Projektgruppe zu erreichen, ist eine eMail an die Mailing-Liste "
    ((:a :href* :sf-ml-devel) "wxCL-devel") "."
    )
   
   
   ((:li class "topics")
    "Die Nachrichten auf der Mailing-Liste k&ouml;nnen auch mit einem "
    (:b "Newsreader") " &uuml;ber "
    ((:a :href* :w3org-rfc977) "NNTP (RFC 977)") " durchgesehen werden. Die Adresse ist "
    ((:a :href* :nntp-ml-devel) "nntp://news.gmane.org/gmane.lisp.wxcl.devel")
    "."
    )
   
   
   ((:li class "topics")
    "Im Moment gibt es keine getrennten Mailing-Listen f&uuml;r "
    (:b "Nutzer und Entwickler") " von " 
    ((:a :href* :hp-wxcl) "wxCL") "."
    )
   
   
   ((:li class "topics")
    "Auf der Mailing-Liste " 
    (:b ((:a :href* :sf-ml-cvs) "wxCL-cvs")) " werden Aktivit&auml;ten am " 
    ((:a :href* :sf-cvs) "CVS-Baum") " annonciert."
    )
   
   ))
 )

 

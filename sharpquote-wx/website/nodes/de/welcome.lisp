;;; -*- Mode: LISP; Base: 10; Syntax: Common-Lisp -*-


(once/language  
 (with-syntax
  (:html)
  (:h1 (:b "Die " ((:a :href* :hp-wxcl) "wxCL") " Projektgruppe") )
  
  
  (:p
   "arbeitet an der Entwicklung einer")
  
  ((:ul class "enum")
   ((:li class "enum")
    "industriellen Anforderungen" :br "entsprechenden Schnittstelle")
   ((:li class "enum")
    "unter der " ((:a :href* :osi-wxwidgets-txt) "wxWidgets (fr&uuml;her wxWindows) Open-Source-Lizenz")
    )
   ((:li class "enum")
    "f&uuml;r das Fenstersystem " ((:a :href* :hp-wxwidgets) "wxWidgets"))
   ((:li class "enum")
    "zu verschiedenen Implementationen der " :br
    "Programmiersprache " (:b"Common Lisp") )
   ((:li class "enum")
    "auf verschiedenen Betriebssystem-Plattformen.")
   )
  
  
  ((:ul class "topics")
   
   ((:li class "topics")
    "Besuchen Sie "
    ((:a :href* :lic-wxwidgets-explained) "diese Seite")
    " der "
    ((:a :href* :hp-wxwidgets) "wxWidgets Projektgruppe")
    ", um mehr &uuml;ber die "
    ((:a :href* :osi-wxwidgets-txt) "wxWidgets Open-Source-Lizenz")
    " zu erfahren."
    )
   
   
   ((:li class "topics")
    "Wir w&uuml;rden uns freuen, wenn Sie sich etwas Zeit nehmen, "
    "um uns in einer "
    (:b ((:a :href* :de/contact) "eMail") )
    " zu sagen, " (:b "warum")" Sie die Verbindung von "
    (:b ((:a :href* :hp-wxwidgets) "wxWidgets")) " mit Common Lisp anderen Fenstersystem vorziehen "
    "und "(:b "welche Aspekte") " Ihnen bei dieser Entscheidung wichtig sind. "
    "Ihre Hinweise helfen uns bei der Entwicklung der Schnittstelle."
    )
   
   )))






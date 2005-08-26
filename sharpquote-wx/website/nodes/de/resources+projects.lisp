;;; -*- Mode: LISP; Base: 10; Syntax: Common-Lisp -*-




(with-syntax
 (:html)
 (:h1 (:b "Weitere Resourcen & verbundene Projekte"))
 
 ((:ul class "topics" :css* (:lh *lh*))
  ((:li class "topics")
   "Durch eine " (:b "Diskussion auf der " ((:a :href* :clisp-ml-devel) "CLISP-Mailing-Liste")) 
   " hat die Arbeit an " ((:a :href* :hp-wxcl) "wxCL")
   " vor kurzem einen neuen Ansto&szlig; erhalten; "
   "vgl. " ((:a :href* :new-spin) "http://article.gmane.org/gmane.lisp.clisp.general/9757") "."
   )
  
  ((:li class "topics")
   (:b ((:a :href* :swig-clisp-expl) "SWIG_CLISP")) " ist ein neues Modul in " 
   ((:a :href* :hp-swig) "SWIG")
   ", dass Umh&uuml;llungs-Kode f&uuml;r die C-Schnittstelle von "
   ((:a :href* :hp-clisp) "CLISP")
   " erzeugt. Sein Entwickler ist Mitglied der "
   ((:a :href* :sf-ml-devel) "wxCL-devel")
   "-Mailing-Liste."
   )
  
  ((:li class "topics")
   "Die Projektgruppen "
   (:b
    ((:a :href* :hp-wxhaskell) "wxHaskell")
    ", "
    ((:a :href* :hp-wxocaml) "wxOcaml")
    " und "
    ((:a :href* :hp-wxeiffel) "wxEiffel") )
   " nutzen &auml;hnliche C-Bibliotheken, "
   " die die Elementfunktionen in der CPP-Klassenhierarchie von "
   ((:a :href* :hp-wxwidgets) "wxWidgets")
   " an einfache C-Funktionsaufrufe binden. "
   
   "Ein Projekt namens " (:b ((:a :href* :hp-wxc) "wxC")) 
   " bem&uuml;ht sich um die Vereinheitlichung dieser leicht unterschiedlichen Bibliotheken."
   )
  
  ((:li :css* (:lh *lh*))
   "Die englischsprachige Seite " (:b ((:a :href* :on-wxcl) "On wxCL")) " stammt aus dem Jahr 2003, "
   "ist aber immer noch ein guter Einstiegspunkt, um einige der Probleme "
   "beim Design von " ((:a :href* :hp-wxcl) "wxCL") " kennenzulernen. "
   "Der Autor ist Mitglied der "
   ((:a :href* :sf-ml-devel) "wxCL-devel")
   "-Mailing-Liste."
   )
  )
 )



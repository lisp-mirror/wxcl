;;; -*- Mode: LISP; Base: 10; Syntax: Common-Lisp -*-



(with-syntax
 (:html)
 
 
 ((:p :css* (:lh *lh* :m "1em 25%"))
  "Verschiedene Kontrollelemente. ("
  ((:a href "./img/control-elements-full.png") "Ganzes Bild ansehen")
  ".) "
  ((:a :href* :de/app-downloads) "Release 1.0.0 Alpha")
  " von "
  ((:a :href* :hp-wxcl) "wxCL")
  " auf "
  ((:a :href* :hp-clisp) "CLISP")
  "; installiert auf "
  ((:a :href* :hp-ms-windows-xp-de) "MS&nbsp;Windows&nbsp;XP")
  ". "
  
  "Das Bild wurde leicht bearbeitet, um auf die Seite zu passen, und rechts beschnitten. "
  "Zur Verf&uuml;gung gestellt von "
  ((:a :href* :hp-surendra) "Surendra&nbsp;K.&nbsp;Singhi") ", August 2005.")
 
 
 ((:p align "center" :css* (:ta "center" :m "2em 0em"))
  ((:img src "./img/control-elements.png"))
  )
 
 )









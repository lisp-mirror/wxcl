;;; -*- Mode: LISP; Base: 10; Syntax: Common-Lisp -*-


(with-syntax
 (:html)
 
 ((:p class "description-screenshot")
  "Ein Bildbetrachter. ("
  ((:a href "./img/image-viewer-1-full.png") "Ganzes Bild ansehen")
  ".) Pre-Release-Version von "
  ((:a :href* :hp-wxcl) "wxCL")
  " auf "
  ((:a :href* :hp-clisp) "CLISP")
  "; installiert auf "
  ((:a :href* :hp-ms-windows-xp-de) "MS&nbsp;Windows&nbsp;XP")
  ". "
  
  "Das Bild wurde unten und rechts beschnitten. Zur Verf&uuml;gung gestellt von " 
  ((:a :href* :hp-surendra) "Surendra&nbsp;K.&nbsp;Singhi") ", August 2005."
  ) 
 
 
 ((:p align "center" :css* (:ta "center" :m "2em 0em"))
  ((:img src "./img/image-viewer-1.png"))
  )
 
 )







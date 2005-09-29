;;; -*- Mode: LISP; Base: 10; Syntax: Common-Lisp -*-


(once/language
 (with-syntax
  (:html)
  
  ((:p class "description-screenshot")
   "An image viewer. ("
   ((:a href "../img/image-viewer-3-full.jpeg") "View full image")
   ".) Pre-release version of "
   ((:a :href* :hp-wxcl) "wxCL")
   " on "
   ((:a :href* :hp-clisp) "CLISP")
   " hosted by "
   ((:a :href* :hp-ms-windows-xp-en) "MS Windows XP")
   ". "
   
   "The image was cropped on the right. Provided by " 
   ((:a :href* :hp-surendra) "Surendra K. Singhi") ", August 2005."
   ) 
  
  
  ((:p align "center" :css* (:ta "center" :m "2em 0em"))
   ((:img src "../img/image-viewer-3.png"))
   )
  
  ))







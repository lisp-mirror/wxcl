


(with-syntax
 (:html)

 (:h1 (:b "Project People"))
 
 ((:ul class "enum" :css* (:lh *lh* ))
  ((:li class "enum")
   ((:a :href* :hp-surendra) "Surendra K. Singhi") " (USA)")
  ((:li class "enum")
   ((:a :href* :hp-andre) "Andr&eacute; Vargas abs da Cruz") " (Brasilien)")
  ((:li class "enum")
   ((:a :href* :hp-joerg) "J&ouml;rg Preisend&ouml;rfer") " (Deutschland)")
  ((:li class "enum")
   "und anderen")
  )
 
 ((:p :css* (:lh *lh*))
  "mit fr&uuml;heren Beitr&auml;gen von"
  )
 
 ((:ul class "enum" :css* (:lh *lh* ))
  ((:li class "enum")
   ((:a :href* :hp-sanjay) "Sanjay Pande") " (Indien)")
  ((:li class "enum")
   ((:a :href* :hp-kaz) "Kaz Kylheku"))
  )
 
 )


 
 

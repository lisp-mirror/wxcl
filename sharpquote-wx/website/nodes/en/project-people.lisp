


(with-syntax
 (:html)

 (:h1 (:b "Project People"))
 
 ((:ul class "enum" :css* (:lh *lh* ))
  ((:li class "enum")
   ((:a :href* :hp-surendra) "Surendra K. Singhi") " (USA)")
  ((:li class "enum")
   ((:a :href* :hp-joerg) "J&ouml;rg Preisend&ouml;rfer") " (Germany)")
  ((:li class "enum")
   ((:a :href* :hp-jack) "Jack Unrue") " (USA)")
  ((:li class "enum")
   "and others")
  )
 
 ((:p :css* (:lh *lh*))
  "with earlier contributions by"
  )
 
 ((:ul class "enum" :css* (:lh *lh* ))
  ((:li class "enum")
   ((:a :href* :hp-andre) "Andr&eacute; Vargas abs da Cruz") " (Brazil)")
  ((:li class "enum")
   ((:a :href* :hp-sanjay) "Sanjay Pande") " (India)")
  ((:li class "enum")
   ((:a :href* :hp-kaz) "Kaz Kylheku"))
  )
 
 )

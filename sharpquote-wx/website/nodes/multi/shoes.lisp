;;; -*- Mode: LISP; Base: 10; Syntax: Common-Lisp -*-


(once/language
 (mvb 
  (sec min hour day month year)
  (get-decoded-time)
  
  (with-syntax
   (:html)
   
   ((:p class "dates")
    (when (get-ini :show-date-rendered?)
      (with-syntax 
       (:html)
       (:princ (babel :page-rendered *language*)) ":"
       (:b " "
	   (:princ 
	    (format nil 
		    (babel :f$-date *language* :year/full-nr+month/word+day/nr)
		    year 
		    (babel 
		     (aref #(:jan :feb :march :april :may :june :july :aug :sep :oct :nov :dec)
			   (1- month))
		     *language* '(:abbr :full))
		    day)
	    ))))
    
    #|
    (when (get-ini :show-date-served?)
    
    " |"
    (:b " page served: ") "<!--#echo var=\"DATE_LOCAL\" -->"
    )
    |#
    
    )
   
   ;; --- logos ---
   ((:div class "no-print")
    ((:p class "shoes")
     ((:table class "shoes")
      (:tbody
       (:tr
	
	((:td class "shoes-logo")
	 ((:a :href* :sf-donate)
	  ((:img height "32" alt "Support This Project" 
		  ;src "../img/project-support.jpg"    ; Ping SKS: remove this line entirely and ... - commented
		 :src* :sf-donate-img           ;  ... uncomment this line - uncommented
		 width "88" border "0"))))
	
	((:td class "shoes-logo")		  
	 ((:a :href* :sf-hp)
	  ((:img height "37" alt "SourceForge.net Logo"
		; src "../img/sflogo.png" ; Ping SKS: remove this line entirely and ... - commented
		 :src* :sf-logo-img  ;  ... uncomment this line - uncommented
		 width "125" border "0"))))
	
	((:td class "shoes-logo")
	 ((:a :href* :hp-cliki)
	  ;; don't try do link-in the CLiki logo from their site:
	  ;;  it's marked-up text, not a bitmap.
	  ;;  The bitmap used here was created using a screenshot
	  ;;  of a browser window displaying a CLiki page.
	  ((:img height "31" alt "CLiki.net Logo" 
		 :src* :cliki-logo-img
		 width "65" border "0")))
	 :br "( "
	 ((:span :css* (:font-size "80%"))
	  ((:a :href* :cliki-wxcl)
	   "wxCL @ CLiki"))
	 " )")
	
	((:td class "shoes-logo")
	 ((:a :href* :hp-freshmeat)
	  ((:img height "31" alt "Freshmeat.net Logo"
		 :src* :freshmeat-logo-img
		 width "88" border "0")))
	 :br "( "
	 ((:span :css* (:font-size "80%"))
	  ((:a :href* :freshmeat-wxcl) "wxCL @ Freshmeat"))
	 " )")
	
	)))))
   
   )))

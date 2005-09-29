;;; -*- Mode: LISP; Base: 10; Syntax: Common-Lisp -*-


(once/language
 (let ((newsfeed-hint
	(hypertext "newsfeed-hint" *language*)))
   
   (with-syntax
    (:html)
    (:h1 (:b (:princ (babel :ticker *language*))))
    
    (:princ newsfeed-hint)
    
    ((:table class "terse-news")
     (:tbody
      
      (with-news-iterator
       (gossip *language*)
       
       (loop
	(mvb
	 (date utime classification teaser headline lead-in copy-text inline-style)
	 (gossip)
	 (declare (ignore utime classification headline lead-in copy-text))
	 
	 (unless date (return))
	 (dbind 
	  (year month day)  date
	  
	  (with-syntax
	   (:html)
	   (:tr
	    
	    ((:td class "date-box" style inline-style)
	     ((:p class "date-box")
	      (:b (:princ 
		   (format nil 
			   (babel :f$-date *language* :year/full-nr+month/word+day/nr)
			   year 
			   (babel 
			    (aref #(:jan :feb :march :april :may :june :july :aug :sep :oct :nov :dec)
				  (1- month))
			    *language* '(:abbr :full))
			   day) ))))
	    
	    ((:td class "terse-news")
	     ((:p class "terse-news") (syntax-prinseq teaser :html)))
	    
	    ))))))))
    (:princ newsfeed-hint)
    )))








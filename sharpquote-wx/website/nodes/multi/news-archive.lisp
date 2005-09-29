;;; -*- Mode: LISP; Base: 10; Syntax: Common-Lisp -*-




(with-syntax
 (:html)
 
 (:h1 (:princ (babel :news-archive *language*)))

 (:table
  (:tbody
   
   (with-news-iterator
    (news *language*)
    
    (loop
     (mvb
      (date utime classification teaser headline lead-in copy-text)
      (news)
      (declare (ignore utime classification))
      
      (unless copy-text (return))
      (dbind
       (year month day)  date
       
       (with-syntax
	(:html)
	(:tr
	 (:td
	  (:p
	   ((:span :css* (:c "red")) 
	    (:princ
	     (format nil 
		     (babel :f$-date *language* :year/full-nr+month/word+day/nr)
		     year 
		     (babel 
		      (aref #(:jan :feb :march :april :may :june :july :aug :sep :oct :nov :dec)
			    (1- month))
		      *language* '(:abbr :full))
		     day))
	    ": ")
	   (syntax-prinseq teaser :html))
	  (:p (syntax-prinseq headline :html))
	  (:p (:b (syntax-prinseq lead-in :html))) )
	 (:td
	  (syntax-prinseq copy-text :html)
	  )
	 ))))))
   )))

       

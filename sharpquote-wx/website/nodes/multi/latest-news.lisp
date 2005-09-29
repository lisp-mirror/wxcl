;;; -*- Mode: LISP; Base: 10; Syntax: Common-Lisp -*-


(once/language
 (with-news-iterator 
  (news *language*)
  (mvb 
   (date utime classification teaser headline lead-in copy-text)  
   (news)
   (declare (ignore utime classification teaser))

   (dbind
    (year month day)
    date
    
    (with-syntax
     (:html)
     (:h1 (syntax-prinseq headline :html))
     ((:p :css* (:c "red"))
      (:princ 
       (format nil 
	       (babel :f$-date *language* :year/full-nr+month/word+day/nr)
	       year 
	       (babel 
		(aref #(:jan :feb :march :april :may :june :july :aug :sep :oct :nov :dec)
		      (1- month))
		*language* '(:abbr :full))
	       day))
      ":")
     ((:div class "lead-in")
      (:b (syntax-prinseq lead-in :html)))
     (syntax-prinseq copy-text :html)
     )))))


   

  




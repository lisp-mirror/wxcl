;;; -*- Mode: LISP; Base: 10; Syntax: Common-Lisp -*-


(once/language

 (with-syntax
  (:html)
  (:h1 (:b (:princ (babel :release-packages *language*))))
  
   (with-file-release-iterators
    (next-file next-release)
    
    (loop 
     (mvb
      (name number date utime manager lic-key lic-name releases-style id notes-uri-key base-name)
      (next-release)
      (declare (ignore release-style))
      (unless date (return))

      (dbind
       (year month day)  
       date
              
       (with-syntax
	(:html)
	((:p :css* (:ta "center"))
	 (:b (:princ name)) 
	 "&nbsp;|&nbsp;"
	 (:princ (format nil
			 (babel :f$-date *language* :year/full-nr+month/word+day/nr)
			 year
			 (babel 
			  (aref #(:jan :feb :march :april :may :june :july :aug :sep :oct :nov :dec)
				(1- month))
			  *language* '(:abbr :full))
			 day) )
	 "&nbsp;|&nbsp;"
	 ((:a :href* notes-uri-key)
	  (:princ (babel :notes *language*)))
	 :br (:princ (babel :license *language*)) 
	 ": " ((:a :href* lic-key) (:princ lic-name)))
	
	((:table :css* ( :w "100%" :p "0px" :m "0px" ))
	 (:tbody

	  (loop
	   (mvb
	    (compr-key compr-img-path compr-extension size protocol-key download-uri-key)
	    (next-file)
	    (unless compr-key (return))
	    
	    (with-syntax
	     (:html)
	     ((:tr :css* (:p "0px" :m "0px"))
	      ((:td :css* (:p "0px" :m "0px"))
	       ((:p :css* (:lh *lh*)) 
		(:princ base-name) (:princ compr-extension) ))
	      ((:td :css* (:p "0px" :m "0px"))
	       ((:p align "right" :css* (:lh *lh* :ta "right"))
		((:img :css* (:va "middle") src compr-img-path))))
	      ((:td :css* (:p "0px" :m "0px"))
	       ((:p align "right" :css* (:lh *lh* :ta "right"))
		"~ " (:princ 
		      (format nil
			      (babel :f$-filesize *language*)
			      (floor size 1024)))
		", " ((:a :href* download-uri-key)
		      (:princ (sym$ protocol-key)))))
	      ))
	    ))
	  ))
	((:p align "center" :css* (:lh *lh* :ta "center" :pb "0.5em" :bb "2px solid black" ))
	 (:princ (babel :release-managed-by *language*)) " " 
	 (:princ manager) ".")
	))))
    )))




    

 

 

;;; -*- Mode: LISP; Base: 10; Syntax: Common-Lisp -*-




(once/language
 (let
     ((viewcvs-uri-prefix
       (get-ini :viewcvs-uri-prefix))
      (viewcvs-rev-prefix
       (get-ini :viewcvs-rev-prefix)))
   
   (with-syntax
    (:html)
    ((:div class "single-column-narrow")
     
     (do-documents
      #'(lambda (loc key-params) ;; document level
	  (dbind 
	   (&key title author language cvs-version &allow-other-keys)
	   key-params
	   
	   (with-syntax 
	    (:html)
	    (:p
	     ((:a href 
		  (conc$ viewcvs-uri-prefix
			 (namestring (decode-location loc))
			 (if* cvs-version
			      then (conc$ viewcvs-rev-prefix
					  cvs-version)
			      else "")))
	      (:b (:princ title)))
	     :br "&nbsp;&nbsp;" (:princ (babel :by *language*)) 
	     " " (:princ author)
	     " (" (:princ (babel language *language*))
	     ")." ))))
      
      #'(lambda (title$) ;; level H1
	  (with-syntax (:html) (:h1 (:b (:princ title$)))))
      
      #'(lambda (title$) ;; level H2
	  (with-syntax (:html) (:h2 (:princ title$) ":")))) )
    
    )))


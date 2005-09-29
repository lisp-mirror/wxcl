;;; -*- Mode: LISP; Base: 10; Syntax: Common-Lisp -*-



(let* ((uri (namestring (decode-location *to*)))
       (full-uri (conc$ "http://www.wxcl-project.org/" uri)))
    
  (with-syntax
   (:html)
   (:html
    (:head
     ((:meta http-equiv "refresh" content (format nil "~D;url=~A" *refresh-time* uri)))
     (:title "Seite verlegt."))
    (:body
     (:p "Wir haben die von Ihnen angefragte Seite verlegt nach "
	 :br ((:a href full-uri)
	      (:princ full-uri)))
     (:p "Bitte warten Sie, bis Ihr Browser Sie weiterleitet, oder klicken Sie auf den Link oben.")
     (:p (:i "wxCL Project Team"))
     ))))



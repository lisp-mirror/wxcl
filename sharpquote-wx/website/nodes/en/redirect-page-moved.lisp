;;; -*- Mode: LISP; Base: 10; Syntax: Common-Lisp -*-



(let* ((uri (namestring (decode-location *to*)))
       (full-uri (conc$ "http://www.wxcl-project.org/" uri)))
  
  (with-syntax
   (:html)
   (:html
    (:head
     ((:meta http-equiv "refresh" content (format nil "~D;url=~A" *refresh-time* uri)))
     (:title "Page moved."))
    (:body
     (:p "We moved the page you requested to "
	 :br ((:a href full-uri)
	      (:princ full-uri)))
     (:p "Pls. wait till your browser takes you there, or click on the link above.")
     (:p (:i "wxCL Project Team"))
     ))))



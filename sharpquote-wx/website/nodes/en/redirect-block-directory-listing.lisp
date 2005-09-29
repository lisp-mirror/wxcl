;;; -*- Mode: LISP; Base: 10; Syntax: Common-Lisp -*-



(let* ((uri (namestring (decode-location *to*)))
       (full-uri (conc$ "http://www.wxcl-project.org/" uri)))
  
  (with-syntax
   (:html)
   (:html
    (:head
     ((:meta http-equiv "refresh" content (format nil "~D;url=~A" *refresh-time* uri)))
     (:title "Directory listing blocked."))
    (:body
     (:p "We blocked the content listing for this directory. You're transfered to the home page instead.")
     (:p "If you're not transfered automatically, click this link:"
	 :br ((:a href full-uri)
	      (:princ full-uri)))
     (:p (:i "wxCL Project Team"))
     ))))




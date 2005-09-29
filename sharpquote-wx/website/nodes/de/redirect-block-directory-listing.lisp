;;; -*- Mode: LISP; Base: 10; Syntax: Common-Lisp -*-



(let* ((uri (namestring (decode-location *to*)))
       (full-uri (conc$ "http://www.wxcl-project.org/" uri)))
  
  (with-syntax
   (:html)
   (:html
    (:head
     ((:meta http-equiv "refresh" content (format nil "~D;url=~A" *refresh-time* uri)))
     (:title "Liste der Verzeichnisinhalte blockiert."))
    (:body
     (:p "Wir haben die Liste der Verzeichnisinhalte f&uuml;r dieses Verzeichnis gesperrt. Sie werden stattdessen auf die Startseite weitergeleitet.")
     (:p "Wenn Sie nicht automatisch weitergeleitet werden, klicken Sie auf diesen Link:"
	 :br ((:a href full-uri)
	      (:princ full-uri)))
     (:p (:i "wxCL Project Team"))
     ))))



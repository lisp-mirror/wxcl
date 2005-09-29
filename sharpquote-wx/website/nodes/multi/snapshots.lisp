;;; -*- Mode: LISP; Base: 10; Syntax: Common-Lisp -*-



(once/language
 (with-syntax
  (:html)

  (:h1 (:b "CVS Tree and Daily CVS Snapshots"))

  (:p
   (:i
    "If you're looking for " 
    (:b ((:a :href* :en/app-downloads) "release downloads"))
    ", it's save to skip this column as the following is concerned "
    "with retrieving source code from the "
    (:b ((:a :href* :sf-cvs) "CVS repository"))
    " of "
    ((:a :href :hp-wxcl) "wxCL")
    ". Each release package contains a "
    (:b ((:a :href* :en/doc-downloads) "Quick Start Guide"))
    " that helps you making things work. "
    "Pls. find "
    ((:a :href* :en/app-downloads) "download links")
    " for the release packages in the right column. ->>"
    ))
  
  (:p
   "Different from other "
   (:b "CVS repositories")
   ", the "
   ((:a :href* :hp-wxcl) "wxCL")
   " "
   ((:a :href* :sf-cvs) "CVS tree")
   " is not organized in clearly separated CVS "
   (:i "modules") 
   ", thus the top-level of the "
   ((:a :href* :sf-cvs) "CVS tree")
   " is populated with files rather than only directories "
   "(which would be the physical representation of CVS " (:i "modules")
   "). Some of those files belong to the "
   ((:a :href* :hp-wxcl) "wxCL")
   " "
   ((:a :href* :en/app-downloads) "releases")
   " made so far, although they are not needed functionally to make a "
   ((:a :href* :hp-wxcl) "wxCL")
   " build from the "
   ((:a :href* :sf-cvs) "CVS tree")
   " work."
   )
  
  (:p
   "To reflect this situation we provide three sorts of daily exports from the "
   ((:a :href* :hp-wxcl) "wxCL")
   " "
   ((:a :href* :sf-cvs) "CVS repository")
   ", "
   "packed and compressed as TAR.GZ archives: "
   )
  
  (:ol
   (:li (:p (:b ((:a :href* :wxcl-cvs-snapshot) "wxcl-cvs-snapshot.tar.gz")))
	(:p "If you want to build "
	    ((:a :href* :hp-wxcl) "wxCL")
	    " from the "
	    ((:a :href* :sf-cvs) "CVS tree")
	    ", "
	    ((:span :css* (:c "red")) "all you need is this archive: ")
	    "It contains everything (including the files on the top-level of the "
	    ((:a :href* :sf-cvs) "CVS tree")
	    ") but the modules "
	    (:i "CVS ROOT") " and " (:i "sharpquote-wx") 
	    ", which are not essential for building "
	    ((:a :href* :hp-wxcl) "wxCL")
	    ". "))
   
   (:li (:p (:b ((:a :href* :sqwx-cvs-snapshot) "sqwx-cvs-snapshot.tar.gz")))
	(:p "This archive contains the CVS module " (:i "sharpquote-wx")
	    " (or " (:i "sqwx") " or " (:i "#'wx") ") which keeps resources, "
	    "preferences, code and images needed to build "
	    ((:a :href* :hp-wxcl) "the website you are currently browsing")
	    " and has some directories prepared for work "
	    "that should not intefere with the mainline release process. "
	    ((:span :css* (:c "red")) 
	     "You don't need this archive to properly build "
	     ((:a :href* :hp-wxcl) "wxCL")
	     " from the "
	     ((:a :href* :sf-cvs) "CVS repository")
	     ".")
	    ))
   
   (:li (:p (:b ((:a :href* :full-cvs-snapshot) "full-cvs-snapshot.tar.gz")))
	(:p "Both of the above archive contents are packed together in this archive. "
	    "This is occasionally useful in building the website "
	    ((:a :href* :hp-wxcl) "wxCL-project.org")
	    ". "
	    "The archive does not contain the " (:i "CVS ROOT") " module."
	    ))
   )))

   
  


;;;parse-constants.lisp
;;;
;;;License   : BSD-style
;;;Author(s) : Surendra Singhi (surendra@asu.edu)
;;; 
;;;Copyright (C) 2005 Surendra Singhi
;;;See the file LICENSE for information on usage and redistribution.
;;;----------------------------------------------------------------------------- */

;;; Generates defconstants after parsing the wx_defs.e file


(defun parse-file (in-file output-file)
  (with-open-file (*standard-output* output-file :direction :output)
    (with-open-file (str in-file :direction :input)
      (let (match var value)
	(loop for line = (read-line str nil str)
	    until (eq line str) do
	    (setf line (string-trim '(#\SPACE #\TAB #\NEWLINE) line))
	    (multiple-value-setq (match var value)
		(regexp:match
		 "\\(wx[[:alnum:]_]\\+\\)[[:blank:]]*\\:[[:blank:]]*INTEGER[[:alnum:][:blank:]_]*\\([[:digit:]]\\+\\)"
			  line))
	    (when value
	      (format t "(defconstant ~a ~a)~%" (regexp:match-string line var) (regexp:match-string line value))))))))


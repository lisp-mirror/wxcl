;;;wxImage-test.lisp
;;;License  : GNU General Public License (GPL)
;;;Author(s) : Surendra Singhi (surendra@asu.edu) 
;;;Copyright (C) 2005 Surendra Singhi 
;;;See the file LICENSE for information on usage and redistribution.
;;;
;;; $Header$
;;;

(load "../clisp-wrappers/wxCL.lisp")
(load "../clisp-wrappers/wx_wrapper.lisp")
(load "../clisp-wrappers/wx_main.lisp")
(load "../clisp-wrappers/wxImage.lisp")
(load "lisp-unit")

(defpackage wxImage-test
    (:use :common-lisp :lisp-unit :wx_main :wxImage))

(in-package :wxImage-test)

(define-test png-test
    (let ((filename "oxygen.png") (row 43))
      (assert-true (probe-file filename) "File oxygen.png does not exists")
      (when (probe-file filename)
	(with-wxcl
	    (unwind-protect
		 (progn   
		   (with-image-file (image filename)
		     (let ((str "smart guy, you made it. the next level is [105, 110, 116, 101, 103, 114, 105, 116, 121]"))
		       (assert-equal 95 (wxImage:wxImage_GetHeight image) "Image height doesn't match.")
		       (assert-equal 629 (wxImage:wxImage_GetWidth image) "Image width doesn't match.")
  		       (assert-prints str (loop for i from 0 to 605 by 7 do
  						(princ (wxImage:wxImage_GetBlue image i row))) "Image get blue failed.")
  		       (assert-prints str (loop for i from 0 to 605 by 7 do
 						(princ (wxImage:wxImage_GetRed image i row))) "Image get red failed.")
  		       (assert-prints str (loop for i from 0 to 605 by 7 do
  						(princ (wxImage:wxImage_GetGreen image i row))) "Image get green failed.")
		       ))))))))

;;;the value of pixels change in gif and jpg, so cannot do the string matching test
(define-test gif-test
    (let ((filename "oxygen.gif")(row 43))
      (assert-true (probe-file filename) "File oxygen.gif does not exists")
      (when (probe-file filename)
	(with-wxcl
	    (unwind-protect
		 (progn   
		   (wxImage:with-image-file (image filename)
		     (assert-equal 95 (wxImage:wxImage_GetHeight image) "Image height doesn't match.")
		     (assert-equal 629 (wxImage:wxImage_GetWidth image) "Image width doesn't match.")
		     )))))))

(define-test jpg-test
    (let ((filename "oxygen.jpg")(row 43))
      (assert-true (probe-file filename) "File oxygen.jpg does not exists")
      (when (probe-file filename)
	(with-wxcl
	    (unwind-protect
		 (progn   
		   (with-image-file (image filename)
		     (assert-equal 95 (wxImage:wxImage_GetHeight image) "Image height doesn't match.")
		     (assert-equal 629 (wxImage:wxImage_GetWidth image) "Image width doesn't match.")
		     )))))))

(define-test tif-test
    (let ((filename "oxygen.tif")(row 43))
      (assert-true (probe-file filename) "File oxygen.tif does not exists")
      (when (probe-file filename)
	(with-wxcl
	    (unwind-protect
		 (progn   
		   (wxImage:with-image-file (image filename)
		     (let ((str "smart guy, you made it. the next level is [105, 110, 116, 101, 103, 114, 105, 116, 121]"))
		       (assert-equal 95 (wxImage:wxImage_GetHeight image) "Image height doesn't match.")
		       (assert-equal 629 (wxImage:wxImage_GetWidth image) "Image width doesn't match.")
 		       (assert-prints str (loop for i from 0 to 605 by 7 do
 						(princ (wxImage:wxImage_GetBlue image i row))) "Image get blue failed.")
 		       (assert-prints str (loop for i from 0 to 605 by 7 do
 						(princ (wxImage:wxImage_GetRed image i row))) "Image get red failed.")
 		       (assert-prints str (loop for i from 0 to 605 by 7 do
 						(princ (wxImage:wxImage_GetGreen image i row))) "Image get green failed.")
		       ))))))))



(lisp-unit:run-tests)
;(lisp-unit:run-tests gif-test)

;(macroexpand '(lisp-unit:run-tests png-test))
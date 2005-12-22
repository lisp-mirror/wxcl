
(in-package :wxcl)

(defcvar ("APPTerminating" APPTerminating)
 :int)

;(cffi:load-foreign-library +library-name+)

(defctype :lisp-string :pointer)

(defmacro once-only ((&rest names) &body body)
  (let ((gensyms (loop for n in names collect (gensym))))
    `(let (,@(loop for g in gensyms collect `(,g (gensym))))
      `(let (,,@(loop for g in gensyms for n in names collect ``(,,g ,,n)))
        ,(let (,@(loop for n in names for g in gensyms collect `(,n ,g)))
           ,@body)))))

(define-type-translator :lisp-string :from-c (value)
  "Converts a foreign wxString pointer to lisp, and frees it."
  (once-only (value)
    `(unwind-protect
      (foreign-string-to-lisp (wxStringc_str ,value) (wxString_GetLength ,value) nil)
      (wxString_Delete ,value))))

(defcfun ("ELJApp_InitializeC" ELJApp_initializeC) :void
  (_obj :pointer)
  (_argc :int)
  (_argv :pointer))



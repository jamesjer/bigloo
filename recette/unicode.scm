;*=====================================================================*/
;*    serrano/prgm/project/bigloo/recette/unicode.scm                  */
;*    -------------------------------------------------------------    */
;*    Author      :  Manuel Serrano                                    */
;*    Creation    :  Sun Mar  8 19:31:00 1998                          */
;*    Last change :  Wed Nov  5 11:11:49 2014 (serrano)                */
;*    -------------------------------------------------------------    */
;*    Unicode test.                                                    */
;*=====================================================================*/

;*---------------------------------------------------------------------*/
;*    The module                                                       */
;*---------------------------------------------------------------------*/
(module unicode
   (import  (main "main.scm"))
   (include "test.sch")
   (export  (test-unicode)))

;*---------------------------------------------------------------------*/
;*    test-unicode ...                                                 */
;*---------------------------------------------------------------------*/
(define (test-unicode)
   (test-module "unicode" "unicode.scm")
   ;; ucs2 characters
   (test "ucs2?" (ucs2? (char->ucs2 #\a)) #t)
   (test "ucs2?" (ucs2? 10) #f)
   (test "ucs2?" (ucs2? #u0101) #t)
   (test "ucs2=?" (ucs2=? (char->ucs2 #\a) (ucs2-downcase (char->ucs2 #\A))) #t)
   (test "ucs2=?" (ucs2=? (char->ucs2 #\a) (char->ucs2 #\b)) #f)
   (test "ucs2<?" (ucs2<? (char->ucs2 #\a) (char->ucs2 #\b)) #t)
   (test "ucs2<?" (ucs2<? (char->ucs2 #\b) (char->ucs2 #\a)) #f)
   (test "ucs2<=?" (ucs2<=? (char->ucs2 #\a) (char->ucs2 #\b)) #t)
   (test "ucs2<=?" (ucs2<=? (char->ucs2 #\b) (char->ucs2 #\b)) #t)
   (test "ucs2<=?" (ucs2<=? (char->ucs2 #\c) (char->ucs2 #\a)) #f)
   (test "ucs2>?" (ucs2>? (char->ucs2 #\a) (char->ucs2 #\b)) #f)
   (test "ucs2>?" (ucs2>? (char->ucs2 #\b) (char->ucs2 #\a)) #t)
   (test "ucs2>=?" (ucs2>=? (char->ucs2 #\a) (char->ucs2 #\b)) #f)
   (test "ucs2>=?" (ucs2>=? (char->ucs2 #\b) (char->ucs2 #\b)) #t)
   (test "ucs2>=?" (ucs2>=? (char->ucs2 #\c) (char->ucs2 #\a)) #t)
   (test "ucs2-ci=?" (ucs2-ci=? (char->ucs2 #\a) (char->ucs2 #\A)) #t)
   (test "ucs2-ci=?" (ucs2-ci=? (char->ucs2 #\a) (char->ucs2 #\b)) #f)
   (test "ucs2-ci<?" (ucs2-ci<? (char->ucs2 #\a) (char->ucs2 #\B)) #t)
   (test "ucs2-ci<?" (ucs2-ci<? (char->ucs2 #\b) (char->ucs2 #\a)) #f)
   (test "ucs2-ci<=?" (ucs2-ci<=? (char->ucs2 #\a) (char->ucs2 #\B)) #t)
   (test "ucs2-ci<=?" (ucs2-ci<=? (char->ucs2 #\B) (char->ucs2 #\B)) #t)
   (test "ucs2-ci<=?" (ucs2-ci<=? (char->ucs2 #\C) (char->ucs2 #\a)) #f)
   (test "ucs2-ci>?" (ucs2-ci>? (char->ucs2 #\a) (char->ucs2 #\b)) #f)
   (test "ucs2-ci>?" (ucs2-ci>? (char->ucs2 #\B) (char->ucs2 #\a)) #t)
   (test "ucs2-ci>=?" (ucs2-ci>=? (char->ucs2 #\a) (char->ucs2 #\B)) #f)
   (test "ucs2-ci>=?" (ucs2-ci>=? (char->ucs2 #\b) (char->ucs2 #\b)) #t)
   (test "ucs2-ci>=?" (ucs2-ci>=? (char->ucs2 #\c) (char->ucs2 #\a)) #t)
   (test "ucs2-alphabetic?" (ucs2-alphabetic? (char->ucs2 #\a)) #t)
   (test "ucs2-alphabetic?" (ucs2-alphabetic? (char->ucs2 #\0)) #f)
   (test "ucs2-numeric?" (ucs2-numeric? (char->ucs2 #\a)) #f)
   (test "ucs2-numeric?" (ucs2-numeric? (char->ucs2 #\0)) #t)
   (test "ucs2-whitespace?" (ucs2-whitespace? (char->ucs2 #\a)) #f)
   (test "ucs2-whitespace?" (ucs2-whitespace? (char->ucs2 #\space)) #t)
   (test "ucs2-upper-case?" (ucs2-upper-case? (char->ucs2 #\a)) #f)
   (test "ucs2-upper-case?" (ucs2-upper-case? (char->ucs2 #\A)) #t)
   (test "ucs2-lower-case?" (ucs2-lower-case? (char->ucs2 #\a)) #t)
   (test "ucs2-lower-case?" (ucs2-lower-case? (char->ucs2 #\A)) #f)
   (test "ucs2<->integer" (ucs2->integer (integer->ucs2 65)) 65)
   (test "ucs2<->char" (ucs2->char (char->ucs2 #\a)) #\a)
   (test "ucs2<->char" (ucs2->char (char->ucs2 #\b)) #\b)
   (test "ucs2-downcase" (char->ucs2 #\a) (ucs2-downcase (char->ucs2 #\A)))
   (test "ucs2-upcase" (char->ucs2 #\A) (ucs2-upcase (char->ucs2 #\a)))
   (test "write" (let ((p (open-output-string)))
		    (write #u0101 p)
		    (close-output-port p))
	 "#u0101")
   ;; unicode strings
   (test "make-ucs2-string" (ucs2-string? (make-ucs2-string 10)) #t)
   (test "ucs2-string?" (ucs2-string? #u"toto") #t)
   (test "ucs2-string?" (ucs2-string? "toto") #f)
   (test "ucs2-string-ref" (ucs2-string-ref (make-ucs2-string 10 #u0101) 3)
	 #u0101)
   (test "ucs2-string-set!" (let ((str (make-ucs2-string 10 #u0101)))
			       (ucs2-string-set! str 3 #u0102)
			       (ucs2-string-ref str 3))
	 #u0102)
   (test "ucs2-string-length" (ucs2-string-length (make-ucs2-string 10)) 10)
   (test "ucs2-string=?.1"
	 (ucs2-string=? (let ((s (make-ucs2-string 10 #u0101)))
			   (ucs2-string-set! s 2 (char->ucs2 #\a))
			   (ucs2-string-set! s 3 #u0102)
			   (ucs2-string-set! s 4 #u0103)
			   s)
			(let ((s (make-ucs2-string 10 #u0101)))
			   (ucs2-string-set! s 2 (char->ucs2 #\a))
			   (ucs2-string-set! s 3 #u0102)
			   (ucs2-string-set! s 4 #u0103)
			   s))
	 #t)
   (test "ucs2-string=?.2"
	 (ucs2-string=? (let ((s (make-ucs2-string 10 #u0101)))
			   (ucs2-string-set! s 2 (char->ucs2 #\a))
			   
			   (ucs2-string-set! s 3 #u0102)
			   (ucs2-string-set! s 4 #u0104)
			   s)
			(let ((s (make-ucs2-string 10 #u0101)))
			   (ucs2-string-set! s 2 (char->ucs2 #\a))
			   (ucs2-string-set! s 3 #u0102)
			   (ucs2-string-set! s 4 #u0103)
			   s))
	 #f)
   (test "ucs2-string-ci=?.1"
	 (ucs2-string-ci=? (let ((s (make-ucs2-string 10 #u0101)))
			      (ucs2-string-set! s 2 (char->ucs2 #\a))
			      (ucs2-string-set! s 3 (char->ucs2 #\a))
			      s)
			   (let ((s (make-ucs2-string 10 #u0101)))
			      (ucs2-string-set! s 2 (char->ucs2 #\a))
 			      (ucs2-string-set! s 3 (char->ucs2 #\A))
			      s))
	 #t)
   (test "ucs2-string-ci=?.2"
	 (ucs2-string-ci=? (let ((s (make-ucs2-string 10 #u0101)))
			      (ucs2-string-set! s 2 (char->ucs2 #\a))
			      (ucs2-string-set! s 3 (char->ucs2 #\b))
			      s)
			   (let ((s (make-ucs2-string 10 #u0101)))
			      (ucs2-string-set! s 2 (char->ucs2 #\A))
			      (ucs2-string-set! s 3 (char->ucs2 #\A))
			      s))
	 #f)
   (test "ucs2-string<?.1"
	 (ucs2-string<? (let ((s (make-ucs2-string 10 #u0101)))
			   (ucs2-string-set! s 2 (char->ucs2 #\a))
			   (ucs2-string-set! s 3 #u0102)
			   (ucs2-string-set! s 4 #u0104)
			   s)
			(let ((s (make-ucs2-string 10 #u0101)))
			   (ucs2-string-set! s 2 (char->ucs2 #\b))
			   (ucs2-string-set! s 3 #u0102)
			   (ucs2-string-set! s 4 #u0104)
			   s))
	 #t)
   (test "ucs2-string<?.2"
	 (ucs2-string<? (let ((s (make-ucs2-string 10 #u0101)))
			   (ucs2-string-set! s 2 (char->ucs2 #\a))
			   (ucs2-string-set! s 3 #u0102)
			   (ucs2-string-set! s 4 #u0104)
			   s)
			(let ((s (make-ucs2-string 10 #u0101)))
			   (ucs2-string-set! s 2 (char->ucs2 #\a))
			   (ucs2-string-set! s 3 #u0102)
			   (ucs2-string-set! s 4 #u0103)
			   s))
	 #f)
   (test "ucs2-string<=?.1"
	 (ucs2-string<=? (let ((s (make-ucs2-string 10 #u0101)))
			    (ucs2-string-set! s 2 (char->ucs2 #\a))
			    (ucs2-string-set! s 3 #u0102)
			    (ucs2-string-set! s 4 #u0103)
			    s)
			 (let ((s (make-ucs2-string 10 #u0101)))
			    (ucs2-string-set! s 2 (char->ucs2 #\a))
			    (ucs2-string-set! s 3 #u0102)
			    (ucs2-string-set! s 4 #u0104)
			    s))
	 #t)
   (test "ucs2-string<=?.2"
	 (ucs2-string<=? (let ((s (make-ucs2-string 10 #u0101)))
			    (ucs2-string-set! s 2 (char->ucs2 #\a))
			    (ucs2-string-set! s 3 #u0102)
			    (ucs2-string-set! s 4 #u0104)
			    s)
			 (let ((s (make-ucs2-string 10 #u0101)))
			    (ucs2-string-set! s 2 (char->ucs2 #\a))
			    (ucs2-string-set! s 3 #u0102)
			    (ucs2-string-set! s 4 #u0104)
			    s))
	 #t)
   (test "ucs2-string<=?.3"
	 (ucs2-string<=? (let ((s (make-ucs2-string 10 #u0101)))
			    (ucs2-string-set! s 2 (char->ucs2 #\a))
			    (ucs2-string-set! s 3 #u0102)
			    (ucs2-string-set! s 4 #u0104)
			    s)
			 (let ((s (make-ucs2-string 10 #u0101)))
			    (ucs2-string-set! s 2 (char->ucs2 #\a))
			    (ucs2-string-set! s 3 #u0102)
			    (ucs2-string-set! s 4 #u0103)
			    s))
	 #f)
   (test "ucs2-string>=?.1"
	 (ucs2-string>=? (let ((s (make-ucs2-string 10 #u0101)))
			    (ucs2-string-set! s 2 (char->ucs2 #\a))
			    (ucs2-string-set! s 3 #u0102)
			    (ucs2-string-set! s 4 #u0104)
			    s)
			 (let ((s (make-ucs2-string 10 #u0101)))
			    (ucs2-string-set! s 2 (char->ucs2 #\a))
			    (ucs2-string-set! s 3 #u0102)
			    (ucs2-string-set! s 4 #u0104)
			    s))
	 #t)
   (test "ucs2-string>=?.2"
	 (ucs2-string>=? (let ((s (make-ucs2-string 10 #u0101)))
			    (ucs2-string-set! s 2 (char->ucs2 #\a))
			    (ucs2-string-set! s 3 #u0102)
			    (ucs2-string-set! s 4 #u0105)
			    s)
			 (let ((s (make-ucs2-string 10 #u0101)))
			    (ucs2-string-set! s 2 (char->ucs2 #\a))
			    (ucs2-string-set! s 3 #u0102)
			    (ucs2-string-set! s 4 #u0104)
			    s))
	 #t)
   (test "ucs2-string>=?.3"
	 (ucs2-string>=? (let ((s (make-ucs2-string 10 #u0101)))
			    (ucs2-string-set! s 2 (char->ucs2 #\a))
			    (ucs2-string-set! s 3 #u0102)
			    (ucs2-string-set! s 4 #u0104)
			    s)
			 (let ((s (make-ucs2-string 10 #u0101)))
			    (ucs2-string-set! s 2 (char->ucs2 #\a))
			    (ucs2-string-set! s 3 #u0102)
			    (ucs2-string-set! s 4 #u0105)
			    s))
	 #f)
   (test "ucs2-string-ci<?.1"
	 (ucs2-string-ci<? (let ((s (make-ucs2-string 10 #u0101)))
			      (ucs2-string-set! s 2 (char->ucs2 #\A))
			      (ucs2-string-set! s 3 #u0102)
			      (ucs2-string-set! s 4 (char->ucs2 #\B))
			      s)
			   (let ((s (make-ucs2-string 10 #u0101)))
			      (ucs2-string-set! s 2 (char->ucs2 #\a))
			      (ucs2-string-set! s 3 #u0102)
			      (ucs2-string-set! s 4 (char->ucs2 #\c))
			      s))
	 #t)
   (test "ucs2-string-ci<?.2"
	 (ucs2-string-ci<? (let ((s (make-ucs2-string 10 #u0101)))
			      (ucs2-string-set! s 2 (char->ucs2 #\a))
			      (ucs2-string-set! s 3 #u0102)
			      (ucs2-string-set! s 4 (char->ucs2 #\c))
			      s)
			   (let ((s (make-ucs2-string 10 #u0101)))
			      (ucs2-string-set! s 2 (char->ucs2 #\A))
			      (ucs2-string-set! s 3 #u0102)
			      (ucs2-string-set! s 4 (char->ucs2 #\B))
			      s))
	 #f)
   (test "ucs2-string-ci<=?.1"
	 (ucs2-string-ci<=? (let ((s (make-ucs2-string 10 #u0101)))
			       (ucs2-string-set! s 2 (char->ucs2 #\A))
			       (ucs2-string-set! s 3 #u0102)
			       (ucs2-string-set! s 4 (char->ucs2 #\c))
			       s)
			    (let ((s (make-ucs2-string 10 #u0101)))
			       (ucs2-string-set! s 2 (char->ucs2 #\a))
			       (ucs2-string-set! s 3 #u0102)
			       (ucs2-string-set! s 4 (char->ucs2 #\C))
			       s))
	 #t)
   (test "ucs2-string-ci<=?.2"
	 (ucs2-string-ci<=? (let ((s (make-ucs2-string 10 #u0101)))
			       (ucs2-string-set! s 2 (char->ucs2 #\A))
			       (ucs2-string-set! s 3 #u0102)
			       (ucs2-string-set! s 4 (char->ucs2 #\C))
			       s)
			    (let ((s (make-ucs2-string 10 #u0101)))
			       (ucs2-string-set! s 2 (char->ucs2 #\a))
			       (ucs2-string-set! s 3 #u0102)
			       (ucs2-string-set! s 4 (char->ucs2 #\D))
			       s))
	 #t)
   (test "ucs2-string-ci<=?.3"
	 (ucs2-string-ci<=? (let ((s (make-ucs2-string 10 #u0101)))
			       (ucs2-string-set! s 2 (char->ucs2 #\A))
			       (ucs2-string-set! s 3 #u0102)
			       (ucs2-string-set! s 4 (char->ucs2 #\d))
			       s)
			    (let ((s (make-ucs2-string 10 #u0101)))
			       (ucs2-string-set! s 2 (char->ucs2 #\a))
			       (ucs2-string-set! s 3 #u0102)
			       (ucs2-string-set! s 4 (char->ucs2 #\c))
			       s))
	 #f)
   (test "ucs2-string-ci>=?.1"
	 (ucs2-string-ci>=? (let ((s (make-ucs2-string 10 #u0101)))
			       (ucs2-string-set! s 2 (char->ucs2 #\A))
  			       (ucs2-string-set! s 3 #u0102)
			       (ucs2-string-set! s 4 #u0104)
			       s)
			    (let ((s (make-ucs2-string 10 #u0101)))
			       (ucs2-string-set! s 2 (char->ucs2 #\a))
			       (ucs2-string-set! s 3 #u0102)
			       (ucs2-string-set! s 4 #u0104)
			       s))
	 #t)
   (test "ucs2-string-ci>=?.2"
	 (ucs2-string-ci>=? (let ((s (make-ucs2-string 10 #u0101)))
			       (ucs2-string-set! s 2 (char->ucs2 #\A))
			       (ucs2-string-set! s 3 #u0102)
			       (ucs2-string-set! s 4 #u0105)
			       s)
			    (let ((s (make-ucs2-string 10 #u0101)))
			       (ucs2-string-set! s 2 (char->ucs2 #\a))
			       (ucs2-string-set! s 3 #u0102)
			       (ucs2-string-set! s 4 #u0104)
			       s))
	 #t)
   (test "ucs2-string-ci>=?.3"
	 (ucs2-string-ci>=? (let ((s (make-ucs2-string 10 #u0101)))
			       (ucs2-string-set! s 2 (char->ucs2 #\A))
			       (ucs2-string-set! s 3 #u0102)
			       (ucs2-string-set! s 4 #u0104)
			       s)
			    (let ((s (make-ucs2-string 10 #u0101)))
			       (ucs2-string-set! s 2 (char->ucs2 #\B))
			       (ucs2-string-set! s 3 #u0102)
			       (ucs2-string-set! s 4 #u0105)
			       s))
	 #f)
   (test "subucs2-string" (subucs2-string #u"abcdefg" 1 4) #u"bcd")
   (test "ucs2-string-append" (ucs2-string-append #u"abcde" #u"0123")
	 #u"abcde0123")
   (test "ucs2-string->list"
	 (ucs2-string->list #u"abcd")
	 (list (char->ucs2 #\a)
	       (char->ucs2 #\b)
	       (char->ucs2 #\c)
	       (char->ucs2 #\d)))
   (test "list->ucs2-string"
	 (list->ucs2-string (list (char->ucs2 #\a)
				  (char->ucs2 #\b)
				  (char->ucs2 #\c)
				  (char->ucs2 #\d)))
	 #u"abcd")
   (test "ucs2-string-copy"
	 (ucs2-string-copy #u"abcd") #u"abcd")
   (test "ucs2-string-fill"
	 (let ((s #u"abcd"))
	    (ucs2-string-fill! s (char->ucs2 #\a))
	    s)
	 #u"aaaa")
   (test "ucs2-string-upcase"
	 (ucs2-string-upcase #u"abcdABCD") #u"ABCDABCD") 
   (test "ucs2-string-downcase"
	 (ucs2-string-downcase #u"abcdABCD") #u"abcdabcd")
   (test "ucs2<->utf8"
	 (ucs2-string->utf8-string (utf8-string->ucs2-string "toto"))
	 "toto")
   (test "write" (let ((p (open-output-string)))
		    (write #u"abcdef" p)
		    (close-output-port p))
	 "#u\"abcdef\"")
   (let ((s "�t� maison pas gl�p"))
      (test "utf8/iso-latin" (utf8->iso-latin (iso-latin->utf8 s)) s))
   (let ((s "\xe2\x82\xactoto\xe2\x80\x9a"))
      (test "utf8/cp1252" (cp1252->utf8 (utf8->cp1252 s)) s))
   (let* ((l '(#\" #\[ #\\ #\u #\0 #\0 #\4 #\1 #\] #\"))
	  (s0 (apply string l))
	  (s (with-input-from-string s0 read)))
      (test "unicode literal.1" (string->list s) (list #\[ (integer->char #x41) #\]))
      (test "unicode literal.2" (list->string (string->list s)) s)))
	    
   

;*---------------------------------------------------------------------*/
;*    serrano/prgm/project/bigloo/recette/eval.scm                     */
;*                                                                     */
;*    Author      :  Manuel Serrano                                    */
;*    Creation    :  Tue Nov  3 14:42:03 1992                          */
;*    Last change :  Mon Feb  7 16:52:18 2011 (serrano)                */
;*                                                                     */
;*    On fait des tests pour tester eval.                              */
;*---------------------------------------------------------------------*/

;*---------------------------------------------------------------------*/
;*    Le module                                                        */
;*---------------------------------------------------------------------*/
(module reval
   (import  (main "main.scm"))
   (include "test.sch")
   (export  (test-eval))
   (export  *g* foo *f* bar)
   (static  (class evpt x (y read-only (default 10))))
   (eval    (export *g*)
	    (export foo)
	    (export *f*)
	    (export bar)
	    (export gee)
	    (export-exports)
	    (class evpt)))

(define (eval-fun) #t)

;*---------------------------------------------------------------------*/
;*    foo ...                                                          */
;*---------------------------------------------------------------------*/
(define *g* 4)
(define (foo)
   *g*)

;*---------------------------------------------------------------------*/
;*    bar ...                                                          */
;*---------------------------------------------------------------------*/
(define *f* 6)
(define (bar)
   (set! *f* 7))

;*---------------------------------------------------------------------*/
;*    gee ...                                                          */
;*---------------------------------------------------------------------*/
(define gee 23)

;*---------------------------------------------------------------------*/
;*    inline                                                           */
;*---------------------------------------------------------------------*/
(define-inline (collect-to stop?::procedure parse::procedure start::pair-nil)
    (define (collect::pair-nil accum)
      (let ((item (parse)))
        (if (stop? item) (reverse! accum)
  	  (collect (cons item accum)))))
    (collect start))

(define (genum n)
   (lambda ()
      (set! n (- n 1))
      n))

;*---------------------------------------------------------------------*/
;*    test-eval ...                                                    */
;*---------------------------------------------------------------------*/
(define (test-eval)
   (test-module "eval" "eval.scm")
   (test "eval.1" (eval '1) 1)
   (test "eval.2" (eval 'car) car)
   (test "eval.3" (eval '(car '(1 2))) 1)
   (test "eval.4" (eval '((lambda (x) (+ 1 x)) 4)) 5)
   (test "eval.5" ((eval '(lambda (x) (+ 1 x))) 4) 5)
   (test "eval.6" (apply (eval '(lambda (x) (+ 1 x)))
			 '(4))
	 5)
   (test "eval.7" (let ((foo (lambda (x) (+ 1 x))))
		     (eval `(,foo 4)))
	 5)
   (test "eval.8" (eval '(apply (lambda (x) (+ 1 x)) '(4)))
	 5)
   (test "eval.9" (let ((foo (lambda (x) (+ 1 x))))
		     (eval `(apply ,foo '(4))))
	 5)
   (test "eval.10" (eval '(begin (define *v* #t) *v*)) #t)
   (test "eval.10" (eval '(begin (define *v* #f) *v*)) #f)
   (test "fib" (eval '(letrec ((fib (lambda (x)
				       (if (<fx x 2)
					   1
					   (+fx (fib (-fx x 1))
						(fib (-fx x 2)))))))
			 (fib 20)))
	 10946)
   (test "args.1" ((eval '(lambda (a b c d e f g h)
			     (+ a b c d e f g h)))
		   1 2 3 4 5 6 7 8)
	 
	 36)
   (test "args.2" ((eval '(lambda (a b c d e f g . h)
			     (+ a b c d e f g (apply + h))))
		   1 2 3 4 5 6 7 8 9)
	 45)
   (test "args.3" (let ((foo (lambda (a b c d e f g h)
				(+ a b c d e f g h))))
		     (eval `(,foo 1 2 3 4 5 6 7 8)))
	 36)
   (test "args.4" (let ((foo (lambda (a b c d e f g . h)
				(+ a b c d e f g (apply + h)))))
		     (eval `(,foo 1 2 3 4 5 6 7 8 9)))
	 45)
   (test "if.1" (eval '(if #t #t #f)) #t)
   (test "if.2" (eval '(let ((if (lambda (x y z) z))) (if #t #t #f))) #f)
   (test "set!.1" (begin (eval '(set! *g* #t)) (foo)) #t)
   (test "set!.2" (eval '(begin (bar) *f*)) 7)
   (test "set!.3" (begin (eval '(define (foo1 x) (set! bar1 x) bar1))
			 (eval '(define bar1 6))
			 (eval '(foo1 1)))
	 1)
   (test "variable" (eval '(procedure? read)) #t)
   (test "-4 args" (eval '(let ((foo  (lambda  (a b c . d) d)))
			     (car (list (foo 1 2 3 4)))))
	 '(4))
   (test "4 args" (eval '(let ((foo  (lambda  (a b c d) (+ a b c d))))
			    (+ 0 (foo 1 2 3 4))))
	 10)
   (test "5 args" (eval '(let ((foo (lambda (a b c d e) (+ a b c d e))))
			    (+ (foo 1 2 3 4 5) 0)))
	 15)
   (test "-5 args" (eval '(let ((foo (lambda (a b c d . e)
					(+ a b c d (car e)))))
			     (+ 0 (foo 1 2 3 4 5))))
	 15)
   (test "with-exception-handler.1"
	 (eval '(bind-exit (exit)
		   (with-exception-handler
		      (lambda (e)
			 (exit 1))
		      (lambda ()
			 (car 1)))))
	 1)
   (test "with-exception-handler.1b"
	 (eval '(bind-exit (exit)
		   (with-exception-handler
		      (lambda (e)
			 (exit 1))
		      (lambda ()
			 (car 1)))))
	 1)
   (test "with-exception-handler.2"
	 (eval '(bind-exit (exit)
		   (with-exception-handler
		      (lambda (e)
			 (exit 1)
			 (print "foo"))
		      (lambda ()
			 (car 1)))))
	 1)
   (test "try.1" (eval '(try (car 1) (lambda (escape proc mes obj) (escape 1))))
	 1)
   (test "try.1b" (eval '(try (car 1) (lambda (escape proc mes obj) (escape 1))))
	 1)
   (test "try.2" (eval '(try (car 1) (lambda (escape proc mes obj) (escape 1) (print "foo"))))
	 1)
   (test "funcall.0" (eval '(let ((f (lambda () 0))) (f))) 0)
   (test "funcall.1" (eval '(let ((f (lambda (a) a))) (f 1))) 1)
   (test "funcall.2" (eval '(let ((f (lambda (a b) (+ a b)))) (f 1 1))) 2)
   (test "funcall.3" (eval '(let ((f (lambda (a b c) (+ a b c))))
			       (f 0 1 2)))
	 3)
   (test "funcall.4" (eval '(let ((f (lambda (a b c d) (+ a b c d))))
			       (f 0 1 2 1)))
	 4)
   (test "funcall.5" (eval '(let ((f (lambda (a b c d e) (+ a b c d e))))
			       (f 1 -1 2 3 0)))
	 5)
   (test "funcall.-1" (eval '(let ((f (lambda f f))) (f))) '())
   (test "funcall.-1" (eval '(let ((f (lambda f f))) (f 1 2 3))) '(1 2 3))
   (test "cnst.1" (eval '(cons 1 2)) (cons 1 2))
   (test "cnst.2" (eval '(vector 1 2)) '#(1 2))
   (test "global variable.1" (eval '(begin (define (foo11 x) bar11)
					   (define bar11 4)
					   (foo11 5)))
	 4)
   (test "global variable.2" (eval '(begin (define (foo22 x) (set! bar22 x))
					   (define bar22 5)
					   (foo22 4)
					   bar22))
	 4)
   (test "apply import" (begin (eval '(define eval-fun (lambda () #t)))
			       (eval-fun))
	 #t)
   (test "inline" (collect-to zero? (genum 10) '()) '(9 8 7 6 5 4 3 2 1))
   (test "export-export" (eval 'gee) gee)
   (test "eval.cnst" (eval 4) 4)
   (test "eval.cnst" (eval ''foo) 'foo)
   (test "eval.cnst" (eval '(quote (foo bar))) '(foo bar))
   (test "eval.cnst" (eval '(quote #(foo bar))) '#(foo bar))
   (test "eval.begin" (eval '(begin)) #unspecified)
   (test "eval.begin" (eval '(begin 1)) 1)
   (test "eval.begin" (eval '(begin 1 2)) 2)
   (test "eval.var0" (eval '((lambda (x) x) 1)) 1)
   (test "eval.var1" (eval '((lambda (x y) y) 1 2)) 2)
   (test "eval.var2" (eval '((lambda (x y z) z) 1 2 3)) 3)
   (test "eval.var3" (eval '((lambda (x y z t) t) 1 2 3 4)) 4)
   (test "eval.var4" (eval '((lambda (x y z t u) u) 1 2 3 4 5)) 5)
   (test "eval.var5" (eval '((lambda (x y z t u v) v) 1 2 3 4 5 6)) 6)
   (test "eval.set0" (eval '((lambda (x) (set! x (- x)) x) 1)) -1)
   (test "eval.set1" (eval '((lambda (x y) (set! y (- y)) y) 1 2)) -2)
   (test "eval.set2" (eval '((lambda (x y z) (set! z (- z)) z) 1 2 3)) -3)
   (test "eval.set3" (eval '((lambda (x y z t) (set! t (- t)) t) 1 2 3 4)) -4)
   (test "eval.set4" (eval '((lambda (x y z t u) (set! u (- u)) u) 1 2 3 4 5)) -5)
   (test "eval.set5" (eval '((lambda (x y z t u v) (set! v (- v)) v) 1 2 3 4 5 6)) -6)
   (test "eval.global" (eval '(begin (define *eval-glo* 0)
				     (set! *eval-glo* 1)
				     *eval-glo*))
	 1)
   (test "eval.global" (eval 'cos) cos)
   (test "eval.cond" (eval '((lambda (x) (if (< x 1) 5 6)) 1)) 6)
   (test "eval.cond" (eval '((lambda (x) (if (< x 1) 5 6)) 0)) 5)
   (test "eval.cond" (eval '((lambda (x) (begin (set! x 4) (set! x 5) x)) 1)) 5)
   (test "eval.define" (eval '(begin (define (ffoo x) x) (ffoo 3))) 3)
   (test "eval.define" (eval '(begin (define vvar (ffoo 4)) vvar)) 4)
   (test "eval.bind-exit" (eval '(+ 1 (bind-exit (exit) (exit 3) 14))) 4)
   (test "eval.unwind-protext" (eval '(let ((x 0))
					 (unwind-protect
					    (set! x 10)
					    (set! x 1))
					 x))
	 1)
   (test "funcall.a" (eval '((lambda x x) 1)) '(1))
   (test "funcall.b" (eval '((lambda x x) 1 2)) '(1 2))
   (test "funcall.c" (eval '((lambda (x . y) (cons x y)) 1)) '(1))
   (test "funcall.d" (eval '((lambda (x . y) (cons x y)) 1 2)) '(1 2))
   (test "funcall.e" (eval '((lambda (x y . z) (cons* x y z)) 1 2)) '(1 2))
   (test "funcall.f" (eval '((lambda (x y . z) (cons* x y z)) 1 2 3)) '(1 2 3))
   (test "funcall.g" (eval '((lambda (x y z . t) (cons* x y z t)) 1 2 3))
	 '(1 2 3))
   (test "funcall.h" (eval '((lambda (x y z . t) (cons* x y z t)) 21 22 23 24))
	 '(21 22 23 24))
   (test "funcall.i" (eval '((lambda (x y z t . u)
				(cons* x y z t u)) 11 12 13 14))
	 '(11 12 13 14))
   (test "funcall.j" (eval '((lambda (x y z t . u) (cons* x y z t u)) 'a 'b 'c 'd 'e))
	 '(a b c d e))
   (test "funcall.k" (eval '((lambda (x y z t u . v) (cons* x y z t u v)) 1 2 3 4 5))
	 '(1 2 3 4 5))
   (test "funcall.l" (eval '((lambda (x y z t u . v) (cons* x y z t u v)) 1 2 3 4 5 6))
	 '(1 2 3 4 5 6))
   (test "let.1" (eval '(let () (+ 1 2))) 3)
   (test "let.2" (eval '(let ((x 3)) x)) 3)
   (test "let.3" (eval '(let ((x 3) (y 6)) (+ y x))) 9)
   (test "let.4" (eval '(let ((x 3) y) y)) #unspecified)
   (test "let.5" (eval '(let ((x 5)) (let ((x 3) (y x)) y))) 5)
   (test "let.6" (eval '(let ((a 0)) (let ((x a)) (let ((x x) (y x)) y)))) 0)
   (test "let.7" (eval '(let ((a 0)) (let ((x a)) (let ((x a) (y x)) y)))) 0)
   (test "let.8" (eval '(let ((a 0)) (let ((x 4)) (let ((x a) (y x)) y)))) 4)
   (test "let.9" (eval '(let ((a 0)) (let ((x a)) (let ((x a) (y x)) y)))) 0)
   (test "let.10" (eval '(let ((a 0)) (let ((x a)) (let ((x a) (y a)) y)))) 0)
   (test "let.11" (eval '(let loop ((x 3) (y 6)) (+ y x))) 9)
   (test "let.11" (eval '(let ((x (lambda (y) (+ 1 y)))) (x 10))) 11)
   (test "let.12" (eval '(let ((x 0)) (define (inner-foo) x) (inner-foo))) 0)
   (test "let*.1" (eval '(let* ((x 3)) x)) 3)
   (test "let*.2" (eval '(let* ((x 3) (y 6)) (+ y x))) 9)
   (test "let*.3" (eval '(let* ((x 3) y) y)) #unspecified)
   (test "let*.4" (eval '(let* ((x 5)) (let* ((x 3) (y x)) y))) 3)
   (test "let*.5" (eval '(let ((a 0)) (let ((x a)) (let* ((x x) (y x)) y)))) 0)
   (test "let*.6" (eval '(let ((a 0)) (let ((x 3)) (let* ((x a) (y x)) y)))) 0)
   (test "let*.7" (eval '(let ((a 0)) (let ((x 4)) (let* ((x a) (y x)) y)))) 0)
   (test "let*.8" (eval '(let ((a 0)) (let ((x a)) (let* ((x a) (y x)) y)))) 0)
   (test "let*.9" (eval '(let ((a 0)) (let ((x a)) (let* ((x a) (y a)) y)))) 0)
   (test "let*.10" (eval '(let* ((x (lambda (y) (+ 1 y)))) (x 10))) 11)
   (test "let*.11" (eval '(let* ((bar 3)
				 (foo (let loop ((x 1) (y 2))
					 (+ (- y x) bar)))
				 (hux (- foo bar)))
			     hux))
	 1)
   (test "letrec.1" (eval '(letrec ((x 3)) x)) 3)
   (test "letrec.2" (eval '(letrec ((x 3) (y 6)) y)) 6)
   (test "letrec.3" (eval '(letrec ((x 3) (y 6)) (+ y x))) 9)
   (test "letrec.4" (eval '(letrec ((x 3) y) y)) #unspecified)
   (test "letrec.5" (eval '(letrec ((x 5)) (letrec ((x 3) (y x)) y))) #unspecified)
   (test "letrec.6" (eval '(letrec ((x (lambda (y) (+ 1 y)))) (x 10))) 11)
   (test "letrec.7" (eval '(letrec ((f1 (lambda (x)
					   (if (> x 1) (f2 (- x 1)) x)))
				    (f2 (lambda (x)
					   (if (> x 1) (f1 (- x 1)) x))))
			      (- (f1 10) (f2 10))))
	 0)
   (test "letrec.8" (eval '(letrec ((f (lambda (x) (+ 1 x)))
				    (g (lambda (x) (+ 2 x))))
			      (f 3)))
	 4)
   (test "letrec.9" (eval '(letrec ((f (lambda (x) (+ 1 x)))
				    (g (lambda (x) (+ 2 x))))
			      (g 3)))
	 5)
   (test "tail.0" (eval '(let ((x 100000))
			    (letrec ((loop (lambda ()
					      (if (= x 0)
						  (list x)
						  (begin
						     (set! x (- x 1))
						     (loop))))))
			       (loop))))
	 '(0))
   (test "tail.1" (eval '(letrec ((loop (lambda (x)
					   (if (= x 0)
					       (list x)
					       (loop (- x 1))))))
			    (loop 10000)))
	 '(0))
   (test "tail.2" (eval '(letrec ((loop (lambda (x y)
					   (if (= x 0)
					       (list y)
					       (loop (- x 1) (+ y 1))))))
			    (loop 10000 0)))
	 '(10000))
   (test "tail.3" (eval '(letrec ((loop (lambda (x y z)
					   (if (= x 0)
					       (list y z)
					       (loop (- x 1) (+ y 1) (+ z 1))))))
			    (loop 10000 0 0)))
	 '(10000 10000))
   (test "tail.4" (eval '(letrec ((loop (lambda (x y z t)
					   (if (= x 0)
					       (list y z t)
					       (loop (- x 1) (+ y 1) (+ z 1) (+ t 1))))))
			    (loop 10000 0 0 0)))
	 '(10000 10000 10000))
   (test "tail.5" (eval '(letrec ((loop (lambda (x y z t u)
					   (if (= x 0)
					       (list y z t u)
					       (loop (- x 1) (+ y 1) (+ z 1) (+ t 1) (+ u 1))))))
			    (loop 10000 0 0 0 0)))
	 '(10000 10000 10000 10000))
   (test "tail.-1" (eval '(letrec ((loop (lambda x
					    (if (= (car x) 0)
						x
						(loop (- (car x) 1))))))
			     (loop 10000)))
	 '(0))
   (test "tail.-2" (eval '(letrec ((loop (lambda (x . y)
					    (if (= x 0)
						y
						(loop (- x 1) (+ (car y) 1))))))
			     (loop 10000 0)))
	 '(10000))
   (test "tail.-3" (eval '(letrec ((loop (lambda (x y . z)
					    (if (= x 0)
						(cons y z)
						(loop (- x 1) (+ y 1) (+ (car z) 1))))))
			     (loop 10000 0 0)))
	 '(10000 10000))
   (test "tail.-4" (eval '(letrec ((loop (lambda (x y z . t)
					    (if (= x 0)
						(cons* y z t)
						(loop (- x 1) (+ y 1) (+ z 1) (+ (car t) 1))))))
			     (loop 10000 0 0 0)))
	 '(10000 10000 10000))
   (test "tail.1b" (eval '(letrec ((loop (lambda (x)
					    (list x))))
			     (loop 1)))
	 '(1))
   (test "tail.2b" (eval '(letrec ((loop (lambda (x y)
					    (list x y))))
			     (loop 1 2)))
	 '(1 2))
   (test "tail.3b" (eval '(letrec ((loop (lambda (x y z)
					    (list x y z))))
			     (loop 1 2 3)))
	 '(1 2 3))
   (test "tail.4b" (eval '(letrec ((loop (lambda (x y z t)
					    (list x y z t))))
			     (loop 1 2 3 4))) '(1 2 3 4))
   (test "tail.5b" (eval '(letrec ((loop (lambda (x y z t u)
					    (list x y z t u))))
			     (loop 1 2 3 4 5)))
	 '(1 2 3 4 5))
   (test "tail.-1b" (eval '(letrec ((loop (lambda x x)))
			      (loop 1)))
	 '(1))
   (test "tail.-1c" (eval '(letrec ((loop (lambda x x)))
			      (loop 1 2)))
	 '(1 2))
   (test "tail.-2b" (eval '(letrec ((loop (lambda (x . y)
					     (cons x y))))
			      (loop 1)))
	 '(1))
   (test "tail.-2c" (eval '(letrec ((loop (lambda (x . y)
					     (cons x y))))
			      (loop 1 2)))
	 '(1 2))
   (test "tail.-2d" (eval '(letrec ((loop (lambda (x . y)
					     (cons x y))))
			      (loop 1 2 3)))
	 '(1 2 3))
   (test "tail.-3b" (eval '(letrec ((loop (lambda (x y . z)
					     (cons* x y z))))
			      (loop 1 2)))
	 '(1 2))
   (test "tail.-3c" (eval '(letrec ((loop (lambda (x y . z)
					     (cons* x y z))))
			      (loop 1 2 3)))
	 '(1 2 3))
   (test "tail.-3d" (eval '(letrec ((loop (lambda (x y . z)
					     (cons* x y z))))
			      (loop 1 2 3 4)))
	 '(1 2 3 4))
   (test "tail.-4b" (eval '(letrec ((loop (lambda (x y z . t)
					     (cons* x y z t))))
			      (loop 1 2 3)))
	 '(1 2 3))
   (test "tail.-4c" (eval '(letrec ((loop (lambda (x y z . t)
					     (cons* x y z t))))
			      (loop 1 2 3 4)))
	 '(1 2 3 4))
   (test "tail.-4d" (eval '(letrec ((loop (lambda (x y z . t)
					     (cons* x y z t))))
			      (loop 1 2 3 4 5)))
	 '(1 2 3 4 5))
   (test "tail.-5b" (eval '(letrec ((loop (lambda (x y z t . u)
					     (cons* x y z t u))))
			      (loop 1 2 3 4)))
	 '(1 2 3 4))
   (test "tail.-5c" (eval '(letrec ((loop (lambda (x y z t . u)
					     (cons* x y z t u))))
			      (loop 1 2 3 4 5)))
	 '(1 2 3 4 5))
   (test "tail.-5d" (eval '(letrec ((loop (lambda (x y z t . u)
					     (cons* x y z t u))))
			      (loop 1 2 3 4 5 6)))
	 '(1 2 3 4 5 6))
   (test "tail.error" (bind-exit (esc)
			 (with-exception-handler
			    (lambda (e)
			       (esc #t))
			    (lambda ()
			       (eval '((begin (define (fooo x))) (fooo 3))))))
	 #t)
   (test "do" (eval '(do ((i 1 2) (j 0 i)) ((positive? j) j))) 1)
   (test "typed-indent.1" (eval '((lambda (x::int) x) 3)) 3)
   (test "typed-indent.2" (eval '(let ((x::int 3)) x)) 3)
   (test "typed-indent.3" (eval '(let* ((x::int 3) (y x)) y)) 3)
   (test "typed-indent.4" (eval '(letrec ((x::int 3)) x)) 3)
   (test "eval class.1" (eval '(evpt? (instantiate::evpt (x 20)))) #t)
   (test "eval class.2" (eval '(evpt? (make-evpt 10 20))) #t)
   (test "eval class.3" (eval '(evpt? (instantiate::evpt (x 10)))) #t)
   (test "eval class.4" (eval '(evpt? (instantiate::evpt (x 10) (y 10)))) #t)
   (test "eval class.5" (eval '(evpt? #f)) #f)
   (test "eval class.6" (eval '(let ((p (make-evpt 1 3)))
				  (evpt-x-set! p 10)
				  (evpt-x p)))
	 10)
   (test "eval class.7" (eval '(let ((p (instantiate::evpt (x 10) (y 40))))
				  (with-access::evpt p (x y)
				     (set! x (+ x y))
				     x)))
	 50)
   (test "eval class.8" (eval '(let ((p (instantiate::evpt (x 10) (y 40))))
				  (with-access::evpt p (x y)
				     (cond
					((and (eq? x 10))
					 10)
					(else
					 20)))))
	 10)
   (test "eval class.9" (eval '(let ((p (instantiate::evpt (x 10) (y 40))))
				  (with-access::evpt p (x y)
				     (cond
					((and (eq? y 40))
					 10)
					(else
					 20)))))
	 10)
   (test "eval class.10"  (eval '(let ((i (instantiate::evpt (x 10) (y 40))))
				    (with-access::evpt i (y)
				       (let ((x 100))
					  x))))
	 100)
   (test "eval class.11"  (eval '(let ((i (instantiate::evpt (x 10) (y 40))))
				    (with-access::evpt i (x)
				       (let ((x 100))
					  x))))
	 100)
   (test "eval class.12"  (eval '(let ((i (instantiate::evpt (x 10) (y 40))))
				    (with-access::evpt i (x)
				       (let ((x 100))
					  x)
				       x)))
	 10)
   (test "eval class.13"  (eval '(let ((i (instantiate::evpt (x 10) (y 40))))
				    (with-access::evpt i (x)
				       (list x (let ((x 100)) x) x))))
	 '(10 100 10))
   (test "eval class.14"  (eval '(let ((i (instantiate::evpt (x 10) (y 40))))
				    (let ((x 20))
				       (with-access::evpt i (y)
					  x))))
	 '20)
   (test "eval class.15"  (eval '(let ((i (instantiate::evpt (x 10) (y 40))))
				    (let ((x 20))
				       (with-access::evpt i (x)
					  x))))
	 '10)
   (test "eval class.16"  (eval '(let ((i (instantiate::evpt (x 10) (y 40))))
				    (with-access::evpt i (x y)
				       (let ((x 20))
					  (set! x y)
					  x))))
	 '40)
   (test "eval class.17"  (eval '(let ((i (instantiate::evpt (x 10) (y 40))))
				    (with-access::evpt i (x y)
				       (set! x y)
				       x)))
	 '40)
   (test "eval define.1" (eval '(begin
				   (define (inner.1 x)
				      (define (%inner.1 x) x)
				      (%inner.1 x))
				   (inner.1 34)))
	 34)
   (test "eval define.2" (eval '(begin
				   (define (inner.2 x)
				      (define (%inner.2) x)
				      (%inner.2))
				   (inner.2 35)))
	 35)
   (test "eval define.3" (eval '(begin
				   (define (inner.3 x)
				      (define (%inner.3) x)
				      (%inner.3))
				   (+ (inner.3 35) (inner.3 15))))
	 50)
   (test "eval define.4" (eval `(begin
				   (define (bar)
				      (let ((y 10))
					 (if (begin
						(define (glop) y)
						(glop))
					     1)))
				   (bar)))
	 1))
				       
   


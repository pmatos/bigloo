;*=====================================================================*/
;*    serrano/prgm/project/bigloo/api/libuv/src/Llib/uvtypes.scm       */
;*    -------------------------------------------------------------    */
;*    Author      :  Manuel Serrano                                    */
;*    Creation    :  Tue May  6 11:55:29 2014                          */
;*    Last change :  Sat Oct 11 16:26:25 2014 (serrano)                */
;*    Copyright   :  2014 Manuel Serrano                               */
;*    -------------------------------------------------------------    */
;*    LIBUV types                                                      */
;*=====================================================================*/

;*---------------------------------------------------------------------*/
;*    The module                                                       */
;*---------------------------------------------------------------------*/
(module __libuv_types

   (include "uv.sch")
   
   (export (abstract-class %Uv
	      (%uv-init))

	   (class UvHandle::%Uv
	      ($builtin::$uv_handle_t (default $uv_handle_nil))
	      (onclose (default #f)))

	   (class UvLoop::UvHandle
	      (%mutex::mutex read-only (default (make-mutex)))
	      (%gcmarks::pair-nil (default '())))

	   (abstract-class UvWatcher::UvHandle
	      (loop::UvLoop read-only)
	      (cb::procedure (default list)))

	   (class UvStream::UvHandle
	      (loop::UvLoop read-only)
	      (%alloc::obj (default #f))
	      (%offset::obj (default 0))
	      (%proca (default #f))
	      (%procc (default #f)))

	   (class UvTcp::UvStream)
	   
	   (class UvTimer::UvWatcher)

	   (class UvIdle::UvWatcher)

	   (class UvAsync::UvWatcher)

	   (class UvFile
	      (fd::int read-only)
	      (path::bstring read-only))

	   (class UvFsEvent::UvWatcher)
	   
	   (generic %uv-init ::UvHandle)

	   (uv-new-file::UvFile ::int ::bstring)
	   (uv-strerror::string ::int)
	   (uv-err-name::string ::int))

   (extern (export uv-new-file "bgl_uv_new_file")))

;*---------------------------------------------------------------------*/
;*    %uv-init ...                                                     */
;*---------------------------------------------------------------------*/
(define-generic (%uv-init o)
   o)

;*---------------------------------------------------------------------*/
;*    object-print ...                                                 */
;*---------------------------------------------------------------------*/
(define-method (object-print obj::UvHandle port print-slot::procedure)
   
   (define (class-field-write/display field)
      (let* ((name (class-field-name field))
	     (get-value (class-field-accessor field))
	     (s (symbol->string! name)))
	 (unless (memq (string-ref s 0) '(#\$ #\%))
	    (display " [" port)
	    (display name port)
	    (display #\: port)
	    (display #\space port)
	    (print-slot (get-value obj) port)
	    (display #\] port))))

   (let* ((class (object-class obj))
	  (class-name (class-name class))
	  (fields (class-all-fields class))
	  (len (vector-length fields)))
      (display "#|" port)
      (display class-name port)
      (display " (0x" port)
      (with-access::UvHandle obj ($builtin)
	 (display (integer->string ($uv-handle->integer $builtin)) port)
	 (display ")" port))
      (if (nil? obj)
	  (display " nil|" port)
	  (let loop ((i 0))
	     (if (=fx i len)
		 (display #\| port)
		 (begin
		    (class-field-write/display (vector-ref-ur fields i))
		    (loop (+fx i 1))))))))

;*---------------------------------------------------------------------*/
;*    uv-new-file ...                                                  */
;*---------------------------------------------------------------------*/
(define (uv-new-file::UvFile fd::int path::bstring)
   (instantiate::UvFile
      (fd fd)
      (path path)))

;*---------------------------------------------------------------------*/
;*    uv-strerror ...                                                  */
;*---------------------------------------------------------------------*/
(define (uv-strerror errno)
   ($uv-strerror errno))

;*---------------------------------------------------------------------*/
;*    uv-err-name ...                                                  */
;*---------------------------------------------------------------------*/
(define (uv-err-name errno)
   ($uv-err-name errno))

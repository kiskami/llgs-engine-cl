;;;; input.lisp

(in-package #:llgs-engine-cl)

; void  i_init();
(cffi:defcfun "i_init" :void)

(defun input-init ()
  (i-init))

; void  i_shutdown();
(cffi:defcfun "i_shutdown" :void)

(defun input-shutdown ()
  (i-shutdown))

; void  i_captureinput();
(cffi:defcfun "i_captureinput" :void)

(defun input-capture ()
  (i-captureinput))

; int  i_keypressed(int key);
(cffi:defcfun "i_keypressed" :int
  (key :int))

(defun input-keypressed (key)
;  (format t "input-keypressed ~A => ~A~%" key (i-keypressed key))
  (not (zerop (i-keypressed key))))

; void  i_guiinput(bool enable);
(cffi:defcfun "i_guiinput" :void
  (enable :boolean))

(defun input-guiinput (enable)
  (i-guiinput enable))

; int  i_leftmouse();
(cffi:defcfun "i_leftmouse" :int)

(defun input-leftmousebutton ()
  (not (zerop (i-leftmouse))))

; int  i_middlemouse();
(cffi:defcfun "i_middlemouse" :int)

(defun input-middlemousebutton ()
  (not (zerop (i-middlemouse))))

; bool  i_rightmouse();
(cffi:defcfun "i_rightmouse" :int)

(defun input-rightmousebutton ()
  (not (zerop (i-rightmouse))))

; int   i_mousex();
(cffi:defcfun "i_mousex" :int)

(defun input-mousex ()
  (i-mousex))

; int   i_mousey();
(cffi:defcfun "i_mousey" :int)

(defun input-mousey ()
  (i-mousey))

; int   i_mouserelx();
(cffi:defcfun "i_mouserelx" :int)

(defun input-mouserelx ()
  (i-mouserelx))

; int   i_mouserely();
(cffi:defcfun "i_mouserely" :int)

(defun input-mouserely ()
  (i-mouserely))

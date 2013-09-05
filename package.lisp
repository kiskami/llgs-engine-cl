;;;; llgs-engine-cl - llgs-engine Common Lisp interface lib
;;;; Copyright (c) 2013 Kalman Kiss, Zalaegerszeg Hungary
;;;; All rights reserved.
;;;; kiskami@freemail.hu
;;;;
;;;; package.lisp

(in-package :cl-user)

(defpackage #:llgs-engine-cl
  (:use #:cl #:cffi)
  (:export :load-llgsengine 
	   :render-init :render-shutdown
	   :render-createrenderwindow :render-createscenemanager
	   :render-createcamera :render-setcamerapos :render-cameralookat
	   :render-setcameranearclipdist :render-setcameraasviewport
	   :render-setviewportbackground :render-setambientlight
	   :render-oneframe
	   :render-setskybox
	   :render-screenshottofile
	   :timer-create :timer-reset :timer-getmicroseconds
	   :input-init :input-shutdown :input-capture 
	   :input-keypressed :input-guiinput 
	   :input-leftmousebutton :input-middlemousebutton :input-rightmousebutton
	   :input-mousex :input-mousey :input-mouserelx :input-mouserely))

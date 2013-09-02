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
	   :render-init 
	   :render-createrenderwindow :render-createscenemanager))

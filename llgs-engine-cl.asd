;;;; llgs-engine-cl.asd
(defpackage :llgs-engine-cl-asdf
  (:use :cl :asdf))

(in-package :llgs-engine-cl-asdf)

(asdf:defsystem #:llgs-engine-cl
  :serial t
  :description "llgs-engine-cl is the Common Lisp interface to llgs-engine."
  :author "Kalman Kiss <kiskami@freemail.hu>"
  :version "0.0.1"
  :license "GPL2"
  :depends-on (#:cffi)
  :components ((:file "package")
               (:file "llgs-engine-cl")))


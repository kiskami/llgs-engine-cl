;;;; llgs-engine-cl.asd

(asdf:defsystem #:llgs-engine-cl
;  :serial t
  :description "llgs-engine-cl is the Common Lisp interface to llgs-engine."
  :author "Kalman Kiss <kiskami@freemail.hu>"
  :version "0.0.1"
  :license "GPL2"
  :depends-on (#:cffi)
  :components ((:file "package")
	       (:file "input" :depends-on ("package"))
	       (:file "colldet" :depends-on ("package"))
	       (:file "mesh" :depends-on ("package"))
	       (:file "partsys" :depends-on ("package"))
	       (:file "scenenode" :depends-on ("package"))
	       (:file "light" :depends-on ("package"))
	       (:file "billboard" :depends-on ("package"))
               (:file "llgs-engine-cl" :depends-on ("package" "input" "colldet" "mesh" 
							      "partsys" "scenenode" "light"
							      "billboard"))))


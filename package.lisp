;;;; llgs-engine-cl - llgs-engine Common Lisp interface lib
;;;; Copyright (c) 2013 Kalman Kiss, Zalaegerszeg Hungary
;;;; All rights reserved.
;;;; kiskami@freemail.hu
;;;;
;;;; package.lisp

(in-package :cl-user)

(defpackage #:llgs-engine-cl
  (:use #:cl #:cffi)
  (:export :load-llgsengine :close-llgsengine
	   :render-init :render-shutdown
	   :render-createrenderwindow :render-createscenemanager
	   :render-createcamera :render-setcamerapos 
	   :render-movecamerarel :render-movecameraforward
	   :render-cameralookat
	   :render-rotatecamerax :render-rotatecameray :render-rotatecameraz
	   :render-setcameranearclipdist :render-setcamerafarclipdist :render-setcameraasviewport
	   :render-setviewportbackground :render-setambientlight
	   :render-oneframe
	   :render-setskybox
	   :render-screenshottofile
	   :timer-create :timer-reset :timer-getmicroseconds
	   :input-init :input-shutdown :input-capture 
	   :input-keypressed :input-guiinput 
	   :input-leftmousebutton :input-middlemousebutton :input-rightmousebutton
	   :input-mousex :input-mousey :input-mouserelx :input-mouserely
	   :mesh-load :mesh-destroy :mesh-clone :mesh-setmaterial
	   :partsys-create :partsys-destroy :partsys-setemitting :partsys-setvis
	   :render-createscenenode :render-rootscenenode :render-destoryscenenode
	   :render-setscenenodepos :render-translatescenenode :render-setscenenodescale
	   :render-rotatescenenodex :render-rotatescenenodey :render-rotatescenenodez
	   :render-attachmoveable :render-detachmoveable :render-setscenenodevis
	   :render-createchildscenenode :render-getparentscenenode 
	   :render-addchild :render-removechild
	   :render-setscenenodeuserobj :render-getscenenodeuserobj :render-delscenenodeuserobj
	   :render-getscenenodepos
	   :render-createlight :render-destorylight :render-setlighttype
	   :render-lightdiffcolor :render-lightspeccolor
	   :render-setlightpos :render-setlightdir
	   :colldet-init :colldet-shutdown
	   :colldet-setdebugdrawmode :colldet-addsphere :colldet-addbox
	   :colldet-addmeshgeom
	   :colldet-syncolobjtoscenenode :colldet-setscale :colldet-setcolobjpos
	   :colldet-perform :colldet-getcollpair
	   :render-createsimpletext :render-simpletextcolor
	   :render-simpletextshow :render-simpletexthide :render-simpletextsettext
	   :render-actfps :render-minfps :render-maxfps :render-trianglecount :render-batchcount
	   :billboardset-create :billboardset-clear :billboardset-destroy
	   :billboard-create :billboard-remove
	   :billboardset-setmaterial :billboardset-setdefdims
	   :billboard-setpos))

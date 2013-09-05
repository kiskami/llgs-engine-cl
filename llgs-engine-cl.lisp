;;;; llgs-engine-cl.lisp

(in-package #:llgs-engine-cl)

(defun load-llgsengine (debug) 
  "LLGS Engine DLL load"
  (if (not debug)
      (cffi:define-foreign-library llgs-engine
	(:unix "llgs-engine.so")
	(t (:default "llgs-engine")))
      (cffi:define-foreign-library llgs-engine
	(:unix "llgs-engine-debug.so")
	(t (:default "llgs-engine-debug"))))
  (cffi:use-foreign-library llgs-engine))

;; void  r_init(char *pluginsfile, char *configfile, char *logfile, char *rendersystem, char *resourcesfile)
(cffi:defcfun "r_init" :void 
  (pluginsfile :string) (configfile :string) (logfile :string)
  (rendersystem :string) (resfile :string))

(defun render-init (pluginscfg conffile logfile rendersystem resfile)
  "Init Ogre 3D renderer with some basic parameters. Example call: (render-init \"plugins_d.cfg\" \"mygame.cfg\" \"mygame.log\" 'directx, \"resources.cfg\")"
  (let ((rsys (cond ((equal rendersystem 'directx) "Direct3D9 Rendering Subsystem")
		    (t "OpenGL Rendering Subsystem"))))
    (r-init pluginscfg conffile logfile rsys resfile)))

(cffi:defcfun "r_shutdown" :void)

(defun render-shutdown ()
  "Shutdown engine after done using it."
  (r-shutdown))

;; void  r_createrenderwindow(char *title, int w, int h, bool fullscreen);
(cffi:defcfun "r_createrenderwindow" :void
  (title :string) (w :int) (h :int) (fullscreen :boolean))

(defun render-createrenderwindow (title &key (w 640) (h 480) (fullscreen nil))
  "Create Ogre 3D renderwindow with width, height resolution and fullscreen flag."
  (r-createrenderwindow title w h fullscreen))

;; void  r_createscenemanager(char *type, char *name);
(cffi:defcfun "r_createscenemanager" :void
  (type :string) (name :string))

(defun render-createscenemanager (type name)
  "Create Ogre 3D scenemanager, type can be EXTERIOR_CLOSE EXTERIOR_FAR 
 EXTERIOR_REAL_FAR and INTERIOR."
  (r-createscenemanager type name))

;void *r_createcamera(char *name);
(cffi:defcfun "r_createcamera" :pointer
  (name :string))

(defun render-createcamera (name)
  (r-createcamera name))

;void  r_setcamerapos(void *camptr, float x, float y, float z);
(cffi:defcfun "r_setcamerapos" :void
  (camptr :pointer) (x :float) (y :float) (z :float))

(defun render-setcamerapos (camptr x y z)
  (r-setcamerapos camptr x y z))

; void  r_cameralookat(void *camptr, float x, float y, float z);
(cffi:defcfun "r_cameralookat" :void
  (camptr :pointer) (x :float) (y :float) (z :float))

(defun render-cameralookat (camptr x y z)
  (r-cameralookat camptr x y z))

; void  r_setcameraneraclipdist(void *camptr, float dist);
(cffi:defcfun "r_setcameraneraclipdist" :void
  (camptr :pointer) (dist :float))

(defun render-setcameranearclipdist (camptr dist)
  (r-setcameraneraclipdist camptr dist))

; void  r_setcameraasviewport(void *camptr);
(cffi:defcfun "r_setcameraasviewport" :void
  (camptr :pointer))

(defun render-setcameraasviewport (camptr)
  (r-setcameraasviewport camptr))

; void  r_setviewportbackground(float r, float g, float b);
(cffi:defcfun "r_setviewportbackground" :void
  (r :float) (g :float) (b :float))

(defun render-setviewportbackground (r g b)
  (r-setviewportbackground r g b))

; void  r_setambientlight(float r, float g, float b);
(cffi:defcfun "r_setambientlight" :void
  (r :float) (g :float) (b :float))

(defun render-setambientlight (r g b)
  (r-setambientlight r g b))

; void  r_renderoneframe();
(cffi:defcfun "r_renderoneframe" :void)

(defun render-oneframe ()
  (r-renderoneframe))

; void  r_setskybox(char *materialname);
(cffi:defcfun "r_setskybox" :void
  (materialname :string))

(defun render-setskybox (matname)
  (r-setskybox matname))

; void  r_screenshottofile(char *namebase);
(cffi:defcfun "r_screenshottofile" :void
  (namebase :string))

(defun render-screenshottofile (namebase)
  (r-screenshottofile namebase))

; void *t_createtimer();
(cffi:defcfun "t_createtimer" :pointer)

(defun timer-create ()
  (t-createtimer))

; void  t_resettimer(void *timerptr);
(cffi:defcfun "t_resettimer" :void
  (timerptr :pointer))

(defun timer-reset (timerptr)
  (t-resettimer timerptr))

; unsigned long   t_gettimermicroseconds(void *timerptr);
(cffi:defcfun "t_gettimermicroseconds" :unsigned-long
  (timerptr :pointer))

(defun timer-getmicroseconds (timerptr)
  (t-gettimermicroseconds timerptr))

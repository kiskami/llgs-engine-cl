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

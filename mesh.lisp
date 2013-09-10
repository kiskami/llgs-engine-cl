;;;; mesh.lisp

(in-package #:llgs-engine-cl)

;LLGSENGINE_API void *r_loadmesh(char *name, char *meshname);
(cffi:defcfun "r_loadmesh" :pointer
  (name :string) (meshname :string))

(defun mesh-load (name meshname)
  (r-loadmesh name meshname))

;LLGSENGINE_API void  r_destroymesh(void *entityptr);
(cffi:defcfun "r_destroymesh" :void
  (entityptr :pointer))

(defun mesh-destroy (entityptr)
  (r-destroymesh entityptr))

;LLGSENGINE_API void *r_clonemesh(void *entityptr, char *newname);
(cffi:defcfun "r_clonemesh" :pointer
  (entityptr :pointer) (newname :string))

(defun mesh-clone (entityptr newname)
  (r-clonemesh entityptr newname))

;LLGSENGINE_API void  r_setmeshmaterial(void *entityptr, char *matname);
(cffi:defcfun "r_setmeshmaterial" :void
  (entityptr :pointer) (matname :string))

(defun mesh-setmaterial (entityptr matname)
  (r-setmeshmaterial entityptr matname))
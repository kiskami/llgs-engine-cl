;;;; colldet.lisp

(in-package #:llgs-engine-cl)

;LLGSENGINE_API void  c_init();
(cffi:defcfun ("c_init" colldet-init) :void)

;LLGSENGINE_API void  c_shutdown();
(cffi:defcfun ("c_shutdown" colldet-shutdown) :void)

;LLGSENGINE_API void  c_setdebugdrawmode(int mode);
(cffi:defcfun ("c_setdebugdrawmode" colldet-setdebugdrawmode) :void (mode :int))

;LLGSENGINE_API void *c_addsphere(float x, float y, float z, float radius, short mygrp, short grpmask);
(cffi:defcfun ("c_addsphere" colldet-addsphere) :pointer
  (x :float) (y :float)(z :float)(radius :float)(mygrp :short)(grpmask :short))

;LLGSENGINE_API void *c_addbox(float x, float y, float z, float halfext1, float ;halfext2, float halfext3, short mygrp, short grpmask);
(cffi:defcfun ("c_addbox" colldet-addbox) :pointer
  (x :float) (y :float)(z :float)(halfext1 :float)(halfext2 :float)(halfex3 :float)(mygrp :short)(grpmask :short))

;LLGSENGINE_API void *c_addcilinder(float x, float y, float z, float halfext1, float ;halfext2, float halfext3, short mygrp, short grpmask);
(cffi:defcfun ("c_addcilinder" colldet-addcylinder) :pointer
  (x :float) (y :float)(z :float)(halfext1 :float)(halfext2 :float)(halfex3 :float)(mygrp :short)(grpmask :short))

;LLGSENGINE_API void c_setlocalscaling(void *colobjptr, float xs, float ys, float zs);
(cffi:defcfun ("c_setlocalscaling" colldet-setscale) :void
(colobjptr :pointer) (sx :float) (sy :float)(sz :float))

;LLGSENGINE_API void  c_synccolobjtoscenenode(void *colobjptr, void *scenenodeptr);
(cffi:defcfun ("c_synccolobjtoscenenode" colldet-syncolobjtoscenenode) :void
  (colobjptr :pointer) (scenenodeptr :pointer))

;LLGSENGINE_API int c_collisiondetection();
(cffi:defcfun ("c_collisiondetection" colldet-perform) :int)

;void *c_getcollisionpairObjA(int index);
(cffi:defcfun "c_getcollisionpairObjA" :pointer (index :int))

;LLGSENGINE_API void *c_getcollisionpairObjB(int index);
(cffi:defcfun "c_getcollisionpairObjB" :pointer (index :int))

(defun colldet-getcollpair (index)
  (cons (c-getcollisionpairObjA index)
	(c-getcollisionpairObjB index)))

;LLGSENGINE_API void *c_addmeshgeom(float x, float y, float z, void *meshptr, short mygrp, short grpmask);
(cffi:defcfun ("c_addmeshgeom" colldet-addmeshgeom) :pointer
  (x :float) (y :float)(z :float) (meshptr :pointer) (mygrp :short) (grpmask :short))

;LLGSENGINE_API void c_setcolobjpos(void *colobjptr, float x, float y, float z);
(cffi:defcfun ("c_setcolobjpos" colldet-setcolobjpos) :void
  (colobjptr :pointer) (x :float) (y :float)(z :float))

;LLGSENGINE_API void c_delcolobj(void *colobjptr);
(cffi:defcfun ("c_delcolobj" colldet-delcolobj) :void
  (colobj :pointer))

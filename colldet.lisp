;;;; colldet.lisp

(in-package #:llgs-engine-cl)

;LLGSENGINE_API void  c_init();
(cffi:defcfun ("c_init" colldet-init) :void)

;LLGSENGINE_API void  c_shutdown();
(cffi:defcfun ("c_shutdown" colldet-shutdown) :void)

;LLGSENGINE_API void  c_enabledebugdrawer(bool enable);
(cffi:defcfun ("c_enabledebugdrawer" colldet-enabledebugdrawer) :void
  (enable :boolean))

;LLGSENGINE_API void *c_addsphere(float x, float y, float z, float radius, float mass, ;int mygrp, int grpmask);
(cffi:defcfun ("c_addsphere" colldet-addsphere) :pointer
  (x :float) (y :float)(z :float)(radius :float)(mass :float)(mygrp :int)(grpmask :int))

;LLGSENGINE_API void *c_addbox(float x, float y, float z, float halfext1, float ;halfext2, float halfext3, float mass, int mygrp, int grpmask);
(cffi:defcfun ("c_addbox" colldet-addbox) :pointer
  (x :float) (y :float)(z :float)(halfext1 :float)(halfext2 :float)(halfex3 :float)(mass :float)(mygrp :int)(grpmask :int))

;LLGSENGINE_API void *c_addcilinder(float x, float y, float z, float halfext1, float ;halfext2, float halfext3, float mass, int mygrp, int grpmask);
(cffi:defcfun ("c_addcilinder" colldet-addcylinder) :pointer
  (x :float) (y :float)(z :float)(halfext1 :float)(halfext2 :float)(halfex3 :float)(mass :float)(mygrp :int)(grpmask :int))

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

;;;; billlboard.lisp

(in-package #:llgs-engine-cl)

;LLGSENGINE_API void *r_createbillboardset();
(cffi:defcfun ("r_createbillboardset" billboardset-create) :pointer)

;LLGSENGINE_API void r_clearbillboardset(void *ptr);
(cffi:defcfun ("r_clearbillboardset" billboardset-clear) :void (ptr :pointer))

;LLGSENGINE_API void r_destroybillboardset(void *ptr);
(cffi:defcfun ("r_destroybillboardset" billboardset-destroy) :void (ptr :pointer))

;LLGSENGINE_API void *r_createbillboard(void *owner, float x, float y, float z, float r, float g, float b);
(cffi:defcfun ("r_createbillboard" billboard-create) :pointer
  (owner :pointer) (x :float) (y :float) (z :float) (r :float) (g :float) (b :float))

;LLGSENGINE_API void r_removebillboard(void *setptr, void *billptr);
(cffi:defcfun ("r_removebillboard" billboard-remove) :void
  (setptr :pointer) (billptr :pointer))

;LLGSENGINE_API void r_setbillboardmaterial(void *setptr, char *matname);
(cffi:defcfun ("r_setbillboardmaterial" billboardset-setmaterial) :void
  (setptr :pointer) (matname :string))

;LLGSENGINE_API void r_setbillboarddefdims(void *setptr, float w, float h);
(cffi:defcfun ("r_setbillboarddefdims" billboardset-setdefdims) :void
  (setptr :pointer) (w :float) (h :float))

;LLGSENGINE_API void r_setbillboardpos(void *setptr, void *billprt, float x, float y, float z);
(cffi:defcfun ("r_setbillboardpos" billboard-setpos) :void
  (setptr :pointer) (billptr :pointer) (x :float) (y :float) (z :float))
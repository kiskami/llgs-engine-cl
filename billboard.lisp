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

;LLGSENGINE_API void r_movebillboard(void *setptr, void *billprt, float x, float y, float z, float w, float dist);
(cffi:defcfun ("r_movebillboard" billboard-move) :void
  (setptr :pointer) (billptr :pointer) (x :float) (y :float) (z :float) (w :float)
  (dist :float))

;LLGSENGINE_API float r_getbillboardx(void *setptr, void *billprt);
(cffi:defcfun "r_getbillboardx" :float (setptr :pointer) (billptr :pointer))

;LLGSENGINE_API float r_getbillboardy(void *setptr, void *billprt);
(cffi:defcfun "r_getbillboardy" :float (setptr :pointer) (billptr :pointer))

;LLGSENGINE_API float r_getbillboardz(void *setptr, void *billprt);
(cffi:defcfun "r_getbillboardz" :float (setptr :pointer) (billptr :pointer))

(defun billboard-getpos (setptr billptr)
  (list (r-getbillboardx setptr billptr) (r-getbillboardy setptr billptr) (r-getbillboardz setptr billptr)))

;LLGSENGINE_API void r_setbillboardsetstacksandslices(void *setptr, unsigned char stacks, unsigned char slices);
(cffi:defcfun ("r_setbillboardsetstacksandslices" billboardset-stacksandslices) :void
  (setptr :pointer) (stacks :unsigned-char) (slices :unsigned-char))

;LLGSENGINE_API void r_setbillboardtextcoodrdindex(void *setptr, void *billprt, unsigned short index);
(cffi:defcfun ("r_setbillboardtextcoodrdindex" billboard-settexcoordind) :void (setptr :pointer) (billptr :pointer) (index :unsigned-short))

;LLGSENGINE_API void r_updatebillboardbounds(void *setptr);
(cffi:defcfun ("r_updatebillboardbounds" billboard-updatebounds) :void (setptr :pointer))

;LLGSENGINE_API void r_setbillboarddims(void *setptr, void *billprt, float w, float h);
(cffi:defcfun ("r_setbillboarddims" billboard-setdims) :void (setptr :pointer) (billptr :pointer) (w :float) (h :float))

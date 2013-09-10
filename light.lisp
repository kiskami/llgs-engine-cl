;;;; light.lisp

(in-package #:llgs-engine-cl)

;LLGSENGINE_API void *r_createlight(char *name);
(cffi:defcfun ("r_createlight" render-createlight) :pointer (name :string))

;LLGSENGINE_API void  r_destroylight(void *lightptr);
(cffi:defcfun ("r_destroylight" render-destroylight) :void (lightptr :pointer))

;LLGSENGINE_API void  r_setlighttype(void *lightptr, char *type);
(cffi:defcfun ("r_setlighttype" render-setlighttype) :void
  (lightptr :pointer) (type :string))

;LLGSENGINE_API void  r_setlightdiffusecolor(void *lightptr, float r, float g, float b);
(cffi:defcfun ("r_setlightdiffusecolor" render-lightdiffcolor) :void
  (lightptr :pointer) (r :float) (g :float) (b :float))

;LLGSENGINE_API void  r_setlightspecularcolor(void *lightptr, float r, float g, float b);
(cffi:defcfun ("r_setlightspecularcolor" render-lightspeccolor) :void
  (lightptr :pointer) (r :float) (g :float) (b :float))

;LLGSENGINE_API void  r_setlightpos(void *lightptr, float x, float y, float z);
(cffi:defcfun ("r_setlightpos" render-setlightpos) :void
  (lightptr :pointer) (x :float) (y :float) (z :float))

;LLGSENGINE_API void  r_setlightdirection(void *lightptr, float x, float y, float z);
(cffi:defcfun ("r_setlightdirection" render-setlightdir) :void
  (lightptr :pointer) (x :float) (y :float) (z :float))


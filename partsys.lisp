;;;; partsys.lisp

(in-package #:llgs-engine-cl)

;LLGSENGINE_API void *r_createpartsys(char *name, char *templ);
(cffi:defcfun ("r_createpartsys" partsys-create) :pointer
  (name :string) (templ :string))

;LLGSENGINE_API void  r_destroypartsys(void *partsysptr);
(cffi:defcfun ("r_destroypartsys" partsys-destroy) :void
  (partsysptr :pointer))

;LLGSENGINE_API void  r_setpartsysemitting(void *partsysptr, bool emit);
(cffi:defcfun ("r_setpartsysemitting" partsys-setemitting) :void
  (partsysptr :pointer) (emit :boolean))

;LLGSENGINE_API void  r_setpartsysvis(void *partsysptr, bool visible);
(cffi:defcfun ("r_setpartsysvis" partsys-setvis) :void
  (partsysptr :pointer) (visible :boolean))

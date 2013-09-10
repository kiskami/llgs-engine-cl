;;;; scenenode.lisp

(in-package #:llgs-engine-cl)

;LLGSENGINE_API void *r_createscenenode(char *name);
(cffi:defcfun ("r_createscenenode" render-createscenenode) :pointer
  (name :string))

;LLGSENGINE_API void *r_getrootscenenode();
(cffi:defcfun ("r_getrootscenenode" render-rootscenenode) :pointer)

;LLGSENGINE_API void  r_destroyscenenode(void *nodeptr);
(cffi:defcfun ("r_destroyscenenode" render-destroyscenenode) :void
  (nodeptr :pointer))

;LLGSENGINE_API void  r_setscenenodepos(void *nodeptr, float x, float y, float z);
(cffi:defcfun ("r_setscenenodepos" render-setscenenodepos) :void
  (nodeptr :pointer) (x :float) (y :float) (z :float))

;LLGSENGINE_API void  r_translatescenenode(void *nodeptr, float dx, float dy, float ;dz);
(cffi:defcfun ("r_translatescenenode" render-translatescenenode) :void
  (nodeptr :pointer) (x :float) (y :float) (z :float))

;LLGSENGINE_API void  r_setscenenodescale(void *nodeptr, float xs, float ys, float zs);
(cffi:defcfun ("r_setscenenodescale" render-setscenenodescale) :void
  (nodeptr :pointer) (x :float) (y :float) (z :float))

;LLGSENGINE_API void  r_rotatescenenodex(void *nodeptr, float radian);
(cffi:defcfun ("r_rotatescenenodex" render-rotatescenenodex) :void
  (nodeptr :pointer) (radian :float))

;LLGSENGINE_API void  r_rotatescenenodey(void *nodeptr, float radian);
(cffi:defcfun ("r_rotatescenenodey" render-rotatescenenodey) :void
  (nodeptr :pointer) (radian :float))

;LLGSENGINE_API void  r_rotatescenenodez(void *nodeptr, float radian);
(cffi:defcfun ("r_rotatescenenodez" render-rotatescenenodez) :void
  (nodeptr :pointer) (radian :float))

;// add mesh, camera, particle, ...
;LLGSENGINE_API void  r_attachmoveable(void *nodeptr, void *moveableptr);
(cffi:defcfun ("r_attachmoveable" render-attachmoveable) :void
  (nodeptr :pointer) (moveableptr :pointer))

;LLGSENGINE_API void  r_detachmoveable(void *nodeptr, void *moveableptr);
(cffi:defcfun ("r_detachmoveable" render-detachmoveable) :void
  (nodeptr :pointer) (moveableptr :pointer))

;LLGSENGINE_API void *r_createchildscenenode(void *nodeptr, char *name);
(cffi:defcfun ("r_createchildscenenode" render-createchildscenenode) :pointer
  (nodeptr :pointer) (name :string))

;LLGSENGINE_API void *r_getparentscenenode(void *nodeptr);
(cffi:defcfun ("r_getparentscenenode" render-getparentscenenode) :pointer
  (nodeptr :pointer))

;LLGSENGINE_API void r_addchild(void *nodeptr, void *childptr);
(cffi:defcfun ("r_addchild" render-addchild) :pointer
  (nodeptr :pointer) (childptr :pointer))

;LLGSENGINE_API void r_removechild(void *nodeptr, void *childptr);
(cffi:defcfun ("r_removechild" render-removechild) :pointer
  (nodeptr :pointer) (childptr :pointer))

;LLGSENGINE_API void  r_setscenenodevis(void *nodeptr, bool visible);
(cffi:defcfun ("r_setscenenodevis" render-setscenenodevis) :void
  (nodeptr :pointer) (visible :boolean))

;LLGSENGINE_API void  r_setscenenodeuserobj(void *nodeptr, char *key, void *obj);
(cffi:defcfun ("r_setscenenodeuserobj" render-setscenenodeuserobj) :void
  (nodeptr :pointer) (key :string) (obj :pointer))

;LLGSENGINE_API void *r_getscenenodeuserobj(void *nodeptr, char *key);
(cffi:defcfun ("r_getscenenodeuserobj" render-getscenenodeuserobj) :void
  (nodeptr :pointer) (obj :pointer))

;LLGSENGINE_API void  r_delscenenodeuserobj(void *nodeptr, char *key);
(cffi:defcfun ("r_delscenenodeuserobj" render-delscenenodeuserobj) :void
  (nodeptr :pointer) (obj :pointer))

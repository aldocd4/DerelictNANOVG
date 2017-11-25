/* Work in progress */

nanovg
======

NanoVG is a small antialiased vector graphics rendering library for OpenGL

Author : Mikko Mononen
https://github.com/memononen/nanovg

DerelictNANOVG
======

Dynamic bindings to the nanovg library for the D programming language.

Thanks to Mike Parker for Derelict !
https://github.com/DerelictOrg

How to use
======

NanoVG has 3 backends : GL2, GL3 and GLES2.
You need to compile nanovg (you can use nanovg_c directory for this, its the latest nanovg code ready to compile for D) with the backend you want to use.

By default, nanovg_c uses GL3 implementation. You can update the file nanovg.c to change the implementation :

```d
#define NANOVG_GL2_IMPLEMENTATION   // Use GL2 implementation.
```
Don't forget to link glew lib.

More info at : https://github.com/memononen/nanovg#creating-drawing-context

When you compile your D project, you need to specify the backend you want to use :

- NanovgGL2
- NanovgGL3
- NanovgGLES2

Example with dub : dub.json :

```json
{
    ///...

	"versions":["NanovgGL3"],

    ///...
}
```

Finally, you just need to create a NVGContext :

```d
DerelictGL3.reload();
DerelictNANOVG.load();

auto nvg = nvgCreateGL3(NVGcreateFlags.NVG_STENCIL_STROKES | NVGcreateFlags.NVG_DEBUG);

while(gameAlive)
{
    ///...

    nvgBeginFrame(nvg, ...);
    {
        drawWindow(nvg, ...);
    }
    nvgEndFrame(nvg);

    ///..
}

nvgDeleteGL3(nvg);

```

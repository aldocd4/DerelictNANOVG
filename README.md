/* Work in progress */

nanovg
======

NanoVG is small antialiased vector graphics rendering library for OpenGL

Author : Mikko Mononen
https://github.com/memononen/nanovg

DerelictNANOVG
======

Dynamic bindings to the nanovg library for the D programming language.

Thanks to Mike Parker for Derelict !

https://github.com/DerelictOrg

How to use
======

NanoVG has 3 backends : GL2, GL3 and GLES2 
You need to compile NanoVG with the backend you want to use :

```d
#define NANOVG_GL3_IMPLEMENTATION   // Use GL3 implementation.
```

More info at : https://github.com/memononen/nanovg

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

    // You can draw something
    nvgBeginFrame(nvg, ...);
    {
        drawWindow(nvg, ...);
    }
    nvgEndFrame(nvg);

    ///..
}

nvgDeleteGL3(nvg);

```
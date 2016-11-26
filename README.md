/* Work in progress */

nanovg
======

NanoVG is small antialiased vector graphics rendering library for OpenGL

Author : Mikko Mononen
https://github.com/memononen/nanovg

DerelictNANOVG
======

Dynamic bindings to the nanovg library for the D programming language.

How to use
======

You need a valid GL3 context to use nanovg (I will add nvgCreateGL2 and GLes later !);

You just need to create a NVGContext :

```d
    DerelictGL3.reload();
    DerelictNANOVG.load();

    auto nvg = nvgCreateGL3(NVGcreateFlags.NVG_STENCIL_STROKES | NVGcreateFlags.NVG_DEBUG);

    // You can now draw something
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

```
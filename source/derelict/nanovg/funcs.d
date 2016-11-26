/*
 * Copyright (c) 2015 Derelict Developers
 * All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions are
 * met:
 *
 * * Redistributions of source code must retain the above copyright
 *   notice, this list of conditions and the following disclaimer.
 *
 * * Redistributions in binary form must reproduce the above copyright
 *   notice, this list of conditions and the following disclaimer in the
 *   documentation and/or other materials provided with the distribution.
 *
 * * Neither the names 'Derelict', 'DerelictILUT', nor the names of its contributors
 *   may be used to endorse or promote products derived from this software
 *   without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
 * "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED
 * TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR
 * PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR
 * CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL,
 * EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO,
 * PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR
 * PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF
 * LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING
 * NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
 * SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 */
module derelict.nanovg.funcs;

private
{
    import derelict.util.system;
    import derelict.nanovg.types;
}

extern(C) @nogc 
{
    alias da_nvgCreateGL3 = NVGcontext* function(int flags);
    alias da_nvgBeginFrame = void function(NVGcontext* ctx, int windowWidth, int windowHeight, float devicePixelRatio);
    alias da_nvgCancelFrame = void function(NVGcontext* ctx);
    alias da_nvgEndFrame = void function(NVGcontext* ctx);
    alias da_nvgBeginPath = void function(NVGcontext* ctx);
    alias da_nvgRect = void function(NVGcontext* ctx, float x, float y, float w, float h);
    alias da_nvgFillColor = void function(NVGcontext* ctx, NVGcolor color);

    //
    // Color utils
    //
    alias da_nvgRGB = NVGcolor function(ubyte r, ubyte g, ubyte b);
    alias da_nvgRGBf = NVGcolor function(float r, float g, float b);
    alias da_nvgRGBA = NVGcolor function(ubyte r, ubyte g, ubyte b, ubyte a);
    alias da_nvgRGBAf = NVGcolor function(float r, float g, float b, float a);
    alias da_nvgLerpRGBA = NVGcolor function(NVGcolor c0, NVGcolor c1, float u);
    alias da_nvgTransRGBA = NVGcolor function(NVGcolor c0, ubyte a);
    alias da_nvgTransRGBAf = NVGcolor function(NVGcolor c0, float a);
    alias da_nvgHSL = NVGcolor function(float h, float s, float l);
    alias da_nvgHSLA = NVGcolor function(float h, float s, float l, ubyte a);

    //
    // Paths
    //
    alias da_nvgFill = void function(NVGcontext* ctx);
}

__gshared 
{
    da_nvgCreateGL3 nvgCreateGL3;
    da_nvgBeginFrame nvgBeginFrame;
    da_nvgCancelFrame nvgCancelFrame;
    da_nvgEndFrame nvgEndFrame;
    da_nvgBeginPath nvgBeginPath;
    da_nvgRect nvgRect;
    da_nvgFillColor nvgFillColor;

    da_nvgRGB nvgRGB;
    da_nvgRGBf nvgRGBf;
    da_nvgRGBA nvgRGBA;
    da_nvgRGBAf nvgRGBAf;
    da_nvgLerpRGBA nvgLerpRGBA;
    da_nvgTransRGBA nvgTransRGBA;
    da_nvgTransRGBAf nvgTransRGBAf;
    da_nvgHSL nvgHSL;
    da_nvgHSLA nvgHSLA;
    
    da_nvgFill nvgFill;
}

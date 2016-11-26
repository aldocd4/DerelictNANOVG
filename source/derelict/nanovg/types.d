module derelict.nanovg.types;

enum NVGcreateFlags 
{
	// Flag indicating if geometry based anti-aliasing is used (may not be needed when using MSAA).
	NVG_ANTIALIAS 		= 1<<0,
	// Flag indicating if strokes should be drawn using stencil buffer. The rendering will be a little
	// slower, but path overlaps (i.e. self-intersecting or sharp turns) will be drawn just once.
	NVG_STENCIL_STROKES	= 1<<1,
	// Flag indicating that additional debug checks are done.
	NVG_DEBUG 			= 1<<2,
}

enum NVGwinding : int
{
    NVG_CCW = 1,
    NVG_CW = 2
}

enum NVGsolidity : int
{
    NVG_SOLID = 1,
    NVG_HOLE = 2
}

enum NVGlineCap  : int
{
    NVG_BUTT,
    NVG_ROUND,
    NVG_SQUARE,
    NVG_BEVEL,
    NVG_MITER
}

enum NVGalign : int
{
    // Horizontal align
    NVG_ALIGN_LEFT = 1 << 0,
    NVG_ALIGN_CENTER = 1 << 1,
    NVG_ALIGN_RIGHT = 1 << 2,
    // Vertical align
    NVG_ALIGN_TOP = 1 << 3,
    NVG_ALIGN_MIDDLE = 1 << 4,
    NVG_ALIGN_BOTTOM = 1 << 5,
    NVG_ALIGN_BASELINE = 1 << 6
}

struct NVGcolor
{
    float r, g, b, a;
}

struct FONScontext;
struct NVGcontext;
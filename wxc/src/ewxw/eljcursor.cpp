#include "wrapper.h"

extern "C"
{
__declspec(dllexport) wxCursor** wxStandard_Cursor = &wxSTANDARD_CURSOR;
__declspec(dllexport) wxCursor** wxHourglass_Cursor = &wxHOURGLASS_CURSOR;
__declspec(dllexport) wxCursor** wxCross_Cursor = &wxCROSS_CURSOR;

EWXWEXPORT(void*, Cursor_CreateFromStock)(int _id)
{
	return (void*) new wxCursor(_id);
}

}

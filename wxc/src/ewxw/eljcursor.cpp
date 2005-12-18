#include "wrapper.h"

extern "C"
{
EWXWEXPORT_VAR wxCursor** wxStandard_Cursor = &wxSTANDARD_CURSOR;
EWXWEXPORT_VAR wxCursor** wxHourglass_Cursor = &wxHOURGLASS_CURSOR;
EWXWEXPORT_VAR wxCursor** wxCross_Cursor = &wxCROSS_CURSOR;

EWXWEXPORT(void*, Cursor_CreateFromStock)(int _id)
{
	return (void*) new wxCursor(_id);
}

}

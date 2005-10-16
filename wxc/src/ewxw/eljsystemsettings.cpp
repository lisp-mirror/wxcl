#include "wrapper.h"

extern "C"
{

EWXWEXPORT(wxColour*, wxSystemSettings_GetColour)(int index)
{
   return new wxColour(wxSystemSettings::GetColour((wxSystemColour)index));
}

EWXWEXPORT(wxFont*, wxSystemSettings_GetFont)(int index, void* _ref)
{
   return new wxFont(wxSystemSettings::GetFont((wxSystemFont)index));
}

EWXWEXPORT(int, wxSystemSettings_GetMetric)(int index)
{
   return wxSystemSettings::GetMetric((wxSystemMetric)index);
}

}

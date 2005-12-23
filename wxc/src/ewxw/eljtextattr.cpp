#include "wrapper.h"

/*------------------------------------------------------------------------------
  TextAttr
------------------------------------------------------------------------------*/
extern "C"
{

EWXWEXPORT( wxTextAttr*, wxTextAttr_CreateDefault)()
{
  return new wxTextAttr();
}

EWXWEXPORT( void *, wxTextAttr_Create)(void * colText, void * colBack, void *font)
{
    return (void *) new wxTextAttr( * (wxColour *) colText, * (wxColour *) colBack, * (wxFont *) font );
}

EWXWEXPORT( void, wxTextAttr_Delete)(void * _obj)
{
    delete ((wxTextAttr*)_obj);
}

EWXWEXPORT(wxColour*, wxTextAttr_GetBackgroundColour)(wxTextAttr* _obj)
{
   wxColour* colour = new wxColour(_obj->GetBackgroundColour());
   return colour;
}

EWXWEXPORT(wxFont*, wxTextAttr_GetFont)(wxTextAttr* _obj)
{
    wxFont* font = new wxFont(_obj->GetFont());
    return font;
}

EWXWEXPORT(wxColour*, wxTextAttr_GetTextColour)(wxTextAttr* _obj)
{
   wxColour* colour = new wxColour(_obj->GetTextColour());
   return colour;    
}

EWXWEXPORT(int, wxTextAttr_HasBackgroundColour)(void * _obj)
{
    return (int) ((wxTextAttr*)_obj)->HasBackgroundColour();
}

EWXWEXPORT(int, wxTextAttr_HasFont)(void * _obj)
{
    return (int) ((wxTextAttr*)_obj)->HasFont();
}

EWXWEXPORT(int, wxTextAttr_HasTextColour)(void * _obj)
{
    return (int) ((wxTextAttr*)_obj)->HasTextColour(   );
}

EWXWEXPORT(int, wxTextAttr_IsDefault)(void * _obj)
{
    return (int) ((wxTextAttr*)_obj)->IsDefault(   );
}

EWXWEXPORT( void, wxTextAttr_SetTextColour)(wxTextAttr* _obj, wxColour* colour )
{
   _obj->SetTextColour(*colour);
}

EWXWEXPORT( void, wxTextAttr_SetBackgroundColour)(wxTextAttr* _obj, wxColour* colour )
{
   _obj->SetBackgroundColour(*colour);
}

EWXWEXPORT( void, wxTextAttr_SetFont)(wxTextAttr* _obj, wxFont* font )
{
   _obj->SetFont(*font);
}

} /* extern "C" */

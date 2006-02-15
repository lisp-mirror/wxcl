#include "wrapper.h"
#include "wx/progdlg.h"

/*------------------------------------------------------------------------------
  progress dialog
------------------------------------------------------------------------------*/
extern "C"
{

EWXWEXPORT(wxProgressDialog*, wxProgressDialog_Create)( char* title, char* message, int max, wxWindow* parent, int style )
{
  return new wxProgressDialog( title, message, max, parent, style );
}

EWXWEXPORT(int, wxProgressDialog_Update)(wxProgressDialog* obj, int value,char *message )
{
  return (obj->Update(value,message) ? 1 : 0);
}

EWXWEXPORT(void, wxProgressDialog_Resume)(wxProgressDialog* obj )
{
  obj->Resume();
}

}

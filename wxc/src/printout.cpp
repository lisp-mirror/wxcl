
#include "printout.h"

/*-----------------------------------------------------------------------------
  Special wxPrintout class that sends events.
-----------------------------------------------------------------------------*/

extern "C" {

EWXWEXPORT(int,expEVT_PRINT_BEGIN)()
{
  return (int)wxEVT_PRINT_BEGIN;
}

EWXWEXPORT(int,expEVT_PRINT_BEGIN_DOC)()
{
  return (int)wxEVT_PRINT_BEGIN_DOC;
}

EWXWEXPORT(int,expEVT_PRINT_END)()
{
  return (int)wxEVT_PRINT_END;
}

EWXWEXPORT(int,expEVT_PRINT_END_DOC)()
{
  return (int)wxEVT_PRINT_END_DOC;
}

EWXWEXPORT(int,expEVT_PRINT_PREPARE)()
{
  return (int)wxEVT_PRINT_PREPARE;
}

EWXWEXPORT(int,expEVT_PRINT_PAGE)()
{
  return (int)wxEVT_PRINT_PAGE;
}

}

/*-----------------------------------------------------------------------------
  Wrappers
-----------------------------------------------------------------------------*/
extern "C" 
{

EWXWEXPORT(wxPrintDialogData*, wxPrintDialog_GetPrintDialogData)(wxPrintDialog* _obj )
{
  return &(_obj->GetPrintDialogData());
}

  
EWXWEXPORT( wxcPrintout*, wxcPrintout_Create)( wxString* title )
{
  return new wxcPrintout( *title );
}

EWXWEXPORT( void, wxcPrintout_Delete)( wxcPrintout* self )
{
  if (self) delete self;
}

EWXWEXPORT( void, wxcPrintout_SetPageLimits)( wxcPrintout* self, int startPage, int endPage, int fromPage, int toPage )
{
  self->SetPageLimits( startPage, endPage, fromPage, toPage );
}

EWXWEXPORT( wxEvtHandler*, wxcPrintout_GetEvtHandler)( wxcPrintout* self )
{
  return self->GetEvtHandler();
}


EWXWEXPORT( wxcPrintout*, wxcPrintEvent_GetPrintout)( wxcPrintEvent* self )
{
  return self->GetPrintout();
}

EWXWEXPORT( int, wxcPrintEvent_GetPage)( wxcPrintEvent* self )
{
  return self->GetPage();
} 

EWXWEXPORT( int, wxcPrintEvent_GetEndPage)( wxcPrintEvent* self )
{
  return self->GetEndPage();
} 

EWXWEXPORT( bool, wxcPrintEvent_GetContinue)( wxcPrintEvent* self )
{
  return self->GetContinue();
} 
    
EWXWEXPORT( void, wxcPrintEvent_SetContinue)( wxcPrintEvent* self, bool cont )
{
  self->SetContinue(cont);
} 

EWXWEXPORT( void, wxcPrintEvent_SetPageLimits)( wxcPrintEvent* self, int startPage, int endPage, int fromPage, int toPage )
{
  self->SetPageLimits(startPage, endPage, fromPage, toPage );
}


/*-----------------------------------------------------------------------------
  Printout
-----------------------------------------------------------------------------*/
EWXWEXPORT(int, wxPrintout_GetTitle)(void* _obj, void* _buf)
{
	wxString title = ((wxPrintout*)_obj)->GetTitle();
	if (_buf) strncpy ((char*)_buf, title.c_str(), title.Length());
	return title.Length();
}
	
EWXWEXPORT(void*, wxPrintout_GetDC)(void* _obj)
{
	return (void*)((wxPrintout*)_obj)->GetDC();
}
	
EWXWEXPORT(void, wxPrintout_SetDC)(void* _obj, void* dc)
{
	((wxPrintout*)_obj)->SetDC((wxDC*)dc);
}
	
EWXWEXPORT(void, wxPrintout_SetPageSizePixels)(void* _obj, int w, int  h)
{
	((wxPrintout*)_obj)->SetPageSizePixels(w, h);
}
	
EWXWEXPORT(void, wxPrintout_GetPageSizePixels)(void* _obj, void* w, void* h)
{
	((wxPrintout*)_obj)->GetPageSizePixels((int*)w, (int*)h);
}
	
EWXWEXPORT(void, wxPrintout_SetPageSizeMM)(void* _obj, int w, int  h)
{
	((wxPrintout*)_obj)->SetPageSizeMM(w, h);
}
	
EWXWEXPORT(void, wxPrintout_GetPageSizeMM)(void* _obj, void* w, void* h)
{
	((wxPrintout*)_obj)->GetPageSizeMM((int*)w, (int*)h);
}
	
EWXWEXPORT(void, wxPrintout_SetPPIScreen)(void* _obj, int x, int y)
{
	((wxPrintout*)_obj)->SetPPIScreen(x, y);
}
	
EWXWEXPORT(void, wxPrintout_GetPPIScreen)(void* _obj, void* x, void* y)
{
	((wxPrintout*)_obj)->GetPPIScreen((int*)x, (int*)y);
}
	
EWXWEXPORT(void, wxPrintout_SetPPIPrinter)(void* _obj, int x, int y)
{
	((wxPrintout*)_obj)->SetPPIPrinter(x, y);
}
	
EWXWEXPORT(void, wxPrintout_GetPPIPrinter)(void* _obj, void* x, void* y)
{
	((wxPrintout*)_obj)->GetPPIPrinter((int*)x, (int*)y);
}
	
EWXWEXPORT(int, wxPrintout_IsPreview)(void* _obj)
{
	return (int)((wxPrintout*)_obj)->IsPreview();
}
	
EWXWEXPORT(void, wxPrintout_SetIsPreview)(void* _obj, int p)
{
	((wxPrintout*)_obj)->SetIsPreview(p != 0);
}
 
    
}

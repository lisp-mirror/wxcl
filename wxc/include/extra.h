#include "wx/process.h"
#include "wx/textctrl.h"
#include "wx/listctrl.h"
#include "wx/grid.h"
#include "wx/fileconf.h"
#include "wx/spinctrl.h"

/*-----------------------------------------------------------------------------
  new events
-----------------------------------------------------------------------------*/
BEGIN_DECLARE_EVENT_TYPES()
    DECLARE_LOCAL_EVENT_TYPE(wxEVT_DELETE, 1000)
    DECLARE_LOCAL_EVENT_TYPE(wxEVT_HTML_CELL_CLICKED, 1001 )
    DECLARE_LOCAL_EVENT_TYPE(wxEVT_HTML_CELL_MOUSE_HOVER, 1002 )
    DECLARE_LOCAL_EVENT_TYPE(wxEVT_HTML_LINK_CLICKED, 1003 )
    DECLARE_LOCAL_EVENT_TYPE(wxEVT_HTML_SET_TITLE, 1004 )
    DECLARE_LOCAL_EVENT_TYPE(wxEVT_INPUT_SINK, 1005 )
    DECLARE_LOCAL_EVENT_TYPE(wxEVT_SORT, 1006 )
END_DECLARE_EVENT_TYPES()


DEFINE_LOCAL_EVENT_TYPE( wxEVT_DELETE )
DEFINE_LOCAL_EVENT_TYPE( wxEVT_HTML_CELL_CLICKED )
DEFINE_LOCAL_EVENT_TYPE( wxEVT_HTML_CELL_MOUSE_HOVER )
DEFINE_LOCAL_EVENT_TYPE( wxEVT_HTML_LINK_CLICKED )
DEFINE_LOCAL_EVENT_TYPE( wxEVT_HTML_SET_TITLE )
DEFINE_LOCAL_EVENT_TYPE( wxEVT_INPUT_SINK )
DEFINE_LOCAL_EVENT_TYPE( wxEVT_SORT )

/*-----------------------------------------------------------------------------
  Timers
-----------------------------------------------------------------------------*/
class wxTimerEx : public wxTimer
{
private:
  wxClosure* m_closure;
public:
  wxTimerEx();
  ~wxTimerEx();

  void     Connect( wxClosure* closure );
  wxClosure* GetClosure();

  void Notify();
};

wxTimerEx::wxTimerEx()
{
  m_closure = NULL;
}

wxTimerEx::~wxTimerEx()
{
  if (m_closure) {
    m_closure->DecRef();
    m_closure=NULL;
  }
}

void wxTimerEx::Connect( wxClosure* closure )
{
  if (m_closure) m_closure->DecRef();
  m_closure = closure;
  if (m_closure) m_closure->IncRef();
}

wxClosure* wxTimerEx::GetClosure()
{
  return m_closure;
}

void wxTimerEx::Notify()
{
  wxTimerEvent timerEvent(0,this->GetInterval());
  if (m_closure) m_closure->Invoke(&timerEvent);
}

/*-----------------------------------------------------------------------------
  wxInputSink wrapper: adds non-blocking event driven input channel
-----------------------------------------------------------------------------*/
class wxInputSink;

class wxInputSinkEvent : public wxEvent
{
private:
  char*         m_buffer;
  size_t        m_bufferLen;
  size_t        m_lastRead;
  wxStreamError m_lastError;

  void Read( wxInputStream* input );
  friend class wxInputSink;

public:
  wxInputSinkEvent( int id, size_t bufferLen );
  wxInputSinkEvent( const wxInputSinkEvent& event );  /* copy constructor */
  ~wxInputSinkEvent();

  wxEvent* Clone() const          { return new wxInputSinkEvent(*this); }

  wxStreamError LastError() const { return m_lastError; }
  int           LastRead()  const { return m_lastRead; }
  char*         LastInput() const { return m_buffer;   }
};

class wxInputSink : public wxThread
{
private:
  wxEvtHandler*    m_evtHandler;
  wxInputStream*   m_input;
  wxInputSinkEvent m_event;

protected:
  ExitCode Entry();

public:
  wxInputSink( wxInputStream* input, wxEvtHandler* evtHandler, int bufferLen );
  ~wxInputSink();

  int  GetId();
  void Start();
};


wxInputSink::wxInputSink( wxInputStream* input, wxEvtHandler* evtHandler, int bufferLen )
  : wxThread(wxTHREAD_DETACHED), m_event( 0, bufferLen )
{
  m_input      = input;
  m_evtHandler = evtHandler;
}

wxInputSink::~wxInputSink()
{
/* fprintf(stderr, "InputSink is deleted\n"); */
}

void wxInputSink::Start()
{
  wxThreadError result = Create();
  switch(result) {
    case wxTHREAD_NO_ERROR:  Run(); break;
    case wxTHREAD_RUNNING :  break;
    default               :  Delete(); break;
  }
}

int wxInputSink::GetId()
{
  return (int)m_input;
}

wxThread::ExitCode wxInputSink::Entry()
{
  if (m_input == NULL || m_evtHandler == NULL || m_event.m_buffer == NULL ) return 0;

  m_event.SetId(GetId());

  /* while input && not external destroy */
  while (!TestDestroy() && m_event.LastError() == wxSTREAM_NO_ERROR)
  {
     /* (blocking) read */
     m_event.Read( m_input );

     /* post the event to the main gui thread (note: event is cloned and thus the input buffer copied)*/
     m_evtHandler->AddPendingEvent(m_event);
  }

  /* Process pending events */
  wxWakeUpIdle();

  /* return */
  if (m_event.LastError() == wxSTREAM_NO_ERROR || m_event.LastError() == wxSTREAM_EOF)
     return (ExitCode)0;
  else
     return (ExitCode)1;
}


wxInputSinkEvent::wxInputSinkEvent( int id, size_t bufferLen ) : wxEvent( id, wxEVT_INPUT_SINK  )
{
  m_lastError = wxSTREAM_NO_ERROR;
  m_lastRead  = 0;
  if (bufferLen <= 0) bufferLen = 128;
  m_buffer    = (char*)malloc( bufferLen + 1 );
  m_bufferLen = (m_buffer ? bufferLen : 0);
}

wxInputSinkEvent::wxInputSinkEvent( const wxInputSinkEvent& event ) : wxEvent( event )
{
  /* we copy only the exact input buffer, as 'Read' will never be called */
  m_lastError = event.m_lastError;
  m_bufferLen = 0;
  m_lastRead  = 0;
  m_buffer    = (char*)malloc( event.m_lastRead + 1 );
  if (m_buffer) {
    m_bufferLen = event.m_lastRead;
    m_lastRead  = event.m_lastRead;
    memcpy( m_buffer, event.m_buffer, m_lastRead );
    m_buffer[m_lastRead] = 0;
  }
}

wxInputSinkEvent::~wxInputSinkEvent()
{
  if (m_buffer) free(m_buffer);
}

void wxInputSinkEvent::Read( wxInputStream* input )
{
  /* check */
  if (input == NULL || m_buffer == NULL || m_bufferLen == 0) {
    m_lastError = wxSTREAM_READ_ERROR;
    m_lastRead  = 0;
    return;
  }

  /* read */
  input->Read( m_buffer, m_bufferLen );
#if wxCHECK_VERSION(2,5,0)
  m_lastError = input->GetLastError();
#else
  m_lastError = input->LastError();
#endif
  if (m_lastError == wxSTREAM_NO_ERROR)
    m_lastRead  = input->LastRead();
  else
    m_lastRead  = 0;


  /* maintain invariants */
  if (m_lastRead < 0)           m_lastRead = 0;
  if (m_lastRead > m_bufferLen) m_lastRead = m_bufferLen;

  /* add zero terminator */
  m_buffer[m_lastRead] = 0;
}


/*-----------------------------------------------------------------------------
  wxHtmlWindow wrapper: adds normal events instead of using inheritance
-----------------------------------------------------------------------------*/
class wxcHtmlWindow : public wxHtmlWindow
{
private:
    DECLARE_DYNAMIC_CLASS(wxcHtmlWindow)
public:
    wxcHtmlWindow() : wxHtmlWindow() {};   wxcHtmlWindow(wxWindow *, wxWindowID id, const wxPoint&, const wxSize& size, long style, const wxString& );

   void OnCellClicked(wxHtmlCell *cell, wxCoord x, wxCoord y, const wxMouseEvent& event);
   void OnCellMouseHover(wxHtmlCell *cell, wxCoord x, wxCoord y);
   void OnLinkClicked(const wxHtmlLinkInfo& link);
   wxHtmlOpeningStatus OnOpeningURL(wxHtmlURLType type,const wxString& url, wxString *redirect);
   void OnSetTitle(const wxString& title);
};

IMPLEMENT_DYNAMIC_CLASS(wxcHtmlWindow, wxHtmlWindow)

class wxcHtmlEvent : public wxCommandEvent
{
private:
    DECLARE_DYNAMIC_CLASS(wxcHtmlEvent)
private:
    const wxMouseEvent*     m_mouseEvent;
    const wxHtmlCell*       m_htmlCell;
    const wxHtmlLinkInfo*   m_linkInfo;
    wxPoint                 m_logicalPosition;

public:
    wxcHtmlEvent() : wxCommandEvent() {};
    wxcHtmlEvent( wxEventType commandType, int id, const wxMouseEvent* mouseEvent, const wxHtmlCell* htmlCell, const wxHtmlLinkInfo* linkInfo, wxPoint logicalPoint );
    const wxMouseEvent* GetMouseEvent();
    const wxHtmlCell *  GetHtmlCell();
    wxString*           GetHtmlCellId();
    wxString*           GetHref();
    wxString*           GetTarget();
    wxPoint             GetLogicalPosition();
};

IMPLEMENT_DYNAMIC_CLASS(wxcHtmlEvent, wxCommandEvent)

wxcHtmlWindow::wxcHtmlWindow(wxWindow * prt, wxWindowID id, const wxPoint& pt, const wxSize& size, long style, const wxString& title )
: wxHtmlWindow( prt, id, pt, size, style, title )
{}

void wxcHtmlWindow::OnCellClicked(wxHtmlCell *cell, wxCoord x, wxCoord y, const wxMouseEvent& event)
{
    wxHtmlLinkInfo* linkPtr;
    if (cell==NULL) return;

    linkPtr = cell->GetLink(x, y);
    if (linkPtr != NULL)
    {
        wxHtmlLinkInfo link(*linkPtr);
        link.SetEvent(&event);
        link.SetHtmlCell(cell);
        {
          wxcHtmlEvent htmlEvent( wxEVT_HTML_LINK_CLICKED, this->GetId(), &event, cell, &link, wxPoint(x,y) );
          this->ProcessEvent( htmlEvent );
        }
    }
    else
    {
      wxcHtmlEvent htmlEvent( wxEVT_HTML_CELL_CLICKED, this->GetId(), &event, cell, NULL, wxPoint(x,y) );
      this->ProcessEvent( htmlEvent );
    }
}

void wxcHtmlWindow::OnCellMouseHover(wxHtmlCell *cell, wxCoord x, wxCoord y)
{
    wxcHtmlEvent htmlEvent( wxEVT_HTML_CELL_MOUSE_HOVER, this->GetId(), NULL, cell, NULL, wxPoint(x,y) );
    this->ProcessEvent( htmlEvent );
}

void wxcHtmlWindow::OnLinkClicked(const wxHtmlLinkInfo& link)
{
    wxcHtmlEvent htmlEvent( wxEVT_HTML_LINK_CLICKED, this->GetId(), link.GetEvent(), link.GetHtmlCell(), &link, wxPoint(-1,-1) );
    this->ProcessEvent( htmlEvent );
}

void wxcHtmlWindow::OnSetTitle(const wxString& title)
{
    wxcHtmlEvent htmlEvent( wxEVT_HTML_SET_TITLE, this->GetId(), NULL, NULL, NULL, wxPoint(-1,-1) );
    htmlEvent.SetString( title );
    this->ProcessEvent( htmlEvent );
}


wxcHtmlEvent::wxcHtmlEvent( wxEventType commandType, int id, const wxMouseEvent* mouseEvent, const wxHtmlCell* htmlCell, const wxHtmlLinkInfo* linkInfo, wxPoint logicalPoint )
: wxCommandEvent( commandType, id )
{
    m_mouseEvent = mouseEvent;
    m_htmlCell = htmlCell;
    m_linkInfo = linkInfo;
    m_logicalPosition = logicalPoint;
}

const wxMouseEvent* wxcHtmlEvent::GetMouseEvent()
{
    return m_mouseEvent;
}

const wxHtmlCell *  wxcHtmlEvent::GetHtmlCell()
{
    return m_htmlCell;
}

wxString* wxcHtmlEvent::GetHtmlCellId()
{
    if (m_htmlCell)
        return new wxString(m_htmlCell->GetId());
    else
        return new wxString("");
}

wxString* wxcHtmlEvent::GetHref()
{
    if (m_linkInfo)
        return new wxString(m_linkInfo->GetHref());
    else
        return new wxString("");
}

wxString* wxcHtmlEvent::GetTarget()
{
    if (m_linkInfo)
        return new wxString (m_linkInfo->GetTarget());
    else
        return new wxString("");
}

wxPoint wxcHtmlEvent::GetLogicalPosition()
{
    return m_logicalPosition;
}



/*-----------------------------------------------------------------------------
  wxGridCellTextEnterEditor
-----------------------------------------------------------------------------*/
class wxGridCellTextEnterEditor : public wxGridCellTextEditor
{
public:
  wxGridCellTextEnterEditor() : wxGridCellTextEditor() {}

  void Create(wxWindow* parent,
                        wxWindowID id,
                        wxEvtHandler* evtHandler);

};

void wxGridCellTextEnterEditor::Create(wxWindow* parent,
                                       wxWindowID id,
                                       wxEvtHandler* evtHandler)
{
    wxGridCellTextEditor::Create(parent, id, evtHandler);
    
    {
      long style = m_control->GetWindowStyle();
      m_control->SetWindowStyle( style | wxTE_PROCESS_ENTER );
    }
}


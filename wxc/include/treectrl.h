
class wxcTreeItemData : public wxTreeItemData
{
  private:
    wxClosure* m_closure;

  public:
    wxcTreeItemData( wxClosure* closure ) { 
      m_closure = closure;
    }

    ~wxcTreeItemData() {
      if (m_closure) delete m_closure;
    }

    wxClosure* GetClientClosure() { 
      return m_closure; 
    }

    void SetClientClosure( wxClosure* closure ) {
      if (m_closure) delete m_closure;
      m_closure = closure;
    }
};

#include "wx/fl/toolwnd.h"
#include "wx/fl/antiflickpl.h"
#include "wx/fl/bardragpl.h"
#include "wx/fl/barhintspl.h"
#include "wx/fl/cbcustom.h"
#include "wx/fl/dyntbar.h"
#include "wx/fl/dyntbarhnd.h"
#include "wx/fl/gcupdatesmgr.h"
#include "wx/fl/hintanimpl.h"
#include "wx/fl/newbmpbtn.h"
#include "wx/fl/panedrawpl.h"
#include "wx/fl/rowdragpl.h"
#include "wx/fl/rowlayoutpl.h"

typedef void (*TButtonClick)(void* _obj, int _btn);
typedef int  (*TTitleClick)(void* _obj, void* _evt);
typedef void (*TMiniDraw)(void* _obj, void* _dct);

class ELJToolWindow : public wxToolWindow
{
    private:
        void*        EifObj;
        TButtonClick BtnCb;
        TTitleClick  TtlCb;
    public:
        ELJToolWindow(void* _obj, void* _btn, void* _ttl) : wxToolWindow()
        {
        	EifObj = _obj;
        	BtnCb = (TButtonClick)_btn;
        	TtlCb = (TTitleClick)_ttl;
        }
    
    virtual void OnMiniButtonClicked( int btnIdx ) {BtnCb (EifObj, btnIdx);}
    virtual bool HandleTitleClick( wxMouseEvent& event ) { return TtlCb (EifObj, (void*)&event) != 0; }
};

class ELJMiniButton : public cbMiniButton
{
    private:
        void*     EifObj;
        TMiniDraw DrwCb;
	public:
        ELJMiniButton(void* _obj, void* _drw) : cbMiniButton()
        {
        	EifObj = _obj;
        	DrwCb = (TMiniDraw)_drw;
		}
		
		virtual void Draw(wxDC& dc) {DrwCb(EifObj, (void*)&dc);}
};

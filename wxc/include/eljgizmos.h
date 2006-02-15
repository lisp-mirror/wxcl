#include "wx/gizmos/dynamicsash.h"
#include "wx/gizmos/editlbox.h"
#include "wx/gizmos/ledctrl.h"
#include "wx/gizmos/multicell.h"
#include "wx/gizmos/splittree.h"

class ELJSCTreeControl : public wxRemotelyScrolledTreeCtrl
{
	private:
		TreeCompareFunc compare_func;
		void* EiffelObject;

	public:
	    ELJSCTreeControl(void* _obj,
		                 void* _cmp,
		                 wxWindow *parent,
		                 wxWindowID id = -1,
                         const wxPoint& pos = wxDefaultPosition,
                         const wxSize& size = wxDefaultSize,
                         long style = wxTR_HAS_BUTTONS | wxTR_LINES_AT_ROOT) :
		wxRemotelyScrolledTreeCtrl (parent, id, pos, size, style)
		{
			EiffelObject = _obj;
			compare_func = (TreeCompareFunc)_cmp;
		};

		virtual int OnCompareItems(const wxTreeItemId& item1, const wxTreeItemId& item2)
		{
			return EiffelObject ? compare_func (EiffelObject, (void*)&item1, (void*)&item2) : wxRemotelyScrolledTreeCtrl::OnCompareItems(item1, item2);
		}

};

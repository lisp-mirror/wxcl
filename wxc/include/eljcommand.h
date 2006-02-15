#include "wx/cmdproc.h"

typedef int _cdecl (*TGetResp) (void* _obj, int _und);

class ELJCommand : public wxCommand
{
	private:
		TGetResp func;
		void*    EiffelObject;
	
	public:
		ELJCommand (bool _und, const wxString& _nme, void* _obj, void* _clb) : wxCommand(_und, _nme)
		{
			func = (TGetResp)_clb;
			EiffelObject = _obj;
		}
		
		bool Do()
		{return func (EiffelObject, 0) != 0;}

		bool Undo()
		{return func (EiffelObject, 1) != 0;}
};


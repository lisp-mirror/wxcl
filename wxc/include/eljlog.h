#include "wx/log.h"

typedef void (*TLogFunc) (void*, int, void*, int);

class ELJLog : public wxLog
{
	private:
		TLogFunc func;
		void*    EiffelObject;
		
    protected:
		virtual void DoLog(wxLogLevel level, const wxChar *szString, time_t t)
		{
			func (EiffelObject, (int)level, (void*)szString, (int)t);
		}

	public:
		ELJLog (void* _obj, void* _fnc) : wxLog()
		{
			func = (TLogFunc)_fnc;
			EiffelObject = _obj;
		}
};

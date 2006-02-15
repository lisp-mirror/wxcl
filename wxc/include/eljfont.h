#include "wx/fontenum.h"
#include "wx/fontmap.h"
#include "wx/encconv.h"

typedef int _cdecl (*TTextEnum) (void* _obj, void* _txt);

class ELJFontEnumerator : public wxFontEnumerator
{
	private:
		TTextEnum func;
		void*     EiffelObject;
	public:
		ELJFontEnumerator (void* _obj, void* _fnc) : wxFontEnumerator()
		{
			func = (TTextEnum)_fnc;
			EiffelObject = _obj;
		}
		
	    virtual bool OnFacename(const wxString& facename)
        { 
			return func(EiffelObject, (void*)facename.c_str()) != 0;
		}
		virtual bool OnFontEncoding(const wxString& WXUNUSED(facename), const wxString& encoding)
        {
			return func(EiffelObject, (void*)encoding.c_str()) != 0;
		}

};

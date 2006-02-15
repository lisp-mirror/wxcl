#if wxVERSION_NUMBER >= 2400
	#include "wx/plot/plot.h"
#else
	#include "wx/plot.h"
#endif

typedef int (*TGetPlotInt)(void* _obj);
typedef double (*TGetPlotDouble)(void* _obj, int _x);

class ELJPlotCurve : public wxPlotCurve
{
	private:
		void* EiffelObject;
		TGetPlotInt EGetStartX;
		TGetPlotInt EGetEndX;
		TGetPlotDouble EGetY;
	public:
		ELJPlotCurve(void* _obj, void* _str, void* _end, void* _y, int offsetY, double startY, double endY) : wxPlotCurve(offsetY, startY, endY)
		{
			EiffelObject = _obj;
			EGetStartX = (TGetPlotInt)_str;
			EGetEndX = (TGetPlotInt)_end;
			EGetY = (TGetPlotDouble)_y;
		}
    virtual wxInt32 GetStartX()
	{ return (wxInt32)EGetStartX(EiffelObject); }

    virtual wxInt32 GetEndX()
	{ return (wxInt32)EGetEndX(EiffelObject); }

    virtual double GetY(wxInt32 x)
	{ return EGetY(EiffelObject, (int)x); }
};

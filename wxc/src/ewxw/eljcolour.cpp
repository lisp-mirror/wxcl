#include "wrapper.h"


extern "C"
{

__declspec( dllexport ) wxColour** wxBlack=&wxBLACK;
__declspec( dllexport ) wxColour** wxWhite=&wxWHITE;  
__declspec( dllexport ) wxColour** wxRed=&wxRED;
__declspec( dllexport ) wxColour** wxBlue=&wxBLUE;  
__declspec( dllexport ) wxColour** wxGreen=&wxGREEN;
__declspec( dllexport ) wxColour** wxCyan=&wxCYAN;
__declspec( dllexport ) wxColour** wxLight_Grey=&wxLIGHT_GREY;    
 
EWXWEXPORT(void*, wxColour_CreateEmpty) ()
{
	return (void*) new wxColour();
}

EWXWEXPORT(void*, wxColour_CreateRGB) (char _red, char _green, char _blue)
{
	return (void*) new wxColour(_red, _green, _blue);
}

EWXWEXPORT(void*, wxColour_CreateByName) (char* _name)
{
	return (void*) new wxColour(_name);
}

EWXWEXPORT(void, wxColour_Delete)(void* _obj)
{
	delete (wxColour*)_obj;
}

EWXWEXPORT(void, wxColour_Set)(void* _obj, char _red, char _green, char _blue)
{
	((wxColour*)_obj)->Set(_red, _green, _blue);
}
	
EWXWEXPORT(int, wxColour_Ok)(void* _obj)
{
	return (int)((wxColour*)_obj)->Ok();
}
	
EWXWEXPORT(char, wxColour_Red)(void* _obj)
{
	return ((wxColour*)_obj)->Red();
}
	
EWXWEXPORT(char, wxColour_Green)(void* _obj)
{
	return ((wxColour*)_obj)->Green();
}
	
EWXWEXPORT(char, wxColour_Blue)(void* _obj)
{
	return ((wxColour*)_obj)->Blue();
}
	
EWXWEXPORT(int, wxColour_GetPixel)(void* _obj)
{
	return ((wxColour*)_obj)->GetPixel();
}

EWXWEXPORT(void*, wxColour_Copy)(void* _obj)
{
	return new wxColour(*((wxColour*)_other));
}

EWXWEXPORT(void, wxColour_SetByName)(void* _obj, char* _name)
{
	(*((wxColour*)_obj)) = _name;
}

EWXWEXPORT(int, wxColour_ValidName)(char* _name)
{
	return (int) wxTheColourDatabase->FindColour (_name);
}

}

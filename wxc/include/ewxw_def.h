#ifndef __EWXW_DEF_H
#define __EWXW_DEF_H

#define EXPORT extern "C"

#ifdef __WATCOMC__
  #include <windows.h>
  #define EWXWEXPORT(TYPE,FUNC_NAME) TYPE __export __cdecl FUNC_NAME
  #define EWXWEXPORT_VAR __export
#else
  #ifdef _WIN32
    #define EWXWEXPORT(TYPE,FUNC_NAME) __declspec(dllexport) TYPE  __cdecl FUNC_NAME  
    #define EWXWEXPORT_VAR __declspec(dllexport) 
    #undef EXPORT
    #define EXPORT extern "C" __declspec(dllexport) 
  #else
    #define EWXWEXPORT(TYPE,FUNC_NAME) TYPE FUNC_NAME
    #define EWXWEXPORT_VAR 
  #endif
  #ifndef _cdecl
    #define _cdecl
  #endif
#endif

#endif /* #ifndef __EWXW_DEF_H */

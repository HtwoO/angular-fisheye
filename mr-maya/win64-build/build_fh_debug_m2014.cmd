ECHO. Started compiling the mental ray shader
cl /c /O2 /MD /W3 -DWIN_NT -DBIT64 fh_debug.c

ECHO. Linking Shader
link /nodefaultlib:LIBC.LIB /OPT:NOREF /DLL /OUT:fh_debug.dll fh_debug.obj "C:\Program Files\Autodesk\mentalrayForMaya2014\devkit\lib\nt\shader.lib"

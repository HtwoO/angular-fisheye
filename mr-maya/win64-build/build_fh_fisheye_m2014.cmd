ECHO. Started compiling the mental ray shader
cl /c /O2 /MD /W3 -DWIN_NT -DBIT64 fh_fisheye.c

ECHO. Linking Shader
link /nodefaultlib:LIBC.LIB /OPT:NOREF /DLL /OUT:fh_fisheye.dll fh_fisheye.obj "C:\Program Files\Autodesk\mentalrayForMaya2014\devkit\lib\nt\shader.lib"

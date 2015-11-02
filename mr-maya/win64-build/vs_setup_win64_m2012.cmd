ECHO. mental ray shader building env setup script
PATH = %PATH%;C:\Program Files (x86)\Microsoft Visual Studio 9.0\VC\;C:\Program Files (x86)\Microsoft Visual Studio 9.0\VC\bin\

:: Add mental ray include directory to %INCLUDE%
set INCLUDE=%INCLUDE%;C:\Program Files\Autodesk\Maya2012\devkit\mentalray\include\

:: Setup VC for 64 bit compiling
vcvarsall.bat x64

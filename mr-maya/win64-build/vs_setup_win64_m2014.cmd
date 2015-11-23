:: Setup Visual Studio full version for 64 bit compiling
REM vcvarsall.bat x64

:: Setup VS 2010 Express version for 64 bit compiling
:: VS 2010 Express is installed partially, therefore vcvarsall.bat is missing.

:: If Windows SDK 7.1 failed to install, it may due to newer version of
:: vc++ redistributable or runtime presents in the system then Windows 7.1 SDK
:: one. See https://support.microsoft.com/kb/2717426

:: Visual C++ compilers are removed when you upgrade VS 2010 Professional or
:: VS 2010 Express to VS 2010 SP1 if Windows SDK v7.1 is installed.
:: https://support.microsoft.com/kb/2519277

:: After installing win sdk 7.1, run the following command,
:: VS should be properly configured.
CALL "C:\Program Files\Microsoft SDKs\Windows\v7.1\bin\SetEnv.Cmd" /x64 /Release
REM CALL SetEnv /x64 /Debug

ECHO. mental ray shader building env setup script
:: Add mental ray include directory to %INCLUDE% path
set INCLUDE=%INCLUDE%;C:\Program Files\Autodesk\mentalrayForMaya2014\devkit\include\


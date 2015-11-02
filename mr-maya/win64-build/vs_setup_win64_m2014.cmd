REM ~ https://social.msdn.microsoft.com/Forums/en-US/e0ef4613-d90f-4eec-90db-41339ed31367/vs2010-express-and-missing-x64-compiler?forum=Vsexpressinstall

ECHO. mental ray shader building env setup script
PATH=C:\Program Files (x86)\Microsoft Visual Studio 10.0\Common7\IDE\;C:\Program Files (x86)\Microsoft Visual Studio 10.0\VC\BIN;C:\Program Files (x86)\Microsoft Visual Studio 10.0\Common7\Tools;C:\Windows\Microsoft.NET\Framework\v4.0.30319;C:\Windows\Microsoft.NET\Framework\v3.5;C:\Program Files (x86)\Microsoft Visual Studio 10.0\VC\VCPackages;C:\Program Files (x86)\Microsoft SDKs\Windows\v7.1\bin\NETFX 4.0 Tools;C:\Program Files (x86)\Microsoft SDKs\Windows\v7.1\bin;C:\Program Files (x86)\Microsoft Visual Studio 10.0\VC\;%PATH%

:: Add mental ray include directory to %INCLUDE%
set INCLUDE=%INCLUDE%;C:\Program Files\Autodesk\mentalrayForMaya2014\devkit\include\

:: Setup VC for 64 bit compiling
REM ~ vcvarsall.bat x64

:: https://stackoverflow.com/questions/1865069/how-to-compile-a-64-bit-application-using-visual-c-2010-express
:: According to https://stackoverflow.com/questions/5128969/how-do-i-load-the-64-bit-visual-studio-tools-command-prompt ,
:: due to a [bug(648412)](https://connect.microsoft.com/VisualStudio/feedback/details/648412/) in vs2010 express,
:: Visual Studio 2010 Express is installed partially, therefore vcvarsall.bat is missing.
:: By installing win sdk 7.1, and run the following command, vs should be properly configured.
CALL "C:\Program Files\Microsoft SDKs\Windows\v7.1\bin\SetEnv.Cmd" /x64 /Release
REM ~ CALL SetEnv /x64 /Debug

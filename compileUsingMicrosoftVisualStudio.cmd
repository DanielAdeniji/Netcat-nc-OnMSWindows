setlocal

set "_compilerFolder=C:\Program Files (x86)\Microsoft Visual Studio\2017\Community\VC\Tools\MSVC\14.16.27023\bin\Hostx86\x86\"

set "_compilerBinary=cl.exe"

set "_sourceCodeFolder=."

set "_app=nc"
set "_base=netcat"
set "_option=getopt"
set "_exec=doexec"

set "_sourceCodeFile_01=%_base%.c"

set "_sourceCodeFile_02=%_option%.c"

set "_sourceCodeFile_03=%_exec%.c"

set "_outputFile=%_app%.exe"

set "_DEBUG=/DEBUG:FULL /Z7"

rem set "_DEBUG=/Z7"

set "_compilerFlag=%_DEBUG%"

"%_compilerFolder%\%_compilerBinary%" %_sourceCodeFolder%\%_sourceCodeFile_01%  ^
%_sourceCodeFolder%\%_sourceCodeFile_02% ^
%_sourceCodeFolder%\%_sourceCodeFile_03% ^
/Fe:%_outputFile% %_compilerFlag%


endlocal

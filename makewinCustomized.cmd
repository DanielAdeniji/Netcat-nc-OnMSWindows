@REM	Build script to compile Netcat on WIN32 using MinGW
@REM
@REM	Rodney Beede	(http://www.rodneybeede.com)
@REM
@REM	2009-09-02
@REM
@REM	Tested with gcc 3.4.5 and MinGW version 5.1.4

setlocal

rem dadeniji
rem SET COMPILER=c:\MinGW\bin\gcc.exe

set _compilerFolder=C:\mingw\x86_64\8.1.0\posix\seh\mingw64\bin
set _compilerBinary=gcc.exe
set COMPILER=%_compilerFolder%\%_compilerBinary%

rem dadeniji
rem SET LIB_DIR=c:\MinGW\lib
SET LIB_DIR=C:\mingw\x86_64\8.1.0\posix\seh\mingw64\lib

rem dadeniji
set PATH=%PATH%;%_compilerFolder%


@REM	not needed? SET COMPILE_OPTIONS=-c -DWIN32 -DNDEBUG -D_CONSOLE -DTELNET
SET COMPILE_OPTIONS=-c

if exist *.o del *.o

if exist nc.exe del nc.exe

"%COMPILER%" %COMPILE_OPTIONS% getopt.c

"%COMPILER%" %COMPILE_OPTIONS% doexec.c

"%COMPILER%" %COMPILE_OPTIONS% netcat.c

rem "%COMPILER%" getopt.o doexec.o netcat.o --output nc.exe -Wl,-L"%LIB_DIR%",-lkernel32,-luser32,-lwinmm,-lws2_32

"%COMPILER%" getopt.o doexec.o netcat.o --output nc.exe -lkernel32 -luser32 -lwinmm -lws2_32

endlocal

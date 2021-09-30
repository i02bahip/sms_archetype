@echo off
cls
set name=main
if not "%1"=="" (
    set name=%1
)

environment\compiler\wla-dx\bin\x86\wla-z80 -v -o out\%name%.o src\%name%.asm
if errorlevel 1 goto :fail
environment\compiler\wla-dx\bin\x86\wlalink -d -v -s environment\compiler\wla-dx\bin\x86\link.lk out\%name%.sms
if errorlevel 1 goto :fail
goto :done

:fail
echo Build failed!
goto:eof

:done
rem cleanup
if exist out\*.o del out\*.o
if exist out\.wla* del out\.wla*
echo Build finished.
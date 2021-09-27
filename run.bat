@echo off
cls
set name=main
if not "%1"=="" (
    set name=%1
)
echo Running: %attr%.sms
java -jar environment\emulators\emulicious\Emulicious.jar out\%name%.sms
cls
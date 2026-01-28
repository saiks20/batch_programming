@echo off
:START
cls
echo --put a value to a file(create)
echo --check the value inside the file(check)
set /p myInput="what do you want to do:  "
if /I "%myInput%" =="create" (
echo you are creating a file to test!!
GOTO create
) ELSE IF /I "%myInput%" =="check" (
echo you are checking content of file!!
GOTO check
)

:create
@echo off
cls
set /p myValue="enter the value you want to insert:  "
echo %myValue% > test.txt
cls
GOTO START

:check
@echo off
cls
set /p testValue="enter the value you want to check: "
for /f "Delims=" %%a in (test.txt) do (
set  Value=%%a
)
if %testValue%==%Value% (
echo test is done!
del test.txt
pause
GOTO START
) ELSE (
echo test is incorrect!!
pause
GOTO START
)



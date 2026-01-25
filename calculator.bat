@echo off
:START
SET /P MATH=Equation?
SET /A RESULT=%MATH%
echo %RESULT%
pause
cls
GOTO START
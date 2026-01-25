@echo off
:START
SET /P MATH=Equation?
javac Calculator.java
java Calculator %MATH%
del *.class
pause
cls
GOTO START
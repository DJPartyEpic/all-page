@echo off
title Loading
if "%1" EQU "-char" (
if "%2" EQU "MC" (
set char=0oo
set char2=o0o
set char3=oo0
goto load
)
if "%2" EQU "L" (
set char=/
set char2=\
set char3=-
goto load
)
if "%2" EQU "." (
set char=O..
set char2=.O.
set char3=..O
goto load
)
)

:load
echo %char%
timeout 1.5 >nul 2>&1
cls
echo %char2%
timeout 1.5 >nul 2>&1
cls
echo %char3%
timeout 1.5 >nul 2>&1
cls
set loading=1
set /a loading=%loading%+1
if "%loading%" == "20" (
echo Done loading
pause
cls
) else (
goto load
)
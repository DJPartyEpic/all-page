@echo off
if "%1" EQU "-close" (
taskkill /im %2 /f >nul 2>&1
if "%errorlevel%" EQU "0" (
echo Closed: %2
)
if "%errorlevel%" NEQ "0" (
echo Sorry, Can Not Close: %2
)
)
if "%1" EQU "-start" (
start %2 >nul 2>&1
if "%errorlevel%" EQU "0" (
echo Started: %2
)
if "%errorlevel%" NEQ "0" (
echo Sorry, Can Not Start: %2
)
)
if "%3" EQU "-close" (
taskkill /im %4 /f >nul 2>&1
if "%errorlevel%" EQU "0" (
echo Closed: %4
)
if "%errorlevel%" NEQ "0" (
echo Sorry, Can Not Close: %4
)
)
if "%3" EQU "-start" (
start %4 >nul 2>&1
if "%errorlevel%" EQU "0" (
echo Started: %4
)
if "%errorlevel%" NEQ "0" (
echo Sorry, Can Not Start: %4
)
)
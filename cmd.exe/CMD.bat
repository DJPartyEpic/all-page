@echo off
title Command Prompt
goto SetupCMD

:SetupCMD
color 0f
echo Microsoft Windows [Version 10.0.19045.5737]
echo (c) Microsoft Corporation. All rights reserved.
echo.
goto CMDCG

:CMDCG
set /p command="%cd%> "
if "%command%" EQU "DEV" (
cls
goto dev
)
call %command%
echo.
goto CMDCG

:dev
color 02
title Dev Command Prompt
set /p devcmd="Dev#%cd%: "
if "%devcmd%" EQU "UNDEV" (
cls
echo Microsoft Windows [Version 10.0.19045.5737]
echo (c) Microsoft Corporation. All rights reserved.
echo.
title Command Prompt
color 0f
goto CMDCG
)
echo.
goto dev
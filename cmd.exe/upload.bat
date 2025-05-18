@echo off
set "file=%~1"
if not exist "%file%" (
    echo File not found: %file%
    pause
    exit /b
)

echo Uploading %file%...
curl --upload-file "%file%" https://bashupload.com/%file%
pause

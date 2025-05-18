@echo off
set filename=%1
set url=bashupload.com/%2
echo Downloading %filename%...
curl -L "%url%" -o "%filename%"
echo Done.
pause
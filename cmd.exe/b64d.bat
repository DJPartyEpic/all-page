@echo off
echo %1> b64e.txt
certutil -decode b64e.txt b64d.txt
del b64e.txt
for /f %%a in (b64d.txt) do set text=%%a
del b64d.txt
echo %text%
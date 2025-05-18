@echo off
echo %1> b64d.txt
certutil -encode b64d.txt b64e.txt
del b64d.txt
for /f %%a in (b64e.txt) do set text=%%a
del b64e.txt
echo %text%
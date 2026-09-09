@echo off
cd /d "%~dp0"
echo Sending report...
git add Bugreport.*
git commit
git push -ff
echo.
echo Sending done.
pause
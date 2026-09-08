@echo off
cd /d "%~dp0"

echo Sending report...

git add Bugreport.*
git commit
git push -ff

if errorlevel 1 (
    echo.
    echo Sending error!
    pause
    exit /b 1
)

echo.
echo Sending done.
pause
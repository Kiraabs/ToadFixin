@echo off
cd /d "%~dp0"

echo Terminating ToadFixin...
taskkill /F /IM ToadFixin.exe

timeout /t 1 /nobreak >nul

echo.
echo Updating...
git pull --ff-only

if errorlevel 1 (
    echo.
    echo Updating error!
    pause
    exit /b 1
)

echo.
echo Updating done.
pause
start "" "%~dp0ToadFixin.exe"
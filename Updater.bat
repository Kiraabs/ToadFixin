@echo off
cd /d "%~dp0"

echo Closing ToadFixin...
taskkill /F /IM ToadFixin.exe

timeout /t 1 /nobreak >nul

echo.
echo Updating ToadFixin...
git pull --ff-only

if errorlevel 1 (
    echo.
    echo Update failed!
    pause
    exit /b 1
)

echo.
echo Update completed successfully.
start "" "%~dp0ToadFixin.exe"
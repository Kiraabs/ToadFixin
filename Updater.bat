@echo off
cd /d "%~dp0"
taskkill /F /IM ToadFixin.exe
timeout /t 1 /nobreak >nul
git pull --ff-only
pause
start "" "%~dp0ToadFixin.exe"
@echo off
cd /d "%~dp0"
git add Bugreport.*
git commit
git push -ff
pause